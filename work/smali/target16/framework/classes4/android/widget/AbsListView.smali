.class public abstract Landroid/widget/AbsListView;
.super Landroid/widget/AdapterView;
.source "AbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListView$DeviceConfigChangeListener;,
        Landroid/widget/AbsListView$RecycleBin;,
        Landroid/widget/AbsListView$OnScrollListener;,
        Landroid/widget/AbsListView$MultiChoiceModeWrapper;,
        Landroid/widget/AbsListView$MultiChoiceModeListener;,
        Landroid/widget/AbsListView$PositionScroller;,
        Landroid/widget/AbsListView$SavedState;,
        Landroid/widget/AbsListView$AdapterDataSetObserver;,
        Landroid/widget/AbsListView$LayoutParams;,
        Landroid/widget/AbsListView$ListItemAccessibilityDelegate;,
        Landroid/widget/AbsListView$SelectionBoundsAdjuster;,
        Landroid/widget/AbsListView$CheckForKeyLongPress;,
        Landroid/widget/AbsListView$FlingRunnable;,
        Landroid/widget/AbsListView$AbsPositionScroller;,
        Landroid/widget/AbsListView$PerformClick;,
        Landroid/widget/AbsListView$CheckForTap;,
        Landroid/widget/AbsListView$CheckForLongPress;,
        Landroid/widget/AbsListView$DifferentialFlingTarget;,
        Landroid/widget/AbsListView$InputConnectionWrapper;,
        Landroid/widget/AbsListView$RecyclerListener;,
        Landroid/widget/AbsListView$WindowRunnnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
        "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;"
    }
.end annotation


# static fields
.field private static final greylist-max-o CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final whitelist CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final whitelist CHOICE_MODE_MULTIPLE_MODAL:I = 0x3

.field public static final whitelist CHOICE_MODE_NONE:I = 0x0

.field public static final whitelist CHOICE_MODE_SINGLE:I = 0x1

.field private static final blacklist FLING_DESTRETCH_FACTOR:F = 4.0f

.field private static final greylist-max-o INVALID_POINTER:I = -0x1

.field static final greylist-max-o LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final greylist-max-o LAYOUT_FORCE_TOP:I = 0x1

.field static final greylist-max-o LAYOUT_MOVE_SELECTION:I = 0x6

.field static final greylist-max-o LAYOUT_NORMAL:I = 0x0

.field static final greylist-max-o LAYOUT_SET_SELECTION:I = 0x2

.field static final greylist-max-o LAYOUT_SPECIFIC:I = 0x4

.field static final greylist-max-o LAYOUT_SYNC:I = 0x5

.field static final greylist-max-o OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final greylist-max-o PROFILE_FLINGING:Z = false

.field private static final greylist-max-o PROFILE_SCROLLING:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AbsListView"

.field static final greylist-max-o TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final greylist-max-o TOUCH_MODE_DOWN:I = 0x0

.field static final greylist-max-o TOUCH_MODE_FLING:I = 0x4

.field private static final greylist-max-o TOUCH_MODE_OFF:I = 0x1

.field private static final greylist-max-o TOUCH_MODE_ON:I = 0x0

.field static final greylist-max-o TOUCH_MODE_OVERFLING:I = 0x6

.field static final greylist-max-o TOUCH_MODE_OVERSCROLL:I = 0x5

.field static final greylist-max-o TOUCH_MODE_REST:I = -0x1

.field static final greylist-max-o TOUCH_MODE_SCROLL:I = 0x3

.field static final greylist-max-o TOUCH_MODE_TAP:I = 0x1

.field private static final greylist-max-o TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final whitelist TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final whitelist TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final whitelist TRANSCRIPT_MODE_NORMAL:I = 0x1

.field private static blacklist sContentCaptureReportingEnabledByDeviceConfig:Z

.field private static blacklist sDeviceConfigChangeListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field static final greylist-max-o sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private greylist-max-o mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

.field private greylist-max-p mActivePointerId:I

.field greylist mAdapter:Landroid/widget/ListAdapter;

.field greylist-max-o mAdapterHasStableIds:Z

.field private greylist-max-o mCacheColorHint:I

.field greylist-max-o mCachingActive:Z

.field greylist-max-o mCachingStarted:Z

.field greylist-max-o mCheckStates:Landroid/util/SparseBooleanArray;

.field greylist-max-o mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mCheckedItemCount:I

.field greylist-max-r mChoiceActionMode:Landroid/view/ActionMode;

.field greylist-max-o mChoiceMode:I

.field private greylist-max-o mClearScrollingCache:Ljava/lang/Runnable;

.field private greylist mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field greylist-max-r mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

.field private greylist-max-o mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private greylist-max-o mDeferNotifyDataSetChanged:Z

.field private greylist-max-o mDensityScale:F

.field private blacklist mDifferentialMotionFlingHelper:Landroid/widget/DifferentialMotionFlingHelper;

.field private greylist-max-o mDirection:I

.field greylist-max-o mDrawSelectorOnTop:Z

.field public greylist-max-p mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field public greylist-max-p mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private greylist-max-p mFastScroll:Landroid/widget/FastScroller;

.field greylist-max-o mFastScrollAlwaysVisible:Z

.field greylist-max-o mFastScrollEnabled:Z

.field private greylist-max-o mFastScrollStyle:I

.field private greylist-max-o mFiltered:Z

.field private greylist-max-o mFirstPositionDistanceGuess:I

.field private greylist-max-o mFlingProfilingStarted:Z

.field private greylist-max-p mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

.field private greylist-max-o mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private greylist-max-o mForceTranscriptScroll:Z

.field private greylist-max-o mGlobalLayoutListenerAddedFilter:Z

.field private blacklist mHapticScrollFeedbackProvider:Landroid/view/HapticScrollFeedbackProvider;

.field private greylist-max-o mHasPerformedLongPress:Z

.field private greylist mIsChildViewEnabled:Z

.field private greylist-max-o mIsDetaching:Z

.field final greylist-max-o mIsScrap:[Z

.field private greylist-max-o mLastHandledItemCount:I

.field private greylist-max-o mLastPositionDistanceGuess:I

.field private greylist-max-o mLastScrollState:I

.field private greylist-max-o mLastTouchMode:I

.field greylist-max-o mLastY:I

.field greylist mLayoutMode:I

.field greylist-max-o mListPadding:Landroid/graphics/Rect;

.field private greylist-max-p mMaximumVelocity:I

.field private greylist-max-o mMinimumVelocity:I

.field greylist-max-o mMotionCorrection:I

.field greylist mMotionPosition:I

.field greylist-max-o mMotionViewNewTop:I

.field greylist-max-o mMotionViewOriginalTop:I

.field greylist-max-o mMotionX:I

.field greylist mMotionY:I

.field greylist-max-o mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

.field private greylist-max-o mNestedYOffset:I

.field private greylist-max-p mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private greylist mOnScrollStateChangeListener:Landroid/widget/AbsListView$OnScrollListener;

.field greylist-max-p mOverflingDistance:I

.field greylist mOverscrollDistance:I

.field greylist-max-o mOverscrollMax:I

.field private final greylist-max-o mOwnerThread:Ljava/lang/Thread;

.field private greylist-max-o mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

.field private greylist mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

.field private greylist mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

.field private greylist-max-o mPendingSync:Landroid/widget/AbsListView$SavedState;

.field private greylist-max-o mPerformClick:Landroid/widget/AbsListView$PerformClick;

.field greylist mPopup:Landroid/widget/PopupWindow;

.field private greylist-max-o mPopupHidden:Z

.field greylist-max-o mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field greylist-max-r mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

.field private blacklist mPreviousOnScrollListenerState:I

.field private greylist-max-o mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

.field final greylist-max-p mRecycler:Landroid/widget/AbsListView$RecycleBin;

.field private greylist-max-o mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

.field private blacklist mReportChildrenToContentCaptureOnNextUpdate:Z

.field greylist-max-o mResurrectToPosition:I

.field private final greylist-max-o mScrollConsumed:[I

.field greylist-max-o mScrollDown:Landroid/view/View;

.field private final greylist-max-o mScrollOffset:[I

.field private greylist-max-o mScrollProfilingStarted:Z

.field private greylist-max-o mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field greylist-max-o mScrollUp:Landroid/view/View;

.field greylist-max-o mScrollingCacheEnabled:Z

.field greylist-max-o mSelectedTop:I

.field greylist mSelectionBottomPadding:I

.field greylist-max-o mSelectionLeftPadding:I

.field greylist-max-o mSelectionRightPadding:I

.field greylist mSelectionTopPadding:I

.field greylist-max-p mSelector:Landroid/graphics/drawable/Drawable;

.field greylist-max-p mSelectorPosition:I

.field greylist-max-p mSelectorRect:Landroid/graphics/Rect;

.field private greylist-max-o mSelectorState:[I

.field private greylist-max-o mSmoothScrollbarEnabled:Z

.field greylist-max-o mStackFromBottom:Z

.field private blacklist mTapTimeoutMillis:I

.field greylist-max-o mTextFilter:Landroid/widget/EditText;

.field private greylist-max-o mTextFilterEnabled:Z

.field private final greylist-max-o mTmpPoint:[F

.field private greylist-max-o mTouchFrame:Landroid/graphics/Rect;

.field greylist-max-p mTouchMode:I

.field private greylist-max-o mTouchModeReset:Ljava/lang/Runnable;

.field private greylist mTouchSlop:I

.field private greylist-max-o mTranscriptMode:I

.field private greylist-max-o mVelocityScale:F

.field private greylist mVelocityTracker:Landroid/view/VelocityTracker;

.field private greylist-max-o mVerticalScrollFactor:F

.field greylist-max-o mWidthMeasureSpec:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActivePointerId(Landroid/widget/AbsListView;)I
    .registers 1

    iget p0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDefInputConnection(Landroid/widget/AbsListView;)Landroid/view/inputmethod/InputConnection;
    .registers 1

    iget-object p0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFastScroll(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;
    .registers 1

    iget-object p0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlingRunnable(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$FlingRunnable;
    .registers 1

    iget-object p0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlingStrictSpan(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;
    .registers 1

    iget-object p0, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsDetaching(Landroid/widget/AbsListView;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaximumVelocity(Landroid/widget/AbsListView;)I
    .registers 1

    iget p0, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinimumVelocity(Landroid/widget/AbsListView;)I
    .registers 1

    iget p0, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingCheckForLongPress(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;
    .registers 1

    iget-object p0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReportChildrenToContentCaptureOnNextUpdate(Landroid/widget/AbsListView;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/AbsListView;->mReportChildrenToContentCaptureOnNextUpdate:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTmpPoint(Landroid/widget/AbsListView;)[F
    .registers 1

    iget-object p0, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVelocityTracker(Landroid/widget/AbsListView;)Landroid/view/VelocityTracker;
    .registers 1

    iget-object p0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVerticalScrollFactor(Landroid/widget/AbsListView;)F
    .registers 1

    iget p0, p0, Landroid/widget/AbsListView;->mVerticalScrollFactor:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFlingStrictSpan(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHasPerformedLongPress(Landroid/widget/AbsListView;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mHasPerformedLongPress:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingCheckForLongPress(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReportChildrenToContentCaptureOnNextUpdate(Landroid/widget/AbsListView;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mReportChildrenToContentCaptureOnNextUpdate:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTouchModeReset(Landroid/widget/AbsListView;Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearScrollingCache(Landroid/widget/AbsListView;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mconsumeFlingInStretch(Landroid/widget/AbsListView;I)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->consumeFlingInStretch(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcontentFits(Landroid/widget/AbsListView;)Z
    .registers 1

    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetTextFilterInput(Landroid/widget/AbsListView;)Landroid/widget/EditText;
    .registers 1

    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misItemClickable(Landroid/widget/AbsListView;Landroid/view/View;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->isItemClickable(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreportActiveViewsToContentCapture(Landroid/widget/AbsListView;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/AbsListView;->reportActiveViewsToContentCapture()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetFastScrollerAlwaysVisibleUiThread(Landroid/widget/AbsListView;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetFastScrollerEnabledUiThread(Landroid/widget/AbsListView;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsContentCaptureReportingEnabledByDeviceConfig(Z)V
    .registers 1

    sput-boolean p0, Landroid/widget/AbsListView;->sContentCaptureReportingEnabledByDeviceConfig:Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 674
    const/4 v0, 0x0

    sput-boolean v0, Landroid/widget/AbsListView;->sContentCaptureReportingEnabledByDeviceConfig:Z

    .line 679
    const/4 v0, 0x0

    sput-object v0, Landroid/widget/AbsListView;->sDeviceConfigChangeListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 825
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/widget/AbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 7

    .line 945
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 272
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 306
    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 334
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 339
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 350
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 356
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 363
    new-instance v2, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v2, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 369
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 374
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 380
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 385
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 391
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 396
    iput v0, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 446
    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 483
    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 536
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 556
    iput v1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 558
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 585
    iput v1, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 588
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 591
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 599
    iput-object v3, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 600
    iput-object v3, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 662
    iput v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 668
    iput v0, p0, Landroid/widget/AbsListView;->mPreviousOnScrollListenerState:I

    .line 685
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mReportChildrenToContentCaptureOnNextUpdate:Z

    .line 716
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 718
    new-array v3, v2, [Z

    iput-object v3, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 720
    const/4 v3, 0x2

    new-array v4, v3, [I

    iput-object v4, p0, Landroid/widget/AbsListView;->mScrollOffset:[I

    .line 721
    new-array v4, v3, [I

    iput-object v4, p0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    .line 723
    new-array v3, v3, [F

    iput-object v3, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    .line 729
    iput v0, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 739
    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 804
    iput v0, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 946
    invoke-static {}, Landroid/widget/AbsListView;->setupDeviceConfigProperties()V

    .line 947
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 948
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 949
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 951
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 953
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 954
    sget-object v0, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 955
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->initializeScrollbarsInternal(Landroid/content/res/TypedArray;)V

    .line 956
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 957
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 960
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 961
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 964
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 965
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 16

    .line 968
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 272
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 306
    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 334
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 339
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 350
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 356
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 363
    new-instance v2, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v2, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 369
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 374
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 380
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 385
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 391
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 396
    iput v0, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 446
    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 483
    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 536
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 556
    iput v1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 558
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 585
    iput v1, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 588
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 591
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 599
    iput-object v3, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 600
    iput-object v3, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 662
    iput v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 668
    iput v0, p0, Landroid/widget/AbsListView;->mPreviousOnScrollListenerState:I

    .line 685
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mReportChildrenToContentCaptureOnNextUpdate:Z

    .line 716
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 718
    new-array v3, v2, [Z

    iput-object v3, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 720
    const/4 v3, 0x2

    new-array v4, v3, [I

    iput-object v4, p0, Landroid/widget/AbsListView;->mScrollOffset:[I

    .line 721
    new-array v4, v3, [I

    iput-object v4, p0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    .line 723
    new-array v4, v3, [F

    iput-object v4, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    .line 729
    iput v0, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 739
    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 804
    iput v0, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 969
    invoke-static {}, Landroid/widget/AbsListView;->setupDeviceConfigProperties()V

    .line 970
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, p1, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 971
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, p1, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 972
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 974
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 976
    sget-object v1, Lcom/android/internal/R$styleable;->AbsListView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 978
    sget-object v6, Lcom/android/internal/R$styleable;->AbsListView:[I

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move v9, p3

    move v10, p4

    invoke-virtual/range {v4 .. v10}, Landroid/widget/AbsListView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 981
    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 982
    if-eqz p1, :cond_98

    .line 983
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 986
    :cond_98
    invoke-virtual {v8, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v4, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 988
    invoke-virtual {v8, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setStackFromBottom(Z)V

    .line 990
    const/4 p1, 0x3

    invoke-virtual {v8, p1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 992
    const/4 p1, 0x4

    invoke-virtual {v8, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 994
    const/4 p1, 0x5

    invoke-virtual {v8, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setTranscriptMode(I)V

    .line 996
    const/4 p1, 0x6

    invoke-virtual {v8, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 998
    const/16 p2, 0x9

    invoke-virtual {v8, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/AbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 1000
    const/4 p2, 0x7

    invoke-virtual {v8, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 1003
    const/16 p2, 0x8

    invoke-virtual {v8, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 1005
    const/16 p2, 0xb

    invoke-virtual {v8, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/AbsListView;->setFastScrollStyle(I)V

    .line 1007
    const/16 p2, 0xa

    invoke-virtual {v8, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/AbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 1010
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 1012
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->uiMode:I

    if-ne p2, p1, :cond_103

    .line 1013
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setRevealOnFocusHint(Z)V

    .line 1015
    :cond_103
    return-void
.end method

.method private greylist-max-o acceptFilter()Z
    .registers 2

    .line 2065
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_1a

    .line 2066
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 2065
    :goto_1b
    return v0
.end method

.method static synthetic blacklist access$000(Landroid/widget/AbsListView;)I
    .registers 1

    .line 124
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$100(Landroid/widget/AbsListView;)I
    .registers 1

    .line 124
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$1000(Landroid/widget/AbsListView;)I
    .registers 1

    .line 124
    iget p0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return p0
.end method

.method static synthetic blacklist access$1100(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .registers 10

    .line 124
    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$1200(Landroid/widget/AbsListView;)I
    .registers 1

    .line 124
    iget p0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return p0
.end method

.method static synthetic blacklist access$1300(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .registers 10

    .line 124
    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$1400(Landroid/widget/AbsListView;Z)V
    .registers 2

    .line 124
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic blacklist access$1500(Landroid/widget/AbsListView;)I
    .registers 1

    .line 124
    iget p0, p0, Landroid/widget/AbsListView;->mPersistentDrawingCache:I

    return p0
.end method

.method static synthetic blacklist access$1600(Landroid/widget/AbsListView;Z)V
    .registers 2

    .line 124
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic blacklist access$1700(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .registers 3

    .line 124
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic blacklist access$1800(Landroid/widget/AbsListView;)Landroid/content/Context;
    .registers 1

    .line 124
    iget-object p0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic blacklist access$200(Landroid/widget/AbsListView;)I
    .registers 1

    .line 124
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLongPressTimeoutMillis()I

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$300(Landroid/widget/AbsListView;)I
    .registers 1

    .line 124
    iget p0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return p0
.end method

.method static synthetic blacklist access$400(Landroid/widget/AbsListView;)I
    .registers 1

    .line 124
    iget p0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return p0
.end method

.method static synthetic blacklist access$500(Landroid/widget/AbsListView;)I
    .registers 1

    .line 124
    iget p0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return p0
.end method

.method static synthetic blacklist access$600(Landroid/widget/AbsListView;)I
    .registers 1

    .line 124
    iget p0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    return p0
.end method

.method static synthetic blacklist access$700(Landroid/widget/AbsListView;)I
    .registers 1

    .line 124
    iget p0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    return p0
.end method

.method static synthetic blacklist access$800(Landroid/widget/AbsListView;)I
    .registers 1

    .line 124
    iget p0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    return p0
.end method

.method static synthetic blacklist access$900(Landroid/widget/AbsListView;)I
    .registers 1

    .line 124
    iget p0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    return p0
.end method

.method private blacklist addAccessibilityActionIfEnabled(Landroid/view/accessibility/AccessibilityNodeInfo;ZLandroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V
    .registers 4

    .line 2682
    if-eqz p2, :cond_5

    .line 2683
    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2685
    :cond_5
    return-void
.end method

.method private greylist-max-r canScrollDown()Z
    .registers 6

    .line 2385
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2388
    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v1, v0

    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_f

    move v1, v4

    goto :goto_10

    :cond_f
    move v1, v3

    .line 2391
    :goto_10
    if-nez v1, :cond_28

    if-lez v0, :cond_28

    .line 2392
    sub-int/2addr v0, v4

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2393
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Landroid/widget/AbsListView;->mBottom:I

    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_27

    move v3, v4

    :cond_27
    move v1, v3

    .line 2396
    :cond_28
    return v1
.end method

.method private greylist-max-r canScrollUp()Z
    .registers 5

    .line 2369
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 2372
    :goto_9
    if-nez v0, :cond_22

    .line 2373
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_22

    .line 2374
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2375
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v0, v3, :cond_20

    goto :goto_21

    :cond_20
    move v1, v2

    :goto_21
    move v0, v1

    .line 2379
    :cond_22
    return v0
.end method

.method private greylist-max-o clearScrollingCache()V
    .registers 2

    .line 5437
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_16

    .line 5438
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_11

    .line 5439
    new-instance v0, Landroid/widget/AbsListView$4;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$4;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 5455
    :cond_11
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 5457
    :cond_16
    return-void
.end method

.method private blacklist consumeFlingInStretch(I)I
    .registers 7

    .line 4466
    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/high16 v2, 0x40800000    # 4.0f

    if-gez p1, :cond_32

    iget-object v3, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_32

    iget-object v3, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v3

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_32

    .line 4467
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    .line 4468
    int-to-float v3, p1

    mul-float/2addr v3, v2

    int-to-float v1, v1

    div-float/2addr v3, v1

    .line 4469
    div-float/2addr v1, v2

    iget-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 4470
    invoke-virtual {v2, v3, v0}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v0

    mul-float/2addr v1, v0

    .line 4469
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 4471
    if-eq v0, p1, :cond_30

    .line 4472
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->finish()V

    .line 4474
    :cond_30
    sub-int/2addr p1, v0

    return p1

    .line 4476
    :cond_32
    if-lez p1, :cond_62

    iget-object v3, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_62

    iget-object v3, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v3

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_62

    .line 4477
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    .line 4478
    neg-int v3, p1

    int-to-float v3, v3

    mul-float/2addr v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 4479
    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 4480
    invoke-virtual {v2, v3, v0}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v0

    mul-float/2addr v1, v0

    .line 4479
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 4481
    if-eq v0, p1, :cond_60

    .line 4482
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->finish()V

    .line 4484
    :cond_60
    sub-int/2addr p1, v0

    return p1

    .line 4486
    :cond_62
    return p1
.end method

.method private greylist-max-o contentFits()Z
    .registers 6

    .line 1385
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 1386
    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 1387
    :cond_8
    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_e

    return v3

    .line 1389
    :cond_e
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v2, v4, :cond_31

    sub-int/2addr v0, v1

    .line 1390
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v4

    if-gt v0, v2, :cond_31

    goto :goto_32

    :cond_31
    move v1, v3

    .line 1389
    :goto_32
    return v1
.end method

.method private greylist-max-o createScrollingCache()V
    .registers 2

    .line 5429
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    if-nez v0, :cond_19

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_19

    .line 5430
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 5431
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 5432
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mCachingActive:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    .line 5434
    :cond_19
    return-void
.end method

.method private greylist-max-o createTextFilter(Z)V
    .registers 4

    .line 6487
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_36

    .line 6488
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 6489
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 6490
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 6491
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 6492
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 6493
    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 6494
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 6495
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6496
    iput-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 6497
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 6498
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 6500
    :cond_36
    if-eqz p1, :cond_41

    .line 6501
    iget-object p1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v0, 0x1030318

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_49

    .line 6503
    :cond_41
    iget-object p1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v0, 0x1030319

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 6505
    :goto_49
    return-void
.end method

.method private greylist-max-o dismissPopup()V
    .registers 2

    .line 6111
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_9

    .line 6112
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 6114
    :cond_9
    return-void
.end method

.method private blacklist doesTouchStopStretch()Z
    .registers 3

    .line 3949
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_11

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_11
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 3950
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_23

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    if-nez v0, :cond_23

    :cond_21
    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    .line 3949
    :goto_24
    return v0
.end method

.method private greylist-max-o drawSelector(Landroid/graphics/Canvas;)V
    .registers 4

    .line 2912
    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldDrawSelector()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2913
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2914
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2915
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2917
    :cond_10
    return-void
.end method

.method private greylist-max-o finishGlows()V
    .registers 2

    .line 6736
    invoke-direct {p0}, Landroid/widget/AbsListView;->shouldDisplayEdgeEffects()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 6737
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 6738
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 6740
    :cond_10
    return-void
.end method

.method static greylist-max-o getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .registers 5

    .line 6157
    sparse-switch p2, :sswitch_data_92

    .line 6190
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6165
    :sswitch_b
    iget p2, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    .line 6166
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 6167
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 6168
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 6169
    goto :goto_8c

    .line 6159
    :sswitch_22
    iget p2, p0, Landroid/graphics/Rect;->right:I

    .line 6160
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v0

    .line 6161
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 6162
    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v1

    .line 6163
    goto :goto_8c

    .line 6177
    :sswitch_39
    iget p2, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    .line 6178
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 6179
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 6180
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 6181
    goto :goto_8c

    .line 6171
    :sswitch_50
    iget p2, p0, Landroid/graphics/Rect;->left:I

    .line 6172
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v0

    .line 6173
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 6174
    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v1

    .line 6175
    goto :goto_8c

    .line 6184
    :sswitch_67
    iget p2, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    .line 6185
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v0

    .line 6186
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 6187
    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v1

    .line 6188
    nop

    .line 6194
    :goto_8c
    sub-int/2addr v0, p2

    .line 6195
    sub-int/2addr p1, p0

    .line 6196
    mul-int/2addr p1, p1

    mul-int/2addr v0, v0

    add-int/2addr p1, v0

    return p1

    :sswitch_data_92
    .sparse-switch
        0x1 -> :sswitch_67
        0x2 -> :sswitch_67
        0x11 -> :sswitch_50
        0x21 -> :sswitch_39
        0x42 -> :sswitch_22
        0x82 -> :sswitch_b
    .end sparse-switch
.end method

.method private greylist-max-o getDrawableStateForSelector()[I
    .registers 6

    .line 3059
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    if-eqz v0, :cond_9

    .line 3061
    invoke-super {p0}, Landroid/widget/AdapterView;->getDrawableState()[I

    move-result-object v0

    return-object v0

    .line 3067
    :cond_9
    sget-object v0, Landroid/widget/AbsListView;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 3073
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->onCreateDrawableState(I)[I

    move-result-object v2

    .line 3075
    nop

    .line 3076
    array-length v3, v2

    sub-int/2addr v3, v1

    :goto_16
    if-ltz v3, :cond_21

    .line 3077
    aget v4, v2, v3

    if-ne v4, v0, :cond_1e

    .line 3078
    nop

    .line 3079
    goto :goto_22

    .line 3076
    :cond_1e
    add-int/lit8 v3, v3, -0x1

    goto :goto_16

    :cond_21
    const/4 v3, -0x1

    .line 3084
    :goto_22
    if-ltz v3, :cond_2c

    .line 3085
    add-int/lit8 v0, v3, 0x1

    array-length v4, v2

    sub-int/2addr v4, v3

    sub-int/2addr v4, v1

    invoke-static {v2, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3089
    :cond_2c
    return-object v2
.end method

.method private greylist-max-o getTextFilterInput()Landroid/widget/EditText;
    .registers 4

    .line 6508
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-nez v0, :cond_2b

    .line 6509
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 6510
    const v1, 0x1090178

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 6515
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v1, 0xb1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 6517
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 6518
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6520
    :cond_2b
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    return-object v0
.end method

.method private greylist-max-o initAbsListView()V
    .registers 3

    .line 1019
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setClickable(Z)V

    .line 1020
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setFocusableInTouchMode(Z)V

    .line 1021
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setWillNotDraw(Z)V

    .line 1022
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 1023
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 1025
    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1026
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    .line 1027
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->viewconfigurationApis()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1028
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getTapTimeoutMillis()I

    move-result v1

    goto :goto_2c

    :cond_28
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    :goto_2c
    iput v1, p0, Landroid/widget/AbsListView;->mTapTimeoutMillis:I

    .line 1029
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mVerticalScrollFactor:F

    .line 1030
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    .line 1031
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    .line 1032
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    .line 1033
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mOverflingDistance:I

    .line 1035
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/widget/AbsListView;->mDensityScale:F

    .line 1036
    return-void
.end method

.method private blacklist initDifferentialFlingHelperIfNotExists()V
    .registers 5

    .line 4745
    iget-object v0, p0, Landroid/widget/AbsListView;->mDifferentialMotionFlingHelper:Landroid/widget/DifferentialMotionFlingHelper;

    if-nez v0, :cond_13

    .line 4746
    new-instance v0, Landroid/widget/DifferentialMotionFlingHelper;

    iget-object v1, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/widget/AbsListView$DifferentialFlingTarget;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/AbsListView$DifferentialFlingTarget;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView-IA;)V

    invoke-direct {v0, v1, v2}, Landroid/widget/DifferentialMotionFlingHelper;-><init>(Landroid/content/Context;Landroid/widget/DifferentialMotionFlingHelper$DifferentialMotionFlingTarget;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDifferentialMotionFlingHelper:Landroid/widget/DifferentialMotionFlingHelper;

    .line 4750
    :cond_13
    return-void
.end method

.method private blacklist initHapticScrollFeedbackProviderIfNotExists()V
    .registers 2

    .line 4753
    iget-object v0, p0, Landroid/widget/AbsListView;->mHapticScrollFeedbackProvider:Landroid/view/HapticScrollFeedbackProvider;

    if-nez v0, :cond_b

    .line 4754
    new-instance v0, Landroid/view/HapticScrollFeedbackProvider;

    invoke-direct {v0, p0}, Landroid/view/HapticScrollFeedbackProvider;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mHapticScrollFeedbackProvider:Landroid/view/HapticScrollFeedbackProvider;

    .line 4756
    :cond_b
    return-void
.end method

.method private greylist-max-o initOrResetVelocityTracker()V
    .registers 2

    .line 4731
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    .line 4732
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_10

    .line 4734
    :cond_b
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 4736
    :goto_10
    return-void
.end method

.method private greylist-max-o initVelocityTrackerIfNotExists()V
    .registers 2

    .line 4739
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 4740
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4742
    :cond_a
    return-void
.end method

.method private blacklist invalidateEdgeEffects()V
    .registers 2

    .line 3954
    invoke-direct {p0}, Landroid/widget/AbsListView;->shouldDisplayEdgeEffects()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3955
    return-void

    .line 3957
    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3958
    return-void
.end method

.method private greylist-max-o isItemClickable(Landroid/view/View;)Z
    .registers 2

    .line 2688
    invoke-virtual {p1}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private greylist-max-o isOwnerThread()Z
    .registers 3

    .line 1499
    iget-object v0, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private greylist-max-o onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 5

    .line 4891
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 4893
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 4894
    iget v2, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    if-ne v1, v2, :cond_2e

    .line 4898
    const/4 v1, 0x0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    move v0, v1

    .line 4899
    :goto_18
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4900
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4901
    iput v1, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4902
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4904
    :cond_2e
    return-void
.end method

.method private greylist-max-o onTouchCancel()V
    .registers 5

    .line 4494
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_4c

    .line 4507
    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4508
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4509
    iget v2, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4510
    if-eqz v2, :cond_2d

    .line 4511
    invoke-virtual {v2, v0}, Landroid/view/View;->setPressed(Z)V

    goto :goto_2d

    .line 4504
    :pswitch_1b
    goto :goto_38

    .line 4496
    :pswitch_1c
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_27

    .line 4497
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4499
    :cond_27
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    .line 4500
    goto :goto_38

    .line 4513
    :cond_2d
    :goto_2d
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 4514
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4515
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 4518
    :goto_38
    invoke-direct {p0}, Landroid/widget/AbsListView;->shouldDisplayEdgeEffects()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 4519
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4520
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4522
    :cond_48
    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4523
    return-void

    nop

    :pswitch_data_4c
    .packed-switch 0x5
        :pswitch_1c
        :pswitch_1b
    .end packed-switch
.end method

.method private greylist-max-o onTouchDown(Landroid/view/MotionEvent;)V
    .registers 8

    .line 4100
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mHasPerformedLongPress:Z

    .line 4101
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4102
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 4104
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_45

    .line 4106
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_1a

    .line 4107
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4109
    :cond_1a
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_23

    .line 4110
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 4112
    :cond_23
    const/4 v1, 0x5

    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4115
    iget v1, p0, Landroid/widget/AbsListView;->mMotionY:I

    iput v1, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4116
    iput v0, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4117
    iput v0, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 4118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->stopEdgeGlowRecede(F)V

    goto/16 :goto_c4

    .line 4120
    :cond_45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 4121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 4122
    invoke-virtual {p0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v3

    .line 4124
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v4, :cond_aa

    .line 4125
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_76

    .line 4127
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 4128
    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4129
    iput v0, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4130
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v3

    .line 4131
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v0, :cond_71

    .line 4132
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0}, Landroid/widget/AbsListView$FlingRunnable;->flywheelTouch()V

    .line 4134
    :cond_71
    int-to-float v0, v1

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->stopEdgeGlowRecede(F)V

    goto :goto_aa

    .line 4135
    :cond_76
    if-ltz v3, :cond_aa

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_aa

    .line 4139
    iput v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4142
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    if-nez v0, :cond_92

    .line 4143
    new-instance v0, Landroid/widget/AbsListView$CheckForTap;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Landroid/widget/AbsListView$CheckForTap;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView-IA;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    .line 4146
    :cond_92
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, v0, Landroid/widget/AbsListView$CheckForTap;->x:F

    .line 4147
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, v0, Landroid/widget/AbsListView$CheckForTap;->y:F

    .line 4148
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    iget v4, p0, Landroid/widget/AbsListView;->mTapTimeoutMillis:I

    int-to-long v4, v4

    invoke-virtual {p0, v0, v4, v5}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4152
    :cond_aa
    :goto_aa
    if-ltz v3, :cond_ba

    .line 4154
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4155
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4158
    :cond_ba
    iput v1, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4159
    iput v2, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4160
    iput v3, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4161
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4164
    :goto_c4
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v0, :cond_d8

    iget v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d8

    .line 4165
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_d8

    .line 4166
    iget-object p1, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4168
    :cond_d8
    return-void
.end method

.method private greylist-max-o onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .registers 7

    .line 4180
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mHasPerformedLongPress:Z

    if-eqz v0, :cond_5

    .line 4182
    return-void

    .line 4185
    :cond_5
    iget v0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 4186
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_17

    .line 4187
    nop

    .line 4188
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    move v0, v2

    .line 4191
    :cond_17
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v1, :cond_1e

    .line 4194
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 4197
    :cond_1e
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    .line 4199
    iget v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v3, :pswitch_data_86

    :pswitch_28
    goto :goto_84

    .line 4232
    :pswitch_29
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, p1, v1, p2}, Landroid/widget/AbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    goto :goto_84

    .line 4205
    :pswitch_32
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v3, v1, p2}, Landroid/widget/AbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_3e

    .line 4206
    goto :goto_84

    .line 4210
    :cond_3e
    iget p2, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr p2, v3

    invoke-virtual {p0, p2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 4211
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 4212
    int-to-float v0, v1

    iget v1, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    int-to-float v1, v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/AbsListView;->pointInView(FFF)Z

    move-result v1

    if-nez v1, :cond_70

    .line 4213
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4214
    if-eqz p2, :cond_5d

    .line 4215
    invoke-virtual {p2, v2}, Landroid/view/View;->setPressed(Z)V

    .line 4217
    :cond_5d
    iget p1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez p1, :cond_64

    .line 4218
    iget-object p1, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    goto :goto_66

    :cond_64
    iget-object p1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    .line 4217
    :goto_66
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4219
    const/4 p1, 0x2

    iput p1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4220
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto :goto_84

    .line 4221
    :cond_70
    if-eqz p2, :cond_84

    .line 4223
    iget-object v1, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    .line 4224
    aput p1, v1, v2

    .line 4225
    const/4 p1, 0x1

    aput v0, v1, p1

    .line 4226
    invoke-virtual {p0, v1, p2}, Landroid/widget/AbsListView;->transformPointToViewLocal([FLandroid/view/View;)V

    .line 4227
    aget v0, v1, v2

    aget p1, v1, p1

    invoke-virtual {p2, v0, p1}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 4228
    nop

    .line 4235
    :cond_84
    :goto_84
    return-void

    nop

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_29
        :pswitch_28
        :pswitch_29
    .end packed-switch
.end method

.method private greylist-max-o onTouchUp(Landroid/view/MotionEvent;)V
    .registers 15

    .line 4238
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x3e8

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_266

    :pswitch_c
    goto/16 :goto_23a

    .line 4391
    :pswitch_e
    iget-object p1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez p1, :cond_19

    .line 4392
    new-instance p1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {p1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object p1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4394
    :cond_19
    iget-object p1, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4395
    iget v0, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    int-to-float v0, v0

    invoke-virtual {p1, v3, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4396
    iget v0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p1

    float-to-int p1, p1

    .line 4398
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4399
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    if-le v0, v2, :cond_3b

    .line 4400
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    neg-int p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_23a

    .line 4402
    :cond_3b
    iget-object p1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p1}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_23a

    .line 4313
    :pswitch_42
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result p1

    .line 4314
    if-lez p1, :cond_159

    .line 4315
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 4316
    add-int/lit8 v7, p1, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 4317
    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    .line 4318
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    .line 4319
    iget v10, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-nez v10, :cond_82

    if-lt v0, v8, :cond_82

    iget v10, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v10, p1

    iget v11, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-ge v10, v11, :cond_82

    .line 4321
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    sub-int/2addr v10, v9

    if-gt v7, v10, :cond_82

    .line 4322
    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4323
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_157

    .line 4325
    :cond_82
    iget-object v10, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4326
    iget v11, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    int-to-float v11, v11

    invoke-virtual {v10, v3, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4328
    iget v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4329
    invoke-virtual {v10, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    iget v10, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    mul-float/2addr v3, v10

    float-to-int v3, v3

    .line 4334
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    if-le v10, v11, :cond_9e

    move v10, v5

    goto :goto_9f

    :cond_9e
    move v10, v6

    .line 4335
    :goto_9f
    if-eqz v10, :cond_cb

    iget-object v11, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v11}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v11

    if-nez v11, :cond_cb

    .line 4336
    iget-object p1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-direct {p0, p1, v3}, Landroid/widget/AbsListView;->shouldAbsorb(Landroid/widget/EdgeEffect;I)Z

    move-result p1

    if-eqz p1, :cond_b8

    .line 4337
    iget-object p1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p1, v3}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto/16 :goto_157

    .line 4339
    :cond_b8
    iget-object p1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez p1, :cond_c3

    .line 4340
    new-instance p1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {p1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object p1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4342
    :cond_c3
    iget-object p1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    neg-int v0, v3

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_157

    .line 4344
    :cond_cb
    if-eqz v10, :cond_f6

    iget-object v11, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v11}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v11

    if-nez v11, :cond_f6

    .line 4345
    iget-object p1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    neg-int v0, v3

    invoke-direct {p0, p1, v0}, Landroid/widget/AbsListView;->shouldAbsorb(Landroid/widget/EdgeEffect;I)Z

    move-result p1

    if-eqz p1, :cond_e5

    .line 4346
    iget-object p1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p1, v0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto/16 :goto_157

    .line 4348
    :cond_e5
    iget-object p1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez p1, :cond_f0

    .line 4349
    new-instance p1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {p1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object p1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4351
    :cond_f0
    iget-object p1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    goto :goto_157

    .line 4353
    :cond_f6
    const/4 v11, 0x0

    if-eqz v10, :cond_133

    iget v12, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-nez v12, :cond_102

    iget v12, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    sub-int/2addr v8, v12

    if-eq v0, v8, :cond_133

    :cond_102
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v0, p1

    iget p1, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-ne v0, p1, :cond_10e

    iget p1, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    add-int/2addr v9, p1

    if-eq v7, v9, :cond_133

    .line 4359
    :cond_10e
    neg-int p1, v3

    int-to-float v0, p1

    invoke-virtual {p0, v11, v0}, Landroid/widget/AbsListView;->dispatchNestedPreFling(FF)Z

    move-result v3

    if-nez v3, :cond_12d

    .line 4360
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v3, :cond_121

    .line 4361
    new-instance v3, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v3, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4363
    :cond_121
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4364
    iget-object v2, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v2, p1}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 4365
    invoke-virtual {p0, v11, v0, v5}, Landroid/widget/AbsListView;->dispatchNestedFling(FFZ)Z

    goto :goto_157

    .line 4367
    :cond_12d
    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4368
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto :goto_157

    .line 4371
    :cond_133
    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4372
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4373
    iget-object p1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz p1, :cond_141

    .line 4374
    iget-object p1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4376
    :cond_141
    iget-object p1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz p1, :cond_14a

    .line 4377
    iget-object p1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {p1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 4379
    :cond_14a
    if-eqz v10, :cond_157

    neg-int p1, v3

    int-to-float p1, p1

    invoke-virtual {p0, v11, p1}, Landroid/widget/AbsListView;->dispatchNestedPreFling(FF)Z

    move-result v0

    if-nez v0, :cond_157

    .line 4380
    invoke-virtual {p0, v11, p1, v6}, Landroid/widget/AbsListView;->dispatchNestedFling(FFZ)Z

    .line 4384
    :cond_157
    :goto_157
    goto/16 :goto_23a

    .line 4385
    :cond_159
    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4386
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4388
    goto/16 :goto_23a

    .line 4242
    :pswitch_160
    iget v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4243
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4244
    if-eqz v2, :cond_234

    .line 4245
    iget v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eqz v3, :cond_173

    .line 4246
    invoke-virtual {v2, v6}, Landroid/view/View;->setPressed(Z)V

    .line 4249
    :cond_173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 4250
    iget-object v7, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    cmpl-float v7, v3, v7

    if-lez v7, :cond_190

    .line 4251
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v7

    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpg-float v7, v3, v7

    if-gez v7, :cond_190

    move v7, v5

    goto :goto_191

    :cond_190
    move v7, v6

    .line 4252
    :goto_191
    if-eqz v7, :cond_234

    invoke-virtual {v2}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v7

    if-nez v7, :cond_234

    .line 4253
    iget-object v7, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-nez v7, :cond_1a4

    .line 4254
    new-instance v7, Landroid/widget/AbsListView$PerformClick;

    invoke-direct {v7, p0, v1}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView-IA;)V

    iput-object v7, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 4257
    :cond_1a4
    iget-object v7, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 4258
    iput v0, v7, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    .line 4259
    invoke-virtual {v7}, Landroid/widget/AbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 4261
    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 4263
    iget v8, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eqz v8, :cond_1c6

    iget v8, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-ne v8, v5, :cond_1b6

    goto :goto_1c6

    .line 4304
    :cond_1b6
    iget-boolean p1, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez p1, :cond_234

    iget-object p1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_234

    .line 4305
    invoke-virtual {v7}, Landroid/widget/AbsListView$PerformClick;->run()V

    goto :goto_234

    .line 4264
    :cond_1c6
    :goto_1c6
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v1, :cond_1cd

    .line 4265
    iget-object v1, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    goto :goto_1cf

    :cond_1cd
    iget-object v1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    .line 4264
    :goto_1cf
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4266
    iput v6, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 4267
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v1, :cond_22e

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_22e

    .line 4268
    iput v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4269
    iget v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 4270
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 4271
    invoke-virtual {v2, v5}, Landroid/view/View;->setPressed(Z)V

    .line 4272
    iget v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-virtual {p0, v0, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 4273
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4274
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_213

    .line 4275
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4276
    if-eqz v0, :cond_20a

    instance-of v1, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v1, :cond_20a

    .line 4277
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 4279
    :cond_20a
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v3, p1}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 4281
    :cond_213
    iget-object p1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz p1, :cond_21c

    .line 4282
    iget-object p1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4284
    :cond_21c
    new-instance p1, Landroid/widget/AbsListView$3;

    invoke-direct {p1, p0, v2, v7}, Landroid/widget/AbsListView$3;-><init>(Landroid/widget/AbsListView;Landroid/view/View;Landroid/widget/AbsListView$PerformClick;)V

    iput-object p1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 4297
    iget-object p1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 4298
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v0

    int-to-long v0, v0

    .line 4297
    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_233

    .line 4300
    :cond_22e
    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4301
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 4303
    :goto_233
    return-void

    .line 4309
    :cond_234
    :goto_234
    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4310
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 4311
    nop

    .line 4408
    :goto_23a
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4410
    invoke-direct {p0}, Landroid/widget/AbsListView;->shouldDisplayEdgeEffects()Z

    move-result p1

    if-eqz p1, :cond_24d

    .line 4411
    iget-object p1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4412
    iget-object p1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4416
    :cond_24d
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4417
    iget-object p1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4418
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 4420
    iput v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4429
    iget-object p1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz p1, :cond_265

    .line 4430
    iget-object p1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {p1}, Landroid/os/StrictMode$Span;->finish()V

    .line 4431
    iput-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 4433
    :cond_265
    return-void

    :pswitch_data_266
    .packed-switch 0x0
        :pswitch_160
        :pswitch_160
        :pswitch_160
        :pswitch_42
        :pswitch_c
        :pswitch_e
    .end packed-switch
.end method

.method private greylist-max-o performStylusButtonPressAction(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 3384
    iget p1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ne p1, v0, :cond_30

    iget-object p1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez p1, :cond_30

    .line 3385
    iget p1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 3386
    if-eqz p1, :cond_30

    .line 3387
    iget v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3388
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v3, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 3389
    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 3390
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3391
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3392
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 3393
    const/4 p1, 0x1

    return p1

    .line 3397
    :cond_30
    return v1
.end method

.method private greylist-max-o positionPopup()V
    .registers 6

    .line 6130
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 6131
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 6132
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getLocationOnScreen([I)V

    .line 6135
    const/4 v2, 0x1

    aget v2, v1, v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Landroid/widget/AbsListView;->mDensityScale:F

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    .line 6136
    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_33

    .line 6137
    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x51

    aget v1, v1, v3

    invoke-virtual {v2, p0, v4, v1, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_3b

    .line 6140
    :cond_33
    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v1, v1, v3

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v0, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 6142
    :goto_3b
    return-void
.end method

.method private greylist positionSelector(ILandroid/view/View;ZFF)V
    .registers 13

    .line 2718
    iget v0, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 2719
    :goto_9
    const/4 v3, -0x1

    if-eq p1, v3, :cond_e

    .line 2720
    iput p1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 2723
    :cond_e
    iget-object p1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2724
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2725
    instance-of v3, p2, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    if-eqz v3, :cond_2d

    .line 2726
    move-object v3, p2

    check-cast v3, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    invoke-interface {v3, p1}, Landroid/widget/AbsListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 2730
    :cond_2d
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 2731
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 2732
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 2733
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 2736
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    .line 2737
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    if-eq v3, p2, :cond_53

    .line 2738
    iput-boolean p2, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 2742
    :cond_53
    iget-object p2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2743
    if-eqz p2, :cond_77

    .line 2744
    if-eqz v0, :cond_61

    .line 2747
    invoke-virtual {p2, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 2748
    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2750
    :cond_61
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2751
    if-eqz v0, :cond_72

    .line 2752
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6f

    .line 2753
    invoke-virtual {p2, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 2755
    :cond_6f
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 2757
    :cond_72
    if-eqz p3, :cond_77

    .line 2758
    invoke-virtual {p2, p4, p5}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 2761
    :cond_77
    return-void
.end method

.method private greylist-max-o recycleVelocityTracker()V
    .registers 2

    .line 4759
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    .line 4760
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 4761
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4763
    :cond_c
    return-void
.end method

.method private blacklist releaseGlow(II)I
    .registers 6

    .line 3922
    nop

    .line 3923
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_30

    .line 3924
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3925
    iget-object p2, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_2c

    .line 3927
    :cond_18
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v1, p1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float p2, p2

    .line 3928
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p2, v2

    .line 3927
    invoke-virtual {v0, v1, p2}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v1

    .line 3930
    :goto_2c
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    goto :goto_62

    .line 3931
    :cond_30
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_62

    .line 3932
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 3933
    iget-object p2, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_5f

    .line 3935
    :cond_46
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    neg-int v1, p1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float p2, p2

    .line 3936
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p2, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    .line 3935
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result p2

    neg-float v1, p2

    .line 3938
    :goto_5f
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    .line 3940
    :cond_62
    :goto_62
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 3941
    sub-int/2addr p1, p2

    return p1
.end method

.method private blacklist reportActiveViewsToContentCapture()V
    .registers 4

    .line 6980
    sget-boolean v0, Landroid/widget/AbsListView;->sContentCaptureReportingEnabledByDeviceConfig:Z

    if-nez v0, :cond_5

    .line 6981
    return-void

    .line 6984
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContentCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    .line 6985
    if-eqz v0, :cond_16

    .line 6986
    invoke-virtual {v0, p0}, Landroid/view/contentcapture/ContentCaptureSession;->newViewStructure(Landroid/view/View;)Landroid/view/ViewStructure;

    move-result-object v1

    .line 6987
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/widget/AbsListView;->onProvideContentCaptureStructure(Landroid/view/ViewStructure;I)V

    .line 6988
    invoke-virtual {v0, v1}, Landroid/view/contentcapture/ContentCaptureSession;->notifyViewAppeared(Landroid/view/ViewStructure;)V

    .line 6990
    :cond_16
    return-void
.end method

.method private greylist-max-o scrollIfNeeded(IILandroid/view/MotionEvent;)V
    .registers 25

    .line 3699
    move-object/from16 v0, p0

    move/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    iget v1, v0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v1, v11, v1

    .line 3700
    nop

    .line 3701
    iget v2, v0, Landroid/widget/AbsListView;->mLastY:I

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_16

    .line 3702
    iget v2, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    sub-int/2addr v1, v2

    .line 3705
    :cond_16
    iget v2, v0, Landroid/widget/AbsListView;->mLastY:I

    if-eq v2, v3, :cond_1f

    iget v2, v0, Landroid/widget/AbsListView;->mLastY:I

    sub-int v2, v11, v2

    goto :goto_20

    :cond_1f
    move v2, v1

    .line 3708
    :goto_20
    invoke-direct {v0, v2, v10}, Landroid/widget/AbsListView;->releaseGlow(II)I

    move-result v2

    .line 3710
    neg-int v3, v2

    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    iget-object v5, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v13, 0x0

    invoke-virtual {v0, v13, v3, v4, v5}, Landroid/widget/AbsListView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v3

    const/4 v6, 0x0

    const/4 v14, 0x1

    if-eqz v3, :cond_59

    .line 3711
    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    aget v3, v3, v14

    add-int/2addr v1, v3

    .line 3712
    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    aget v3, v3, v14

    neg-int v3, v3

    .line 3713
    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    aget v4, v4, v14

    add-int/2addr v2, v4

    .line 3714
    if-eqz v12, :cond_54

    .line 3715
    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    aget v4, v4, v14

    int-to-float v4, v4

    invoke-virtual {v12, v6, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3716
    iget v4, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    iget-object v5, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    aget v5, v5, v14

    add-int/2addr v4, v5

    iput v4, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 3719
    :cond_54
    move/from16 v16, v3

    move v15, v1

    move v7, v2

    goto :goto_5d

    .line 3710
    :cond_59
    move/from16 v16, v13

    move v15, v1

    move v7, v2

    .line 3719
    :goto_5d
    nop

    .line 3720
    nop

    .line 3722
    iget v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/high16 v17, 0x3f800000    # 1.0f

    const/4 v8, 0x5

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1b3

    .line 3730
    iget-object v1, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v1, :cond_73

    .line 3732
    const-string v1, "AbsListView-scroll"

    invoke-static {v1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3734
    :cond_73
    iget v1, v0, Landroid/widget/AbsListView;->mLastY:I

    if-eq v11, v1, :cond_28d

    .line 3738
    iget v1, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-nez v1, :cond_8f

    .line 3739
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, v0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v1, v2, :cond_8f

    .line 3740
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 3741
    if-eqz v1, :cond_8f

    .line 3742
    invoke-interface {v1, v14}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3747
    :cond_8f
    iget v1, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    if-ltz v1, :cond_99

    .line 3748
    iget v1, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v2, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    goto :goto_9f

    .line 3752
    :cond_99
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 3755
    :goto_9f
    nop

    .line 3756
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3757
    if-eqz v2, :cond_ab

    .line 3758
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    goto :goto_ac

    .line 3757
    :cond_ab
    move v2, v13

    .line 3762
    :goto_ac
    nop

    .line 3763
    if-eqz v7, :cond_cc

    .line 3764
    invoke-virtual {v0, v15, v7}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v3

    .line 3767
    if-eqz v12, :cond_cd

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->enableScrollFeedbackForTouch()Z

    move-result v4

    if-eqz v4, :cond_cd

    .line 3768
    invoke-direct {v0}, Landroid/widget/AbsListView;->initHapticScrollFeedbackProviderIfNotExists()V

    .line 3769
    iget-object v4, v0, Landroid/widget/AbsListView;->mHapticScrollFeedbackProvider:Landroid/view/HapticScrollFeedbackProvider;

    .line 3770
    invoke-virtual {v12}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v5

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getSource()I

    move-result v9

    .line 3769
    invoke-virtual {v4, v5, v9, v14, v7}, Landroid/view/HapticScrollFeedbackProvider;->onScrollProgress(IIII)V

    goto :goto_cd

    .line 3763
    :cond_cc
    move v3, v13

    .line 3775
    :cond_cd
    :goto_cd
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3776
    if-eqz v1, :cond_1ab

    .line 3779
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 3780
    if-eqz v3, :cond_1a5

    .line 3782
    neg-int v3, v7

    sub-int/2addr v1, v2

    sub-int v2, v3, v1

    .line 3784
    move v4, v2

    sub-int v2, v4, v7

    const/4 v3, 0x0

    iget-object v5, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsListView;->dispatchNestedScroll(IIII[I)Z

    move-result v1

    if-eqz v1, :cond_104

    .line 3786
    iget-object v1, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    aget v1, v1, v14

    sub-int/2addr v13, v1

    .line 3787
    if-eqz v12, :cond_1a5

    .line 3788
    iget-object v1, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    aget v1, v1, v14

    int-to-float v1, v1

    invoke-virtual {v12, v6, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3789
    iget v1, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    iget-object v2, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    aget v2, v2, v14

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    goto/16 :goto_1a5

    .line 3792
    :cond_104
    move v2, v4

    iget v4, v0, Landroid/widget/AbsListView;->mScrollY:I

    move v1, v8

    iget v8, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    const/4 v9, 0x1

    move v3, v1

    const/4 v1, 0x0

    move v5, v3

    const/4 v3, 0x0

    move v6, v5

    const/4 v5, 0x0

    move v15, v6

    const/4 v6, 0x0

    move/from16 v18, v7

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v1

    .line 3795
    move v4, v2

    if-eqz v1, :cond_126

    iget-object v2, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_126

    .line 3797
    iget-object v2, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 3800
    :cond_126
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v2

    .line 3801
    if-eqz v2, :cond_134

    if-ne v2, v14, :cond_1a5

    .line 3803
    invoke-direct {v0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v2

    if-nez v2, :cond_1a5

    .line 3804
    :cond_134
    if-nez v1, :cond_13a

    .line 3805
    iput v13, v0, Landroid/widget/AbsListView;->mDirection:I

    .line 3806
    iput v15, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3809
    :cond_13a
    if-eqz v12, :cond_157

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->enableScrollFeedbackForTouch()Z

    move-result v1

    if-eqz v1, :cond_157

    .line 3810
    invoke-direct {v0}, Landroid/widget/AbsListView;->initHapticScrollFeedbackProviderIfNotExists()V

    .line 3811
    iget-object v1, v0, Landroid/widget/AbsListView;->mHapticScrollFeedbackProvider:Landroid/view/HapticScrollFeedbackProvider;

    .line 3812
    invoke-virtual {v12}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v2

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    if-lez v18, :cond_153

    move v5, v14

    goto :goto_154

    :cond_153
    move v5, v13

    .line 3811
    :goto_154
    invoke-virtual {v1, v2, v3, v14, v5}, Landroid/view/HapticScrollFeedbackProvider;->onScrollLimit(IIIZ)V

    .line 3817
    :cond_157
    if-lez v18, :cond_17e

    .line 3818
    iget-object v1, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    neg-int v2, v4

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v10

    .line 3819
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 3818
    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 3820
    iget-object v1, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_17a

    .line 3821
    iget-object v1, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3823
    :cond_17a
    invoke-direct {v0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    goto :goto_1a5

    .line 3824
    :cond_17e
    if-gez v18, :cond_1a5

    .line 3825
    iget-object v1, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v2, v4

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v10

    .line 3826
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float v3, v17, v3

    .line 3825
    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 3827
    iget-object v1, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1a2

    .line 3828
    iget-object v1, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3830
    :cond_1a2
    invoke-direct {v0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    .line 3835
    :cond_1a5
    :goto_1a5
    add-int v1, v11, v13

    add-int v1, v1, v16

    iput v1, v0, Landroid/widget/AbsListView;->mMotionY:I

    .line 3837
    :cond_1ab
    add-int v1, v11, v13

    add-int v1, v1, v16

    iput v1, v0, Landroid/widget/AbsListView;->mLastY:I

    .line 3838
    goto/16 :goto_28d

    .line 3839
    :cond_1b3
    move v1, v7

    move v3, v8

    iget v4, v0, Landroid/widget/AbsListView;->mTouchMode:I

    if-ne v4, v3, :cond_28d

    .line 3840
    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    if-eq v11, v3, :cond_28d

    .line 3841
    iget v3, v0, Landroid/widget/AbsListView;->mScrollY:I

    .line 3842
    sub-int v4, v3, v1

    .line 3843
    iget v5, v0, Landroid/widget/AbsListView;->mLastY:I

    if-le v11, v5, :cond_1c7

    move v12, v14

    goto :goto_1c9

    :cond_1c7
    const/4 v5, -0x1

    move v12, v5

    .line 3845
    :goto_1c9
    iget v5, v0, Landroid/widget/AbsListView;->mDirection:I

    if-nez v5, :cond_1cf

    .line 3846
    iput v12, v0, Landroid/widget/AbsListView;->mDirection:I

    .line 3849
    :cond_1cf
    neg-int v5, v1

    .line 3850
    if-gez v4, :cond_1d4

    if-gez v3, :cond_1d8

    :cond_1d4
    if-lez v4, :cond_1dc

    if-gtz v3, :cond_1dc

    .line 3851
    :cond_1d8
    neg-int v5, v3

    .line 3852
    add-int v7, v1, v5

    goto :goto_1dd

    .line 3854
    :cond_1dc
    move v7, v13

    .line 3857
    :goto_1dd
    if-eqz v5, :cond_251

    .line 3858
    iget v4, v0, Landroid/widget/AbsListView;->mScrollY:I

    iget v8, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    const/4 v9, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    move v6, v2

    move v2, v5

    const/4 v5, 0x0

    move/from16 v18, v6

    const/4 v6, 0x0

    move/from16 v19, v7

    const/4 v7, 0x0

    move/from16 v13, v19

    invoke-virtual/range {v0 .. v9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    .line 3860
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v1

    .line 3861
    if-eqz v1, :cond_202

    if-ne v1, v14, :cond_252

    .line 3863
    invoke-direct {v0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v1

    if-nez v1, :cond_252

    .line 3864
    :cond_202
    if-lez v15, :cond_228

    .line 3865
    iget-object v1, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v10

    .line 3866
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 3865
    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 3867
    iget-object v1, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_224

    .line 3868
    iget-object v1, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3870
    :cond_224
    invoke-direct {v0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    goto :goto_252

    .line 3871
    :cond_228
    if-gez v15, :cond_252

    .line 3872
    iget-object v1, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    neg-int v2, v2

    int-to-float v2, v2

    .line 3873
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v10

    .line 3874
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float v3, v17, v3

    .line 3872
    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 3875
    iget-object v1, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_24d

    .line 3876
    iget-object v1, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3878
    :cond_24d
    invoke-direct {v0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    goto :goto_252

    .line 3857
    :cond_251
    move v13, v7

    .line 3883
    :cond_252
    :goto_252
    if-eqz v13, :cond_283

    .line 3885
    iget v1, v0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v1, :cond_25e

    .line 3886
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/AbsListView;->mScrollY:I

    .line 3887
    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidateParentIfNeeded()V

    .line 3890
    :cond_25e
    invoke-virtual {v0, v13, v13}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 3892
    const/4 v6, 0x3

    iput v6, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3896
    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->findClosestMotionRow(I)I

    move-result v1

    .line 3898
    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3899
    iget v2, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v2, v1, v2

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3900
    if-eqz v2, :cond_27a

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    goto :goto_27b

    :cond_27a
    const/4 v2, 0x0

    :goto_27b
    iput v2, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3901
    add-int v2, v11, v16

    iput v2, v0, Landroid/widget/AbsListView;->mMotionY:I

    .line 3902
    iput v1, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3904
    :cond_283
    const/16 v20, 0x0

    add-int/lit8 v1, v11, 0x0

    add-int v1, v1, v16

    iput v1, v0, Landroid/widget/AbsListView;->mLastY:I

    .line 3905
    iput v12, v0, Landroid/widget/AbsListView;->mDirection:I

    .line 3908
    :cond_28d
    :goto_28d
    return-void
.end method

.method private greylist-max-o setFastScrollerAlwaysVisibleUiThread(Z)V
    .registers 3

    .line 1490
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_9

    .line 1491
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setAlwaysShow(Z)V

    .line 1493
    :cond_9
    return-void
.end method

.method private greylist-max-o setFastScrollerEnabledUiThread(Z)V
    .registers 3

    .line 1426
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_a

    .line 1427
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setEnabled(Z)V

    goto :goto_1b

    .line 1428
    :cond_a
    if-eqz p1, :cond_1b

    .line 1429
    new-instance p1, Landroid/widget/FastScroller;

    iget v0, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    invoke-direct {p1, p0, v0}, Landroid/widget/FastScroller;-><init>(Landroid/widget/AbsListView;I)V

    iput-object p1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 1430
    iget-object p1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/FastScroller;->setEnabled(Z)V

    .line 1433
    :cond_1b
    :goto_1b
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resolvePadding()V

    .line 1435
    iget-object p1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz p1, :cond_27

    .line 1436
    iget-object p1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {p1}, Landroid/widget/FastScroller;->updateLayout()V

    .line 1438
    :cond_27
    return-void
.end method

.method private greylist-max-o setItemViewLayoutParams(Landroid/view/View;I)V
    .registers 7

    .line 2540
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2542
    if-nez v0, :cond_d

    .line 2543
    invoke-virtual {p0}, Landroid/widget/AbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    goto :goto_1d

    .line 2544
    :cond_d
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 2545
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    goto :goto_1d

    .line 2547
    :cond_1a
    move-object v1, v0

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .line 2550
    :goto_1d
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v2, :cond_29

    .line 2551
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    .line 2553
    :cond_29
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    iput v2, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 2554
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p2

    iput-boolean p2, v1, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 2555
    if-eq v1, v0, :cond_3e

    .line 2556
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2558
    :cond_3e
    return-void
.end method

.method private static blacklist setupDeviceConfigProperties()V
    .registers 3

    .line 927
    sget-object v0, Landroid/widget/AbsListView;->sDeviceConfigChangeListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    if-nez v0, :cond_25

    .line 928
    const-string v0, "report_list_view_children"

    const/4 v1, 0x0

    const-string v2, "content_capture"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/widget/AbsListView;->sContentCaptureReportingEnabledByDeviceConfig:Z

    .line 932
    new-instance v0, Landroid/widget/AbsListView$DeviceConfigChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$DeviceConfigChangeListener;-><init>(Landroid/widget/AbsListView-IA;)V

    sput-object v0, Landroid/widget/AbsListView;->sDeviceConfigChangeListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 933
    nop

    .line 935
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    sget-object v1, Landroid/widget/AbsListView;->sDeviceConfigChangeListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 933
    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 938
    :cond_25
    return-void
.end method

.method private blacklist shouldAbsorb(Landroid/widget/EdgeEffect;I)Z
    .registers 5

    .line 4445
    const/4 v0, 0x1

    if-lez p2, :cond_4

    .line 4446
    return v0

    .line 4448
    :cond_4
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    .line 4451
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_19

    .line 4452
    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4454
    :cond_19
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    neg-int p2, p2

    invoke-virtual {v1, p2}, Landroid/widget/AbsListView$FlingRunnable;->getSplineFlingDistance(I)F

    move-result p2

    .line 4456
    cmpg-float p1, p2, p1

    if-gez p1, :cond_25

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    return v0
.end method

.method private blacklist shouldDisplayEdgeEffects()Z
    .registers 3

    .line 4490
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

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

.method private greylist-max-o showContextMenuForChildInternal(Landroid/view/View;FFZ)Z
    .registers 11

    .line 3494
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 3495
    const/4 v0, 0x0

    if-gez v3, :cond_8

    .line 3496
    return v0

    .line 3499
    :cond_8
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 3500
    nop

    .line 3502
    iget-object v1, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v1, :cond_1c

    .line 3503
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_1e

    .line 3502
    :cond_1c
    move-object v1, p0

    move-object v2, p1

    .line 3507
    :goto_1e
    if-nez v0, :cond_39

    .line 3508
    iget p1, v1, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int p1, v3, p1

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 3509
    invoke-virtual {p0, p1, v3, v4, v5}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object p1

    iput-object p1, v1, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3511
    if-eqz p4, :cond_35

    .line 3512
    invoke-super {p0, v2, p2, p3}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result v0

    goto :goto_39

    .line 3514
    :cond_35
    invoke-super {p0, v2}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    .line 3518
    :cond_39
    :goto_39
    return v0
.end method

.method private greylist-max-o showContextMenuInternal(FFZ)Z
    .registers 8

    .line 3459
    float-to-int v0, p1

    float-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 3460
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2b

    .line 3461
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 3462
    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3463
    if-eqz v3, :cond_2b

    .line 3464
    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3465
    if-eqz p3, :cond_26

    .line 3466
    invoke-super {p0, p0, p1, p2}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result p1

    return p1

    .line 3468
    :cond_26
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result p1

    return p1

    .line 3472
    :cond_2b
    if-eqz p3, :cond_32

    .line 3473
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->showContextMenu(FF)Z

    move-result p1

    return p1

    .line 3475
    :cond_32
    invoke-super {p0}, Landroid/widget/AdapterView;->showContextMenu()Z

    move-result p1

    return p1
.end method

.method private greylist-max-o showPopup()V
    .registers 2

    .line 6121
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_10

    .line 6122
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 6123
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 6125
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkFocus()V

    .line 6127
    :cond_10
    return-void
.end method

.method private greylist-max-o startScrollIfNeeded(IILandroid/view/MotionEvent;)Z
    .registers 10

    .line 3665
    iget v0, p0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v0, p2, v0

    .line 3666
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3667
    iget v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_10

    move v2, v3

    goto :goto_11

    :cond_10
    move v2, v4

    .line 3668
    :goto_11
    if-nez v2, :cond_17

    iget v5, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v1, v5, :cond_5d

    .line 3669
    :cond_17
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getNestedScrollAxes()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5d

    .line 3670
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 3671
    if-eqz v2, :cond_2a

    .line 3672
    const/4 v0, 0x5

    iput v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3673
    iput v4, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    goto :goto_37

    .line 3675
    :cond_2a
    const/4 v1, 0x3

    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3676
    if-lez v0, :cond_32

    iget v0, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    goto :goto_35

    :cond_32
    iget v0, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    neg-int v0, v0

    :goto_35
    iput v0, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3678
    :goto_37
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3679
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3680
    iget v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3681
    if-eqz v0, :cond_4d

    .line 3682
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 3684
    :cond_4d
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 3687
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3688
    if-eqz v0, :cond_59

    .line 3689
    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3691
    :cond_59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    .line 3692
    return v3

    .line 3695
    :cond_5d
    return v4
.end method

.method private blacklist stopEdgeGlowRecede(F)V
    .registers 5

    .line 4171
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_17

    .line 4172
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p1, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 4174
    :cond_17
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2c

    .line 4175
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    invoke-virtual {v0, v1, p1}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 4177
    :cond_2c
    return-void
.end method

.method private greylist-max-o updateOnScreenCheckedViews()V
    .registers 8

    .line 1304
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 1305
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 1306
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    const/4 v4, 0x0

    if-lt v2, v3, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    move v2, v4

    .line 1308
    :goto_18
    nop

    :goto_19
    if-ge v4, v1, :cond_3f

    .line 1309
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1310
    add-int v5, v0, v4

    .line 1312
    instance-of v6, v3, Landroid/widget/Checkable;

    if-eqz v6, :cond_31

    .line 1313
    check-cast v3, Landroid/widget/Checkable;

    iget-object v6, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-interface {v3, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_3c

    .line 1314
    :cond_31
    if-eqz v2, :cond_3c

    .line 1315
    iget-object v6, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setActivated(Z)V

    .line 1308
    :cond_3c
    :goto_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 1318
    :cond_3f
    return-void
.end method

.method private greylist-max-o useDefaultSelector()V
    .registers 3

    .line 1786
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1788
    return-void
.end method


# virtual methods
.method public whitelist addTouchables(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 4911
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 4912
    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 4913
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4915
    if-nez v2, :cond_b

    .line 4916
    return-void

    .line 4919
    :cond_b
    const/4 v3, 0x0

    :goto_c
    if-ge v3, v0, :cond_23

    .line 4920
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4921
    add-int v5, v1, v3

    invoke-interface {v2, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 4922
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4924
    :cond_1d
    invoke-virtual {v4, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 4919
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 4926
    :cond_23
    return-void
.end method

.method public whitelist afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    .line 6606
    return-void
.end method

.method public whitelist beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 6565
    return-void
.end method

.method public whitelist canScrollList(I)Z
    .registers 7

    .line 5482
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 5483
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 5484
    return v1

    .line 5487
    :cond_8
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5488
    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 5489
    const/4 v4, 0x1

    if-lez p1, :cond_29

    .line 5490
    add-int/lit8 p1, v0, -0x1

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    .line 5491
    add-int/2addr v2, v0

    .line 5492
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lt v2, v0, :cond_27

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    if-le p1, v0, :cond_28

    :cond_27
    move v1, v4

    :cond_28
    return v1

    .line 5494
    :cond_29
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    .line 5495
    if-gtz v2, :cond_37

    iget v0, v3, Landroid/graphics/Rect;->top:I

    if-ge p1, v0, :cond_38

    :cond_37
    move v1, v4

    :cond_38
    return v1
.end method

.method public whitelist checkInputConnectionProxy(Landroid/view/View;)Z
    .registers 3

    .line 6478
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 6634
    instance-of p1, p1, Landroid/widget/AbsListView$LayoutParams;

    return p1
.end method

.method public whitelist clearChoices()V
    .registers 2

    .line 1150
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_9

    .line 1151
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1153
    :cond_9
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_12

    .line 1154
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1156
    :cond_12
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1157
    return-void
.end method

.method public whitelist clearTextFilter()V
    .registers 3

    .line 6527
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_1f

    .line 6528
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6529
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 6530
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 6531
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 6534
    :cond_1f
    return-void
.end method

.method protected whitelist computeVerticalScrollExtent()I
    .registers 6

    .line 2152
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2153
    const/4 v1, 0x0

    if-lez v0, :cond_3a

    .line 2154
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_39

    .line 2155
    mul-int/lit8 v2, v0, 0x64

    .line 2157
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2158
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2159
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 2160
    if-lez v1, :cond_20

    .line 2161
    mul-int/lit8 v4, v4, 0x64

    div-int/2addr v4, v1

    add-int/2addr v2, v4

    .line 2164
    :cond_20
    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2165
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 2166
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2167
    if-lez v0, :cond_38

    .line 2168
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v0

    sub-int/2addr v2, v1

    .line 2171
    :cond_38
    return v2

    .line 2173
    :cond_39
    return v3

    .line 2176
    :cond_3a
    return v1
.end method

.method protected whitelist computeVerticalScrollOffset()I
    .registers 5

    .line 2181
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 2182
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 2183
    const/4 v2, 0x0

    if-ltz v0, :cond_52

    if-lez v1, :cond_52

    .line 2184
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v3, :cond_3b

    .line 2185
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2186
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2187
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 2188
    if-lez v1, :cond_3a

    .line 2189
    mul-int/lit8 v0, v0, 0x64

    mul-int/lit8 v3, v3, 0x64

    div-int/2addr v3, v1

    sub-int/2addr v0, v3

    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    int-to-float v1, v1

    .line 2190
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 2189
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 2192
    :cond_3a
    goto :goto_52

    .line 2194
    :cond_3b
    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 2195
    if-nez v0, :cond_40

    .line 2196
    goto :goto_49

    .line 2197
    :cond_40
    add-int v2, v0, v1

    if-ne v2, v3, :cond_46

    .line 2198
    move v2, v3

    goto :goto_49

    .line 2200
    :cond_46
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    .line 2202
    :goto_49
    int-to-float v0, v0

    int-to-float v1, v1

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 2205
    :cond_52
    :goto_52
    return v2
.end method

.method protected whitelist computeVerticalScrollRange()I
    .registers 4

    .line 2211
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_28

    .line 2212
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2213
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v1, :cond_2a

    .line 2215
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2a

    .line 2218
    :cond_28
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 2220
    :cond_2a
    :goto_2a
    return v0
.end method

.method greylist-max-o confirmCheckedPositionsById()V
    .registers 14

    .line 5904
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 5906
    nop

    .line 5907
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_9
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_87

    .line 5908
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v7

    .line 5909
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 5911
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 5912
    cmp-long v3, v7, v3

    const/4 v10, 0x1

    if-eqz v3, :cond_80

    .line 5914
    add-int/lit8 v3, v6, -0x14

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 5915
    add-int/lit8 v4, v6, 0x14

    iget v5, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 5916
    nop

    .line 5917
    nop

    :goto_3e
    if-ge v3, v4, :cond_5e

    .line 5918
    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v11

    .line 5919
    cmp-long v5, v7, v11

    if-nez v5, :cond_5b

    .line 5920
    nop

    .line 5921
    iget-object v4, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5922
    iget-object v4, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 5923
    move v3, v10

    goto :goto_5f

    .line 5917
    :cond_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    :cond_5e
    move v3, v0

    .line 5927
    :goto_5f
    if-nez v3, :cond_7f

    .line 5928
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v7, v8}, Landroid/util/LongSparseArray;->delete(J)V

    .line 5929
    add-int/lit8 v1, v1, -0x1

    .line 5930
    iget v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    sub-int/2addr v2, v10

    iput v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 5931
    nop

    .line 5932
    iget-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_7e

    iget-object v2, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v2, :cond_7e

    .line 5933
    iget-object v4, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v5, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 5937
    :cond_7e
    move v2, v10

    :cond_7f
    goto :goto_85

    .line 5938
    :cond_80
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v6, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5907
    :goto_85
    add-int/2addr v1, v10

    goto :goto_9

    .line 5942
    :cond_87
    if-eqz v2, :cond_92

    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_92

    .line 5943
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 5945
    :cond_92
    return-void
.end method

.method greylist-max-o createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 6

    .line 3258
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method greylist-max-o createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;
    .registers 2

    .line 5286
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    return-object v0
.end method

.method public whitelist deferNotifyDataSetChanged()V
    .registers 2

    .line 6798
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 6799
    return-void
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 2786
    nop

    .line 2787
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    move v0, v2

    .line 2788
    :goto_c
    if-eqz v0, :cond_37

    .line 2789
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2790
    iget v3, p0, Landroid/widget/AbsListView;->mScrollX:I

    .line 2791
    iget v4, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 2792
    iget v5, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Landroid/widget/AbsListView;->mRight:I

    add-int/2addr v3, v7

    iget v7, p0, Landroid/widget/AbsListView;->mLeft:I

    sub-int/2addr v3, v7

    iget v7, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int/2addr v3, v7

    iget v7, p0, Landroid/widget/AbsListView;->mBottom:I

    add-int/2addr v4, v7

    iget v7, p0, Landroid/widget/AbsListView;->mTop:I

    sub-int/2addr v4, v7

    iget v7, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int/2addr v4, v7

    invoke-virtual {p1, v5, v6, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2795
    iget v3, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v3, v3, -0x23

    iput v3, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    .line 2798
    :cond_37
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 2799
    if-nez v3, :cond_3e

    .line 2800
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2803
    :cond_3e
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2805
    if-eqz v3, :cond_46

    .line 2806
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2809
    :cond_46
    if-eqz v0, :cond_50

    .line 2810
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2811
    iget p1, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    or-int/2addr p1, v1

    iput p1, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    .line 2813
    :cond_50
    return-void
.end method

.method public whitelist dispatchDrawableHotspotChanged(FF)V
    .registers 3

    .line 3558
    return-void
.end method

.method protected whitelist dispatchSetPressed(Z)V
    .registers 2

    .line 3552
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 12

    .line 4680
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 4681
    invoke-direct {p0}, Landroid/widget/AbsListView;->shouldDisplayEdgeEffects()Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 4682
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 4683
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getClipToPadding()Z

    move-result v1

    .line 4689
    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    .line 4690
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int/2addr v3, v4

    .line 4691
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int/2addr v4, v5

    .line 4692
    iget v5, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    .line 4693
    iget v6, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    goto :goto_36

    .line 4695
    :cond_2b
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v3

    .line 4696
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    .line 4697
    nop

    .line 4698
    move v5, v2

    move v6, v5

    .line 4700
    :goto_36
    iget-object v7, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 4701
    iget-object v7, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 4702
    iget-object v7, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_73

    .line 4703
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 4704
    add-int v8, v5, v3

    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 4705
    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v9

    add-int/2addr v9, v6

    .line 4704
    invoke-virtual {p1, v5, v6, v8, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 4706
    iget v8, p0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v8, v0

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/2addr v8, v6

    .line 4707
    int-to-float v9, v5

    int-to-float v8, v8

    invoke-virtual {p1, v9, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4708
    iget-object v8, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v8, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v8

    if-eqz v8, :cond_70

    .line 4709
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    .line 4711
    :cond_70
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4713
    :cond_73
    iget-object v7, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_b9

    .line 4714
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 4715
    add-int/2addr v6, v4

    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v4

    sub-int v4, v6, v4

    add-int v8, v5, v3

    invoke-virtual {p1, v5, v4, v8, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 4717
    neg-int v4, v3

    add-int/2addr v4, v5

    .line 4718
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    iget v6, p0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v0, v6

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4719
    if-eqz v1, :cond_9e

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    :cond_9e
    sub-int/2addr v0, v2

    .line 4720
    int-to-float v1, v4

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4721
    int-to-float v0, v3

    const/4 v1, 0x0

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 4722
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 4723
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    .line 4725
    :cond_b6
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4728
    :cond_b9
    return-void
.end method

.method protected whitelist drawableStateChanged()V
    .registers 1

    .line 3053
    invoke-super {p0}, Landroid/widget/AdapterView;->drawableStateChanged()V

    .line 3054
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 3055
    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4

    .line 7793
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 7795
    const-string v0, "drawing:cacheColorHint"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCacheColorHint()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 7796
    const-string v0, "list:fastScrollEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7797
    const-string v0, "list:scrollingCacheEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isScrollingCacheEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7798
    const-string v0, "list:smoothScrollbarEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isSmoothScrollbarEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7799
    const-string v0, "list:stackFromBottom"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isStackFromBottom()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7800
    const-string v0, "list:textFilterEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7802
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 7803
    if-eqz v0, :cond_47

    .line 7804
    const-string v1, "selectedView"

    invoke-virtual {p1, v1}, Landroid/view/ViewHierarchyEncoder;->addPropertyKey(Ljava/lang/String;)V

    .line 7805
    invoke-virtual {v0, p1}, Landroid/view/View;->encode(Landroid/view/ViewHierarchyEncoder;)V

    .line 7807
    :cond_47
    return-void
.end method

.method abstract greylist-max-o fillGap(Z)V
.end method

.method greylist-max-o findClosestMotionRow(I)I
    .registers 4

    .line 5755
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 5756
    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 5757
    return v1

    .line 5760
    :cond_8
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result p1

    .line 5761
    if-eq p1, v1, :cond_f

    goto :goto_14

    :cond_f
    iget p1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    :goto_14
    return p1
.end method

.method abstract greylist findMotionRow(I)I
.end method

.method public whitelist fling(I)V
    .registers 3

    .line 4626
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_b

    .line 4627
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4629
    :cond_b
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4630
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 4631
    return-void
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 5

    .line 6618
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 124
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 6624
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;
    .registers 4

    .line 6629
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 1642
    const-class v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;
    .registers 4

    .line 2342
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2343
    :goto_4
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_12

    if-eq v0, p0, :cond_12

    .line 2344
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 2345
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_4

    .line 2348
    :cond_12
    if-nez v1, :cond_16

    .line 2349
    const/4 p1, 0x0

    return-object p1

    .line 2352
    :cond_16
    return-object p1
.end method

.method public whitelist getBottomEdgeEffectColor()I
    .registers 2

    .line 6909
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getColor()I

    move-result v0

    return v0
.end method

.method protected whitelist getBottomFadingEdgeStrength()F
    .registers 6

    .line 2242
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2243
    invoke-super {p0}, Landroid/widget/AdapterView;->getBottomFadingEdgeStrength()F

    move-result v1

    .line 2244
    if-nez v0, :cond_b

    .line 2245
    return v1

    .line 2247
    :cond_b
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_19

    .line 2248
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 2251
    :cond_19
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2252
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    .line 2253
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v3

    int-to-float v3, v3

    .line 2254
    iget v4, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int v4, v2, v4

    if-le v0, v4, :cond_3a

    .line 2255
    sub-int/2addr v0, v2

    iget v1, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    div-float v1, v0, v3

    goto :goto_3b

    :cond_3a
    nop

    .line 2254
    :goto_3b
    return v1
.end method

.method protected whitelist getBottomPaddingOffset()I
    .registers 3

    .line 2837
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    goto :goto_b

    :cond_9
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    :goto_b
    return v0
.end method

.method public whitelist getCacheColorHint()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .line 6702
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public whitelist getCheckedItemCount()I
    .registers 2

    .line 1067
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    return v0
.end method

.method public whitelist getCheckedItemIds()[J
    .registers 7

    .line 1131
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_e

    goto :goto_23

    .line 1135
    :cond_e
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1136
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    .line 1137
    new-array v3, v2, [J

    .line 1139
    nop

    :goto_17
    if-ge v1, v2, :cond_22

    .line 1140
    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 1139
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1143
    :cond_22
    return-object v3

    .line 1132
    :cond_23
    :goto_23
    new-array v0, v1, [J

    return-object v0
.end method

.method public whitelist getCheckedItemPosition()I
    .registers 3

    .line 1099
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_19

    .line 1100
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    return v0

    .line 1103
    :cond_19
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .registers 2

    .line 1116
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_7

    .line 1117
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    return-object v0

    .line 1119
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getChoiceMode()I
    .registers 2

    .line 1332
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    return v0
.end method

.method protected whitelist getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .line 3445
    iget-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public whitelist getFocusedRect(Landroid/graphics/Rect;)V
    .registers 4

    .line 1773
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1774
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_13

    .line 1777
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1778
    invoke-virtual {p0, v0, p1}, Landroid/widget/AbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_16

    .line 1781
    :cond_13
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1783
    :goto_16
    return-void
.end method

.method greylist-max-o getFooterViewsCount()I
    .registers 2

    .line 5695
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o getHeaderViewsCount()I
    .registers 2

    .line 5685
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o getHeightForPosition(I)I
    .registers 5

    .line 7734
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 7735
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 7736
    sub-int v0, p1, v0

    .line 7737
    if-ltz v0, :cond_17

    if-ge v0, v1, :cond_17

    .line 7739
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 7740
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    return p1

    .line 7743
    :cond_17
    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v0

    .line 7744
    iget v1, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 7745
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 7746
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, v0, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 7747
    return v1
.end method

.method protected whitelist getLeftPaddingOffset()I
    .registers 3

    .line 2822
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    goto :goto_c

    :cond_9
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    neg-int v0, v0

    :goto_c
    return v0
.end method

.method public whitelist getListPaddingBottom()I
    .registers 2

    .line 2430
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public whitelist getListPaddingLeft()I
    .registers 2

    .line 2442
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public whitelist getListPaddingRight()I
    .registers 2

    .line 2454
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public whitelist getListPaddingTop()I
    .registers 2

    .line 2418
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected whitelist getRightPaddingOffset()I
    .registers 3

    .line 2832
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    goto :goto_b

    :cond_9
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    :goto_b
    return v0
.end method

.method public whitelist getSelectedView()Landroid/view/View;
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 2402
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lez v0, :cond_12

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_12

    .line 2403
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 2405
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method greylist-max-o getSelectionModeForAccessibility()I
    .registers 3

    .line 1667
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChoiceMode()I

    move-result v0

    .line 1668
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_e

    .line 1677
    return v1

    .line 1675
    :pswitch_9
    const/4 v0, 0x2

    return v0

    .line 1672
    :pswitch_b
    const/4 v0, 0x1

    return v0

    .line 1670
    :pswitch_d
    return v1

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public whitelist getSelector()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 2987
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getSolidColor()I
    .registers 2

    .line 6668
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public whitelist getTextFilter()Ljava/lang/CharSequence;
    .registers 2

    .line 2102
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_f

    .line 2103
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    .line 2105
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getTopEdgeEffectColor()I
    .registers 2

    .line 6895
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getColor()I

    move-result v0

    return v0
.end method

.method protected whitelist getTopFadingEdgeStrength()F
    .registers 5

    .line 2225
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2226
    invoke-super {p0}, Landroid/widget/AdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 2227
    if-nez v0, :cond_b

    .line 2228
    return v1

    .line 2230
    :cond_b
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v0, :cond_12

    .line 2231
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 2234
    :cond_12
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 2235
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v2

    int-to-float v2, v2

    .line 2236
    iget v3, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    if-ge v0, v3, :cond_2b

    iget v1, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    int-to-float v0, v0

    div-float v1, v0, v2

    :cond_2b
    return v1
.end method

.method protected whitelist getTopPaddingOffset()I
    .registers 3

    .line 2827
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    goto :goto_c

    :cond_9
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    neg-int v0, v0

    :goto_c
    return v0
.end method

.method public whitelist getTranscriptMode()I
    .registers 2

    .line 6663
    iget v0, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    return v0
.end method

.method public whitelist getVerticalScrollbarWidth()I
    .registers 3

    .line 1518
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1519
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v1}, Landroid/widget/FastScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 1521
    :cond_1b
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    return v0
.end method

.method greylist-max-o handleBoundsChange()V
    .registers 7

    .line 2867
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mInLayout:Z

    if-eqz v0, :cond_5

    .line 2868
    return-void

    .line 2870
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2871
    if-lez v0, :cond_2c

    .line 2872
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 2873
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 2874
    const/4 v2, 0x0

    :goto_12
    if-ge v2, v0, :cond_2c

    .line 2875
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2876
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 2878
    if-eqz v4, :cond_26

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lt v5, v1, :cond_26

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ge v4, v1, :cond_29

    .line 2879
    :cond_26
    invoke-virtual {v3}, Landroid/view/View;->forceLayout()V

    .line 2874
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 2883
    :cond_2c
    return-void
.end method

.method protected whitelist handleDataChanged()V
    .registers 12

    .line 5949
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 5950
    iget v1, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    .line 5951
    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v2, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    .line 5953
    iget v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v2, :cond_1b

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 5954
    invoke-virtual {p0}, Landroid/widget/AbsListView;->confirmCheckedPositionsById()V

    .line 5958
    :cond_1b
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->clearTransientStateViews()V

    .line 5960
    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v0, :cond_e4

    .line 5965
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    if-eqz v6, :cond_ba

    .line 5967
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 5968
    iput-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 5970
    iget v6, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_36

    .line 5971
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5972
    return-void

    .line 5973
    :cond_36
    iget v6, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    if-ne v6, v5, :cond_6b

    .line 5974
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    if-eqz v6, :cond_43

    .line 5975
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    .line 5976
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5977
    return-void

    .line 5979
    :cond_43
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v6

    .line 5980
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    .line 5981
    add-int/lit8 v9, v6, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 5982
    if-eqz v9, :cond_5d

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    goto :goto_5e

    :cond_5d
    move v9, v8

    .line 5983
    :goto_5e
    iget v10, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v10, v6

    if-lt v10, v1, :cond_68

    if-gt v9, v8, :cond_68

    .line 5985
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5986
    return-void

    .line 5990
    :cond_68
    invoke-virtual {p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    .line 5993
    :cond_6b
    iget v1, p0, Landroid/widget/AbsListView;->mSyncMode:I

    const/4 v6, 0x5

    packed-switch v1, :pswitch_data_102

    goto :goto_ba

    .line 6034
    :pswitch_72
    iput v6, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 6035
    iget v1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v5

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 6037
    return-void

    .line 5995
    :pswitch_82
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_98

    .line 6000
    iput v6, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 6001
    iget v1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v5

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 6003
    return-void

    .line 6007
    :cond_98
    invoke-virtual {p0}, Landroid/widget/AbsListView;->findSyncPosition()I

    move-result v1

    .line 6008
    if-ltz v1, :cond_ba

    .line 6010
    invoke-virtual {p0, v1, v5}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v8

    .line 6011
    if-ne v8, v1, :cond_ba

    .line 6013
    iput v1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 6015
    iget-wide v2, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-nez v0, :cond_b4

    .line 6018
    iput v6, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_b6

    .line 6022
    :cond_b4
    iput v7, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 6026
    :goto_b6
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 6027
    return-void

    .line 6041
    :cond_ba
    :goto_ba
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_df

    .line 6043
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v1

    .line 6046
    if-lt v1, v0, :cond_c8

    .line 6047
    add-int/lit8 v1, v0, -0x1

    .line 6049
    :cond_c8
    if-gez v1, :cond_cb

    .line 6050
    move v1, v4

    .line 6054
    :cond_cb
    invoke-virtual {p0, v1, v5}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 6056
    if-ltz v0, :cond_d5

    .line 6057
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 6058
    return-void

    .line 6061
    :cond_d5
    invoke-virtual {p0, v1, v4}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 6062
    if-ltz v0, :cond_e4

    .line 6063
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 6064
    return-void

    .line 6070
    :cond_df
    iget v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    if-ltz v0, :cond_e4

    .line 6071
    return-void

    .line 6078
    :cond_e4
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v0, :cond_e9

    goto :goto_ea

    :cond_e9
    move v3, v5

    :goto_ea
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 6079
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    .line 6080
    const-wide/high16 v5, -0x8000000000000000L

    iput-wide v5, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    .line 6081
    iput v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    .line 6082
    iput-wide v5, p0, Landroid/widget/AbsListView;->mNextSelectedRowId:J

    .line 6083
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 6084
    iput-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 6085
    iput v0, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 6086
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkSelectionChanged()V

    .line 6087
    return-void

    nop

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_82
        :pswitch_72
    .end packed-switch
.end method

.method protected greylist-max-o handleScrollBarDragging(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 3998
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist hasTextFilter()Z
    .registers 2

    .line 6540
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method greylist-max-o hideSelector()V
    .registers 4

    .line 5710
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_25

    .line 5711
    iget v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_e

    .line 5712
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5714
    :cond_e
    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1c

    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    iget v2, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-eq v0, v2, :cond_1c

    .line 5715
    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5717
    :cond_1c
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 5718
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 5719
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 5721
    :cond_25
    return-void
.end method

.method protected greylist-max-o internalSetPadding(IIII)V
    .registers 5

    .line 2845
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->internalSetPadding(IIII)V

    .line 2846
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLayoutRequested()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 2847
    invoke-virtual {p0}, Landroid/widget/AbsListView;->handleBoundsChange()V

    .line 2849
    :cond_c
    return-void
.end method

.method public whitelist invalidateViews()V
    .registers 2

    .line 5768
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 5769
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 5770
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 5771
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 5772
    return-void
.end method

.method greylist invokeOnItemScrollListener()V
    .registers 5

    .line 1616
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_11

    .line 1617
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FastScroller;->onScroll(III)V

    .line 1619
    :cond_11
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_22

    .line 1620
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 1623
    :cond_22
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/AbsListView;->onScrollChanged(IIII)V

    .line 1624
    return-void
.end method

.method public whitelist isDrawSelectorOnTop()Z
    .registers 2

    .line 2949
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    return v0
.end method

.method public whitelist isFastScrollAlwaysVisible()Z
    .registers 4

    .line 1509
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_11

    .line 1510
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    if-eqz v0, :cond_f

    goto :goto_10

    :cond_f
    move v1, v2

    :goto_10
    return v1

    .line 1512
    :cond_11
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_23

    :cond_22
    move v1, v2

    :goto_23
    return v1
.end method

.method public whitelist isFastScrollEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1533
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-nez v0, :cond_7

    .line 1534
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    return v0

    .line 1536
    :cond_7
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected whitelist isInFilterMode()Z
    .registers 2

    .line 6201
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method public whitelist isItemChecked(I)Z
    .registers 3

    .line 1082
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_f

    .line 1083
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1

    .line 1086
    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method protected whitelist isPaddingOffsetRequired()Z
    .registers 3

    .line 2817
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v1, 0x22

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist isScrollingCacheEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1720
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public whitelist isSelectedChildViewEnabled()Z
    .registers 2

    .line 2769
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    return v0
.end method

.method public whitelist isSmoothScrollbarEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1598
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public whitelist isStackFromBottom()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1799
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public whitelist isTextFilterEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1768
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected greylist-max-r isVerticalScrollBarHidden()Z
    .registers 2

    .line 1563
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public whitelist jumpDrawablesToCurrentState()V
    .registers 2

    .line 3099
    invoke-super {p0}, Landroid/widget/AdapterView;->jumpDrawablesToCurrentState()V

    .line 3100
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 3101
    :cond_c
    return-void
.end method

.method greylist-max-o keyPressed()V
    .registers 5

    .line 2995
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_7b

    .line 2999
    :cond_d
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3000
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3001
    if-eqz v0, :cond_7a

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFocused()Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 3002
    :cond_1f
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7a

    .line 3004
    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3006
    const/4 v2, 0x1

    if-eqz v1, :cond_3b

    .line 3007
    invoke-virtual {v1}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v3

    if-eqz v3, :cond_38

    return-void

    .line 3008
    :cond_38
    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 3010
    :cond_3b
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3012
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v1

    .line 3013
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3014
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLongPressTimeoutMillis()I

    move-result v2

    .line 3015
    if-eqz v0, :cond_5d

    instance-of v3, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v3, :cond_5d

    .line 3016
    if-eqz v1, :cond_58

    .line 3017
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_5d

    .line 3019
    :cond_58
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 3022
    :cond_5d
    :goto_5d
    if-eqz v1, :cond_7a

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v0, :cond_7a

    .line 3023
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-nez v0, :cond_6f

    .line 3024
    new-instance v0, Landroid/widget/AbsListView$CheckForKeyLongPress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/AbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView-IA;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    .line 3026
    :cond_6f
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {v0}, Landroid/widget/AbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 3027
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    int-to-long v1, v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3030
    :cond_7a
    return-void

    .line 2996
    :cond_7b
    :goto_7b
    return-void
.end method

.method protected whitelist layoutChildren()V
    .registers 1

    .line 2334
    return-void
.end method

.method greylist-max-o obtainView(I[Z)Landroid/view/View;
    .registers 9

    .line 2473
    const-string v0, "obtainView"

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2475
    const/4 v0, 0x0

    aput-boolean v0, p2, v0

    .line 2479
    iget-object v3, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v3, p1}, Landroid/widget/AbsListView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v3

    .line 2480
    const/4 v4, 0x1

    if-eqz v3, :cond_39

    .line 2481
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .line 2484
    iget v1, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    if-ne v1, v2, :cond_33

    .line 2485
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2488
    if-eq v1, v3, :cond_33

    .line 2489
    invoke-direct {p0, v1, p1}, Landroid/widget/AbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 2490
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, v1, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2494
    :cond_33
    aput-boolean v4, p2, v0

    .line 2497
    invoke-virtual {v3}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 2498
    return-object v3

    .line 2501
    :cond_39
    iget-object v3, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v3, p1}, Landroid/widget/AbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v3

    .line 2502
    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 2503
    if-eqz v3, :cond_5a

    .line 2504
    if-eq v5, v3, :cond_4f

    .line 2506
    iget-object p2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {p2, v3, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_5a

    .line 2507
    :cond_4f
    invoke-virtual {v5}, Landroid/view/View;->isTemporarilyDetached()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 2508
    aput-boolean v4, p2, v0

    .line 2511
    invoke-virtual {v5}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 2515
    :cond_5a
    :goto_5a
    iget p2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eqz p2, :cond_63

    .line 2516
    iget p2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    invoke-virtual {v5, p2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 2519
    :cond_63
    invoke-virtual {v5}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p2

    if-nez p2, :cond_6c

    .line 2520
    invoke-virtual {v5, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2523
    :cond_6c
    invoke-direct {p0, v5, p1}, Landroid/widget/AbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 2525
    iget-object p1, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_91

    .line 2526
    iget-object p1, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    if-nez p1, :cond_86

    .line 2527
    new-instance p1, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    invoke-direct {p1, p0}, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;-><init>(Landroid/widget/AbsListView;)V

    iput-object p1, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    .line 2529
    :cond_86
    invoke-virtual {v5}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object p1

    if-nez p1, :cond_91

    .line 2530
    iget-object p1, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    invoke-virtual {v5, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 2534
    :cond_91
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2536
    return-object v5
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 3

    .line 3105
    invoke-super {p0}, Landroid/widget/AdapterView;->onAttachedToWindow()V

    .line 3107
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3108
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3109
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_19

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_19

    .line 3110
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3113
    :cond_19
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-nez v0, :cond_3e

    .line 3114
    new-instance v0, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 3115
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3118
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 3119
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v0, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    .line 3120
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 3122
    :cond_3e
    return-void
.end method

.method public whitelist onCancelPendingInputEvents()V
    .registers 2

    .line 3263
    invoke-super {p0}, Landroid/widget/AdapterView;->onCancelPendingInputEvents()V

    .line 3264
    iget-object v0, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-eqz v0, :cond_c

    .line 3265
    iget-object v0, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3267
    :cond_c
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    if-eqz v0, :cond_15

    .line 3268
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3270
    :cond_15
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    if-eqz v0, :cond_1e

    .line 3271
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3273
    :cond_1e
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-eqz v0, :cond_27

    .line 3274
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3276
    :cond_27
    return-void
.end method

.method public whitelist onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 4

    .line 6284
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 6285
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    if-nez v0, :cond_19

    .line 6286
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 6287
    new-instance v0, Landroid/widget/AbsListView$InputConnectionWrapper;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$InputConnectionWrapper;-><init>(Landroid/widget/AbsListView;Landroid/view/inputmethod/EditorInfo;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    .line 6289
    :cond_19
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 6290
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 6291
    iget-object p1, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    return-object p1

    .line 6293
    :cond_23
    const/4 p1, 0x0

    return-object p1
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 5

    .line 3126
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    .line 3128
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    .line 3131
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 3134
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 3136
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3137
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3138
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_23

    .line 3139
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3140
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 3143
    :cond_23
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    iget-object v0, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v0, :cond_35

    .line 3144
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v3, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3145
    iput-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 3148
    :cond_35
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_40

    .line 3149
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 3150
    iput-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3153
    :cond_40
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_4b

    .line 3154
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 3155
    iput-object v1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 3158
    :cond_4b
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v0, :cond_54

    .line 3159
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3162
    :cond_54
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v0, :cond_5d

    .line 3163
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3166
    :cond_5d
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v0, :cond_66

    .line 3167
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3170
    :cond_66
    iget-object v0, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-eqz v0, :cond_6f

    .line 3171
    iget-object v0, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3174
    :cond_6f
    iget-object v0, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v0, :cond_7d

    .line 3175
    iget-object v0, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3176
    iget-object v0, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3179
    :cond_7d
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    .line 3180
    return-void
.end method

.method protected whitelist onDisplayHint(I)V
    .registers 3

    .line 6091
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDisplayHint(I)V

    .line 6092
    sparse-switch p1, :sswitch_data_34

    goto :goto_2a

    .line 6094
    :sswitch_7
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 6095
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_2a

    .line 6099
    :sswitch_17
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 6100
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 6104
    :cond_2a
    :goto_2a
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2f

    const/4 p1, 0x1

    goto :goto_30

    :cond_2f
    const/4 p1, 0x0

    :goto_30
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    .line 6105
    return-void

    nop

    :sswitch_data_34
    .sparse-switch
        0x0 -> :sswitch_17
        0x4 -> :sswitch_7
    .end sparse-switch
.end method

.method public whitelist onFilterComplete(I)V
    .registers 3

    .line 6610
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_c

    if-lez p1, :cond_c

    .line 6611
    const/4 p1, -0x1

    iput p1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 6612
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 6614
    :cond_c
    return-void
.end method

.method protected whitelist onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 4

    .line 2110
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2111
    if-eqz p1, :cond_2b

    iget p1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez p1, :cond_2b

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result p1

    if-nez p1, :cond_2b

    .line 2112
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_28

    iget-object p1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_28

    .line 2115
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 2116
    iget p1, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput p1, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    .line 2117
    iget-object p1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result p1

    iput p1, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 2119
    :cond_28
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 2121
    :cond_2b
    return-void
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    .line 4538
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_fc

    goto/16 :goto_f6

    .line 4599
    :sswitch_b
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 4600
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v0

    .line 4601
    const/16 v3, 0x20

    if-eq v0, v3, :cond_1b

    if-ne v0, v1, :cond_f6

    :cond_1b
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eqz v0, :cond_23

    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-ne v0, v2, :cond_f6

    .line 4604
    :cond_23
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->performStylusButtonPressAction(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 4605
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4606
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_f6

    .line 4541
    :sswitch_35
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3f

    .line 4542
    const/16 v0, 0x9

    goto :goto_4b

    .line 4543
    :cond_3f
    const/high16 v0, 0x400000

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 4544
    const/16 v0, 0x1a

    goto :goto_4b

    .line 4546
    :cond_4a
    move v0, v1

    .line 4549
    :goto_4b
    if-ne v0, v1, :cond_4f

    const/4 v1, 0x0

    goto :goto_53

    :cond_4f
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 4550
    :goto_53
    iget v3, p0, Landroid/widget/AbsListView;->mVerticalScrollFactor:F

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 4551
    if-eqz v1, :cond_f6

    .line 4553
    const/4 v3, 0x0

    if-lez v1, :cond_61

    move v4, v3

    goto :goto_66

    :cond_61
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v2

    .line 4555
    :goto_66
    nop

    .line 4556
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4557
    if-eqz v4, :cond_72

    .line 4558
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    goto :goto_73

    .line 4557
    :cond_72
    move v5, v3

    .line 4561
    :goto_73
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v6

    .line 4563
    invoke-virtual {p0, v1, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v7

    if-nez v7, :cond_9c

    .line 4564
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->scrollFeedbackApi()Z

    move-result v3

    if-eqz v3, :cond_93

    .line 4565
    invoke-direct {p0}, Landroid/widget/AbsListView;->initHapticScrollFeedbackProviderIfNotExists()V

    .line 4566
    iget-object v3, p0, Landroid/widget/AbsListView;->mHapticScrollFeedbackProvider:Landroid/view/HapticScrollFeedbackProvider;

    .line 4567
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    .line 4566
    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/view/HapticScrollFeedbackProvider;->onScrollProgress(IIII)V

    .line 4569
    :cond_93
    invoke-direct {p0}, Landroid/widget/AbsListView;->initDifferentialFlingHelperIfNotExists()V

    .line 4570
    iget-object v1, p0, Landroid/widget/AbsListView;->mDifferentialMotionFlingHelper:Landroid/widget/DifferentialMotionFlingHelper;

    invoke-virtual {v1, p1, v0}, Landroid/widget/DifferentialMotionFlingHelper;->onMotionEvent(Landroid/view/MotionEvent;I)V

    .line 4571
    return v2

    .line 4572
    :cond_9c
    const/16 v7, 0x2002

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v7

    if-nez v7, :cond_f5

    if-eqz v4, :cond_f5

    if-eqz v6, :cond_b0

    if-ne v6, v2, :cond_f5

    .line 4575
    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v6

    if-nez v6, :cond_f5

    .line 4576
    :cond_b0
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    .line 4577
    sub-int/2addr v4, v5

    sub-int v4, v1, v4

    int-to-float v4, v4

    .line 4578
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 4579
    if-lez v1, :cond_c1

    move v3, v2

    .line 4580
    :cond_c1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->scrollFeedbackApi()Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 4581
    invoke-direct {p0}, Landroid/widget/AbsListView;->initHapticScrollFeedbackProviderIfNotExists()V

    .line 4582
    iget-object v1, p0, Landroid/widget/AbsListView;->mHapticScrollFeedbackProvider:Landroid/view/HapticScrollFeedbackProvider;

    .line 4583
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result p1

    .line 4582
    invoke-virtual {v1, v5, p1, v0, v3}, Landroid/view/HapticScrollFeedbackProvider;->onScrollLimit(IIIZ)V

    .line 4586
    :cond_d7
    const/high16 p1, 0x3f000000    # 0.5f

    if-eqz v3, :cond_e6

    .line 4587
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, v4, p1}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 4588
    iget-object p1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_f1

    .line 4590
    :cond_e6
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    neg-float v1, v4

    invoke-virtual {v0, v1, p1}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 4591
    iget-object p1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4593
    :goto_f1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4594
    return v2

    .line 4596
    :cond_f5
    nop

    .line 4613
    :cond_f6
    :goto_f6
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :sswitch_data_fc
    .sparse-switch
        0x8 -> :sswitch_35
        0xb -> :sswitch_b
    .end sparse-switch
.end method

.method public whitelist onGlobalLayout()V
    .registers 2

    .line 6545
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 6547
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v0, :cond_2d

    .line 6548
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    goto :goto_2d

    .line 6552
    :cond_1e
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 6553
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 6557
    :cond_2d
    :goto_2d
    return-void
.end method

.method public whitelist onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 7

    .line 2645
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    .line 2647
    return-void

    .line 2650
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    .line 2651
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2652
    instance-of v2, v1, Landroid/widget/AbsListView$LayoutParams;

    if-eqz v2, :cond_15

    .line 2653
    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    iget-boolean v1, v1, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    and-int/2addr v0, v1

    .line 2656
    :cond_15
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v1

    if-ne p2, v1, :cond_25

    .line 2657
    const/4 p2, 0x1

    invoke-virtual {p3, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 2658
    sget-object p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_SELECTION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {p0, p3, v0, p2}, Landroid/widget/AbsListView;->addAccessibilityActionIfEnabled(Landroid/view/accessibility/AccessibilityNodeInfo;ZLandroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_2a

    .line 2661
    :cond_25
    sget-object p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SELECT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {p0, p3, v0, p2}, Landroid/widget/AbsListView;->addAccessibilityActionIfEnabled(Landroid/view/accessibility/AccessibilityNodeInfo;ZLandroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2665
    :goto_2a
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->isItemClickable(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 2666
    sget-object p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {p0, p3, v0, p1}, Landroid/widget/AbsListView;->addAccessibilityActionIfEnabled(Landroid/view/accessibility/AccessibilityNodeInfo;ZLandroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2669
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2672
    :cond_38
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 2673
    sget-object p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {p0, p3, v0, p1}, Landroid/widget/AbsListView;->addAccessibilityActionIfEnabled(Landroid/view/accessibility/AccessibilityNodeInfo;ZLandroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2675
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 2677
    :cond_46
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4

    .line 1648
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1649
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1650
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    .line 1651
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1652
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1653
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1655
    :cond_1d
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1656
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1657
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1658
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1662
    :cond_30
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 1663
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 1664
    return-void
.end method

.method public whitelist onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 4775
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4776
    const/4 p1, 0x1

    return p1

    .line 4779
    :cond_e
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    .line 4795
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 4798
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_d

    .line 4799
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 4802
    :cond_d
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    const/4 v2, 0x0

    if-nez v1, :cond_d0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_1a

    goto/16 :goto_d0

    .line 4810
    :cond_1a
    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    const/4 v3, 0x1

    if-eqz v1, :cond_28

    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v1, p1}, Landroid/widget/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 4811
    return v3

    .line 4814
    :cond_28
    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_d2

    :pswitch_2c
    goto/16 :goto_cf

    .line 4882
    :pswitch_2e
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_cf

    .line 4853
    :pswitch_33
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_e4

    goto :goto_63

    .line 4855
    :pswitch_39
    iget v0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 4856
    if-ne v0, v1, :cond_49

    .line 4857
    nop

    .line 4858
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    move v0, v2

    .line 4860
    :cond_49
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    .line 4861
    invoke-direct {p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    .line 4862
    iget-object v4, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4863
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    float-to-int p1, p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/AbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_63

    .line 4864
    return v3

    .line 4868
    :cond_63
    :goto_63
    goto :goto_cf

    .line 4873
    :pswitch_64
    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4874
    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4875
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 4876
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4877
    invoke-virtual {p0}, Landroid/widget/AbsListView;->stopNestedScroll()V

    .line 4878
    goto :goto_cf

    .line 4816
    :pswitch_72
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4817
    const/4 v1, 0x6

    if-eq v0, v1, :cond_cc

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7b

    goto :goto_cc

    .line 4822
    :cond_7b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 4823
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 4824
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4826
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v5

    .line 4827
    invoke-direct {p0}, Landroid/widget/AbsListView;->doesTouchStopStretch()Z

    move-result v6

    const/4 v7, 0x4

    if-eqz v6, :cond_9a

    .line 4829
    iput v7, p0, Landroid/widget/AbsListView;->mTouchMode:I

    move v0, v7

    goto :goto_b7

    .line 4830
    :cond_9a
    if-eq v0, v7, :cond_b7

    if-ltz v5, :cond_b7

    .line 4833
    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v6, v5, v6

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4834
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4835
    iput v1, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4836
    iput v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4837
    iput v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4838
    iput v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4839
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 4841
    :cond_b7
    :goto_b7
    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4842
    invoke-direct {p0}, Landroid/widget/AbsListView;->initOrResetVelocityTracker()V

    .line 4843
    iget-object v1, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4844
    iput v2, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 4845
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    .line 4846
    if-ne v0, v7, :cond_cf

    .line 4847
    return v3

    .line 4818
    :cond_cc
    :goto_cc
    iput v2, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4819
    return v3

    .line 4887
    :cond_cf
    :goto_cf
    return v2

    .line 4807
    :cond_d0
    :goto_d0
    return v2

    nop

    :pswitch_data_d2
    .packed-switch 0x0
        :pswitch_72
        :pswitch_64
        :pswitch_33
        :pswitch_64
        :pswitch_2c
        :pswitch_2c
        :pswitch_2e
    .end packed-switch

    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_39
    .end packed-switch
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 3

    .line 3523
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 7

    .line 3528
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 3529
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_e

    .line 3530
    return v1

    .line 3532
    :cond_e
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_46

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_46

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_46

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3534
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_46

    .line 3536
    iget p1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget p2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 3537
    const/4 p2, 0x0

    if-eqz p1, :cond_42

    .line 3538
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-wide v2, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 3539
    invoke-virtual {p1, p2}, Landroid/view/View;->setPressed(Z)V

    .line 3541
    :cond_42
    invoke-virtual {p0, p2}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3542
    return v1

    .line 3545
    :cond_46
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 8

    .line 2287
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 2289
    move p2, p1

    move-object p1, p0

    const/4 p4, 0x1

    iput-boolean p4, p1, Landroid/widget/AbsListView;->mInLayout:Z

    .line 2291
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result p4

    .line 2292
    const/4 v0, 0x0

    if-eqz p2, :cond_21

    .line 2293
    move p2, v0

    :goto_10
    if-ge p2, p4, :cond_1c

    .line 2294
    invoke-virtual {p0, p2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->forceLayout()V

    .line 2293
    add-int/lit8 p2, p2, 0x1

    goto :goto_10

    .line 2296
    :cond_1c
    iget-object p2, p1, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {p2}, Landroid/widget/AbsListView$RecycleBin;->markChildrenDirty()V

    .line 2299
    :cond_21
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 2301
    sub-int/2addr p5, p3

    div-int/lit8 p5, p5, 0x3

    iput p5, p1, Landroid/widget/AbsListView;->mOverscrollMax:I

    .line 2304
    iget-object p2, p1, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz p2, :cond_38

    .line 2305
    iget-object p2, p1, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result p3

    iget p4, p1, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {p2, p3, p4}, Landroid/widget/FastScroller;->onItemCountChanged(II)V

    .line 2307
    :cond_38
    iput-boolean v0, p1, Landroid/widget/AbsListView;->mInLayout:Z

    .line 2308
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 6

    .line 2261
    iget-object p1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_7

    .line 2262
    invoke-direct {p0}, Landroid/widget/AbsListView;->useDefaultSelector()V

    .line 2264
    :cond_7
    iget-object p1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 2265
    iget p2, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    iget v0, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 2266
    iget p2, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 2267
    iget p2, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    iget v0, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 2268
    iget p2, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2271
    iget p1, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_52

    .line 2272
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result p1

    .line 2273
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2274
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2275
    if-eqz v1, :cond_44

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    goto :goto_45

    :cond_44
    move v1, v0

    .line 2276
    :goto_45
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v2, p1

    iget p1, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    if-lt v2, p1, :cond_4f

    if-gt v1, v0, :cond_4f

    goto :goto_50

    :cond_4f
    const/4 p2, 0x0

    :goto_50
    iput-boolean p2, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    .line 2279
    :cond_52
    return-void
.end method

.method public whitelist onNestedFling(Landroid/view/View;FFZ)Z
    .registers 7

    .line 4663
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result p1

    .line 4664
    if-nez p4, :cond_37

    if-lez p1, :cond_37

    float-to-int p1, p3

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 4665
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_37

    .line 4666
    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4667
    iget-object p2, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez p2, :cond_29

    .line 4668
    new-instance p2, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {p2, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object p2, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4670
    :cond_29
    const/4 p2, 0x0

    invoke-virtual {p0, p2, p3}, Landroid/widget/AbsListView;->dispatchNestedPreFling(FF)Z

    move-result p2

    if-nez p2, :cond_35

    .line 4671
    iget-object p2, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p2, p1}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 4673
    :cond_35
    const/4 p1, 0x1

    return p1

    .line 4675
    :cond_37
    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/AbsListView;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public whitelist onNestedScroll(Landroid/view/View;IIII)V
    .registers 12

    .line 4647
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    .line 4648
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 4649
    const/4 p2, 0x0

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p3

    goto :goto_13

    :cond_12
    move p3, p2

    .line 4650
    :goto_13
    if-eqz p1, :cond_1c

    neg-int p4, p5

    invoke-virtual {p0, p4, p4}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result p4

    if-eqz p4, :cond_33

    .line 4651
    :cond_1c
    nop

    .line 4652
    nop

    .line 4653
    if-eqz p1, :cond_2a

    .line 4654
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int p2, p1, p3

    .line 4655
    sub-int/2addr p5, p2

    move v2, p2

    move v4, p5

    goto :goto_2c

    .line 4653
    :cond_2a
    move v2, p2

    move v4, p5

    .line 4657
    :goto_2c
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsListView;->dispatchNestedScroll(IIII[I)Z

    .line 4659
    :cond_33
    return-void
.end method

.method public whitelist onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 4

    .line 4640
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 4641
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    .line 4642
    return-void
.end method

.method protected whitelist onOverScrolled(IIZZ)V
    .registers 5

    .line 4527
    iget p1, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eq p1, p2, :cond_15

    .line 4528
    iget p1, p0, Landroid/widget/AbsListView;->mScrollX:I

    iget p3, p0, Landroid/widget/AbsListView;->mScrollX:I

    iget p4, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->onScrollChanged(IIII)V

    .line 4529
    iput p2, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 4530
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentIfNeeded()V

    .line 4532
    invoke-virtual {p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    .line 4534
    :cond_15
    return-void
.end method

.method public whitelist onProvideContentCaptureStructure(Landroid/view/ViewStructure;I)V
    .registers 6

    .line 6948
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onProvideContentCaptureStructure(Landroid/view/ViewStructure;I)V

    .line 6949
    sget-boolean p2, Landroid/widget/AbsListView;->sContentCaptureReportingEnabledByDeviceConfig:Z

    if-nez p2, :cond_8

    .line 6950
    return-void

    .line 6953
    :cond_8
    invoke-virtual {p1}, Landroid/view/ViewStructure;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 6955
    if-nez p1, :cond_16

    .line 6956
    const-string p1, "AbsListView"

    const-string p2, "Unexpected null extras Bundle in ViewStructure"

    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 6957
    return-void

    .line 6960
    :cond_16
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result p2

    .line 6961
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6963
    const/4 v1, 0x0

    :goto_20
    if-ge v1, p2, :cond_33

    .line 6964
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6965
    if-nez v2, :cond_29

    .line 6966
    goto :goto_30

    .line 6969
    :cond_29
    invoke-virtual {v2}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6963
    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 6972
    :cond_33
    const-string p2, "android.view.ViewStructure.extra.ACTIVE_CHILDREN_IDS"

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 6975
    nop

    .line 6976
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result p2

    .line 6975
    const-string v0, "android.view.ViewStructure.extra.FIRST_ACTIVE_POSITION"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6977
    return-void
.end method

.method public whitelist onRemoteAdapterConnected()Z
    .registers 4

    .line 6806
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_18

    .line 6807
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6808
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    if-eqz v0, :cond_17

    .line 6809
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    .line 6810
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 6812
    :cond_17
    return v2

    .line 6813
    :cond_18
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_23

    .line 6814
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 6815
    const/4 v0, 0x1

    return v0

    .line 6817
    :cond_23
    return v2
.end method

.method public whitelist onRemoteAdapterDisconnected()V
    .registers 1

    .line 6830
    return-void
.end method

.method public whitelist onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .registers 4

    .line 4784
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_15

    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4785
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FastScroller;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v0

    .line 4786
    if-eqz v0, :cond_15

    .line 4787
    return-object v0

    .line 4790
    :cond_15
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 7

    .line 2017
    check-cast p1, Landroid/widget/AbsListView$SavedState;

    .line 2019
    invoke-virtual {p1}, Landroid/widget/AbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2020
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 2022
    iget v1, p1, Landroid/widget/AbsListView$SavedState;->height:I

    int-to-long v1, v1

    iput-wide v1, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    .line 2024
    iget-wide v1, p1, Landroid/widget/AbsListView$SavedState;->selectedId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2d

    .line 2025
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 2026
    iput-object p1, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 2027
    iget-wide v0, p1, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v0, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 2028
    iget v0, p1, Landroid/widget/AbsListView$SavedState;->position:I

    iput v0, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 2029
    iget v0, p1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v0, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 2030
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mSyncMode:I

    goto :goto_4e

    .line 2031
    :cond_2d
    iget-wide v1, p1, Landroid/widget/AbsListView$SavedState;->firstId:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_4e

    .line 2032
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 2034
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 2035
    iput v1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 2036
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 2037
    iput-object p1, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 2038
    iget-wide v1, p1, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v1, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 2039
    iget v1, p1, Landroid/widget/AbsListView$SavedState;->position:I

    iput v1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 2040
    iget v1, p1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v1, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 2041
    iput v0, p0, Landroid/widget/AbsListView;->mSyncMode:I

    .line 2044
    :cond_4e
    :goto_4e
    iget-object v0, p1, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setFilterText(Ljava/lang/String;)V

    .line 2046
    iget-object v0, p1, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_5b

    .line 2047
    iget-object v0, p1, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2050
    :cond_5b
    iget-object v0, p1, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_63

    .line 2051
    iget-object v0, p1, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2054
    :cond_63
    iget v0, p1, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 2056
    iget-boolean p1, p1, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    if-eqz p1, :cond_7c

    iget p1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_7c

    iget-object p1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz p1, :cond_7c

    .line 2058
    iget-object p1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 2061
    :cond_7c
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 2062
    return-void
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .registers 3

    .line 3240
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onRtlPropertiesChanged(I)V

    .line 3241
    iget-object p1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz p1, :cond_10

    .line 3242
    iget-object p1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 3244
    :cond_10
    return-void
.end method

.method public whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 9

    .line 1925
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 1927
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1929
    new-instance v1, Landroid/widget/AbsListView$SavedState;

    invoke-direct {v1, v0}, Landroid/widget/AbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1931
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    if-eqz v0, :cond_4d

    .line 1933
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v2, v1, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 1934
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v2, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 1935
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v0, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v0, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1936
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v0, v0, Landroid/widget/AbsListView$SavedState;->position:I

    iput v0, v1, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1937
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v0, v0, Landroid/widget/AbsListView$SavedState;->height:I

    iput v0, v1, Landroid/widget/AbsListView$SavedState;->height:I

    .line 1938
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v0, v0, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    iput-object v0, v1, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1939
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-boolean v0, v0, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    iput-boolean v0, v1, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 1940
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v0, v0, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v0, v1, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 1941
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v0, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v0, v1, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 1942
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v0, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v0, v1, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 1943
    return-object v1

    .line 1946
    :cond_4d
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_5b

    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lez v0, :cond_5b

    move v0, v2

    goto :goto_5c

    :cond_5b
    move v0, v3

    .line 1947
    :goto_5c
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemId()J

    move-result-wide v4

    .line 1948
    iput-wide v4, v1, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 1949
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    iput v6, v1, Landroid/widget/AbsListView$SavedState;->height:I

    .line 1951
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const-wide/16 v5, -0x1

    if-ltz v4, :cond_7d

    .line 1953
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    iput v0, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1954
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v0

    iput v0, v1, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1955
    iput-wide v5, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    goto :goto_a7

    .line 1957
    :cond_7d
    if-eqz v0, :cond_a1

    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v0, :cond_a1

    .line 1967
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1968
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1969
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 1970
    iget v4, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lt v0, v4, :cond_96

    .line 1971
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    sub-int/2addr v0, v2

    .line 1973
    :cond_96
    iput v0, v1, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1974
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 1975
    goto :goto_a7

    .line 1976
    :cond_a1
    iput v3, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1977
    iput-wide v5, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 1978
    iput v3, v1, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1982
    :goto_a7
    const/4 v0, 0x0

    iput-object v0, v1, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1983
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_be

    .line 1984
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 1985
    if-eqz v0, :cond_be

    .line 1986
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1987
    if-eqz v0, :cond_be

    .line 1988
    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1993
    :cond_be
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_c8

    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_c8

    goto :goto_c9

    :cond_c8
    move v2, v3

    :goto_c9
    iput-boolean v2, v1, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 1995
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_d7

    .line 1996
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 1998
    :cond_d7
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_ff

    .line 1999
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 2000
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    .line 2001
    nop

    :goto_e7
    if-ge v3, v2, :cond_fd

    .line 2002
    iget-object v4, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    iget-object v6, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v0, v4, v5, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2001
    add-int/lit8 v3, v3, 0x1

    goto :goto_e7

    .line 2004
    :cond_fd
    iput-object v0, v1, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2006
    :cond_ff
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    iput v0, v1, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 2008
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_10c

    .line 2009
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    .line 2012
    :cond_10c
    return-object v1
.end method

.method protected whitelist onSizeChanged(IIII)V
    .registers 6

    .line 2853
    invoke-virtual {p0}, Landroid/widget/AbsListView;->handleBoundsChange()V

    .line 2854
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_c

    .line 2855
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FastScroller;->onSizeChanged(IIII)V

    .line 2857
    :cond_c
    return-void
.end method

.method public whitelist onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 4

    .line 4635
    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public whitelist onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 6574
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result p2

    if-eqz p2, :cond_44

    .line 6575
    const/4 p2, 0x1

    invoke-direct {p0, p2}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 6576
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    .line 6577
    iget-object p4, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p4

    .line 6578
    if-nez p4, :cond_1e

    if-lez p3, :cond_1e

    .line 6580
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 6581
    iput-boolean p2, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_28

    .line 6582
    :cond_1e
    if-eqz p4, :cond_28

    if-nez p3, :cond_28

    .line 6584
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 6585
    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 6587
    :cond_28
    :goto_28
    iget-object p2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of p2, p2, Landroid/widget/Filterable;

    if-eqz p2, :cond_44

    .line 6588
    iget-object p2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast p2, Landroid/widget/Filterable;

    invoke-interface {p2}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object p2

    .line 6590
    if-eqz p2, :cond_3c

    .line 6591
    invoke-virtual {p2, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    goto :goto_44

    .line 6593
    :cond_3c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6598
    :cond_44
    :goto_44
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 4003
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_17

    .line 4006
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result p1

    if-nez p1, :cond_16

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_16

    :cond_15
    move v1, v2

    :cond_16
    :goto_16
    return v1

    .line 4009
    :cond_17
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v0, :cond_20

    .line 4010
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 4013
    :cond_20
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    if-nez v0, :cond_c7

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_2c

    goto/16 :goto_c7

    .line 4021
    :cond_2c
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    .line 4023
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 4024
    return v1

    .line 4026
    :cond_3d
    invoke-direct {p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    .line 4027
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 4029
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 4030
    if-nez v3, :cond_4c

    .line 4031
    iput v2, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 4033
    :cond_4c
    iget v4, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4034
    packed-switch v3, :pswitch_data_c8

    :pswitch_56
    goto :goto_ba

    .line 4056
    :pswitch_57
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 4057
    iget p1, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4058
    iget v2, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4059
    invoke-virtual {p0, p1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result p1

    .line 4060
    if-ltz p1, :cond_74

    .line 4062
    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v3, p1, v3

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4063
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4064
    iput p1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4066
    :cond_74
    iput v2, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4067
    goto :goto_ba

    .line 4072
    :pswitch_77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 4073
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 4074
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    .line 4075
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    .line 4076
    iput v2, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4077
    iput v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4078
    iput v5, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4079
    iput p1, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4080
    invoke-virtual {p0, v5, p1}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v2

    .line 4081
    if-ltz v2, :cond_a7

    .line 4083
    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v3, v2, v3

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4084
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4085
    iput v2, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4087
    :cond_a7
    iput p1, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4088
    goto :goto_ba

    .line 4051
    :pswitch_aa
    invoke-direct {p0}, Landroid/widget/AbsListView;->onTouchCancel()V

    .line 4052
    goto :goto_ba

    .line 4041
    :pswitch_ae
    invoke-direct {p0, p1, v0}, Landroid/widget/AbsListView;->onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 4042
    goto :goto_ba

    .line 4046
    :pswitch_b2
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onTouchUp(Landroid/view/MotionEvent;)V

    .line 4047
    goto :goto_ba

    .line 4036
    :pswitch_b6
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onTouchDown(Landroid/view/MotionEvent;)V

    .line 4037
    nop

    .line 4092
    :goto_ba
    iget-object p1, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_c3

    .line 4093
    iget-object p1, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4095
    :cond_c3
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 4096
    return v1

    .line 4018
    :cond_c7
    :goto_c7
    return v2

    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_b6
        :pswitch_b2
        :pswitch_ae
        :pswitch_aa
        :pswitch_56
        :pswitch_77
        :pswitch_57
    .end packed-switch
.end method

.method public whitelist onTouchModeChanged(Z)V
    .registers 3

    .line 3962
    if-eqz p1, :cond_18

    .line 3964
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 3968
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result p1

    if-lez p1, :cond_14

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result p1

    if-lez p1, :cond_14

    .line 3971
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 3973
    :cond_14
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto :goto_42

    .line 3975
    :cond_18
    iget p1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3976
    const/4 v0, 0x5

    if-eq p1, v0, :cond_20

    const/4 v0, 0x6

    if-ne p1, v0, :cond_42

    .line 3977
    :cond_20
    iget-object p1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz p1, :cond_29

    .line 3978
    iget-object p1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 3980
    :cond_29
    iget-object p1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz p1, :cond_32

    .line 3981
    iget-object p1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {p1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3984
    :cond_32
    iget p1, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz p1, :cond_42

    .line 3985
    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 3986
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentCaches()V

    .line 3987
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 3988
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3992
    :cond_42
    :goto_42
    return-void
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .registers 6

    .line 3184
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onWindowFocusChanged(Z)V

    .line 3186
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    .line 3188
    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez p1, :cond_44

    .line 3189
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 3190
    iget-object p1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz p1, :cond_3a

    .line 3191
    iget-object p1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3194
    iget-object p1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-static {p1, v2}, Landroid/widget/AbsListView$FlingRunnable;->-$$Nest$fputmSuppressIdleStateChangeCall(Landroid/widget/AbsListView$FlingRunnable;Z)V

    .line 3195
    iget-object p1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 3196
    iget-object p1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz p1, :cond_2b

    .line 3197
    iget-object p1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {p1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3199
    :cond_2b
    iget p1, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz p1, :cond_3a

    .line 3200
    iput v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 3201
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentCaches()V

    .line 3202
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 3203
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3207
    :cond_3a
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 3209
    if-ne v0, v1, :cond_66

    .line 3211
    iget p1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iput p1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    goto :goto_66

    .line 3214
    :cond_44
    iget-boolean p1, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz p1, :cond_4f

    iget-boolean p1, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez p1, :cond_4f

    .line 3216
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 3220
    :cond_4f
    iget p1, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    if-eq v0, p1, :cond_66

    iget p1, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    const/4 v3, -0x1

    if-eq p1, v3, :cond_66

    .line 3222
    if-ne v0, v1, :cond_5e

    .line 3224
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    goto :goto_66

    .line 3228
    :cond_5e
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 3229
    iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 3230
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 3235
    :cond_66
    :goto_66
    iput v0, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 3236
    return-void
.end method

.method public greylist-max-o performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 5

    .line 1684
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_8

    .line 1685
    return v0

    .line 1687
    :cond_8
    const/16 p2, 0xc8

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_4e

    .line 1705
    return v1

    .line 1698
    :sswitch_f
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2e

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 1699
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result p1

    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v1

    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v1

    .line 1700
    neg-int p1, p1

    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 1701
    return v0

    .line 1703
    :cond_2e
    return v1

    .line 1690
    :sswitch_2f
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4d

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 1691
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result p1

    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v1

    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v1

    .line 1692
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 1693
    return v0

    .line 1695
    :cond_4d
    return v1

    :sswitch_data_4e
    .sparse-switch
        0x1000 -> :sswitch_2f
        0x2000 -> :sswitch_f
        0x1020038 -> :sswitch_f
        0x102003a -> :sswitch_2f
    .end sparse-switch
.end method

.method public whitelist performItemClick(Landroid/view/View;IJ)Z
    .registers 14

    .line 1241
    nop

    .line 1242
    nop

    .line 1244
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_cc

    .line 1245
    nop

    .line 1246
    nop

    .line 1248
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6d

    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_19

    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_19

    goto :goto_6d

    .line 1270
    :cond_19
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v2, :cond_69

    .line 1271
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 1272
    if-nez v0, :cond_52

    .line 1273
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1274
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1275
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1276
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1277
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v4, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1279
    :cond_4f
    iput v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_64

    .line 1280
    :cond_52
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-nez v0, :cond_64

    .line 1281
    :cond_62
    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1283
    :cond_64
    :goto_64
    move v5, p2

    move-wide v6, p3

    move p2, v2

    move v1, p2

    goto :goto_c4

    .line 1270
    :cond_69
    move v5, p2

    move-wide v6, p3

    move p2, v2

    goto :goto_c4

    .line 1250
    :cond_6d
    :goto_6d
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 1251
    xor-int/lit8 v8, v0, 0x1

    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1252
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v3, :cond_a3

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 1253
    if-nez v0, :cond_98

    .line 1254
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_a3

    .line 1256
    :cond_98
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->delete(J)V

    .line 1259
    :cond_a3
    :goto_a3
    if-nez v0, :cond_ab

    .line 1260
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_b0

    .line 1262
    :cond_ab
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    sub-int/2addr v0, v2

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1264
    :goto_b0
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_be

    .line 1265
    iget-object v3, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v4, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v5, p2

    move-wide v6, p3

    invoke-virtual/range {v3 .. v8}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1267
    goto :goto_c1

    .line 1264
    :cond_be
    move v5, p2

    move-wide v6, p3

    move v1, v2

    .line 1269
    :goto_c1
    nop

    .line 1270
    move p2, v1

    move v1, v2

    .line 1286
    :goto_c4
    if-eqz v1, :cond_c9

    .line 1287
    invoke-direct {p0}, Landroid/widget/AbsListView;->updateOnScreenCheckedViews()V

    .line 1291
    :cond_c9
    move v1, v2

    move v2, p2

    goto :goto_ce

    .line 1244
    :cond_cc
    move v5, p2

    move-wide v6, p3

    .line 1291
    :goto_ce
    if-eqz v2, :cond_d5

    .line 1292
    invoke-super {p0, p1, v5, v6, v7}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result p1

    or-int/2addr v1, p1

    .line 1295
    :cond_d5
    return v1
.end method

.method greylist performLongPress(Landroid/view/View;IJ)Z
    .registers 12

    .line 3403
    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJFF)Z

    move-result p1

    return p1
.end method

.method greylist-max-r performLongPress(Landroid/view/View;IJFF)Z
    .registers 16

    .line 3415
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1c

    .line 3416
    iget-object p1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 p3, 0x1

    if-nez p1, :cond_1b

    iget-object p1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 3417
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_1b

    .line 3418
    invoke-virtual {p0, p2, p3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 3419
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    .line 3421
    :cond_1b
    return p3

    .line 3424
    :cond_1c
    nop

    .line 3425
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_2c

    .line 3426
    iget-object v3, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-interface/range {v3 .. v8}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result p1

    goto :goto_31

    .line 3425
    :cond_2c
    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-wide v7, p3

    move p1, v2

    .line 3429
    :goto_31
    if-nez p1, :cond_4c

    .line 3430
    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object p1

    iput-object p1, v4, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3431
    const/high16 p1, -0x40800000    # -1.0f

    cmpl-float p2, p5, p1

    if-eqz p2, :cond_48

    cmpl-float p1, p6, p1

    if-eqz p1, :cond_48

    .line 3432
    invoke-super {p0, p0, p5, p6}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result p1

    goto :goto_4c

    .line 3434
    :cond_48
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result p1

    .line 3437
    :cond_4c
    :goto_4c
    if-eqz p1, :cond_51

    .line 3438
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    .line 3440
    :cond_51
    return p1
.end method

.method public whitelist pointToPosition(II)I
    .registers 7

    .line 3569
    iget-object v0, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3570
    if-nez v0, :cond_d

    .line 3571
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3572
    iget-object v0, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3575
    :cond_d
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 3576
    add-int/lit8 v1, v1, -0x1

    :goto_13
    if-ltz v1, :cond_2f

    .line 3577
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3578
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2c

    .line 3579
    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3580
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 3581
    iget p1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr p1, v1

    return p1

    .line 3576
    :cond_2c
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 3585
    :cond_2f
    const/4 p1, -0x1

    return p1
.end method

.method public whitelist pointToRowId(II)J
    .registers 3

    .line 3598
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result p1

    .line 3599
    if-ltz p1, :cond_d

    .line 3600
    iget-object p2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide p1

    return-wide p1

    .line 3602
    :cond_d
    const-wide/high16 p1, -0x8000000000000000L

    return-wide p1
.end method

.method greylist-max-o positionSelector(ILandroid/view/View;)V
    .registers 9

    .line 2713
    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 2714
    return-void
.end method

.method greylist-max-o positionSelectorLikeFocus(ILandroid/view/View;)V
    .registers 10

    .line 2702
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1d

    iget v0, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    if-eq v0, p1, :cond_1d

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1d

    .line 2703
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2704
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    .line 2705
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    .line 2706
    const/4 v4, 0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 2707
    goto :goto_22

    .line 2702
    :cond_1d
    move v2, p1

    move-object v3, p2

    .line 2708
    invoke-virtual {p0, v2, v3}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 2710
    :goto_22
    return-void
.end method

.method greylist-max-o positionSelectorLikeTouch(ILandroid/view/View;FF)V
    .registers 11

    .line 2695
    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 2696
    return-void
.end method

.method public whitelist reclaimViews(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 6713
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 6714
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-static {v1}, Landroid/widget/AbsListView$RecycleBin;->-$$Nest$fgetmRecyclerListener(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;

    move-result-object v1

    .line 6717
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_35

    .line 6718
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6719
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 6721
    if-eqz v4, :cond_32

    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget v4, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v4}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 6722
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6723
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 6724
    invoke-virtual {v3}, Landroid/view/View;->resetSubtreeAutofillIds()V

    .line 6725
    if-eqz v1, :cond_32

    .line 6727
    invoke-interface {v1, v3}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 6717
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 6731
    :cond_35
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 6732
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 6733
    return-void
.end method

.method greylist-max-o reconcileSelectedPosition()I
    .registers 3

    .line 5729
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    .line 5730
    if-gez v0, :cond_6

    .line 5731
    iget v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5733
    :cond_6
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5734
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5735
    return v0
.end method

.method greylist-max-p reportScrollStateChange(I)V
    .registers 3

    .line 4937
    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_f

    .line 4938
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_f

    .line 4939
    iput p1, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 4940
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 4944
    :cond_f
    iget v0, p0, Landroid/widget/AbsListView;->mPreviousOnScrollListenerState:I

    if-eq p1, v0, :cond_1e

    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollStateChangeListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1e

    .line 4945
    iput p1, p0, Landroid/widget/AbsListView;->mPreviousOnScrollListenerState:I

    .line 4946
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollStateChangeListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 4952
    :cond_1e
    if-eqz p1, :cond_23

    const/4 v0, 0x2

    if-ne p1, v0, :cond_26

    .line 4954
    :cond_23
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mReportChildrenToContentCaptureOnNextUpdate:Z

    .line 4956
    :cond_26
    return-void
.end method

.method public whitelist requestDisallowInterceptTouchEvent(Z)V
    .registers 2

    .line 4767
    if-eqz p1, :cond_5

    .line 4768
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 4770
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->requestDisallowInterceptTouchEvent(Z)V

    .line 4771
    return-void
.end method

.method public whitelist requestLayout()V
    .registers 2

    .line 2125
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mInLayout:Z

    if-nez v0, :cond_b

    .line 2126
    invoke-super {p0}, Landroid/widget/AdapterView;->requestLayout()V

    .line 2128
    :cond_b
    return-void
.end method

.method greylist-max-o requestLayoutIfNecessary()V
    .registers 2

    .line 1817
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_f

    .line 1818
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 1819
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 1820
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 1822
    :cond_f
    return-void
.end method

.method greylist-max-o resetList()V
    .registers 5

    .line 2134
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 2135
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 2136
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 2137
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 2138
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 2139
    iput-object v1, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 2140
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mOldSelectedPosition:I

    .line 2141
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Landroid/widget/AbsListView;->mOldSelectedRowId:J

    .line 2142
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 2143
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 2144
    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 2145
    iput v1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 2146
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2147
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2148
    return-void
.end method

.method greylist-max-o resurrectSelection()Z
    .registers 13

    .line 5801
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 5803
    const/4 v1, 0x0

    if-gtz v0, :cond_8

    .line 5804
    return v1

    .line 5807
    :cond_8
    nop

    .line 5809
    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 5810
    iget v3, p0, Landroid/widget/AbsListView;->mBottom:I

    iget v4, p0, Landroid/widget/AbsListView;->mTop:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 5811
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5812
    iget v5, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5813
    nop

    .line 5815
    const/4 v6, 0x1

    if-lt v5, v4, :cond_4d

    add-int v7, v4, v0

    if-ge v5, v7, :cond_4d

    .line 5816
    nop

    .line 5818
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v0, v5, v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5819
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    .line 5820
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 5823
    if-ge v7, v2, :cond_3d

    .line 5824
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v0

    add-int v7, v2, v0

    goto :goto_4a

    .line 5825
    :cond_3d
    if-le v8, v3, :cond_4a

    .line 5826
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v3, v0

    .line 5827
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v0

    sub-int v7, v3, v0

    .line 5829
    :cond_4a
    :goto_4a
    move v0, v6

    goto/16 :goto_af

    .line 5830
    :cond_4d
    if-ge v5, v4, :cond_79

    .line 5832
    nop

    .line 5833
    move v3, v1

    move v5, v3

    :goto_52
    if-ge v3, v0, :cond_75

    .line 5834
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5835
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    .line 5837
    if-nez v3, :cond_6c

    .line 5839
    nop

    .line 5841
    if-gtz v4, :cond_66

    if-ge v7, v2, :cond_64

    goto :goto_66

    :cond_64
    move v5, v7

    goto :goto_6c

    .line 5844
    :cond_66
    :goto_66
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v5

    add-int/2addr v2, v5

    move v5, v7

    .line 5847
    :cond_6c
    :goto_6c
    if-lt v7, v2, :cond_72

    .line 5849
    add-int/2addr v3, v4

    .line 5850
    nop

    .line 5851
    move v5, v3

    goto :goto_77

    .line 5833
    :cond_72
    add-int/lit8 v3, v3, 0x1

    goto :goto_52

    :cond_75
    move v7, v5

    move v5, v4

    :goto_77
    move v0, v6

    goto :goto_af

    .line 5855
    :cond_79
    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 5856
    nop

    .line 5857
    add-int v5, v4, v0

    add-int/lit8 v7, v5, -0x1

    .line 5859
    sub-int/2addr v0, v6

    move v9, v0

    move v8, v1

    :goto_83
    if-ltz v9, :cond_ac

    .line 5860
    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 5861
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v11

    .line 5862
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    .line 5864
    if-ne v9, v0, :cond_a1

    .line 5865
    nop

    .line 5866
    if-lt v5, v2, :cond_9b

    if-le v10, v3, :cond_99

    goto :goto_9b

    :cond_99
    move v8, v11

    goto :goto_a1

    .line 5867
    :cond_9b
    :goto_9b
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v8

    sub-int/2addr v3, v8

    move v8, v11

    .line 5871
    :cond_a1
    :goto_a1
    if-gt v10, v3, :cond_a9

    .line 5872
    add-int v5, v4, v9

    .line 5873
    nop

    .line 5874
    move v0, v1

    move v7, v11

    goto :goto_af

    .line 5859
    :cond_a9
    add-int/lit8 v9, v9, -0x1

    goto :goto_83

    :cond_ac
    move v0, v1

    move v5, v7

    move v7, v8

    .line 5880
    :goto_af
    const/4 v2, -0x1

    iput v2, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5881
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5882
    iget-object v3, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v3, :cond_c0

    .line 5883
    iget-object v3, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v3}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 5885
    :cond_c0
    iput v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5886
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 5887
    iput v7, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 5888
    invoke-virtual {p0, v5, v0}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 5889
    if-lt v0, v4, :cond_e1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v3

    if-gt v0, v3, :cond_e1

    .line 5890
    const/4 v2, 0x4

    iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5891
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 5892
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelectionInt(I)V

    .line 5893
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    move v2, v0

    goto :goto_e2

    .line 5895
    :cond_e1
    nop

    .line 5897
    :goto_e2
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5899
    if-ltz v2, :cond_e8

    move v1, v6

    :cond_e8
    return v1
.end method

.method greylist resurrectSelectionIfNeeded()Z
    .registers 2

    .line 5780
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_f

    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5781
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 5782
    const/4 v0, 0x1

    return v0

    .line 5784
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist scrollListBy(I)V
    .registers 2

    .line 5469
    neg-int p1, p1

    invoke-virtual {p0, p1, p1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 5470
    return-void
.end method

.method greylist-max-o sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .registers 10

    .line 6213
    invoke-direct {p0}, Landroid/widget/AbsListView;->acceptFilter()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 6214
    return v1

    .line 6217
    :cond_8
    nop

    .line 6218
    nop

    .line 6219
    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_96

    move v2, v0

    move v3, v1

    goto :goto_61

    .line 6249
    :sswitch_11
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFiltered:Z

    move v3, v1

    goto :goto_61

    .line 6227
    :sswitch_15
    nop

    .line 6228
    move v2, v1

    move v3, v2

    goto :goto_61

    .line 6231
    :sswitch_19
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v2, :cond_5d

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_5d

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 6232
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_41

    .line 6233
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_41

    .line 6234
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v2

    .line 6235
    if-eqz v2, :cond_3e

    .line 6236
    invoke-virtual {v2, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 6238
    :cond_3e
    nop

    .line 6239
    move v2, v0

    goto :goto_5e

    :cond_41
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_5d

    .line 6240
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_5d

    .line 6241
    nop

    .line 6242
    iget-object v2, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move v2, v0

    goto :goto_5e

    .line 6245
    :cond_5d
    move v2, v1

    :goto_5e
    nop

    .line 6246
    move v3, v2

    move v2, v1

    .line 6253
    :goto_61
    if-eqz v2, :cond_94

    .line 6254
    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 6256
    nop

    .line 6257
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_76

    .line 6258
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-static {p3, v4, v5, v1}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v0

    goto :goto_77

    .line 6257
    :cond_76
    move-object v0, p3

    .line 6261
    :goto_77
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 6262
    packed-switch v1, :pswitch_data_c0

    goto :goto_94

    .line 6272
    :pswitch_7f
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_94

    .line 6268
    :pswitch_86
    iget-object p2, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p2, p1, v0}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 6269
    goto :goto_94

    .line 6264
    :pswitch_8d
    iget-object p2, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p2, p1, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 6265
    nop

    .line 6276
    :cond_94
    :goto_94
    return v3

    nop

    :sswitch_data_96
    .sparse-switch
        0x4 -> :sswitch_19
        0x13 -> :sswitch_15
        0x14 -> :sswitch_15
        0x15 -> :sswitch_15
        0x16 -> :sswitch_15
        0x17 -> :sswitch_15
        0x3e -> :sswitch_11
        0x42 -> :sswitch_15
        0x6f -> :sswitch_19
        0xa0 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_8d
        :pswitch_86
        :pswitch_7f
    .end packed-switch
.end method

.method public bridge synthetic whitelist setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 124
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public whitelist setAdapter(Landroid/widget/ListAdapter;)V
    .registers 2

    .line 1043
    if-eqz p1, :cond_1d

    .line 1044
    iget-object p1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result p1

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    .line 1045
    iget p1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz p1, :cond_1d

    iget-boolean p1, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz p1, :cond_1d

    iget-object p1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez p1, :cond_1d

    .line 1047
    new-instance p1, Landroid/util/LongSparseArray;

    invoke-direct {p1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1050
    :cond_1d
    invoke-virtual {p0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 1051
    return-void
.end method

.method public whitelist setBottomEdgeEffectColor(I)V
    .registers 3

    .line 6866
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 6867
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    .line 6868
    return-void
.end method

.method public whitelist setCacheColorHint(I)V
    .registers 5

    .line 6682
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eq p1, v0, :cond_1c

    .line 6683
    iput p1, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    .line 6684
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 6685
    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_17

    .line 6686
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 6685
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 6688
    :cond_17
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->setCacheColorHint(I)V

    .line 6690
    :cond_1c
    return-void
.end method

.method public whitelist setChoiceMode(I)V
    .registers 3

    .line 1345
    iput p1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 1346
    iget-object p1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_e

    .line 1347
    iget-object p1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 1348
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1350
    :cond_e
    iget p1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz p1, :cond_41

    .line 1351
    iget-object p1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    if-nez p1, :cond_1e

    .line 1352
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object p1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1354
    :cond_1e
    iget-object p1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez p1, :cond_35

    iget-object p1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_35

    iget-object p1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result p1

    if-eqz p1, :cond_35

    .line 1355
    new-instance p1, Landroid/util/LongSparseArray;

    invoke-direct {p1, v0}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object p1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1358
    :cond_35
    iget p1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_41

    .line 1359
    invoke-virtual {p0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 1360
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setLongClickable(Z)V

    .line 1363
    :cond_41
    return-void
.end method

.method public whitelist setDrawSelectorOnTop(Z)V
    .registers 2

    .line 2937
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 2938
    return-void
.end method

.method public whitelist setEdgeEffectColor(I)V
    .registers 2

    .line 6852
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setTopEdgeEffectColor(I)V

    .line 6853
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setBottomEdgeEffectColor(I)V

    .line 6854
    return-void
.end method

.method public whitelist setFastScrollAlwaysVisible(Z)V
    .registers 3

    .line 1469
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    if-eq v0, p1, :cond_22

    .line 1470
    if-eqz p1, :cond_e

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_e

    .line 1471
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 1474
    :cond_e
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    .line 1476
    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1477
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    goto :goto_22

    .line 1479
    :cond_1a
    new-instance v0, Landroid/widget/AbsListView$2;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$2;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 1487
    :cond_22
    :goto_22
    return-void
.end method

.method public whitelist setFastScrollEnabled(Z)V
    .registers 3

    .line 1409
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_18

    .line 1410
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    .line 1412
    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1413
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V

    goto :goto_18

    .line 1415
    :cond_10
    new-instance v0, Landroid/widget/AbsListView$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$1;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 1423
    :cond_18
    :goto_18
    return-void
.end method

.method public whitelist setFastScrollStyle(I)V
    .registers 3

    .line 1447
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-nez v0, :cond_7

    .line 1448
    iput p1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    goto :goto_c

    .line 1450
    :cond_7
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setStyle(I)V

    .line 1452
    :goto_c
    return-void
.end method

.method public whitelist setFilterText(Ljava/lang/String;)V
    .registers 4

    .line 2077
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_39

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 2078
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 2081
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2082
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 2083
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_39

    .line 2085
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_31

    .line 2086
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 2087
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 2091
    :cond_31
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 2092
    iget-object p1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {p1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->clearSavedState()V

    .line 2095
    :cond_39
    return-void
.end method

.method protected greylist-max-o setFrame(IIII)Z
    .registers 5

    .line 2315
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->setFrame(IIII)Z

    move-result p1

    .line 2317
    if-eqz p1, :cond_24

    .line 2321
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result p2

    if-nez p2, :cond_e

    const/4 p2, 0x1

    goto :goto_f

    :cond_e
    const/4 p2, 0x0

    .line 2322
    :goto_f
    iget-boolean p3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz p3, :cond_24

    if-eqz p2, :cond_24

    iget-object p2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz p2, :cond_24

    iget-object p2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_24

    .line 2323
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 2327
    :cond_24
    return p1
.end method

.method public whitelist setFriction(F)V
    .registers 3

    .line 5266
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_b

    .line 5267
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 5269
    :cond_b
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-static {v0}, Landroid/widget/AbsListView$FlingRunnable;->-$$Nest$fgetmScroller(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 5270
    return-void
.end method

.method public whitelist setItemChecked(IZ)V
    .registers 14

    .line 1168
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-nez v0, :cond_5

    .line 1169
    return-void

    .line 1173
    :cond_5
    const/4 v0, 0x3

    if-eqz p2, :cond_2d

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v1, v0, :cond_2d

    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_2d

    .line 1174
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_25

    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 1175
    invoke-virtual {v1}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1180
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    goto :goto_2d

    .line 1176
    :cond_25
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "AbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1184
    :cond_2d
    :goto_2d
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_94

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v1, v0, :cond_39

    goto :goto_94

    .line 1208
    :cond_39
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_47

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_47

    move v0, v4

    goto :goto_48

    :cond_47
    move v0, v3

    .line 1211
    :goto_48
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v1

    if-eq v1, p2, :cond_50

    move v1, v4

    goto :goto_51

    :cond_50
    move v1, v3

    .line 1212
    :goto_51
    if-nez p2, :cond_59

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 1213
    :cond_59
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1214
    if-eqz v0, :cond_65

    .line 1215
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1220
    :cond_65
    if-eqz p2, :cond_81

    .line 1221
    iget-object p2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1222
    if-eqz v0, :cond_7d

    .line 1223
    iget-object p2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v2, v3, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1225
    :cond_7d
    iput v4, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto/16 :goto_ee

    .line 1226
    :cond_81
    iget-object p1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    if-eqz p1, :cond_91

    iget-object p1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p1

    if-nez p1, :cond_ee

    .line 1227
    :cond_91
    iput v3, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_ee

    .line 1185
    :cond_94
    :goto_94
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1186
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1187
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_c8

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 1188
    if-eqz p2, :cond_bd

    .line 1189
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v6, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_c8

    .line 1191
    :cond_bd
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Landroid/util/LongSparseArray;->delete(J)V

    .line 1194
    :cond_c8
    :goto_c8
    if-eq v0, p2, :cond_cb

    move v3, v4

    .line 1195
    :cond_cb
    if-eqz v3, :cond_da

    .line 1196
    if-eqz p2, :cond_d5

    .line 1197
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/2addr v0, v4

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_da

    .line 1199
    :cond_d5
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    sub-int/2addr v0, v4

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1202
    :cond_da
    :goto_da
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_ed

    .line 1203
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    .line 1204
    iget-object v5, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v6, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v7, p1

    move v10, p2

    invoke-virtual/range {v5 .. v10}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1207
    :cond_ed
    move v1, v3

    .line 1232
    :cond_ee
    :goto_ee
    iget-boolean p1, p0, Landroid/widget/AbsListView;->mInLayout:Z

    if-nez p1, :cond_100

    iget-boolean p1, p0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    if-nez p1, :cond_100

    if-eqz v1, :cond_100

    .line 1233
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 1234
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 1235
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 1237
    :cond_100
    return-void
.end method

.method public whitelist setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .registers 3

    .line 1375
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_b

    .line 1376
    new-instance v0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 1378
    :cond_b
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 1379
    return-void
.end method

.method public whitelist setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .registers 2

    .line 1607
    iput-object p1, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 1608
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 1609
    return-void
.end method

.method protected blacklist setOnScrollStateChangeListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .registers 2

    .line 1632
    iput-object p1, p0, Landroid/widget/AbsListView;->mOnScrollStateChangeListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 1633
    return-void
.end method

.method public whitelist setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V
    .registers 3

    .line 6923
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-static {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->-$$Nest$fputmRecyclerListener(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)V

    .line 6924
    return-void
.end method

.method public whitelist setRemoteViewsAdapter(Landroid/content/Intent;)V
    .registers 3

    .line 6748
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;Z)V

    .line 6749
    return-void
.end method

.method public greylist-max-o setRemoteViewsAdapter(Landroid/content/Intent;Z)V
    .registers 6

    .line 6761
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_1b

    .line 6762
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 6763
    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 6764
    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 6765
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 6766
    return-void

    .line 6769
    :cond_1b
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 6771
    new-instance v0, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0, p2}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 6772
    iget-object p1, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p1}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result p1

    if-eqz p1, :cond_36

    .line 6773
    iget-object p1, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6775
    :cond_36
    return-void
.end method

.method public greylist-max-o setRemoteViewsAdapterAsync(Landroid/content/Intent;)Ljava/lang/Runnable;
    .registers 3

    .line 6753
    new-instance v0, Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;-><init>(Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Landroid/content/Intent;)V

    return-object v0
.end method

.method public blacklist setRemoteViewsInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V
    .registers 3

    .line 6787
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_9

    .line 6788
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V

    .line 6790
    :cond_9
    return-void
.end method

.method public whitelist setScrollBarStyle(I)V
    .registers 3

    .line 1550
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setScrollBarStyle(I)V

    .line 1551
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_c

    .line 1552
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollBarStyle(I)V

    .line 1554
    :cond_c
    return-void
.end method

.method public whitelist setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .line 3033
    iput-object p1, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    .line 3034
    iput-object p2, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    .line 3035
    return-void
.end method

.method public whitelist setScrollingCacheEnabled(Z)V
    .registers 3

    .line 1737
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_9

    if-nez p1, :cond_9

    .line 1738
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 1740
    :cond_9
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    .line 1741
    return-void
.end method

.method public whitelist setSelectedChildViewEnabled(Z)V
    .registers 2

    .line 2781
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 2782
    return-void
.end method

.method public whitelist setSelectionFromTop(II)V
    .registers 4

    .line 7761
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_5

    .line 7762
    return-void

    .line 7765
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_16

    .line 7766
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 7767
    if-ltz p1, :cond_18

    .line 7768
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_18

    .line 7771
    :cond_16
    iput p1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 7774
    :cond_18
    :goto_18
    if-ltz p1, :cond_3e

    .line 7775
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 7776
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 7778
    iget-boolean p2, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    if-eqz p2, :cond_32

    .line 7779
    iput p1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 7780
    iget-object p2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 7783
    :cond_32
    iget-object p1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz p1, :cond_3b

    .line 7784
    iget-object p1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {p1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 7786
    :cond_3b
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 7788
    :cond_3e
    return-void
.end method

.method abstract greylist-max-o setSelectionInt(I)V
.end method

.method public whitelist setSelector(I)V
    .registers 3

    .line 2960
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2961
    return-void
.end method

.method public whitelist setSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 2964
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    .line 2965
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2966
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2968
    :cond_f
    iput-object p1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2969
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2970
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2971
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 2972
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 2973
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 2974
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 2975
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2976
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 2977
    return-void
.end method

.method public whitelist setSmoothScrollbarEnabled(Z)V
    .registers 2

    .line 1585
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 1586
    return-void
.end method

.method public whitelist setStackFromBottom(Z)V
    .registers 3

    .line 1810
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_9

    .line 1811
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 1812
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    .line 1814
    :cond_9
    return-void
.end method

.method public whitelist setTextFilterEnabled(Z)V
    .registers 2

    .line 1754
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    .line 1755
    return-void
.end method

.method public whitelist setTopEdgeEffectColor(I)V
    .registers 3

    .line 6880
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 6881
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    .line 6882
    return-void
.end method

.method public whitelist setTranscriptMode(I)V
    .registers 2

    .line 6648
    iput p1, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    .line 6649
    return-void
.end method

.method public whitelist setVelocityScale(F)V
    .registers 2

    .line 5279
    iput p1, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 5280
    return-void
.end method

.method public whitelist setVerticalScrollbarPosition(I)V
    .registers 3

    .line 1542
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setVerticalScrollbarPosition(I)V

    .line 1543
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_c

    .line 1544
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 1546
    :cond_c
    return-void
.end method

.method greylist-max-o setVisibleRangeHint(II)V
    .registers 4

    .line 6837
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_9

    .line 6838
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    .line 6840
    :cond_9
    return-void
.end method

.method public final blacklist shouldDrawSelector()Z
    .registers 2

    .line 2924
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method greylist-max-o shouldShowSelector()Z
    .registers 2

    .line 2908
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_c
    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public whitelist showContextMenu()Z
    .registers 3

    .line 3450
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v0, v1}, Landroid/widget/AbsListView;->showContextMenuInternal(FFZ)Z

    move-result v0

    return v0
.end method

.method public whitelist showContextMenu(FF)Z
    .registers 4

    .line 3455
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView;->showContextMenuInternal(FFZ)Z

    move-result p1

    return p1
.end method

.method public whitelist showContextMenuForChild(Landroid/view/View;)Z
    .registers 4

    .line 3481
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isShowingContextMenuWithCoords()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 3482
    return v1

    .line 3484
    :cond_8
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v1}, Landroid/widget/AbsListView;->showContextMenuForChildInternal(Landroid/view/View;FFZ)Z

    move-result p1

    return p1
.end method

.method public whitelist showContextMenuForChild(Landroid/view/View;FF)Z
    .registers 5

    .line 3489
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsListView;->showContextMenuForChildInternal(Landroid/view/View;FFZ)Z

    move-result p1

    return p1
.end method

.method public whitelist smoothScrollBy(II)V
    .registers 4

    .line 5361
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 5362
    return-void
.end method

.method greylist smoothScrollBy(IIZZ)V
    .registers 11

    .line 5367
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_b

    .line 5368
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 5372
    :cond_b
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5373
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 5374
    add-int v2, v0, v1

    .line 5375
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v3

    .line 5376
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 5378
    if-eqz p1, :cond_54

    iget v5, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-eqz v5, :cond_54

    if-eqz v1, :cond_54

    if-nez v0, :cond_37

    .line 5379
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-ne v0, v3, :cond_37

    if-ltz p1, :cond_54

    :cond_37
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-ne v2, v0, :cond_4a

    add-int/lit8 v1, v1, -0x1

    .line 5381
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    if-ne v0, v4, :cond_4a

    if-lez p1, :cond_4a

    goto :goto_54

    .line 5387
    :cond_4a
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5388
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$FlingRunnable;->startScroll(IIZZ)V

    goto :goto_62

    .line 5382
    :cond_54
    :goto_54
    iget-object p1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 5383
    iget-object p1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz p1, :cond_62

    .line 5384
    iget-object p1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {p1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 5390
    :cond_62
    :goto_62
    return-void
.end method

.method greylist-max-o smoothScrollByOffset(I)V
    .registers 6

    .line 5396
    nop

    .line 5397
    const/4 v0, -0x1

    if-gez p1, :cond_9

    .line 5398
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    goto :goto_11

    .line 5399
    :cond_9
    if-lez p1, :cond_10

    .line 5400
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    goto :goto_11

    .line 5399
    :cond_10
    move v1, v0

    .line 5403
    :goto_11
    if-le v1, v0, :cond_63

    .line 5404
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5405
    if-eqz v0, :cond_63

    .line 5406
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 5407
    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 5409
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    mul-int/2addr v3, v0

    .line 5410
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v0, v2

    .line 5411
    int-to-float v0, v0

    int-to-float v2, v3

    div-float/2addr v0, v2

    .line 5413
    const/high16 v2, 0x3f400000    # 0.75f

    if-gez p1, :cond_4a

    cmpg-float v3, v0, v2

    if-gez v3, :cond_4a

    .line 5416
    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    .line 5417
    :cond_4a
    if-lez p1, :cond_52

    cmpg-float v0, v0, v2

    if-gez v0, :cond_52

    .line 5420
    add-int/lit8 v1, v1, -0x1

    .line 5423
    :cond_52
    :goto_52
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 5426
    :cond_63
    return-void
.end method

.method public whitelist smoothScrollToPosition(I)V
    .registers 3

    .line 5295
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_a

    .line 5296
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 5298
    :cond_a
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$AbsPositionScroller;->start(I)V

    .line 5299
    return-void
.end method

.method public whitelist smoothScrollToPosition(II)V
    .registers 4

    .line 5349
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_a

    .line 5350
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 5352
    :cond_a
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$AbsPositionScroller;->start(II)V

    .line 5353
    return-void
.end method

.method public whitelist smoothScrollToPositionFromTop(II)V
    .registers 4

    .line 5332
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_a

    .line 5333
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 5335
    :cond_a
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$AbsPositionScroller;->startWithOffset(II)V

    .line 5336
    return-void
.end method

.method public whitelist smoothScrollToPositionFromTop(III)V
    .registers 5

    .line 5314
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_a

    .line 5315
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 5317
    :cond_a
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/AbsListView$AbsPositionScroller;->startWithOffset(III)V

    .line 5318
    return-void
.end method

.method greylist-max-o touchModeDrawsInPressedState()Z
    .registers 2

    .line 2891
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_a

    .line 2896
    const/4 v0, 0x0

    return v0

    .line 2894
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method greylist-max-p trackMotionScroll(II)Z
    .registers 21

    .line 5509
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 5510
    const/4 v4, 0x1

    if-nez v3, :cond_e

    .line 5511
    return v4

    .line 5514
    :cond_e
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    .line 5515
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 5517
    iget-object v9, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 5522
    nop

    .line 5523
    nop

    .line 5524
    iget v10, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v11, 0x22

    and-int/2addr v10, v11

    if-ne v10, v11, :cond_31

    .line 5525
    iget v10, v9, Landroid/graphics/Rect;->top:I

    .line 5526
    iget v12, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_33

    .line 5524
    :cond_31
    move v10, v5

    move v12, v10

    .line 5530
    :goto_33
    sub-int/2addr v10, v6

    .line 5531
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v13

    sub-int/2addr v13, v12

    .line 5532
    sub-int v12, v8, v13

    .line 5534
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v13

    iget v14, v0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int/2addr v13, v14

    iget v14, v0, Landroid/widget/AbsListView;->mPaddingTop:I

    sub-int/2addr v13, v14

    .line 5535
    if-gez v1, :cond_4f

    .line 5536
    add-int/lit8 v14, v13, -0x1

    neg-int v14, v14

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_55

    .line 5538
    :cond_4f
    add-int/lit8 v14, v13, -0x1

    invoke-static {v14, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5541
    :goto_55
    if-gez v2, :cond_5e

    .line 5542
    sub-int/2addr v13, v4

    neg-int v13, v13

    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_63

    .line 5544
    :cond_5e
    sub-int/2addr v13, v4

    invoke-static {v13, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 5547
    :goto_63
    iget v13, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5550
    if-nez v13, :cond_6e

    .line 5551
    iget v14, v9, Landroid/graphics/Rect;->top:I

    sub-int v14, v6, v14

    iput v14, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    goto :goto_73

    .line 5553
    :cond_6e
    iget v14, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v14, v2

    iput v14, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    .line 5555
    :goto_73
    add-int v14, v13, v3

    iget v15, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-ne v14, v15, :cond_7f

    .line 5556
    iget v15, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v15, v8

    iput v15, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    goto :goto_84

    .line 5558
    :cond_7f
    iget v15, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v15, v2

    iput v15, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    .line 5561
    :goto_84
    if-nez v13, :cond_8e

    iget v15, v9, Landroid/graphics/Rect;->top:I

    if-lt v6, v15, :cond_8e

    if-ltz v2, :cond_8e

    move v6, v4

    goto :goto_8f

    :cond_8e
    move v6, v5

    .line 5563
    :goto_8f
    iget v15, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-ne v14, v15, :cond_a0

    .line 5564
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v14

    iget v15, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    if-gt v8, v14, :cond_a0

    if-gtz v2, :cond_a0

    move v8, v4

    goto :goto_a1

    :cond_a0
    move v8, v5

    .line 5566
    :goto_a1
    if-nez v6, :cond_1ba

    if-eqz v8, :cond_a9

    move v1, v4

    move v3, v5

    goto/16 :goto_1bc

    .line 5570
    :cond_a9
    if-gez v2, :cond_ad

    move v6, v4

    goto :goto_ae

    :cond_ad
    move v6, v5

    .line 5572
    :goto_ae
    invoke-virtual {v0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v8

    .line 5573
    if-eqz v8, :cond_b7

    .line 5574
    invoke-virtual {v0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 5577
    :cond_b7
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeaderViewsCount()I

    move-result v14

    .line 5578
    iget v15, v0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFooterViewsCount()I

    move-result v16

    sub-int v15, v15, v16

    .line 5580
    nop

    .line 5581
    nop

    .line 5583
    if-eqz v6, :cond_100

    .line 5584
    neg-int v7, v2

    .line 5585
    iget v5, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/2addr v5, v11

    if-ne v5, v11, :cond_d0

    .line 5586
    iget v5, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v5

    .line 5588
    :cond_d0
    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_d2
    if-ge v5, v3, :cond_fc

    .line 5589
    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 5590
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v4

    if-lt v4, v7, :cond_e1

    .line 5591
    move/from16 p1, v1

    goto :goto_fe

    .line 5593
    :cond_e1
    add-int/lit8 v9, v9, 0x1

    .line 5594
    add-int v4, v13, v5

    .line 5595
    if-lt v4, v14, :cond_f4

    if-ge v4, v15, :cond_f4

    .line 5598
    invoke-virtual {v11}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 5599
    move/from16 p1, v1

    iget-object v1, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1, v11, v4}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_f6

    .line 5595
    :cond_f4
    move/from16 p1, v1

    .line 5588
    :goto_f6
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, p1

    const/4 v4, 0x1

    goto :goto_d2

    :cond_fc
    move/from16 p1, v1

    .line 5603
    :goto_fe
    const/4 v3, 0x0

    goto :goto_137

    .line 5604
    :cond_100
    move/from16 p1, v1

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v2

    .line 5605
    iget v3, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/2addr v3, v11

    if-ne v3, v11, :cond_10f

    .line 5606
    iget v3, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    .line 5608
    :cond_10f
    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_111
    if-ltz v7, :cond_137

    .line 5609
    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5610
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    if-gt v5, v1, :cond_11e

    .line 5611
    goto :goto_137

    .line 5613
    :cond_11e
    nop

    .line 5614
    add-int/lit8 v9, v9, 0x1

    .line 5615
    add-int v3, v13, v7

    .line 5616
    if-lt v3, v14, :cond_12f

    if-ge v3, v15, :cond_12f

    .line 5619
    invoke-virtual {v4}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 5620
    iget-object v5, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, v4, v3}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 5608
    :cond_12f
    add-int/lit8 v3, v7, -0x1

    move/from16 v17, v7

    move v7, v3

    move/from16 v3, v17

    goto :goto_111

    .line 5626
    :cond_137
    :goto_137
    iget v1, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    add-int v1, v1, p1

    iput v1, v0, Landroid/widget/AbsListView;->mMotionViewNewTop:I

    .line 5628
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    .line 5630
    if-lez v9, :cond_14a

    .line 5631
    invoke-virtual {v0, v3, v9}, Landroid/widget/AbsListView;->detachViewsFromParent(II)V

    .line 5632
    iget-object v3, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v3}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 5637
    :cond_14a
    invoke-virtual {v0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    move-result v3

    if-nez v3, :cond_153

    .line 5638
    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 5641
    :cond_153
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->offsetChildrenTopAndBottom(I)V

    .line 5643
    if-eqz v6, :cond_15d

    .line 5644
    iget v3, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v3, v9

    iput v3, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5647
    :cond_15d
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 5648
    if-lt v10, v2, :cond_165

    if-ge v12, v2, :cond_168

    .line 5649
    :cond_165
    invoke-virtual {v0, v6}, Landroid/widget/AbsListView;->fillGap(Z)V

    .line 5652
    :cond_168
    iget-object v2, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->fullyDetachScrapViews()V

    .line 5653
    nop

    .line 5654
    const/4 v2, -0x1

    if-nez v8, :cond_18f

    iget v3, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-eq v3, v2, :cond_18f

    .line 5655
    iget v2, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v3, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    .line 5656
    if-ltz v2, :cond_18d

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_18d

    .line 5657
    iget v3, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 5658
    move v4, v1

    goto :goto_18e

    .line 5660
    :cond_18d
    const/4 v4, 0x0

    :goto_18e
    goto :goto_1ac

    :cond_18f
    iget v3, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    if-eq v3, v2, :cond_1ab

    .line 5661
    iget v2, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    iget v3, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    .line 5662
    if-ltz v2, :cond_1ab

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1ab

    .line 5663
    iget v3, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 5664
    move v4, v1

    goto :goto_1ac

    .line 5667
    :cond_1ab
    const/4 v4, 0x0

    :goto_1ac
    if-nez v4, :cond_1b3

    .line 5668
    iget-object v1, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 5671
    :cond_1b3
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    .line 5673
    invoke-virtual {v0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 5675
    return v3

    .line 5566
    :cond_1ba
    move v1, v4

    move v3, v5

    .line 5567
    :goto_1bc
    if-eqz v2, :cond_1c0

    move v4, v1

    goto :goto_1c1

    :cond_1c0
    move v4, v3

    :goto_1c1
    return v4
.end method

.method greylist-max-o updateScrollIndicators()V
    .registers 5

    .line 2356
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_14

    .line 2357
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v3

    if-eqz v3, :cond_10

    move v3, v1

    goto :goto_11

    :cond_10
    move v3, v2

    :goto_11
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2360
    :cond_14
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_25

    .line 2361
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_22

    :cond_21
    move v1, v2

    :goto_22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2363
    :cond_25
    return-void
.end method

.method greylist updateSelectorState()V
    .registers 3

    .line 3039
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3040
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 3041
    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 3042
    invoke-direct {p0}, Landroid/widget/AbsListView;->getDrawableStateForSelector()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 3043
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_23

    .line 3046
    :cond_1e
    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3049
    :cond_23
    :goto_23
    return-void
.end method

.method public whitelist verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .line 3094
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_d

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    :goto_e
    return p1
.end method
