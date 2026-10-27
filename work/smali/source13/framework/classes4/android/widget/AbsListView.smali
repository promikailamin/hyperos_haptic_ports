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
        Landroid/widget/AbsListView$PositionScroller;,
        Landroid/widget/AbsListView$AbsPositionScroller;,
        Landroid/widget/AbsListView$RecycleBin;,
        Landroid/widget/AbsListView$RecyclerListener;,
        Landroid/widget/AbsListView$LayoutParams;,
        Landroid/widget/AbsListView$MultiChoiceModeWrapper;,
        Landroid/widget/AbsListView$MultiChoiceModeListener;,
        Landroid/widget/AbsListView$AdapterDataSetObserver;,
        Landroid/widget/AbsListView$InputConnectionWrapper;,
        Landroid/widget/AbsListView$FlingRunnable;,
        Landroid/widget/AbsListView$CheckForTap;,
        Landroid/widget/AbsListView$CheckForKeyLongPress;,
        Landroid/widget/AbsListView$CheckForLongPress;,
        Landroid/widget/AbsListView$PerformClick;,
        Landroid/widget/AbsListView$WindowRunnnable;,
        Landroid/widget/AbsListView$ListItemAccessibilityDelegate;,
        Landroid/widget/AbsListView$SavedState;,
        Landroid/widget/AbsListView$SelectionBoundsAdjuster;,
        Landroid/widget/AbsListView$OnScrollListener;
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

.field private static final greylist-max-o INVALID_POINTER:I = -0x1

.field static final greylist-max-o LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final greylist-max-o LAYOUT_FORCE_TOP:I = 0x1

.field static final greylist-max-o LAYOUT_MOVE_SELECTION:I = 0x6

.field static final greylist-max-o LAYOUT_NORMAL:I = 0x0

.field static final greylist-max-o LAYOUT_SET_SELECTION:I = 0x2

.field static final greylist-max-o LAYOUT_SPECIFIC:I = 0x4

.field static final greylist-max-o LAYOUT_SYNC:I = 0x5

.field private static final blacklist MOVE_TOUCH_SLOP:D = 0.6

.field private static final blacklist OPTS_INPUT:Z = true

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

.field private static final blacklist TOUCH_SLOP_MAX:D = 1.0

.field private static final blacklist TOUCH_SLOP_MIN:D = 0.6

.field public static final whitelist TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final whitelist TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final whitelist TRANSCRIPT_MODE_NORMAL:I = 0x1

.field static final greylist-max-o sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private blacklist mAbsListViewStub:Landroid/widget/AbsListViewStub;

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

.field private greylist-max-o mHasPerformedLongPress:Z

.field private greylist mIsChildViewEnabled:Z

.field private greylist-max-o mIsDetaching:Z

.field private blacklist mIsFirstTouchMoveEvent:Z

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

.field private blacklist mMoveAcceleration:I

.field greylist-max-o mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

.field private greylist-max-o mNestedYOffset:I

.field private blacklist mNumTouchMoveEvent:I

.field private greylist-max-p mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

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

.field private greylist-max-o mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

.field final greylist-max-p mRecycler:Landroid/widget/AbsListView$RecycleBin;

.field private greylist-max-o mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

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
.method static bridge synthetic blacklist -$$Nest$fgetmAbsListViewStub(Landroid/widget/AbsListView;)Landroid/widget/AbsListViewStub;
    .registers 1

    iget-object p0, p0, Landroid/widget/AbsListView;->mAbsListViewStub:Landroid/widget/AbsListViewStub;

    return-object p0
.end method

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

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 780
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/widget/AbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 869
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 259
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 293
    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 321
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 326
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 337
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 343
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 350
    new-instance v2, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v2, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 356
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 361
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 367
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 372
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 378
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 383
    iput v0, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 433
    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 470
    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 515
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 535
    iput v1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 537
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 564
    iput v1, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 567
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 570
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 578
    iput-object v3, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 579
    iput-object v3, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 641
    iput v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 671
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 673
    new-array v3, v2, [Z

    iput-object v3, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 675
    const/4 v3, 0x2

    new-array v4, v3, [I

    iput-object v4, p0, Landroid/widget/AbsListView;->mScrollOffset:[I

    .line 676
    new-array v4, v3, [I

    iput-object v4, p0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    .line 678
    new-array v3, v3, [F

    iput-object v3, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    .line 684
    iput v0, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 694
    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 759
    iput v0, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 795
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsFirstTouchMoveEvent:Z

    .line 797
    iput v0, p0, Landroid/widget/AbsListView;->mNumTouchMoveEvent:I

    .line 870
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 871
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 872
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 874
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 876
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 877
    sget-object v0, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 878
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->initializeScrollbarsInternal(Landroid/content/res/TypedArray;)V

    .line 879
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 880
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 883
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 884
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 887
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 888
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 891
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 259
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 293
    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 321
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 326
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 337
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 343
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 350
    new-instance v2, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v2, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 356
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 361
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 367
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 372
    iput v0, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 378
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 383
    iput v0, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 433
    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 470
    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 515
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 535
    iput v1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 537
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 564
    iput v1, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 567
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 570
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 578
    iput-object v3, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 579
    iput-object v3, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 641
    iput v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 671
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 673
    new-array v3, v2, [Z

    iput-object v3, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 675
    const/4 v3, 0x2

    new-array v4, v3, [I

    iput-object v4, p0, Landroid/widget/AbsListView;->mScrollOffset:[I

    .line 676
    new-array v4, v3, [I

    iput-object v4, p0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    .line 678
    new-array v4, v3, [F

    iput-object v4, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    .line 684
    iput v0, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 694
    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 759
    iput v0, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 795
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsFirstTouchMoveEvent:Z

    .line 797
    iput v0, p0, Landroid/widget/AbsListView;->mNumTouchMoveEvent:I

    .line 892
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, p1, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 893
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, p1, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 894
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 896
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 898
    sget-object v1, Lcom/android/internal/R$styleable;->AbsListView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 900
    .local v1, "a":Landroid/content/res/TypedArray;
    sget-object v6, Lcom/android/internal/R$styleable;->AbsListView:[I

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object v8, v1

    move v9, p3

    move v10, p4

    invoke-virtual/range {v4 .. v10}, Landroid/widget/AbsListView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 903
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 904
    .local v4, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_96

    .line 905
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 908
    :cond_96
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 910
    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setStackFromBottom(Z)V

    .line 912
    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 914
    const/4 v3, 0x4

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 916
    const/4 v3, 0x5

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setTranscriptMode(I)V

    .line 918
    const/4 v3, 0x6

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 920
    const/16 v5, 0x9

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 922
    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 925
    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 927
    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setFastScrollStyle(I)V

    .line 929
    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 932
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 934
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    if-ne v2, v3, :cond_101

    .line 935
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setRevealOnFocusHint(Z)V

    .line 937
    :cond_101
    return-void
.end method

.method private greylist-max-o acceptFilter()Z
    .registers 2

    .line 1995
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_1a

    .line 1996
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

    .line 1995
    :goto_1b
    return v0
.end method

.method static synthetic blacklist access$000(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 115
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$100(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 115
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$1000(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .registers 11
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .line 115
    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$1100(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 115
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic blacklist access$1200(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .registers 11
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .line 115
    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$1300(Landroid/widget/AbsListView;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .line 115
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic blacklist access$1400(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 115
    iget v0, p0, Landroid/widget/AbsListView;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic blacklist access$1500(Landroid/widget/AbsListView;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Z

    .line 115
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic blacklist access$1600(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .registers 3
    .param p0, "x0"    # Landroid/widget/AbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .line 115
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic blacklist access$1700(Landroid/widget/AbsListView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 115
    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$200(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 115
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic blacklist access$300(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 115
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic blacklist access$400(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 115
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic blacklist access$500(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 115
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic blacklist access$600(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 115
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic blacklist access$700(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 115
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic blacklist access$800(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 115
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic blacklist access$900(Landroid/widget/AbsListView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView;

    .line 115
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method private blacklist addAccessibilityActionIfEnabled(Landroid/view/accessibility/AccessibilityNodeInfo;ZLandroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V
    .registers 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "enabled"    # Z
    .param p3, "action"    # Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 2626
    if-eqz p2, :cond_5

    .line 2627
    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2629
    :cond_5
    return-void
.end method

.method private greylist-max-r canScrollDown()Z
    .registers 9

    .line 2315
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2318
    .local v0, "count":I
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

    .line 2321
    .local v1, "canScrollDown":Z
    :goto_10
    if-nez v1, :cond_29

    if-lez v0, :cond_29

    .line 2322
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2323
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, p0, Landroid/widget/AbsListView;->mBottom:I

    iget-object v7, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_28

    move v3, v4

    :cond_28
    move v1, v3

    .line 2326
    .end local v2    # "child":Landroid/view/View;
    :cond_29
    return v1
.end method

.method private greylist-max-r canScrollUp()Z
    .registers 7

    .line 2299
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 2302
    .local v0, "canScrollUp":Z
    :goto_9
    if-nez v0, :cond_22

    .line 2303
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_22

    .line 2304
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2305
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_20

    goto :goto_21

    :cond_20
    move v1, v2

    :goto_21
    move v0, v1

    .line 2309
    .end local v3    # "child":Landroid/view/View;
    :cond_22
    return v0
.end method

.method private greylist-max-o clearScrollingCache()V
    .registers 2

    .line 5279
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_16

    .line 5280
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_11

    .line 5281
    new-instance v0, Landroid/widget/AbsListView$4;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$4;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 5297
    :cond_11
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 5299
    :cond_16
    return-void
.end method

.method private greylist-max-o contentFits()Z
    .registers 7

    .line 1324
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 1325
    .local v0, "childCount":I
    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 1326
    :cond_8
    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_e

    return v3

    .line 1328
    :cond_e
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v2, v4, :cond_32

    add-int/lit8 v2, v0, -0x1

    .line 1329
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-gt v2, v4, :cond_32

    goto :goto_33

    :cond_32
    move v1, v3

    .line 1328
    :goto_33
    return v1
.end method

.method private greylist-max-o createScrollingCache()V
    .registers 2

    .line 5271
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    if-nez v0, :cond_19

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_19

    .line 5272
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 5273
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 5274
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mCachingActive:Z

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    .line 5276
    :cond_19
    return-void
.end method

.method private greylist-max-o createTextFilter(Z)V
    .registers 4
    .param p1, "animateEntrance"    # Z

    .line 6343
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_36

    .line 6344
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 6345
    .local v0, "p":Landroid/widget/PopupWindow;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 6346
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 6347
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 6348
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 6349
    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 6350
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 6351
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6352
    iput-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 6353
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 6354
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 6356
    .end local v0    # "p":Landroid/widget/PopupWindow;
    :cond_36
    if-eqz p1, :cond_41

    .line 6357
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v1, 0x103030b

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_49

    .line 6359
    :cond_41
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v1, 0x103030c

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 6361
    :goto_49
    return-void
.end method

.method private greylist-max-o dismissPopup()V
    .registers 2

    .line 5967
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_7

    .line 5968
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 5970
    :cond_7
    return-void
.end method

.method private blacklist doesTouchStopStretch()Z
    .registers 3

    .line 3896
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

    .line 3897
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

    .line 3896
    :goto_24
    return v0
.end method

.method private greylist-max-o drawSelector(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2856
    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldDrawSelector()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2857
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2858
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2859
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2861
    .end local v0    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_10
    return-void
.end method

.method private greylist-max-o finishGlows()V
    .registers 2

    .line 6592
    invoke-direct {p0}, Landroid/widget/AbsListView;->shouldDisplayEdgeEffects()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 6593
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 6594
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 6596
    :cond_10
    return-void
.end method

.method static greylist-max-o getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .registers 11
    .param p0, "source"    # Landroid/graphics/Rect;
    .param p1, "dest"    # Landroid/graphics/Rect;
    .param p2, "direction"    # I

    .line 6013
    sparse-switch p2, :sswitch_data_96

    .line 6046
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6021
    :sswitch_b
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 6022
    .local v0, "sX":I
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 6023
    .local v1, "sY":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 6024
    .local v2, "dX":I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 6025
    .local v3, "dY":I
    goto :goto_8c

    .line 6015
    .end local v0    # "sX":I
    .end local v1    # "sY":I
    .end local v2    # "dX":I
    .end local v3    # "dY":I
    :sswitch_22
    iget v0, p0, Landroid/graphics/Rect;->right:I

    .line 6016
    .restart local v0    # "sX":I
    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 6017
    .restart local v1    # "sY":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 6018
    .restart local v2    # "dX":I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 6019
    .restart local v3    # "dY":I
    goto :goto_8c

    .line 6033
    .end local v0    # "sX":I
    .end local v1    # "sY":I
    .end local v2    # "dX":I
    .end local v3    # "dY":I
    :sswitch_39
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 6034
    .restart local v0    # "sX":I
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 6035
    .restart local v1    # "sY":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 6036
    .restart local v2    # "dX":I
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 6037
    .restart local v3    # "dY":I
    goto :goto_8c

    .line 6027
    .end local v0    # "sX":I
    .end local v1    # "sY":I
    .end local v2    # "dX":I
    .end local v3    # "dY":I
    :sswitch_50
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 6028
    .restart local v0    # "sX":I
    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 6029
    .restart local v1    # "sY":I
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 6030
    .restart local v2    # "dX":I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 6031
    .restart local v3    # "dY":I
    goto :goto_8c

    .line 6040
    .end local v0    # "sX":I
    .end local v1    # "sY":I
    .end local v2    # "dX":I
    .end local v3    # "dY":I
    :sswitch_67
    iget v0, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 6041
    .restart local v0    # "sX":I
    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 6042
    .restart local v1    # "sY":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 6043
    .restart local v2    # "dX":I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 6044
    .restart local v3    # "dY":I
    nop

    .line 6050
    :goto_8c
    sub-int v4, v2, v0

    .line 6051
    .local v4, "deltaX":I
    sub-int v5, v3, v1

    .line 6052
    .local v5, "deltaY":I
    mul-int v6, v5, v5

    mul-int v7, v4, v4

    add-int/2addr v6, v7

    return v6

    :sswitch_data_96
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
    .registers 7

    .line 3003
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    if-eqz v0, :cond_9

    .line 3005
    invoke-super {p0}, Landroid/widget/AdapterView;->getDrawableState()[I

    move-result-object v0

    return-object v0

    .line 3011
    :cond_9
    sget-object v0, Landroid/widget/AbsListView;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 3017
    .local v0, "enabledState":I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->onCreateDrawableState(I)[I

    move-result-object v2

    .line 3019
    .local v2, "state":[I
    const/4 v3, -0x1

    .line 3020
    .local v3, "enabledPos":I
    array-length v4, v2

    sub-int/2addr v4, v1

    .local v4, "i":I
    :goto_16
    if-ltz v4, :cond_21

    .line 3021
    aget v5, v2, v4

    if-ne v5, v0, :cond_1e

    .line 3022
    move v3, v4

    .line 3023
    goto :goto_21

    .line 3020
    :cond_1e
    add-int/lit8 v4, v4, -0x1

    goto :goto_16

    .line 3028
    .end local v4    # "i":I
    :cond_21
    :goto_21
    if-ltz v3, :cond_2b

    .line 3029
    add-int/lit8 v4, v3, 0x1

    array-length v5, v2

    sub-int/2addr v5, v3

    sub-int/2addr v5, v1

    invoke-static {v2, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3033
    :cond_2b
    return-object v2
.end method

.method private greylist-max-o getTextFilterInput()Landroid/widget/EditText;
    .registers 4

    .line 6364
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-nez v0, :cond_29

    .line 6365
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 6366
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v1, 0x1090147

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 6371
    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 6373
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 6374
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6376
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_29
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    return-object v0
.end method

.method private greylist-max-o initAbsListView()V
    .registers 8

    .line 941
    invoke-static {}, Landroid/widget/AbsListViewStub;->newInstance()Landroid/widget/AbsListViewStub;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mAbsListViewStub:Landroid/widget/AbsListViewStub;

    .line 942
    invoke-interface {v0, p0}, Landroid/widget/AbsListViewStub;->init(Landroid/widget/AbsListView;)V

    .line 946
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setClickable(Z)V

    .line 947
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setFocusableInTouchMode(Z)V

    .line 948
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setWillNotDraw(Z)V

    .line 949
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 950
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 952
    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 953
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    .line 954
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mVerticalScrollFactor:F

    .line 956
    const-wide v1, 0x3fe3333333333333L    # 0.6

    .line 957
    .local v1, "touchslopprop":D
    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-lez v3, :cond_5f

    .line 958
    const-wide v3, 0x3fe3333333333333L    # 0.6

    cmpg-double v5, v1, v3

    if-gez v5, :cond_48

    .line 959
    iget v5, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    int-to-double v5, v5

    mul-double/2addr v5, v3

    double-to-int v3, v5

    iput v3, p0, Landroid/widget/AbsListView;->mMoveAcceleration:I

    goto :goto_63

    .line 960
    :cond_48
    cmpl-double v3, v1, v3

    if-ltz v3, :cond_5a

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, v1, v3

    if-gez v3, :cond_5a

    .line 961
    iget v3, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    int-to-double v3, v3

    mul-double/2addr v3, v1

    double-to-int v3, v3

    iput v3, p0, Landroid/widget/AbsListView;->mMoveAcceleration:I

    goto :goto_63

    .line 963
    :cond_5a
    iget v3, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    iput v3, p0, Landroid/widget/AbsListView;->mMoveAcceleration:I

    goto :goto_63

    .line 966
    :cond_5f
    iget v3, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    iput v3, p0, Landroid/widget/AbsListView;->mMoveAcceleration:I

    .line 969
    .end local v1    # "touchslopprop":D
    :goto_63
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    .line 970
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    .line 971
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    .line 972
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mOverflingDistance:I

    .line 974
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Landroid/widget/AbsListView;->mDensityScale:F

    .line 975
    return-void
.end method

.method private greylist-max-o initOrResetVelocityTracker()V
    .registers 2

    .line 4596
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    .line 4597
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_e

    .line 4599
    :cond_b
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 4601
    :goto_e
    return-void
.end method

.method private greylist-max-o initVelocityTrackerIfNotExists()V
    .registers 2

    .line 4604
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 4605
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4607
    :cond_a
    return-void
.end method

.method private blacklist invalidateEdgeEffects()V
    .registers 2

    .line 3901
    invoke-direct {p0}, Landroid/widget/AbsListView;->shouldDisplayEdgeEffects()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3902
    return-void

    .line 3904
    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3905
    return-void
.end method

.method private greylist-max-o isItemClickable(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 2632
    invoke-virtual {p1}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private greylist-max-o isOwnerThread()Z
    .registers 3

    .line 1438
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
    .registers 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 4759
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 4761
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 4762
    .local v1, "pointerId":I
    iget v2, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    if-ne v1, v2, :cond_2e

    .line 4766
    const/4 v2, 0x0

    if-nez v0, :cond_17

    const/4 v3, 0x1

    goto :goto_18

    :cond_17
    move v3, v2

    .line 4767
    .local v3, "newPointerIndex":I
    :goto_18
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4768
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4769
    iput v2, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4770
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4772
    .end local v3    # "newPointerIndex":I
    :cond_2e
    return-void
.end method

.method private greylist-max-o onTouchCancel()V
    .registers 5

    .line 4401
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_4c

    .line 4414
    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4415
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4416
    iget v2, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4417
    .local v2, "motionView":Landroid/view/View;
    if-eqz v2, :cond_2d

    .line 4418
    invoke-virtual {v2, v0}, Landroid/view/View;->setPressed(Z)V

    goto :goto_2d

    .line 4411
    .end local v2    # "motionView":Landroid/view/View;
    :pswitch_1b
    goto :goto_38

    .line 4403
    :pswitch_1c
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_27

    .line 4404
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4406
    :cond_27
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    .line 4407
    goto :goto_38

    .line 4420
    .restart local v2    # "motionView":Landroid/view/View;
    :cond_2d
    :goto_2d
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 4421
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4422
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 4425
    .end local v2    # "motionView":Landroid/view/View;
    :goto_38
    invoke-direct {p0}, Landroid/widget/AbsListView;->shouldDisplayEdgeEffects()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 4426
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4427
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4429
    :cond_48
    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4430
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
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 4071
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mHasPerformedLongPress:Z

    .line 4072
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4073
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 4075
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3f

    .line 4077
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_18

    .line 4078
    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4080
    :cond_18
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_1f

    .line 4081
    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 4083
    :cond_1f
    const/4 v1, 0x5

    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4084
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4085
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4086
    iput v1, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4087
    iput v0, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4088
    iput v0, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 4089
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->stopEdgeGlowRecede(F)V

    goto/16 :goto_be

    .line 4091
    :cond_3f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 4092
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 4093
    .local v2, "y":I
    invoke-virtual {p0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v3

    .line 4095
    .local v3, "motionPosition":I
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v4, :cond_a4

    .line 4096
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_6e

    .line 4098
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 4099
    const/4 v4, 0x3

    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4100
    iput v0, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4101
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v3

    .line 4102
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v0, :cond_69

    .line 4103
    invoke-virtual {v0}, Landroid/widget/AbsListView$FlingRunnable;->flywheelTouch()V

    .line 4105
    :cond_69
    int-to-float v0, v1

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->stopEdgeGlowRecede(F)V

    goto :goto_a4

    .line 4106
    :cond_6e
    if-ltz v3, :cond_a4

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 4110
    iput v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4113
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    if-nez v0, :cond_8a

    .line 4114
    new-instance v0, Landroid/widget/AbsListView$CheckForTap;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Landroid/widget/AbsListView$CheckForTap;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForTap-IA;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    .line 4117
    :cond_8a
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, v0, Landroid/widget/AbsListView$CheckForTap;->x:F

    .line 4118
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, v0, Landroid/widget/AbsListView$CheckForTap;->y:F

    .line 4119
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p0, v0, v4, v5}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4123
    :cond_a4
    :goto_a4
    if-ltz v3, :cond_b4

    .line 4125
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4126
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4129
    .end local v0    # "v":Landroid/view/View;
    :cond_b4
    iput v1, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4130
    iput v2, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4131
    iput v3, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4132
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4135
    .end local v1    # "x":I
    .end local v2    # "y":I
    .end local v3    # "motionPosition":I
    :goto_be
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v0, :cond_d2

    iget v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d2

    .line 4136
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 4137
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4139
    :cond_d2
    return-void
.end method

.method private greylist-max-o onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .registers 11
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "vtev"    # Landroid/view/MotionEvent;

    .line 4151
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mHasPerformedLongPress:Z

    if-eqz v0, :cond_5

    .line 4153
    return-void

    .line 4156
    :cond_5
    iget v0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 4157
    .local v0, "pointerIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    .line 4158
    const/4 v0, 0x0

    .line 4159
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4162
    :cond_15
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v1, :cond_1c

    .line 4165
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 4168
    :cond_1c
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    .line 4170
    .local v1, "y":I
    iget v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v2, :pswitch_data_84

    :pswitch_26
    goto :goto_83

    .line 4203
    :pswitch_27
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v2, v1, p2}, Landroid/widget/AbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    goto :goto_83

    .line 4176
    :pswitch_30
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v2, v1, p2}, Landroid/widget/AbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 4177
    goto :goto_83

    .line 4181
    :cond_3c
    iget v2, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4182
    .local v2, "motionView":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 4183
    .local v3, "x":F
    int-to-float v4, v1

    iget v5, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    int-to-float v5, v5

    invoke-virtual {p0, v3, v4, v5}, Landroid/widget/AbsListView;->pointInView(FFF)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_6f

    .line 4184
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4185
    if-eqz v2, :cond_5c

    .line 4186
    invoke-virtual {v2, v5}, Landroid/view/View;->setPressed(Z)V

    .line 4188
    :cond_5c
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v4, :cond_63

    .line 4189
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    goto :goto_65

    :cond_63
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    .line 4188
    :goto_65
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4190
    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4191
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto :goto_83

    .line 4192
    :cond_6f
    if-eqz v2, :cond_83

    .line 4194
    iget-object v4, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    .line 4195
    .local v4, "point":[F
    aput v3, v4, v5

    .line 4196
    int-to-float v6, v1

    const/4 v7, 0x1

    aput v6, v4, v7

    .line 4197
    invoke-virtual {p0, v4, v2}, Landroid/widget/AbsListView;->transformPointToViewLocal([FLandroid/view/View;)V

    .line 4198
    aget v5, v4, v5

    aget v6, v4, v7

    invoke-virtual {v2, v5, v6}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 4206
    .end local v2    # "motionView":Landroid/view/View;
    .end local v3    # "x":F
    .end local v4    # "point":[F
    :cond_83
    :goto_83
    return-void

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_27
        :pswitch_26
        :pswitch_27
    .end packed-switch
.end method

.method private greylist-max-o onTouchUp(Landroid/view/MotionEvent;)V
    .registers 18
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 4209
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v3, 0x2

    const/16 v4, 0x3e8

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v1, :pswitch_data_22c

    :pswitch_d
    goto/16 :goto_201

    .line 4352
    :pswitch_f
    iget-object v1, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_1a

    .line 4353
    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, v0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4355
    :cond_1a
    iget-object v1, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4356
    .local v1, "velocityTracker":Landroid/view/VelocityTracker;
    iget v6, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    int-to-float v6, v6

    invoke-virtual {v1, v4, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4357
    iget v4, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {v1, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    float-to-int v4, v4

    .line 4359
    .local v4, "initialVelocity":I
    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4360
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v6, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    if-le v3, v6, :cond_3c

    .line 4361
    iget-object v3, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    neg-int v6, v4

    invoke-virtual {v3, v6}, Landroid/widget/AbsListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_201

    .line 4363
    :cond_3c
    iget-object v3, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v3}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_201

    .line 4288
    .end local v1    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v4    # "initialVelocity":I
    :pswitch_43
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 4289
    .local v1, "childCount":I
    if-lez v1, :cond_127

    .line 4290
    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    .line 4291
    .local v8, "firstChildTop":I
    add-int/lit8 v9, v1, -0x1

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    .line 4292
    .local v9, "lastChildBottom":I
    iget-object v10, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    .line 4293
    .local v10, "contentTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v11

    iget-object v12, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    .line 4294
    .local v11, "contentBottom":I
    iget v12, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-nez v12, :cond_83

    if-lt v8, v10, :cond_83

    iget v12, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v12, v1

    iget v13, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-ge v12, v13, :cond_83

    .line 4296
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v12

    sub-int/2addr v12, v11

    if-gt v9, v12, :cond_83

    .line 4297
    iput v5, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4298
    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_125

    .line 4300
    :cond_83
    iget-object v12, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4301
    .local v12, "velocityTracker":Landroid/view/VelocityTracker;
    iget v13, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    int-to-float v13, v13

    invoke-virtual {v12, v4, v13}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4303
    iget v4, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4304
    invoke-virtual {v12, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    iget v13, v0, Landroid/widget/AbsListView;->mVelocityScale:F

    mul-float/2addr v4, v13

    float-to-int v4, v4

    .line 4309
    .restart local v4    # "initialVelocity":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v13

    iget v14, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    if-le v13, v14, :cond_9f

    move v13, v6

    goto :goto_a0

    :cond_9f
    move v13, v7

    .line 4310
    .local v13, "flingVelocity":Z
    :goto_a0
    if-eqz v13, :cond_b1

    iget-object v14, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v14}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v14

    if-nez v14, :cond_b1

    .line 4311
    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto/16 :goto_125

    .line 4312
    :cond_b1
    if-eqz v13, :cond_c2

    iget-object v14, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v14}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v14

    if-nez v14, :cond_c2

    .line 4313
    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    neg-int v6, v4

    invoke-virtual {v3, v6}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_125

    .line 4314
    :cond_c2
    const/4 v14, 0x0

    if-eqz v13, :cond_103

    iget v15, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-nez v15, :cond_cf

    iget v15, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    sub-int v15, v10, v15

    if-eq v8, v15, :cond_103

    :cond_cf
    iget v15, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v15, v1

    iget v2, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-ne v15, v2, :cond_db

    iget v2, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    add-int/2addr v2, v11

    if-eq v9, v2, :cond_103

    .line 4320
    :cond_db
    neg-int v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v14, v2}, Landroid/widget/AbsListView;->dispatchNestedPreFling(FF)Z

    move-result v2

    if-nez v2, :cond_fd

    .line 4321
    iget-object v2, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v2, :cond_ee

    .line 4322
    new-instance v2, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v2, v0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4324
    :cond_ee
    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4325
    iget-object v2, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    neg-int v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 4326
    neg-int v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v14, v2, v6}, Landroid/widget/AbsListView;->dispatchNestedFling(FFZ)Z

    goto :goto_125

    .line 4328
    :cond_fd
    iput v5, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4329
    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto :goto_125

    .line 4332
    :cond_103
    iput v5, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4333
    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4334
    iget-object v2, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v2, :cond_10f

    .line 4335
    invoke-virtual {v2}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4337
    :cond_10f
    iget-object v2, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v2, :cond_116

    .line 4338
    invoke-virtual {v2}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 4340
    :cond_116
    if-eqz v13, :cond_125

    neg-int v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v14, v2}, Landroid/widget/AbsListView;->dispatchNestedPreFling(FF)Z

    move-result v2

    if-nez v2, :cond_125

    .line 4341
    neg-int v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v14, v2, v7}, Landroid/widget/AbsListView;->dispatchNestedFling(FFZ)Z

    .line 4345
    .end local v4    # "initialVelocity":I
    .end local v8    # "firstChildTop":I
    .end local v9    # "lastChildBottom":I
    .end local v10    # "contentTop":I
    .end local v11    # "contentBottom":I
    .end local v12    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v13    # "flingVelocity":Z
    :cond_125
    :goto_125
    goto/16 :goto_201

    .line 4346
    :cond_127
    iput v5, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4347
    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4349
    goto/16 :goto_201

    .line 4213
    .end local v1    # "childCount":I
    :pswitch_12e
    iget v1, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4214
    .local v1, "motionPosition":I
    iget v2, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v2, v1, v2

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4215
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_1fb

    .line 4216
    iget v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eqz v3, :cond_141

    .line 4217
    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    .line 4220
    :cond_141
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 4221
    .local v3, "x":F
    iget-object v4, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_15e

    .line 4222
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    iget-object v8, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v8

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_15e

    move v4, v6

    goto :goto_15f

    :cond_15e
    move v4, v7

    .line 4223
    .local v4, "inList":Z
    :goto_15f
    if-eqz v4, :cond_1fb

    invoke-virtual {v2}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v8

    if-nez v8, :cond_1fb

    .line 4224
    iget-object v8, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-nez v8, :cond_173

    .line 4225
    new-instance v8, Landroid/widget/AbsListView$PerformClick;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$PerformClick-IA;)V

    iput-object v8, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 4228
    :cond_173
    iget-object v8, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 4229
    .local v8, "performClick":Landroid/widget/AbsListView$PerformClick;
    iput v1, v8, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    .line 4230
    invoke-virtual {v8}, Landroid/widget/AbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 4232
    iput v1, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 4234
    iget v9, v0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eqz v9, :cond_193

    if-ne v9, v6, :cond_183

    goto :goto_193

    .line 4279
    :cond_183
    iget-boolean v6, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v6, :cond_1fb

    iget-object v6, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_1fb

    .line 4280
    invoke-virtual {v8}, Landroid/widget/AbsListView$PerformClick;->run()V

    goto :goto_1fb

    .line 4235
    :cond_193
    :goto_193
    if-nez v9, :cond_198

    .line 4236
    iget-object v9, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    goto :goto_19a

    :cond_198
    iget-object v9, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    .line 4235
    :goto_19a
    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4237
    iput v7, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 4238
    iget-boolean v7, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v7, :cond_1f5

    iget-object v7, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_1f5

    .line 4239
    iput v6, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4240
    iget v5, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 4241
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 4242
    invoke-virtual {v2, v6}, Landroid/view/View;->setPressed(Z)V

    .line 4243
    iget v5, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-virtual {v0, v5, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 4244
    invoke-virtual {v0, v6}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4245
    iget-object v5, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1dd

    .line 4246
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 4247
    .local v5, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_1d4

    instance-of v6, v5, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v6, :cond_1d4

    .line 4248
    move-object v6, v5

    check-cast v6, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 4250
    :cond_1d4
    iget-object v6, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v6, v3, v7}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 4252
    .end local v5    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1dd
    iget-object v5, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v5, :cond_1e4

    .line 4253
    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4255
    :cond_1e4
    new-instance v5, Landroid/widget/AbsListView$3;

    invoke-direct {v5, v0, v2, v8}, Landroid/widget/AbsListView$3;-><init>(Landroid/widget/AbsListView;Landroid/view/View;Landroid/widget/AbsListView$PerformClick;)V

    iput-object v5, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 4271
    nop

    .line 4272
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDurationForListview()I

    move-result v6

    int-to-long v6, v6

    .line 4271
    invoke-virtual {v0, v5, v6, v7}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1fa

    .line 4275
    :cond_1f5
    iput v5, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4276
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 4278
    :goto_1fa
    return-void

    .line 4284
    .end local v3    # "x":F
    .end local v4    # "inList":Z
    .end local v8    # "performClick":Landroid/widget/AbsListView$PerformClick;
    :cond_1fb
    :goto_1fb
    iput v5, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4285
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 4286
    nop

    .line 4369
    .end local v1    # "motionPosition":I
    .end local v2    # "child":Landroid/view/View;
    :goto_201
    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4371
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->shouldDisplayEdgeEffects()Z

    move-result v1

    if-eqz v1, :cond_214

    .line 4372
    iget-object v1, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4373
    iget-object v1, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4377
    :cond_214
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4378
    iget-object v1, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4379
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 4381
    iput v5, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4390
    iget-object v1, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_22b

    .line 4391
    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 4392
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 4394
    :cond_22b
    return-void

    :pswitch_data_22c
    .packed-switch 0x0
        :pswitch_12e
        :pswitch_12e
        :pswitch_12e
        :pswitch_43
        :pswitch_d
        :pswitch_f
    .end packed-switch
.end method

.method private greylist-max-o performStylusButtonPressAction(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 3328
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_30

    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_30

    .line 3329
    iget v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3330
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_30

    .line 3331
    iget v2, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3332
    .local v2, "longPressPosition":I
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v4, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 3333
    .local v3, "longPressId":J
    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 3334
    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3335
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3336
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 3337
    const/4 v1, 0x1

    return v1

    .line 3341
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "longPressPosition":I
    .end local v3    # "longPressId":J
    :cond_30
    return v1
.end method

.method private greylist-max-o positionPopup()V
    .registers 7

    .line 5986
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 5987
    .local v0, "screenHeight":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 5988
    .local v1, "xy":[I
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getLocationOnScreen([I)V

    .line 5991
    const/4 v2, 0x1

    aget v2, v1, v2

    sub-int v2, v0, v2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/AbsListView;->mDensityScale:F

    const/high16 v4, 0x41a00000    # 20.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    .line 5992
    .local v2, "bottomGap":I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_34

    .line 5993
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v5, 0x51

    aget v4, v1, v4

    invoke-virtual {v3, p0, v5, v4, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_3c

    .line 5996
    :cond_34
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v1, v4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v2, v5, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 5998
    :goto_3c
    return-void
.end method

.method private greylist positionSelector(ILandroid/view/View;ZFF)V
    .registers 14
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "manageHotspot"    # Z
    .param p4, "x"    # F
    .param p5, "y"    # F

    .line 2662
    iget v0, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 2663
    .local v0, "positionChanged":Z
    :goto_9
    const/4 v3, -0x1

    if-eq p1, v3, :cond_e

    .line 2664
    iput p1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 2667
    :cond_e
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2668
    .local v3, "selectorRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 2669
    instance-of v4, p2, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    if-eqz v4, :cond_2d

    .line 2670
    move-object v4, p2

    check-cast v4, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    invoke-interface {v4, v3}, Landroid/widget/AbsListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 2674
    :cond_2d
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 2675
    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 2676
    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 2677
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 2680
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v4

    .line 2681
    .local v4, "isChildViewEnabled":Z
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    if-eq v5, v4, :cond_53

    .line 2682
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 2686
    :cond_53
    iget-object v5, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2687
    .local v5, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_77

    .line 2688
    if-eqz v0, :cond_61

    .line 2691
    invoke-virtual {v5, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 2692
    sget-object v6, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2694
    :cond_61
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2695
    if-eqz v0, :cond_72

    .line 2696
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_6f

    .line 2697
    invoke-virtual {v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 2699
    :cond_6f
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 2701
    :cond_72
    if-eqz p3, :cond_77

    .line 2702
    invoke-virtual {v5, p4, p5}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 2705
    :cond_77
    return-void
.end method

.method private greylist-max-o recycleVelocityTracker()V
    .registers 2

    .line 4610
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_a

    .line 4611
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 4612
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4614
    :cond_a
    return-void
.end method

.method private blacklist releaseGlow(II)I
    .registers 9
    .param p1, "deltaY"    # I
    .param p2, "x"    # I

    .line 3869
    const/4 v0, 0x0

    .line 3870
    .local v0, "consumed":F
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_30

    .line 3871
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 3872
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_2c

    .line 3874
    :cond_18
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v2, p1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, p2

    .line 3875
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 3874
    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v0

    .line 3877
    :goto_2c
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    goto :goto_62

    .line 3878
    :cond_30
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_62

    .line 3879
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 3880
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_5f

    .line 3882
    :cond_46
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    neg-int v2, p1

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    int-to-float v4, p2

    .line 3883
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 3882
    invoke-virtual {v1, v2, v3}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v1

    neg-float v0, v1

    .line 3885
    :goto_5f
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    .line 3887
    :cond_62
    :goto_62
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 3888
    .local v1, "pixelsConsumed":I
    sub-int v2, p1, v1

    return v2
.end method

.method private greylist-max-o scrollIfNeeded(IILandroid/view/MotionEvent;)V
    .registers 36
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .line 3658
    move-object/from16 v10, p0

    move/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    iget v0, v10, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v0, v12, v0

    .line 3659
    .local v0, "rawDeltaY":I
    const/4 v1, 0x0

    .line 3660
    .local v1, "scrollOffsetCorrection":I
    iget v2, v10, Landroid/widget/AbsListView;->mLastY:I

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_16

    .line 3661
    iget v4, v10, Landroid/widget/AbsListView;->mMotionCorrection:I

    sub-int/2addr v0, v4

    .line 3664
    :cond_16
    if-eq v2, v3, :cond_1b

    sub-int v2, v12, v2

    goto :goto_1c

    :cond_1b
    move v2, v0

    .line 3667
    .local v2, "incrementalDeltaY":I
    :goto_1c
    invoke-direct {v10, v2, v11}, Landroid/widget/AbsListView;->releaseGlow(II)I

    move-result v2

    .line 3669
    neg-int v3, v2

    iget-object v4, v10, Landroid/widget/AbsListView;->mScrollConsumed:[I

    iget-object v5, v10, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v14, 0x0

    invoke-virtual {v10, v14, v3, v4, v5}, Landroid/widget/AbsListView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v3

    const/4 v6, 0x0

    const/4 v15, 0x1

    if-eqz v3, :cond_4e

    .line 3670
    iget-object v3, v10, Landroid/widget/AbsListView;->mScrollConsumed:[I

    aget v3, v3, v15

    add-int/2addr v0, v3

    .line 3671
    iget-object v4, v10, Landroid/widget/AbsListView;->mScrollOffset:[I

    aget v4, v4, v15

    neg-int v1, v4

    .line 3672
    add-int/2addr v2, v3

    .line 3673
    if-eqz v13, :cond_48

    .line 3674
    int-to-float v3, v4

    invoke-virtual {v13, v6, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3675
    iget v3, v10, Landroid/widget/AbsListView;->mNestedYOffset:I

    iget-object v4, v10, Landroid/widget/AbsListView;->mScrollOffset:[I

    aget v4, v4, v15

    add-int/2addr v3, v4

    iput v3, v10, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 3678
    :cond_48
    move/from16 v16, v0

    move/from16 v17, v1

    move v9, v2

    goto :goto_53

    .line 3669
    :cond_4e
    move/from16 v16, v0

    move/from16 v17, v1

    move v9, v2

    .line 3678
    .end local v0    # "rawDeltaY":I
    .end local v1    # "scrollOffsetCorrection":I
    .end local v2    # "incrementalDeltaY":I
    .local v9, "incrementalDeltaY":I
    .local v16, "rawDeltaY":I
    .local v17, "scrollOffsetCorrection":I
    :goto_53
    move/from16 v8, v16

    .line 3679
    .local v8, "deltaY":I
    const/16 v18, 0x0

    .line 3681
    .local v18, "lastYCorrection":I
    iget v0, v10, Landroid/widget/AbsListView;->mTouchMode:I

    const/high16 v19, 0x3f800000    # 1.0f

    const/4 v7, 0x5

    const/4 v5, 0x3

    if-ne v0, v5, :cond_1b2

    .line 3689
    iget-object v0, v10, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_6b

    .line 3691
    const-string v0, "AbsListView-scroll"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, v10, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3694
    :cond_6b
    iget v0, v10, Landroid/widget/AbsListView;->mLastY:I

    if-eq v12, v0, :cond_1ad

    .line 3698
    iget v0, v10, Landroid/widget/AbsListView;->mGroupFlags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-nez v0, :cond_87

    .line 3699
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v10, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v0, v1, :cond_87

    .line 3700
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3701
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_87

    .line 3702
    invoke-interface {v0, v15}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3707
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_87
    iget v0, v10, Landroid/widget/AbsListView;->mMotionPosition:I

    if-ltz v0, :cond_90

    .line 3708
    iget v1, v10, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    move v5, v0

    .local v0, "motionIndex":I
    goto :goto_97

    .line 3712
    .end local v0    # "motionIndex":I
    :cond_90
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    move v5, v0

    .line 3715
    .local v5, "motionIndex":I
    :goto_97
    const/4 v0, 0x0

    .line 3716
    .local v0, "motionViewPrevTop":I
    invoke-virtual {v10, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3717
    .local v1, "motionView":Landroid/view/View;
    if-eqz v1, :cond_a5

    .line 3718
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    move/from16 v20, v0

    goto :goto_a7

    .line 3717
    :cond_a5
    move/from16 v20, v0

    .line 3722
    .end local v0    # "motionViewPrevTop":I
    .local v20, "motionViewPrevTop":I
    :goto_a7
    const/4 v0, 0x0

    .line 3723
    .local v0, "atEdge":Z
    if-eqz v9, :cond_b6

    .line 3724
    invoke-virtual {v10, v8, v9}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v0

    .line 3726
    iget-object v2, v10, Landroid/widget/AbsListView;->mAbsListViewStub:Landroid/widget/AbsListViewStub;

    invoke-interface {v2, v8}, Landroid/widget/AbsListViewStub;->postFromTraversal(I)V

    move/from16 v21, v0

    goto :goto_b8

    .line 3723
    :cond_b6
    move/from16 v21, v0

    .line 3730
    .end local v0    # "atEdge":Z
    .local v21, "atEdge":Z
    :goto_b8
    invoke-virtual {v10, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 3731
    .end local v1    # "motionView":Landroid/view/View;
    .local v22, "motionView":Landroid/view/View;
    if-eqz v22, :cond_19f

    .line 3734
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v23

    .line 3735
    .local v23, "motionViewRealTop":I
    if-eqz v21, :cond_193

    .line 3738
    neg-int v0, v9

    sub-int v1, v23, v20

    sub-int v4, v0, v1

    .line 3740
    .local v4, "overscroll":I
    const/4 v1, 0x0

    sub-int v2, v4, v9

    const/4 v3, 0x0

    iget-object v0, v10, Landroid/widget/AbsListView;->mScrollOffset:[I

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v25, v4

    .end local v4    # "overscroll":I
    .local v25, "overscroll":I
    move/from16 v26, v5

    .end local v5    # "motionIndex":I
    .local v26, "motionIndex":I
    move-object/from16 v5, v24

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsListView;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 3742
    iget-object v0, v10, Landroid/widget/AbsListView;->mScrollOffset:[I

    aget v0, v0, v15

    sub-int v18, v18, v0

    .line 3743
    if-eqz v13, :cond_f4

    .line 3744
    int-to-float v0, v0

    invoke-virtual {v13, v6, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3745
    iget v0, v10, Landroid/widget/AbsListView;->mNestedYOffset:I

    iget-object v1, v10, Landroid/widget/AbsListView;->mScrollOffset:[I

    aget v1, v1, v15

    add-int/2addr v0, v1

    iput v0, v10, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 3782
    .end local v25    # "overscroll":I
    :cond_f4
    move/from16 v24, v8

    move v3, v9

    goto/16 :goto_198

    .line 3748
    .restart local v25    # "overscroll":I
    :cond_f9
    const/4 v1, 0x0

    const/4 v3, 0x0

    iget v4, v10, Landroid/widget/AbsListView;->mScrollY:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v24, 0x0

    iget v2, v10, Landroid/widget/AbsListView;->mOverscrollDistance:I

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v28, v2

    move/from16 v2, v25

    move/from16 v7, v24

    move/from16 v24, v8

    .end local v8    # "deltaY":I
    .local v24, "deltaY":I
    move/from16 v8, v28

    move/from16 v29, v9

    .end local v9    # "incrementalDeltaY":I
    .local v29, "incrementalDeltaY":I
    move/from16 v9, v27

    invoke-virtual/range {v0 .. v9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    .line 3751
    .local v0, "atOverscrollEdge":Z
    if-eqz v0, :cond_122

    iget-object v1, v10, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_122

    .line 3753
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 3756
    :cond_122
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v1

    .line 3757
    .local v1, "overscrollMode":I
    if-eqz v1, :cond_137

    if-ne v1, v15, :cond_134

    .line 3759
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v2

    if-nez v2, :cond_131

    goto :goto_137

    :cond_131
    move/from16 v3, v29

    goto :goto_198

    .line 3757
    :cond_134
    move/from16 v3, v29

    goto :goto_198

    .line 3760
    :cond_137
    :goto_137
    if-nez v0, :cond_13e

    .line 3761
    iput v14, v10, Landroid/widget/AbsListView;->mDirection:I

    .line 3762
    const/4 v2, 0x5

    iput v2, v10, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3764
    :cond_13e
    move/from16 v3, v29

    .end local v29    # "incrementalDeltaY":I
    .local v3, "incrementalDeltaY":I
    if-lez v3, :cond_169

    .line 3765
    iget-object v2, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move/from16 v4, v25

    .end local v25    # "overscroll":I
    .restart local v4    # "overscroll":I
    neg-int v5, v4

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v6, v11

    .line 3766
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 3765
    invoke-virtual {v2, v5, v6}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 3767
    iget-object v2, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_165

    .line 3768
    iget-object v2, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3770
    :cond_165
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    goto :goto_198

    .line 3771
    .end local v4    # "overscroll":I
    .restart local v25    # "overscroll":I
    :cond_169
    move/from16 v4, v25

    .end local v25    # "overscroll":I
    .restart local v4    # "overscroll":I
    if-gez v3, :cond_198

    .line 3772
    iget-object v2, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v5, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v6, v11

    .line 3773
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    sub-float v6, v19, v6

    .line 3772
    invoke-virtual {v2, v5, v6}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 3774
    iget-object v2, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_18f

    .line 3775
    iget-object v2, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3777
    :cond_18f
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    goto :goto_198

    .line 3735
    .end local v0    # "atOverscrollEdge":Z
    .end local v1    # "overscrollMode":I
    .end local v3    # "incrementalDeltaY":I
    .end local v4    # "overscroll":I
    .end local v24    # "deltaY":I
    .end local v26    # "motionIndex":I
    .restart local v5    # "motionIndex":I
    .restart local v8    # "deltaY":I
    .restart local v9    # "incrementalDeltaY":I
    :cond_193
    move/from16 v26, v5

    move/from16 v24, v8

    move v3, v9

    .line 3782
    .end local v5    # "motionIndex":I
    .end local v8    # "deltaY":I
    .end local v9    # "incrementalDeltaY":I
    .restart local v3    # "incrementalDeltaY":I
    .restart local v24    # "deltaY":I
    .restart local v26    # "motionIndex":I
    :cond_198
    :goto_198
    add-int v0, v12, v18

    add-int v0, v0, v17

    iput v0, v10, Landroid/widget/AbsListView;->mMotionY:I

    goto :goto_1a4

    .line 3731
    .end local v3    # "incrementalDeltaY":I
    .end local v23    # "motionViewRealTop":I
    .end local v24    # "deltaY":I
    .end local v26    # "motionIndex":I
    .restart local v5    # "motionIndex":I
    .restart local v8    # "deltaY":I
    .restart local v9    # "incrementalDeltaY":I
    :cond_19f
    move/from16 v26, v5

    move/from16 v24, v8

    move v3, v9

    .line 3784
    .end local v5    # "motionIndex":I
    .end local v8    # "deltaY":I
    .end local v9    # "incrementalDeltaY":I
    .restart local v3    # "incrementalDeltaY":I
    .restart local v24    # "deltaY":I
    .restart local v26    # "motionIndex":I
    :goto_1a4
    add-int v0, v12, v18

    add-int v0, v0, v17

    iput v0, v10, Landroid/widget/AbsListView;->mLastY:I

    .line 3785
    .end local v20    # "motionViewPrevTop":I
    .end local v21    # "atEdge":Z
    .end local v22    # "motionView":Landroid/view/View;
    .end local v26    # "motionIndex":I
    move v9, v3

    goto/16 :goto_2b3

    .line 3694
    .end local v3    # "incrementalDeltaY":I
    .end local v24    # "deltaY":I
    .restart local v8    # "deltaY":I
    .restart local v9    # "incrementalDeltaY":I
    :cond_1ad
    move/from16 v24, v8

    move v3, v9

    .end local v8    # "deltaY":I
    .end local v9    # "incrementalDeltaY":I
    .restart local v3    # "incrementalDeltaY":I
    .restart local v24    # "deltaY":I
    goto/16 :goto_2b2

    .line 3786
    .end local v3    # "incrementalDeltaY":I
    .end local v24    # "deltaY":I
    .restart local v8    # "deltaY":I
    .restart local v9    # "incrementalDeltaY":I
    :cond_1b2
    move v2, v7

    move/from16 v24, v8

    move v3, v9

    .end local v8    # "deltaY":I
    .end local v9    # "incrementalDeltaY":I
    .restart local v3    # "incrementalDeltaY":I
    .restart local v24    # "deltaY":I
    if-ne v0, v2, :cond_2b2

    .line 3787
    iget v0, v10, Landroid/widget/AbsListView;->mLastY:I

    if-eq v12, v0, :cond_2b2

    .line 3788
    iget v9, v10, Landroid/widget/AbsListView;->mScrollY:I

    .line 3789
    .local v9, "oldScroll":I
    sub-int v20, v9, v3

    .line 3790
    .local v20, "newScroll":I
    iget v0, v10, Landroid/widget/AbsListView;->mLastY:I

    if-le v12, v0, :cond_1c6

    move v0, v15

    goto :goto_1c7

    :cond_1c6
    const/4 v0, -0x1

    :goto_1c7
    move v8, v0

    .line 3792
    .local v8, "newDirection":I
    iget v0, v10, Landroid/widget/AbsListView;->mDirection:I

    if-nez v0, :cond_1ce

    .line 3793
    iput v8, v10, Landroid/widget/AbsListView;->mDirection:I

    .line 3796
    :cond_1ce
    neg-int v0, v3

    .line 3797
    .local v0, "overScrollDistance":I
    if-gez v20, :cond_1d3

    if-gez v9, :cond_1d7

    :cond_1d3
    if-lez v20, :cond_1dd

    if-gtz v9, :cond_1dd

    .line 3798
    :cond_1d7
    neg-int v0, v9

    .line 3799
    add-int v1, v3, v0

    move v7, v0

    move v6, v1

    .end local v3    # "incrementalDeltaY":I
    .local v1, "incrementalDeltaY":I
    goto :goto_1e0

    .line 3801
    .end local v1    # "incrementalDeltaY":I
    .restart local v3    # "incrementalDeltaY":I
    :cond_1dd
    const/4 v1, 0x0

    move v7, v0

    move v6, v1

    .line 3804
    .end local v0    # "overScrollDistance":I
    .end local v3    # "incrementalDeltaY":I
    .local v6, "incrementalDeltaY":I
    .local v7, "overScrollDistance":I
    :goto_1e0
    if-eqz v7, :cond_271

    .line 3805
    const/4 v1, 0x0

    const/4 v3, 0x0

    iget v4, v10, Landroid/widget/AbsListView;->mScrollY:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    iget v2, v10, Landroid/widget/AbsListView;->mOverscrollDistance:I

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v26, v2

    move v2, v7

    move/from16 v5, v21

    move v14, v6

    .end local v6    # "incrementalDeltaY":I
    .local v14, "incrementalDeltaY":I
    move/from16 v6, v22

    move/from16 v30, v7

    .end local v7    # "overScrollDistance":I
    .local v30, "overScrollDistance":I
    move/from16 v7, v23

    move/from16 v31, v8

    .end local v8    # "newDirection":I
    .local v31, "newDirection":I
    move/from16 v8, v26

    move/from16 v22, v9

    .end local v9    # "oldScroll":I
    .local v22, "oldScroll":I
    move/from16 v9, v25

    invoke-virtual/range {v0 .. v9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    .line 3807
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v0

    .line 3808
    .local v0, "overscrollMode":I
    if-eqz v0, :cond_21e

    if-ne v0, v15, :cond_21b

    .line 3810
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v1

    if-nez v1, :cond_218

    goto :goto_21e

    :cond_218
    move/from16 v2, v30

    goto :goto_277

    .line 3808
    :cond_21b
    move/from16 v2, v30

    goto :goto_277

    .line 3811
    :cond_21e
    :goto_21e
    if-lez v16, :cond_246

    .line 3812
    iget-object v1, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move/from16 v2, v30

    .end local v30    # "overScrollDistance":I
    .local v2, "overScrollDistance":I
    int-to-float v3, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v11

    .line 3813
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 3812
    invoke-virtual {v1, v3, v4}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 3814
    iget-object v1, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_242

    .line 3815
    iget-object v1, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3817
    :cond_242
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    goto :goto_277

    .line 3818
    .end local v2    # "overScrollDistance":I
    .restart local v30    # "overScrollDistance":I
    :cond_246
    move/from16 v2, v30

    .end local v30    # "overScrollDistance":I
    .restart local v2    # "overScrollDistance":I
    if-gez v16, :cond_277

    .line 3819
    iget-object v1, v10, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    neg-int v3, v2

    int-to-float v3, v3

    .line 3820
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v11

    .line 3821
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float v4, v19, v4

    .line 3819
    invoke-virtual {v1, v3, v4}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 3822
    iget-object v1, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_26d

    .line 3823
    iget-object v1, v10, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3825
    :cond_26d
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    goto :goto_277

    .line 3804
    .end local v0    # "overscrollMode":I
    .end local v2    # "overScrollDistance":I
    .end local v14    # "incrementalDeltaY":I
    .end local v22    # "oldScroll":I
    .end local v31    # "newDirection":I
    .restart local v6    # "incrementalDeltaY":I
    .restart local v7    # "overScrollDistance":I
    .restart local v8    # "newDirection":I
    .restart local v9    # "oldScroll":I
    :cond_271
    move v14, v6

    move v2, v7

    move/from16 v31, v8

    move/from16 v22, v9

    .line 3830
    .end local v6    # "incrementalDeltaY":I
    .end local v7    # "overScrollDistance":I
    .end local v8    # "newDirection":I
    .end local v9    # "oldScroll":I
    .restart local v2    # "overScrollDistance":I
    .restart local v14    # "incrementalDeltaY":I
    .restart local v22    # "oldScroll":I
    .restart local v31    # "newDirection":I
    :cond_277
    :goto_277
    if-eqz v14, :cond_2a6

    .line 3832
    iget v0, v10, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v0, :cond_283

    .line 3833
    const/4 v0, 0x0

    iput v0, v10, Landroid/widget/AbsListView;->mScrollY:I

    .line 3834
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateParentIfNeeded()V

    .line 3837
    :cond_283
    invoke-virtual {v10, v14, v14}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 3839
    const/4 v0, 0x3

    iput v0, v10, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3843
    invoke-virtual {v10, v12}, Landroid/widget/AbsListView;->findClosestMotionRow(I)I

    move-result v0

    .line 3845
    .local v0, "motionPosition":I
    const/4 v1, 0x0

    iput v1, v10, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3846
    iget v3, v10, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v3, v0, v3

    invoke-virtual {v10, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3847
    .local v3, "motionView":Landroid/view/View;
    if-eqz v3, :cond_29e

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    :cond_29e
    iput v1, v10, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3848
    add-int v1, v12, v17

    iput v1, v10, Landroid/widget/AbsListView;->mMotionY:I

    .line 3849
    iput v0, v10, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3851
    .end local v0    # "motionPosition":I
    .end local v3    # "motionView":Landroid/view/View;
    :cond_2a6
    add-int v0, v12, v18

    add-int v0, v0, v17

    iput v0, v10, Landroid/widget/AbsListView;->mLastY:I

    .line 3852
    move/from16 v0, v31

    .end local v31    # "newDirection":I
    .local v0, "newDirection":I
    iput v0, v10, Landroid/widget/AbsListView;->mDirection:I

    move v9, v14

    goto :goto_2b3

    .line 3855
    .end local v0    # "newDirection":I
    .end local v2    # "overScrollDistance":I
    .end local v14    # "incrementalDeltaY":I
    .end local v20    # "newScroll":I
    .end local v22    # "oldScroll":I
    .local v3, "incrementalDeltaY":I
    :cond_2b2
    :goto_2b2
    move v9, v3

    .end local v3    # "incrementalDeltaY":I
    .local v9, "incrementalDeltaY":I
    :goto_2b3
    return-void
.end method

.method private greylist-max-o setFastScrollerAlwaysVisibleUiThread(Z)V
    .registers 3
    .param p1, "alwaysShow"    # Z

    .line 1429
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_7

    .line 1430
    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setAlwaysShow(Z)V

    .line 1432
    :cond_7
    return-void
.end method

.method private greylist-max-o setFastScrollerEnabledUiThread(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 1365
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_8

    .line 1366
    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setEnabled(Z)V

    goto :goto_17

    .line 1367
    :cond_8
    if-eqz p1, :cond_17

    .line 1368
    new-instance v0, Landroid/widget/FastScroller;

    iget v1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    invoke-direct {v0, p0, v1}, Landroid/widget/FastScroller;-><init>(Landroid/widget/AbsListView;I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 1369
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setEnabled(Z)V

    .line 1372
    :cond_17
    :goto_17
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resolvePadding()V

    .line 1374
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_21

    .line 1375
    invoke-virtual {v0}, Landroid/widget/FastScroller;->updateLayout()V

    .line 1377
    :cond_21
    return-void
.end method

.method private greylist-max-o setItemViewLayoutParams(Landroid/view/View;I)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 2484
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2486
    .local v0, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_d

    .line 2487
    invoke-virtual {p0}, Landroid/widget/AbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .local v1, "lp":Landroid/widget/AbsListView$LayoutParams;
    goto :goto_1d

    .line 2488
    .end local v1    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_d
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 2489
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .restart local v1    # "lp":Landroid/widget/AbsListView$LayoutParams;
    goto :goto_1d

    .line 2491
    .end local v1    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_1a
    move-object v1, v0

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .line 2494
    .restart local v1    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :goto_1d
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v2, :cond_29

    .line 2495
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    .line 2497
    :cond_29
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    iput v2, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 2498
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    iput-boolean v2, v1, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 2499
    if-eq v1, v0, :cond_3e

    .line 2500
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2502
    :cond_3e
    return-void
.end method

.method private blacklist shouldDisplayEdgeEffects()Z
    .registers 3

    .line 4397
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
    .registers 15
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "useOffsets"    # Z

    .line 3438
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v6

    .line 3439
    .local v6, "longPressPosition":I
    if-gez v6, :cond_8

    .line 3440
    const/4 v0, 0x0

    return v0

    .line 3443
    :cond_8
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    .line 3444
    .local v7, "longPressId":J
    const/4 v9, 0x0

    .line 3446
    .local v9, "handled":Z
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_1d

    .line 3447
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, v6

    move-wide v4, v7

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v9

    .line 3451
    :cond_1d
    if-nez v9, :cond_38

    .line 3452
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v0, v6, v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3453
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0, v6, v7, v8}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3455
    if-eqz p4, :cond_34

    .line 3456
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result v9

    goto :goto_38

    .line 3458
    :cond_34
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v9

    .line 3462
    .end local v0    # "child":Landroid/view/View;
    :cond_38
    :goto_38
    return v9
.end method

.method private greylist-max-o showContextMenuInternal(FFZ)Z
    .registers 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "useOffsets"    # Z

    .line 3403
    float-to-int v0, p1

    float-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 3404
    .local v0, "position":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2b

    .line 3405
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 3406
    .local v1, "id":J
    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3407
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_2b

    .line 3408
    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3409
    if-eqz p3, :cond_26

    .line 3410
    invoke-super {p0, p0, p1, p2}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result v4

    return v4

    .line 3412
    :cond_26
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v4

    return v4

    .line 3416
    .end local v1    # "id":J
    .end local v3    # "child":Landroid/view/View;
    :cond_2b
    if-eqz p3, :cond_32

    .line 3417
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->showContextMenu(FF)Z

    move-result v1

    return v1

    .line 3419
    :cond_32
    invoke-super {p0}, Landroid/widget/AdapterView;->showContextMenu()Z

    move-result v1

    return v1
.end method

.method private greylist-max-o showPopup()V
    .registers 2

    .line 5977
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_10

    .line 5978
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 5979
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 5981
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkFocus()V

    .line 5983
    :cond_10
    return-void
.end method

.method private greylist-max-o startScrollIfNeeded(IILandroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .line 3609
    iget v0, p0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v0, p2, v0

    .line 3610
    .local v0, "deltaY":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3611
    .local v1, "distance":I
    iget v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_10

    move v2, v3

    goto :goto_11

    :cond_10
    move v2, v4

    .line 3612
    .local v2, "overscroll":Z
    :goto_11
    const/4 v5, 0x0

    .line 3614
    .local v5, "isFarEnough":Z
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mIsFirstTouchMoveEvent:Z

    if-eqz v6, :cond_1f

    .line 3615
    iget v6, p0, Landroid/widget/AbsListView;->mMoveAcceleration:I

    if-le v1, v6, :cond_1c

    move v6, v3

    goto :goto_1d

    :cond_1c
    move v6, v4

    :goto_1d
    move v5, v6

    goto :goto_27

    .line 3617
    :cond_1f
    iget v6, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v1, v6, :cond_25

    move v6, v3

    goto :goto_26

    :cond_25
    move v6, v4

    :goto_26
    move v5, v6

    .line 3623
    :goto_27
    if-nez v2, :cond_2b

    if-eqz v5, :cond_7c

    .line 3624
    :cond_2b
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getNestedScrollAxes()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_7c

    .line 3625
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 3626
    if-eqz v2, :cond_3e

    .line 3627
    const/4 v6, 0x5

    iput v6, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3628
    iput v4, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    goto :goto_56

    .line 3630
    :cond_3e
    const/4 v6, 0x3

    iput v6, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3631
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mIsFirstTouchMoveEvent:Z

    if-eqz v6, :cond_4e

    .line 3632
    iget v6, p0, Landroid/widget/AbsListView;->mMoveAcceleration:I

    if-lez v0, :cond_4a

    goto :goto_4b

    :cond_4a
    neg-int v6, v6

    :goto_4b
    iput v6, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    goto :goto_56

    .line 3634
    :cond_4e
    iget v6, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-lez v0, :cond_53

    goto :goto_54

    :cond_53
    neg-int v6, v6

    :goto_54
    iput v6, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3637
    :goto_56
    iget-object v6, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3638
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3639
    iget v6, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v7, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v6, v7

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3640
    .local v6, "motionView":Landroid/view/View;
    if-eqz v6, :cond_6c

    .line 3641
    invoke-virtual {v6, v4}, Landroid/view/View;->setPressed(Z)V

    .line 3643
    :cond_6c
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 3646
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 3647
    .local v4, "parent":Landroid/view/ViewParent;
    if-eqz v4, :cond_78

    .line 3648
    invoke-interface {v4, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3650
    :cond_78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    .line 3651
    return v3

    .line 3654
    .end local v4    # "parent":Landroid/view/ViewParent;
    .end local v6    # "motionView":Landroid/view/View;
    :cond_7c
    return v4
.end method

.method private blacklist stopEdgeGlowRecede(F)V
    .registers 5
    .param p1, "x"    # F

    .line 4142
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_17

    .line 4143
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p1, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 4145
    :cond_17
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2d

    .line 4146
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p1, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 4148
    :cond_2d
    return-void
.end method

.method private greylist-max-o updateOnScreenCheckedViews()V
    .registers 9

    .line 1243
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 1244
    .local v0, "firstPos":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 1245
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    .line 1247
    .local v2, "useActivated":Z
    :goto_17
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    if-ge v3, v1, :cond_3f

    .line 1248
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1249
    .local v4, "child":Landroid/view/View;
    add-int v5, v0, v3

    .line 1251
    .local v5, "position":I
    instance-of v6, v4, Landroid/widget/Checkable;

    if-eqz v6, :cond_31

    .line 1252
    move-object v6, v4

    check-cast v6, Landroid/widget/Checkable;

    iget-object v7, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    invoke-interface {v6, v7}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_3c

    .line 1253
    :cond_31
    if-eqz v2, :cond_3c

    .line 1254
    iget-object v6, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setActivated(Z)V

    .line 1247
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "position":I
    :cond_3c
    :goto_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 1257
    .end local v3    # "i":I
    :cond_3f
    return-void
.end method

.method private greylist-max-o useDefaultSelector()V
    .registers 3

    .line 1716
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1718
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

    .line 4779
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 4780
    .local v0, "count":I
    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 4781
    .local v1, "firstPosition":I
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4783
    .local v2, "adapter":Landroid/widget/ListAdapter;
    if-nez v2, :cond_b

    .line 4784
    return-void

    .line 4787
    :cond_b
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v0, :cond_23

    .line 4788
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4789
    .local v4, "child":Landroid/view/View;
    add-int v5, v1, v3

    invoke-interface {v2, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 4790
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4792
    :cond_1d
    invoke-virtual {v4, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 4787
    .end local v4    # "child":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 4794
    .end local v3    # "i":I
    :cond_23
    return-void
.end method

.method public whitelist afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "s"    # Landroid/text/Editable;

    .line 6462
    return-void
.end method

.method public whitelist beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 6421
    return-void
.end method

.method public whitelist canScrollList(I)Z
    .registers 11
    .param p1, "direction"    # I

    .line 5324
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 5325
    .local v0, "childCount":I
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 5326
    return v1

    .line 5329
    :cond_8
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5330
    .local v2, "firstPosition":I
    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 5331
    .local v3, "listPadding":Landroid/graphics/Rect;
    const/4 v4, 0x1

    if-lez p1, :cond_2a

    .line 5332
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 5333
    .local v5, "lastBottom":I
    add-int v6, v2, v0

    .line 5334
    .local v6, "lastPosition":I
    iget v7, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lt v6, v7, :cond_28

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    if-le v5, v7, :cond_29

    :cond_28
    move v1, v4

    :cond_29
    return v1

    .line 5336
    .end local v5    # "lastBottom":I
    .end local v6    # "lastPosition":I
    :cond_2a
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    .line 5337
    .local v5, "firstTop":I
    if-gtz v2, :cond_38

    iget v6, v3, Landroid/graphics/Rect;->top:I

    if-ge v5, v6, :cond_39

    :cond_38
    move v1, v4

    :cond_39
    return v1
.end method

.method public whitelist checkInputConnectionProxy(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 6334
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 6490
    instance-of v0, p1, Landroid/widget/AbsListView$LayoutParams;

    return v0
.end method

.method public whitelist clearChoices()V
    .registers 2

    .line 1089
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_7

    .line 1090
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1092
    :cond_7
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_e

    .line 1093
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1095
    :cond_e
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1096
    return-void
.end method

.method public whitelist clearTextFilter()V
    .registers 3

    .line 6383
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_1d

    .line 6384
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6385
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 6386
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 6387
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 6390
    :cond_1d
    return-void
.end method

.method protected whitelist computeVerticalScrollExtent()I
    .registers 8

    .line 2082
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2083
    .local v0, "count":I
    const/4 v1, 0x0

    if-lez v0, :cond_3c

    .line 2084
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v2, :cond_3a

    .line 2085
    mul-int/lit8 v2, v0, 0x64

    .line 2087
    .local v2, "extent":I
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2088
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2089
    .local v3, "top":I
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 2090
    .local v4, "height":I
    if-lez v4, :cond_1f

    .line 2091
    mul-int/lit8 v5, v3, 0x64

    div-int/2addr v5, v4

    add-int/2addr v2, v5

    .line 2094
    :cond_1f
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2095
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 2096
    .local v5, "bottom":I
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 2097
    if-lez v4, :cond_39

    .line 2098
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    sub-int v6, v5, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v4

    sub-int/2addr v2, v6

    .line 2101
    :cond_39
    return v2

    .line 2103
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "extent":I
    .end local v3    # "top":I
    .end local v4    # "height":I
    .end local v5    # "bottom":I
    :cond_3a
    const/4 v1, 0x1

    return v1

    .line 2106
    :cond_3c
    return v1
.end method

.method protected whitelist computeVerticalScrollOffset()I
    .registers 10

    .line 2111
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 2112
    .local v0, "firstPosition":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 2113
    .local v1, "childCount":I
    const/4 v2, 0x0

    if-ltz v0, :cond_53

    if-lez v1, :cond_53

    .line 2114
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v3, :cond_3b

    .line 2115
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2116
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2117
    .local v4, "top":I
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 2118
    .local v5, "height":I
    if-lez v5, :cond_3a

    .line 2119
    mul-int/lit8 v6, v0, 0x64

    mul-int/lit8 v7, v4, 0x64

    div-int/2addr v7, v5

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/AbsListView;->mScrollY:I

    int-to-float v7, v7

    .line 2120
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsListView;->mItemCount:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v6, v7

    .line 2119
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2

    .line 2122
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "top":I
    .end local v5    # "height":I
    :cond_3a
    goto :goto_53

    .line 2124
    :cond_3b
    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 2125
    .local v2, "count":I
    if-nez v0, :cond_41

    .line 2126
    const/4 v3, 0x0

    .local v3, "index":I
    goto :goto_4a

    .line 2127
    .end local v3    # "index":I
    :cond_41
    add-int v3, v0, v1

    if-ne v3, v2, :cond_47

    .line 2128
    move v3, v2

    .restart local v3    # "index":I
    goto :goto_4a

    .line 2130
    .end local v3    # "index":I
    :cond_47
    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, v0

    .line 2132
    .restart local v3    # "index":I
    :goto_4a
    int-to-float v4, v0

    int-to-float v5, v1

    int-to-float v6, v3

    int-to-float v7, v2

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    return v4

    .line 2135
    .end local v2    # "count":I
    .end local v3    # "index":I
    :cond_53
    :goto_53
    return v2
.end method

.method protected whitelist computeVerticalScrollRange()I
    .registers 4

    .line 2141
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_28

    .line 2142
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2143
    .local v0, "result":I
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v1, :cond_2a

    .line 2145
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

    .line 2148
    .end local v0    # "result":I
    :cond_28
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 2150
    .restart local v0    # "result":I
    :cond_2a
    :goto_2a
    return v0
.end method

.method greylist-max-o confirmCheckedPositionsById()V
    .registers 19

    .line 5760
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 5762
    const/4 v1, 0x0

    .line 5763
    .local v1, "checkedCountChanged":Z
    const/4 v2, 0x0

    .local v2, "checkedIndex":I
    :goto_9
    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_95

    .line 5764
    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v10

    .line 5765
    .local v10, "id":J
    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 5767
    .local v3, "lastPos":I
    iget-object v4, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    .line 5768
    .local v12, "lastPosId":J
    cmp-long v4, v10, v12

    const/4 v14, 0x1

    if-eqz v4, :cond_8c

    .line 5770
    const/4 v4, 0x0

    add-int/lit8 v5, v3, -0x14

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 5771
    .local v15, "start":I
    add-int/lit8 v4, v3, 0x14

    iget v5, v0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 5772
    .local v9, "end":I
    const/4 v4, 0x0

    .line 5773
    .local v4, "found":Z
    move v5, v15

    .local v5, "searchPos":I
    :goto_3f
    if-ge v5, v9, :cond_60

    .line 5774
    iget-object v6, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    .line 5775
    .local v6, "searchId":J
    cmp-long v8, v10, v6

    if-nez v8, :cond_5c

    .line 5776
    const/4 v4, 0x1

    .line 5777
    iget-object v8, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v5, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5778
    iget-object v8, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v2, v14}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 5779
    move v14, v4

    goto :goto_61

    .line 5773
    .end local v6    # "searchId":J
    :cond_5c
    add-int/lit8 v5, v5, 0x1

    const/4 v14, 0x1

    goto :goto_3f

    :cond_60
    move v14, v4

    .line 5783
    .end local v4    # "found":Z
    .end local v5    # "searchPos":I
    .local v14, "found":Z
    :goto_61
    if-nez v14, :cond_88

    .line 5784
    iget-object v4, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v10, v11}, Landroid/util/LongSparseArray;->delete(J)V

    .line 5785
    add-int/lit8 v2, v2, -0x1

    .line 5786
    iget v4, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 5787
    const/4 v1, 0x1

    .line 5788
    iget-object v5, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v5, :cond_85

    iget-object v4, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v4, :cond_85

    .line 5789
    const/16 v16, 0x0

    move v6, v3

    move-wide v7, v10

    move/from16 v17, v9

    .end local v9    # "end":I
    .local v17, "end":I
    move/from16 v9, v16

    invoke-virtual/range {v4 .. v9}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    goto :goto_8a

    .line 5788
    .end local v17    # "end":I
    .restart local v9    # "end":I
    :cond_85
    move/from16 v17, v9

    .end local v9    # "end":I
    .restart local v17    # "end":I
    goto :goto_8a

    .line 5783
    .end local v17    # "end":I
    .restart local v9    # "end":I
    :cond_88
    move/from16 v17, v9

    .line 5793
    .end local v9    # "end":I
    .end local v14    # "found":Z
    .end local v15    # "start":I
    :goto_8a
    const/4 v5, 0x1

    goto :goto_92

    .line 5794
    :cond_8c
    iget-object v4, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5763
    .end local v3    # "lastPos":I
    .end local v10    # "id":J
    .end local v12    # "lastPosId":J
    :goto_92
    add-int/2addr v2, v5

    goto/16 :goto_9

    .line 5798
    .end local v2    # "checkedIndex":I
    :cond_95
    if-eqz v1, :cond_9e

    iget-object v2, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_9e

    .line 5799
    invoke-virtual {v2}, Landroid/view/ActionMode;->invalidate()V

    .line 5801
    :cond_9e
    return-void
.end method

.method greylist-max-o createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 3202
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method greylist-max-o createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;
    .registers 2

    .line 5128
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    return-object v0
.end method

.method public whitelist deferNotifyDataSetChanged()V
    .registers 2

    .line 6654
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 6655
    return-void
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2730
    const/4 v0, 0x0

    .line 2731
    .local v0, "saveCount":I
    iget v1, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v2, 0x22

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    .line 2732
    .local v1, "clipToPadding":Z
    :goto_b
    if-eqz v1, :cond_36

    .line 2733
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2734
    iget v3, p0, Landroid/widget/AbsListView;->mScrollX:I

    .line 2735
    .local v3, "scrollX":I
    iget v4, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 2736
    .local v4, "scrollY":I
    iget v5, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Landroid/widget/AbsListView;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Landroid/widget/AbsListView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsListView;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Landroid/widget/AbsListView;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2739
    iget v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    .line 2742
    .end local v3    # "scrollX":I
    .end local v4    # "scrollY":I
    :cond_36
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 2743
    .local v3, "drawSelectorOnTop":Z
    if-nez v3, :cond_3d

    .line 2744
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2747
    :cond_3d
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2749
    if-eqz v3, :cond_45

    .line 2750
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2753
    :cond_45
    if-eqz v1, :cond_4f

    .line 2754
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2755
    iget v4, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    or-int/2addr v2, v4

    iput v2, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    .line 2757
    :cond_4f
    return-void
.end method

.method public whitelist dispatchDrawableHotspotChanged(FF)V
    .registers 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 3502
    return-void
.end method

.method protected whitelist dispatchSetPressed(Z)V
    .registers 2
    .param p1, "pressed"    # Z

    .line 3496
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 4545
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 4546
    invoke-direct {p0}, Landroid/widget/AbsListView;->shouldDisplayEdgeEffects()Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 4547
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 4548
    .local v0, "scrollY":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getClipToPadding()Z

    move-result v1

    .line 4554
    .local v1, "clipToPadding":Z
    if-eqz v1, :cond_2a

    .line 4555
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int/2addr v2, v3

    .line 4556
    .local v2, "width":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    .line 4557
    .local v3, "height":I
    iget v4, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    .line 4558
    .local v4, "translateX":I
    iget v5, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    .local v5, "translateY":I
    goto :goto_34

    .line 4560
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "translateX":I
    .end local v5    # "translateY":I
    :cond_2a
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v2

    .line 4561
    .restart local v2    # "width":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    .line 4562
    .restart local v3    # "height":I
    const/4 v4, 0x0

    .line 4563
    .restart local v4    # "translateX":I
    const/4 v5, 0x0

    .line 4565
    .restart local v5    # "translateY":I
    :goto_34
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 4566
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 4567
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_72

    .line 4568
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 4569
    .local v6, "restoreCount":I
    add-int v8, v4, v2

    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 4570
    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v9

    add-int/2addr v9, v5

    .line 4569
    invoke-virtual {p1, v4, v5, v8, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 4571
    iget v8, p0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v8, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/2addr v8, v5

    .line 4572
    .local v8, "edgeY":I
    int-to-float v9, v4

    int-to-float v10, v8

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4573
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v9

    if-eqz v9, :cond_6f

    .line 4574
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    .line 4576
    :cond_6f
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4578
    .end local v6    # "restoreCount":I
    .end local v8    # "edgeY":I
    :cond_72
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_ba

    .line 4579
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 4580
    .restart local v6    # "restoreCount":I
    add-int v8, v5, v3

    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v9

    sub-int/2addr v8, v9

    add-int v9, v4, v2

    add-int v10, v5, v3

    invoke-virtual {p1, v4, v8, v9, v10}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 4582
    neg-int v8, v2

    add-int/2addr v8, v4

    .line 4583
    .local v8, "edgeX":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    iget v10, p0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v10, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 4584
    if-eqz v1, :cond_9f

    iget v7, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    :cond_9f
    sub-int/2addr v9, v7

    .line 4585
    .local v9, "edgeY":I
    int-to-float v7, v8

    int-to-float v10, v9

    invoke-virtual {p1, v7, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4586
    const/high16 v7, 0x43340000    # 180.0f

    int-to-float v10, v2

    const/4 v11, 0x0

    invoke-virtual {p1, v7, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 4587
    iget-object v7, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_b7

    .line 4588
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    .line 4590
    :cond_b7
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4593
    .end local v0    # "scrollY":I
    .end local v1    # "clipToPadding":Z
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "translateX":I
    .end local v5    # "translateY":I
    .end local v6    # "restoreCount":I
    .end local v8    # "edgeX":I
    .end local v9    # "edgeY":I
    :cond_ba
    return-void
.end method

.method protected whitelist drawableStateChanged()V
    .registers 1

    .line 2997
    invoke-super {p0}, Landroid/widget/AdapterView;->drawableStateChanged()V

    .line 2998
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 2999
    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 7590
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 7592
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCacheColorHint()I

    move-result v0

    const-string v1, "drawing:cacheColorHint"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 7593
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v0

    const-string v1, "list:fastScrollEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7594
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isScrollingCacheEnabled()Z

    move-result v0

    const-string v1, "list:scrollingCacheEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7595
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isSmoothScrollbarEnabled()Z

    move-result v0

    const-string v1, "list:smoothScrollbarEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7596
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isStackFromBottom()Z

    move-result v0

    const-string v1, "list:stackFromBottom"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7597
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v0

    const-string v1, "list:textFilterEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7599
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 7600
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_48

    .line 7601
    const-string/jumbo v1, "selectedView"

    invoke-virtual {p1, v1}, Landroid/view/ViewHierarchyEncoder;->addPropertyKey(Ljava/lang/String;)V

    .line 7602
    invoke-virtual {v0, p1}, Landroid/view/View;->encode(Landroid/view/ViewHierarchyEncoder;)V

    .line 7604
    :cond_48
    return-void
.end method

.method abstract greylist-max-o fillGap(Z)V
.end method

.method greylist-max-o findClosestMotionRow(I)I
    .registers 5
    .param p1, "y"    # I

    .line 5611
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 5612
    .local v0, "childCount":I
    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 5613
    return v1

    .line 5616
    :cond_8
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v2

    .line 5617
    .local v2, "motionRow":I
    if-eq v2, v1, :cond_10

    move v1, v2

    goto :goto_15

    :cond_10
    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_15
    return v1
.end method

.method abstract greylist findMotionRow(I)I
.end method

.method public whitelist fling(I)V
    .registers 3
    .param p1, "velocityY"    # I

    .line 4491
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_b

    .line 4492
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4494
    :cond_b
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4495
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 4496
    return-void
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 5

    .line 6474
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 6480
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 6485
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 1572
    const-class v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;
    .registers 4
    .param p1, "focusedView"    # Landroid/view/View;

    .line 2272
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2273
    .local v0, "viewParent":Landroid/view/ViewParent;
    :goto_4
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_12

    if-eq v0, p0, :cond_12

    .line 2274
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 2275
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_4

    .line 2278
    :cond_12
    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_18

    .line 2279
    const/4 v1, 0x0

    return-object v1

    .line 2282
    :cond_18
    return-object p1
.end method

.method public whitelist getBottomEdgeEffectColor()I
    .registers 2

    .line 6765
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getColor()I

    move-result v0

    return v0
.end method

.method protected whitelist getBottomFadingEdgeStrength()F
    .registers 8

    .line 2172
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2173
    .local v0, "count":I
    invoke-super {p0}, Landroid/widget/AdapterView;->getBottomFadingEdgeStrength()F

    move-result v1

    .line 2174
    .local v1, "fadeEdge":F
    if-nez v0, :cond_b

    .line 2175
    return v1

    .line 2177
    :cond_b
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_19

    .line 2178
    const/high16 v2, 0x3f800000    # 1.0f

    return v2

    .line 2181
    :cond_19
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 2182
    .local v2, "bottom":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    .line 2183
    .local v3, "height":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v4, v4

    .line 2184
    .local v4, "fadeLength":F
    iget v5, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int v5, v3, v5

    if-le v2, v5, :cond_3a

    .line 2185
    sub-int v5, v2, v3

    iget v6, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v4

    goto :goto_3b

    :cond_3a
    move v5, v1

    .line 2184
    :goto_3b
    return v5
.end method

.method protected whitelist getBottomPaddingOffset()I
    .registers 3

    .line 2781
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

    .line 6558
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public whitelist getCheckedItemCount()I
    .registers 2

    .line 1006
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    return v0
.end method

.method public whitelist getCheckedItemIds()[J
    .registers 7

    .line 1070
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_d

    goto :goto_22

    .line 1074
    :cond_d
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1075
    .local v0, "idStates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    .line 1076
    .local v1, "count":I
    new-array v2, v1, [J

    .line 1078
    .local v2, "ids":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    if-ge v3, v1, :cond_21

    .line 1079
    invoke-virtual {v0, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 1078
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1082
    .end local v3    # "i":I
    :cond_21
    return-object v2

    .line 1071
    .end local v0    # "idStates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v1    # "count":I
    .end local v2    # "ids":[J
    :cond_22
    :goto_22
    const/4 v0, 0x0

    new-array v0, v0, [J

    return-object v0
.end method

.method public whitelist getCheckedItemPosition()I
    .registers 3

    .line 1038
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_17

    .line 1039
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    return v0

    .line 1042
    :cond_17
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .registers 2

    .line 1055
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_7

    .line 1056
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    return-object v0

    .line 1058
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getChoiceMode()I
    .registers 2

    .line 1271
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    return v0
.end method

.method protected whitelist getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .line 3389
    iget-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public whitelist getFocusedRect(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 1703
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1704
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_13

    .line 1707
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1708
    invoke-virtual {p0, v0, p1}, Landroid/widget/AbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_16

    .line 1711
    :cond_13
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1713
    :goto_16
    return-void
.end method

.method greylist-max-o getFooterViewsCount()I
    .registers 2

    .line 5551
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o getHeaderViewsCount()I
    .registers 2

    .line 5541
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o getHeightForPosition(I)I
    .registers 8
    .param p1, "position"    # I

    .line 7531
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 7532
    .local v0, "firstVisiblePosition":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 7533
    .local v1, "childCount":I
    sub-int v2, p1, v0

    .line 7534
    .local v2, "index":I
    if-ltz v2, :cond_17

    if-ge v2, v1, :cond_17

    .line 7536
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7537
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    return v4

    .line 7540
    .end local v3    # "view":Landroid/view/View;
    :cond_17
    iget-object v3, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v3}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v3

    .line 7541
    .restart local v3    # "view":Landroid/view/View;
    iget v4, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 7542
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 7543
    .local v4, "height":I
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, v3, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 7544
    return v4
.end method

.method protected whitelist getLeftPaddingOffset()I
    .registers 3

    .line 2766
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

    .line 2360
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public whitelist getListPaddingLeft()I
    .registers 2

    .line 2372
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public whitelist getListPaddingRight()I
    .registers 2

    .line 2384
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public whitelist getListPaddingTop()I
    .registers 2

    .line 2348
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected whitelist getRightPaddingOffset()I
    .registers 3

    .line 2776
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

    .line 2332
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lez v0, :cond_12

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_12

    .line 2333
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 2335
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method greylist-max-o getSelectionModeForAccessibility()I
    .registers 3

    .line 1597
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChoiceMode()I

    move-result v0

    .line 1598
    .local v0, "choiceMode":I
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_e

    .line 1607
    return v1

    .line 1605
    :pswitch_9
    const/4 v1, 0x2

    return v1

    .line 1602
    :pswitch_b
    const/4 v1, 0x1

    return v1

    .line 1600
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

    .line 2931
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getSolidColor()I
    .registers 2

    .line 6524
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public whitelist getTextFilter()Ljava/lang/CharSequence;
    .registers 2

    .line 2032
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_d

    .line 2033
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    .line 2035
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getTopEdgeEffectColor()I
    .registers 2

    .line 6751
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getColor()I

    move-result v0

    return v0
.end method

.method protected whitelist getTopFadingEdgeStrength()F
    .registers 6

    .line 2155
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2156
    .local v0, "count":I
    invoke-super {p0}, Landroid/widget/AdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 2157
    .local v1, "fadeEdge":F
    if-nez v0, :cond_b

    .line 2158
    return v1

    .line 2160
    :cond_b
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v2, :cond_12

    .line 2161
    const/high16 v2, 0x3f800000    # 1.0f

    return v2

    .line 2164
    :cond_12
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 2165
    .local v2, "top":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v3

    int-to-float v3, v3

    .line 2166
    .local v3, "fadeLength":F
    iget v4, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    if-ge v2, v4, :cond_2c

    iget v4, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    sub-int v4, v2, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    goto :goto_2d

    :cond_2c
    move v4, v1

    :goto_2d
    return v4
.end method

.method protected whitelist getTopPaddingOffset()I
    .registers 3

    .line 2771
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

    .line 6519
    iget v0, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    return v0
.end method

.method public whitelist getVerticalScrollbarWidth()I
    .registers 3

    .line 1457
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1458
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v1}, Landroid/widget/FastScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 1460
    :cond_19
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    return v0
.end method

.method greylist-max-o handleBoundsChange()V
    .registers 7

    .line 2811
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mInLayout:Z

    if-eqz v0, :cond_5

    .line 2812
    return-void

    .line 2814
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2815
    .local v0, "childCount":I
    if-lez v0, :cond_2c

    .line 2816
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 2817
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 2818
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v0, :cond_2c

    .line 2819
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2820
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 2822
    .local v4, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v4, :cond_26

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lt v5, v1, :cond_26

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ge v5, v1, :cond_29

    .line 2823
    :cond_26
    invoke-virtual {v3}, Landroid/view/View;->forceLayout()V

    .line 2818
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 2827
    .end local v2    # "i":I
    :cond_2c
    return-void
.end method

.method protected whitelist handleDataChanged()V
    .registers 13

    .line 5805
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 5806
    .local v0, "count":I
    iget v1, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    .line 5807
    .local v1, "lastHandledItemCount":I
    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v2, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    .line 5809
    iget v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v2, :cond_19

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_19

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 5810
    invoke-virtual {p0}, Landroid/widget/AbsListView;->confirmCheckedPositionsById()V

    .line 5814
    :cond_19
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->clearTransientStateViews()V

    .line 5816
    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v0, :cond_e2

    .line 5821
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    if-eqz v6, :cond_b8

    .line 5823
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 5824
    iput-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 5826
    iget v6, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_34

    .line 5827
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5828
    return-void

    .line 5829
    :cond_34
    if-ne v6, v5, :cond_67

    .line 5830
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    if-eqz v6, :cond_3f

    .line 5831
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    .line 5832
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5833
    return-void

    .line 5835
    :cond_3f
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v6

    .line 5836
    .local v6, "childCount":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    .line 5837
    .local v8, "listBottom":I
    add-int/lit8 v9, v6, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 5838
    .local v9, "lastChild":Landroid/view/View;
    if-eqz v9, :cond_59

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    goto :goto_5a

    :cond_59
    move v10, v8

    .line 5839
    .local v10, "lastBottom":I
    :goto_5a
    iget v11, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v11, v6

    if-lt v11, v1, :cond_64

    if-gt v10, v8, :cond_64

    .line 5841
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5842
    return-void

    .line 5846
    :cond_64
    invoke-virtual {p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    .line 5849
    .end local v6    # "childCount":I
    .end local v8    # "listBottom":I
    .end local v9    # "lastChild":Landroid/view/View;
    .end local v10    # "lastBottom":I
    :cond_67
    iget v6, p0, Landroid/widget/AbsListView;->mSyncMode:I

    const/4 v8, 0x5

    packed-switch v6, :pswitch_data_100

    goto :goto_b8

    .line 5890
    :pswitch_6e
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5891
    iget v2, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 5893
    return-void

    .line 5851
    :pswitch_7f
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v6

    if-eqz v6, :cond_96

    .line 5856
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5857
    iget v2, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 5859
    return-void

    .line 5863
    :cond_96
    invoke-virtual {p0}, Landroid/widget/AbsListView;->findSyncPosition()I

    move-result v6

    .line 5864
    .local v6, "newPos":I
    if-ltz v6, :cond_b8

    .line 5866
    invoke-virtual {p0, v6, v5}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v9

    .line 5867
    .local v9, "selectablePos":I
    if-ne v9, v6, :cond_b8

    .line 5869
    iput v6, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 5871
    iget-wide v2, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_b2

    .line 5874
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_b4

    .line 5878
    :cond_b2
    iput v7, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5882
    :goto_b4
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 5883
    return-void

    .line 5897
    .end local v6    # "newPos":I
    .end local v9    # "selectablePos":I
    :cond_b8
    :goto_b8
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v6

    if-nez v6, :cond_dd

    .line 5899
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v6

    .line 5902
    .restart local v6    # "newPos":I
    if-lt v6, v0, :cond_c6

    .line 5903
    add-int/lit8 v6, v0, -0x1

    .line 5905
    :cond_c6
    if-gez v6, :cond_c9

    .line 5906
    const/4 v6, 0x0

    .line 5910
    :cond_c9
    invoke-virtual {p0, v6, v5}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 5912
    .local v7, "selectablePos":I
    if-ltz v7, :cond_d3

    .line 5913
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 5914
    return-void

    .line 5917
    :cond_d3
    invoke-virtual {p0, v6, v4}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 5918
    if-ltz v7, :cond_e2

    .line 5919
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 5920
    return-void

    .line 5926
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :cond_dd
    iget v6, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    if-ltz v6, :cond_e2

    .line 5927
    return-void

    .line 5934
    :cond_e2
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v6, :cond_e7

    goto :goto_e8

    :cond_e7
    move v3, v5

    :goto_e8
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5935
    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    .line 5936
    const-wide/high16 v5, -0x8000000000000000L

    iput-wide v5, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    .line 5937
    iput v3, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    .line 5938
    iput-wide v5, p0, Landroid/widget/AbsListView;->mNextSelectedRowId:J

    .line 5939
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 5940
    iput-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 5941
    iput v3, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 5942
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkSelectionChanged()V

    .line 5943
    return-void

    nop

    :pswitch_data_100
    .packed-switch 0x0
        :pswitch_7f
        :pswitch_6e
    .end packed-switch
.end method

.method protected greylist-max-o handleScrollBarDragging(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 3945
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist hasTextFilter()Z
    .registers 2

    .line 6396
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method greylist-max-o hideSelector()V
    .registers 4

    .line 5566
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_25

    .line 5567
    iget v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_e

    .line 5568
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5570
    :cond_e
    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1c

    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    iget v2, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-eq v0, v2, :cond_1c

    .line 5571
    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5573
    :cond_1c
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 5574
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 5575
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 5577
    :cond_25
    return-void
.end method

.method protected greylist-max-o internalSetPadding(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 2789
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->internalSetPadding(IIII)V

    .line 2790
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2791
    invoke-virtual {p0}, Landroid/widget/AbsListView;->handleBoundsChange()V

    .line 2793
    :cond_c
    return-void
.end method

.method public whitelist invalidateViews()V
    .registers 2

    .line 5624
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 5625
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 5626
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 5627
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 5628
    return-void
.end method

.method greylist invokeOnItemScrollListener()V
    .registers 5

    .line 1555
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_f

    .line 1556
    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FastScroller;->onScroll(III)V

    .line 1558
    :cond_f
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1e

    .line 1559
    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 1562
    :cond_1e
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/AbsListView;->onScrollChanged(IIII)V

    .line 1563
    return-void
.end method

.method public whitelist isDrawSelectorOnTop()Z
    .registers 2

    .line 2893
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    return v0
.end method

.method public whitelist isFastScrollAlwaysVisible()Z
    .registers 4

    .line 1448
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_11

    .line 1449
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    if-eqz v0, :cond_f

    goto :goto_10

    :cond_f
    move v1, v2

    :goto_10
    return v1

    .line 1451
    :cond_11
    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_21

    :cond_20
    move v1, v2

    :goto_21
    return v1
.end method

.method public whitelist isFastScrollEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1472
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-nez v0, :cond_7

    .line 1473
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    return v0

    .line 1475
    :cond_7
    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected whitelist isInFilterMode()Z
    .registers 2

    .line 6057
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method public whitelist isItemChecked(I)Z
    .registers 3
    .param p1, "position"    # I

    .line 1021
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_d

    .line 1022
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0

    .line 1025
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist isPaddingOffsetRequired()Z
    .registers 3

    .line 2761
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

    .line 1650
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public whitelist isSelectedChildViewEnabled()Z
    .registers 2

    .line 2713
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    return v0
.end method

.method public whitelist isSmoothScrollbarEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1537
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public whitelist isStackFromBottom()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1729
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public whitelist isTextFilterEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1698
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected greylist-max-r isVerticalScrollBarHidden()Z
    .registers 2

    .line 1502
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public whitelist jumpDrawablesToCurrentState()V
    .registers 2

    .line 3043
    invoke-super {p0}, Landroid/widget/AdapterView;->jumpDrawablesToCurrentState()V

    .line 3044
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 3045
    :cond_a
    return-void
.end method

.method greylist-max-o keyPressed()V
    .registers 9

    .line 2939
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_82

    .line 2943
    :cond_e
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2944
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2945
    .local v1, "selectorRect":Landroid/graphics/Rect;
    if-eqz v0, :cond_81

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFocused()Z

    move-result v2

    if-nez v2, :cond_20

    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v2

    if-eqz v2, :cond_81

    .line 2946
    :cond_20
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_81

    .line 2948
    iget v2, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2950
    .local v2, "v":Landroid/view/View;
    const/4 v3, 0x1

    if-eqz v2, :cond_3c

    .line 2951
    invoke-virtual {v2}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v4

    if-eqz v4, :cond_39

    return-void

    .line 2952
    :cond_39
    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 2954
    :cond_3c
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 2956
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v3

    .line 2957
    .local v3, "longClickable":Z
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2958
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_60

    instance-of v5, v4, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_60

    .line 2959
    if-eqz v3, :cond_5a

    .line 2960
    move-object v5, v4

    check-cast v5, Landroid/graphics/drawable/TransitionDrawable;

    .line 2961
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    .line 2960
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_60

    .line 2963
    :cond_5a
    move-object v5, v4

    check-cast v5, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 2966
    :cond_60
    :goto_60
    if-eqz v3, :cond_81

    iget-boolean v5, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v5, :cond_81

    .line 2967
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_72

    .line 2968
    new-instance v5, Landroid/widget/AbsListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/AbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForKeyLongPress-IA;)V

    iput-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    .line 2970
    :cond_72
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Landroid/widget/AbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 2971
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2974
    .end local v2    # "v":Landroid/view/View;
    .end local v3    # "longClickable":Z
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    :cond_81
    return-void

    .line 2940
    .end local v0    # "selector":Landroid/graphics/drawable/Drawable;
    .end local v1    # "selectorRect":Landroid/graphics/Rect;
    :cond_82
    :goto_82
    return-void
.end method

.method protected whitelist layoutChildren()V
    .registers 1

    .line 2264
    return-void
.end method

.method greylist-max-o obtainView(I[Z)Landroid/view/View;
    .registers 11
    .param p1, "position"    # I
    .param p2, "outMetadata"    # [Z

    .line 2403
    const-wide/16 v0, 0x8

    const-string/jumbo v2, "obtainView"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2405
    invoke-static {}, Landroid/os/TurboSchedMonitor;->getInstance()Landroid/os/TurboSchedMonitor;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/TurboSchedMonitor;->triggerBoostAction()V

    .line 2406
    const/4 v2, 0x0

    aput-boolean v2, p2, v2

    .line 2410
    iget-object v3, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v3, p1}, Landroid/widget/AbsListView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v3

    .line 2411
    .local v3, "transientView":Landroid/view/View;
    const/4 v4, 0x1

    if-eqz v3, :cond_41

    .line 2412
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 2415
    .local v0, "params":Landroid/widget/AbsListView$LayoutParams;
    iget v1, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    if-ne v1, v5, :cond_3b

    .line 2416
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2419
    .local v1, "updatedView":Landroid/view/View;
    if-eq v1, v3, :cond_3b

    .line 2420
    invoke-direct {p0, v1, p1}, Landroid/widget/AbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 2421
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, v1, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2425
    .end local v1    # "updatedView":Landroid/view/View;
    :cond_3b
    aput-boolean v4, p2, v2

    .line 2428
    invoke-virtual {v3}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 2429
    return-object v3

    .line 2435
    .end local v0    # "params":Landroid/widget/AbsListView$LayoutParams;
    :cond_41
    const/4 v5, 0x0

    .line 2436
    .local v5, "scrapView":Landroid/view/View;
    const/4 v6, 0x0

    .line 2437
    .local v6, "child":Landroid/view/View;
    iget-object v7, p0, Landroid/widget/AbsListView;->mAbsListViewStub:Landroid/widget/AbsListViewStub;

    invoke-interface {v7}, Landroid/widget/AbsListViewStub;->getPrefetchEnableState()Z

    move-result v7

    if-eqz v7, :cond_56

    .line 2438
    iget-object v7, p0, Landroid/widget/AbsListView;->mAbsListViewStub:Landroid/widget/AbsListViewStub;

    invoke-interface {v7, p1}, Landroid/widget/AbsListViewStub;->getView(I)Landroid/widget/AbsListViewStub$ViewBean;

    move-result-object v7

    .line 2439
    .local v7, "viewBean":Landroid/widget/AbsListViewStub$ViewBean;
    iget-object v5, v7, Landroid/widget/AbsListViewStub$ViewBean;->mScrapView:Landroid/view/View;

    .line 2440
    iget-object v6, v7, Landroid/widget/AbsListViewStub$ViewBean;->mChildView:Landroid/view/View;

    .line 2441
    .end local v7    # "viewBean":Landroid/widget/AbsListViewStub$ViewBean;
    goto :goto_62

    .line 2442
    :cond_56
    iget-object v7, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v7, p1}, Landroid/widget/AbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v5

    .line 2443
    iget-object v7, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, p1, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 2447
    :goto_62
    if-eqz v5, :cond_77

    .line 2448
    if-eq v6, v5, :cond_6c

    .line 2450
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, v5, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_77

    .line 2451
    :cond_6c
    invoke-virtual {v6}, Landroid/view/View;->isTemporarilyDetached()Z

    move-result v7

    if-eqz v7, :cond_77

    .line 2452
    aput-boolean v4, p2, v2

    .line 2455
    invoke-virtual {v6}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 2459
    :cond_77
    :goto_77
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_7e

    .line 2460
    invoke-virtual {v6, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 2463
    :cond_7e
    invoke-virtual {v6}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_87

    .line 2464
    invoke-virtual {v6, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2467
    :cond_87
    invoke-direct {p0, v6, p1}, Landroid/widget/AbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 2469
    iget-object v2, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 2470
    iget-object v2, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    if-nez v2, :cond_a1

    .line 2471
    new-instance v2, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    invoke-direct {v2, p0}, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    .line 2473
    :cond_a1
    invoke-virtual {v6}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v2

    if-nez v2, :cond_ac

    .line 2474
    iget-object v2, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    invoke-virtual {v6, v2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 2478
    :cond_ac
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2480
    return-object v6
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 4

    .line 3049
    invoke-super {p0}, Landroid/widget/AdapterView;->onAttachedToWindow()V

    .line 3051
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3052
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3053
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_19

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_19

    .line 3054
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3057
    :cond_19
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-nez v1, :cond_3c

    .line 3058
    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 3059
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3062
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 3063
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v1, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    .line 3064
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 3066
    :cond_3c
    return-void
.end method

.method public whitelist onCancelPendingInputEvents()V
    .registers 2

    .line 3207
    invoke-super {p0}, Landroid/widget/AdapterView;->onCancelPendingInputEvents()V

    .line 3208
    iget-object v0, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-eqz v0, :cond_a

    .line 3209
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3211
    :cond_a
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    if-eqz v0, :cond_11

    .line 3212
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3214
    :cond_11
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    if-eqz v0, :cond_18

    .line 3215
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3217
    :cond_18
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-eqz v0, :cond_1f

    .line 3218
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3220
    :cond_1f
    return-void
.end method

.method public whitelist onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 4
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .line 6140
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 6141
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    if-nez v0, :cond_19

    .line 6142
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 6143
    new-instance v0, Landroid/widget/AbsListView$InputConnectionWrapper;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$InputConnectionWrapper;-><init>(Landroid/widget/AbsListView;Landroid/view/inputmethod/EditorInfo;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    .line 6145
    :cond_19
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 6146
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 6147
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    return-object v0

    .line 6149
    :cond_23
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 6

    .line 3070
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    .line 3072
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    .line 3075
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 3078
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 3080
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3081
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3082
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_23

    .line 3083
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3084
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 3087
    :cond_23
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    if-eqz v1, :cond_31

    iget-object v4, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v4, :cond_31

    .line 3088
    invoke-interface {v1, v4}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3089
    iput-object v3, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 3092
    :cond_31
    iget-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_3a

    .line 3093
    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3094
    iput-object v3, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3097
    :cond_3a
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_43

    .line 3098
    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3099
    iput-object v3, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 3102
    :cond_43
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_4a

    .line 3103
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3106
    :cond_4a
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_51

    .line 3107
    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3110
    :cond_51
    iget-object v1, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v1, :cond_58

    .line 3111
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3114
    :cond_58
    iget-object v1, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-eqz v1, :cond_5f

    .line 3115
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3118
    :cond_5f
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_6b

    .line 3119
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3120
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3123
    :cond_6b
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    .line 3124
    return-void
.end method

.method protected whitelist onDisplayHint(I)V
    .registers 3
    .param p1, "hint"    # I

    .line 5947
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDisplayHint(I)V

    .line 5948
    sparse-switch p1, :sswitch_data_30

    goto :goto_26

    .line 5950
    :sswitch_7
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 5951
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_26

    .line 5955
    :sswitch_15
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_26

    .line 5956
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 5960
    :cond_26
    :goto_26
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    .line 5961
    return-void

    nop

    :sswitch_data_30
    .sparse-switch
        0x0 -> :sswitch_15
        0x4 -> :sswitch_7
    .end sparse-switch
.end method

.method public whitelist onFilterComplete(I)V
    .registers 3
    .param p1, "count"    # I

    .line 6466
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_c

    if-lez p1, :cond_c

    .line 6467
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 6468
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 6470
    :cond_c
    return-void
.end method

.method protected whitelist onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 2040
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2041
    if-eqz p1, :cond_2b

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_2b

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 2042
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_28

    .line 2045
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 2046
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v0, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    .line 2047
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 2049
    :cond_28
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 2051
    :cond_2b
    return-void
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 4445
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    sparse-switch v0, :sswitch_data_64

    goto :goto_5e

    .line 4464
    :sswitch_a
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 4465
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v0

    .line 4466
    .local v0, "actionButton":I
    const/16 v3, 0x20

    if-eq v0, v3, :cond_1a

    if-ne v0, v2, :cond_5e

    :cond_1a
    iget v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eqz v2, :cond_20

    if-ne v2, v1, :cond_5e

    .line 4469
    :cond_20
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->performStylusButtonPressAction(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 4470
    iget-object v1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4471
    iget-object v1, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_5e

    .line 4448
    .end local v0    # "actionButton":I
    :sswitch_31
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 4449
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .local v0, "axisValue":F
    goto :goto_4e

    .line 4450
    .end local v0    # "axisValue":F
    :cond_3e
    const/high16 v0, 0x400000

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 4451
    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .restart local v0    # "axisValue":F
    goto :goto_4e

    .line 4453
    .end local v0    # "axisValue":F
    :cond_4d
    const/4 v0, 0x0

    .line 4456
    .restart local v0    # "axisValue":F
    :goto_4e
    iget v2, p0, Landroid/widget/AbsListView;->mVerticalScrollFactor:F

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 4457
    .local v2, "delta":I
    if-eqz v2, :cond_5e

    .line 4458
    invoke-virtual {p0, v2, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v3

    if-nez v3, :cond_5e

    .line 4459
    return v1

    .line 4478
    .end local v0    # "axisValue":F
    .end local v2    # "delta":I
    :cond_5e
    :goto_5e
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    nop

    :sswitch_data_64
    .sparse-switch
        0x8 -> :sswitch_31
        0xb -> :sswitch_a
    .end sparse-switch
.end method

.method public whitelist onGlobalLayout()V
    .registers 2

    .line 6401
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 6403
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_29

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v0, :cond_29

    .line 6404
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    goto :goto_29

    .line 6408
    :cond_1c
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 6409
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 6413
    :cond_29
    :goto_29
    return-void
.end method

.method public whitelist onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2589
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    .line 2591
    return-void

    .line 2594
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    .line 2595
    .local v0, "isItemActionable":Z
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2596
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/widget/AbsListView$LayoutParams;

    if-eqz v2, :cond_16

    .line 2597
    move-object v2, v1

    check-cast v2, Landroid/widget/AbsListView$LayoutParams;

    iget-boolean v2, v2, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    and-int/2addr v0, v2

    .line 2600
    :cond_16
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v2

    if-ne p2, v2, :cond_26

    .line 2601
    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 2602
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_SELECTION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {p0, p3, v0, v2}, Landroid/widget/AbsListView;->addAccessibilityActionIfEnabled(Landroid/view/accessibility/AccessibilityNodeInfo;ZLandroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_2b

    .line 2605
    :cond_26
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SELECT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {p0, p3, v0, v2}, Landroid/widget/AbsListView;->addAccessibilityActionIfEnabled(Landroid/view/accessibility/AccessibilityNodeInfo;ZLandroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2609
    :goto_2b
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->isItemClickable(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 2610
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {p0, p3, v0, v2}, Landroid/widget/AbsListView;->addAccessibilityActionIfEnabled(Landroid/view/accessibility/AccessibilityNodeInfo;ZLandroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2613
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2616
    :cond_39
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 2617
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {p0, p3, v0, v2}, Landroid/widget/AbsListView;->addAccessibilityActionIfEnabled(Landroid/view/accessibility/AccessibilityNodeInfo;ZLandroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2619
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 2621
    :cond_47
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1578
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1579
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1580
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    .line 1581
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1582
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1583
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1585
    :cond_1d
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1586
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1587
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1588
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1592
    :cond_30
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 1593
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 1594
    return-void
.end method

.method public whitelist onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 4626
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4627
    const/4 v0, 0x1

    return v0

    .line 4630
    :cond_c
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 4646
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 4649
    .local v0, "actionMasked":I
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_b

    .line 4650
    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 4653
    :cond_b
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    const/4 v2, 0x0

    if-nez v1, :cond_de

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_de

    .line 4661
    :cond_18
    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    const/4 v3, 0x1

    if-eqz v1, :cond_24

    invoke-virtual {v1, p1}, Landroid/widget/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 4662
    return v3

    .line 4665
    :cond_24
    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_e0

    :pswitch_28
    goto/16 :goto_dd

    .line 4748
    :pswitch_2a
    iput v2, p0, Landroid/widget/AbsListView;->mNumTouchMoveEvent:I

    .line 4750
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_dd

    .line 4708
    :pswitch_31
    iget v4, p0, Landroid/widget/AbsListView;->mNumTouchMoveEvent:I

    add-int/2addr v4, v3

    iput v4, p0, Landroid/widget/AbsListView;->mNumTouchMoveEvent:I

    .line 4709
    if-ne v4, v3, :cond_3b

    .line 4710
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsFirstTouchMoveEvent:Z

    goto :goto_3d

    .line 4712
    :cond_3b
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsFirstTouchMoveEvent:Z

    .line 4715
    :goto_3d
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v4, :pswitch_data_f2

    goto :goto_6c

    .line 4717
    :pswitch_43
    iget v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 4718
    .local v4, "pointerIndex":I
    if-ne v4, v1, :cond_52

    .line 4719
    const/4 v4, 0x0

    .line 4720
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4722
    :cond_52
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    .line 4723
    .local v1, "y":I
    invoke-direct {p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    .line 4724
    iget-object v5, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4725
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-direct {p0, v5, v1, v6}, Landroid/widget/AbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 4726
    return v3

    .line 4730
    .end local v1    # "y":I
    .end local v4    # "pointerIndex":I
    :cond_6c
    :goto_6c
    goto/16 :goto_dd

    .line 4736
    :pswitch_6e
    iput v2, p0, Landroid/widget/AbsListView;->mNumTouchMoveEvent:I

    .line 4738
    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4739
    iput v1, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4740
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 4741
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4742
    invoke-virtual {p0}, Landroid/widget/AbsListView;->stopNestedScroll()V

    .line 4743
    goto :goto_dd

    .line 4668
    :pswitch_7e
    iput v2, p0, Landroid/widget/AbsListView;->mNumTouchMoveEvent:I

    .line 4670
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4671
    .local v1, "touchMode":I
    const/4 v4, 0x6

    if-eq v1, v4, :cond_da

    const/4 v4, 0x5

    if-ne v1, v4, :cond_89

    goto :goto_da

    .line 4676
    :cond_89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    .line 4677
    .local v4, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 4678
    .local v5, "y":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4680
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v6

    .line 4681
    .local v6, "motionPosition":I
    invoke-direct {p0}, Landroid/widget/AbsListView;->doesTouchStopStretch()Z

    move-result v7

    const/4 v8, 0x4

    if-eqz v7, :cond_a8

    .line 4683
    iput v8, p0, Landroid/widget/AbsListView;->mTouchMode:I

    move v1, v8

    goto :goto_c5

    .line 4684
    :cond_a8
    if-eq v1, v8, :cond_c5

    if-ltz v6, :cond_c5

    .line 4687
    iget v7, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v7, v6, v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4688
    .local v7, "v":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4689
    iput v4, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4690
    iput v5, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4691
    iput v6, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4692
    iput v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4693
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 4695
    .end local v7    # "v":Landroid/view/View;
    :cond_c5
    :goto_c5
    const/high16 v7, -0x80000000

    iput v7, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4696
    invoke-direct {p0}, Landroid/widget/AbsListView;->initOrResetVelocityTracker()V

    .line 4697
    iget-object v7, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4698
    iput v2, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 4699
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    .line 4700
    if-ne v1, v8, :cond_dd

    .line 4701
    return v3

    .line 4672
    .end local v4    # "x":I
    .end local v5    # "y":I
    .end local v6    # "motionPosition":I
    :cond_da
    :goto_da
    iput v2, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4673
    return v3

    .line 4755
    .end local v1    # "touchMode":I
    :cond_dd
    :goto_dd
    return v2

    .line 4658
    :cond_de
    :goto_de
    return v2

    nop

    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_6e
        :pswitch_31
        :pswitch_6e
        :pswitch_28
        :pswitch_28
        :pswitch_2a
    .end packed-switch

    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_43
    .end packed-switch
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 3467
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 3472
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 3473
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_e

    .line 3474
    return v1

    .line 3476
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

    .line 3478
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_46

    .line 3480
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3481
    .local v0, "view":Landroid/view/View;
    const/4 v2, 0x0

    if-eqz v0, :cond_42

    .line 3482
    iget v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 3483
    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 3485
    :cond_42
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3486
    return v1

    .line 3489
    .end local v0    # "view":Landroid/view/View;
    :cond_46
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 2217
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 2219
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mInLayout:Z

    .line 2221
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2222
    .local v0, "childCount":I
    if-eqz p1, :cond_1e

    .line 2223
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_19

    .line 2224
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 2223
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 2226
    .end local v1    # "i":I
    :cond_19
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->markChildrenDirty()V

    .line 2229
    :cond_1e
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 2231
    sub-int v1, p5, p3

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Landroid/widget/AbsListView;->mOverscrollMax:I

    .line 2234
    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v1, :cond_34

    .line 2235
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/FastScroller;->onItemCountChanged(II)V

    .line 2237
    :cond_34
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mInLayout:Z

    .line 2238
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 2191
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_7

    .line 2192
    invoke-direct {p0}, Landroid/widget/AbsListView;->useDefaultSelector()V

    .line 2194
    :cond_7
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 2195
    .local v0, "listPadding":Landroid/graphics/Rect;
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2196
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2197
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2198
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2201
    iget v1, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_52

    .line 2202
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 2203
    .local v1, "childCount":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2204
    .local v3, "listBottom":I
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2205
    .local v4, "lastChild":Landroid/view/View;
    if-eqz v4, :cond_44

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    goto :goto_45

    :cond_44
    move v5, v3

    .line 2206
    .local v5, "lastBottom":I
    :goto_45
    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v6, v1

    iget v7, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    if-lt v6, v7, :cond_4f

    if-gt v5, v3, :cond_4f

    goto :goto_50

    :cond_4f
    const/4 v2, 0x0

    :goto_50
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    .line 2209
    .end local v1    # "childCount":I
    .end local v3    # "listBottom":I
    .end local v4    # "lastChild":Landroid/view/View;
    .end local v5    # "lastBottom":I
    :cond_52
    return-void
.end method

.method public whitelist onNestedFling(Landroid/view/View;FFZ)Z
    .registers 8
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .line 4528
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 4529
    .local v0, "childCount":I
    if-nez p4, :cond_38

    if-lez v0, :cond_38

    float-to-int v1, p3

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 4530
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_38

    .line 4531
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4532
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_29

    .line 4533
    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4535
    :cond_29
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p3}, Landroid/widget/AbsListView;->dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_36

    .line 4536
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    float-to-int v2, p3

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 4538
    :cond_36
    const/4 v1, 0x1

    return v1

    .line 4540
    :cond_38
    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/AbsListView;->dispatchNestedFling(FFZ)Z

    move-result v1

    return v1
.end method

.method public whitelist onNestedScroll(Landroid/view/View;IIII)V
    .registers 19
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .line 4512
    move-object v6, p0

    move/from16 v7, p5

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    div-int/lit8 v8, v0, 0x2

    .line 4513
    .local v8, "motionIndex":I
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 4514
    .local v9, "motionView":Landroid/view/View;
    if-eqz v9, :cond_14

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    move v10, v0

    .line 4515
    .local v10, "oldTop":I
    if-eqz v9, :cond_20

    neg-int v0, v7

    neg-int v1, v7

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 4516
    :cond_20
    move/from16 v0, p5

    .line 4517
    .local v0, "myUnconsumed":I
    const/4 v1, 0x0

    .line 4518
    .local v1, "myConsumed":I
    if-eqz v9, :cond_2f

    .line 4519
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v1, v2, v10

    .line 4520
    sub-int/2addr v0, v1

    move v11, v0

    move v12, v1

    goto :goto_31

    .line 4518
    :cond_2f
    move v11, v0

    move v12, v1

    .line 4522
    .end local v0    # "myUnconsumed":I
    .end local v1    # "myConsumed":I
    .local v11, "myUnconsumed":I
    .local v12, "myConsumed":I
    :goto_31
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, v12

    move v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsListView;->dispatchNestedScroll(IIII[I)Z

    .line 4524
    .end local v11    # "myUnconsumed":I
    .end local v12    # "myConsumed":I
    :cond_3a
    return-void
.end method

.method public whitelist onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .line 4505
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 4506
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    .line 4507
    return-void
.end method

.method protected whitelist onOverScrolled(IIZZ)V
    .registers 8
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .line 4434
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eq v0, p2, :cond_15

    .line 4435
    iget v0, p0, Landroid/widget/AbsListView;->mScrollX:I

    iget v1, p0, Landroid/widget/AbsListView;->mScrollX:I

    iget v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual {p0, v0, p2, v1, v2}, Landroid/widget/AbsListView;->onScrollChanged(IIII)V

    .line 4436
    iput p2, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 4437
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentIfNeeded()V

    .line 4439
    invoke-virtual {p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    .line 4441
    :cond_15
    return-void
.end method

.method public whitelist onRemoteAdapterConnected()Z
    .registers 4

    .line 6662
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_16

    .line 6663
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6664
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    if-eqz v0, :cond_15

    .line 6665
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    .line 6666
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 6668
    :cond_15
    return v2

    .line 6669
    :cond_16
    if-eqz v0, :cond_1d

    .line 6670
    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 6671
    const/4 v0, 0x1

    return v0

    .line 6673
    :cond_1d
    return v2
.end method

.method public whitelist onRemoteAdapterDisconnected()V
    .registers 1

    .line 6686
    return-void
.end method

.method public whitelist onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 4635
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_b

    .line 4636
    invoke-virtual {v0, p1, p2}, Landroid/widget/FastScroller;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v0

    .line 4637
    .local v0, "pointerIcon":Landroid/view/PointerIcon;
    if-eqz v0, :cond_b

    .line 4638
    return-object v0

    .line 4641
    .end local v0    # "pointerIcon":Landroid/view/PointerIcon;
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 8
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1947
    move-object v0, p1

    check-cast v0, Landroid/widget/AbsListView$SavedState;

    .line 1949
    .local v0, "ss":Landroid/widget/AbsListView$SavedState;
    invoke-virtual {v0}, Landroid/widget/AbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1950
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 1952
    iget v2, v0, Landroid/widget/AbsListView$SavedState;->height:I

    int-to-long v2, v2

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    .line 1954
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2e

    .line 1955
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 1956
    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 1957
    iget-wide v1, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v1, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 1958
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->position:I

    iput v1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 1959
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v1, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 1960
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsListView;->mSyncMode:I

    goto :goto_4f

    .line 1961
    :cond_2e
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4f

    .line 1962
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 1964
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 1965
    iput v2, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 1966
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 1967
    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 1968
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 1969
    iget v2, v0, Landroid/widget/AbsListView$SavedState;->position:I

    iput v2, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 1970
    iget v2, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v2, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 1971
    iput v1, p0, Landroid/widget/AbsListView;->mSyncMode:I

    .line 1974
    :cond_4f
    :goto_4f
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setFilterText(Ljava/lang/String;)V

    .line 1976
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_5c

    .line 1977
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1980
    :cond_5c
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_64

    .line 1981
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1984
    :cond_64
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1986
    iget-boolean v1, v0, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    if-eqz v1, :cond_7b

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7b

    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_7b

    .line 1988
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1991
    :cond_7b
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 1992
    return-void
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .registers 4
    .param p1, "layoutDirection"    # I

    .line 3184
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onRtlPropertiesChanged(I)V

    .line 3185
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_e

    .line 3186
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 3188
    :cond_e
    return-void
.end method

.method public whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 12

    .line 1855
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 1857
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1859
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/AbsListView$SavedState;

    invoke-direct {v1, v0}, Landroid/widget/AbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1861
    .local v1, "ss":Landroid/widget/AbsListView$SavedState;
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    if-eqz v2, :cond_4b

    .line 1863
    iget-wide v2, v2, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v2, v1, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 1864
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-wide v2, v2, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v2, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 1865
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v2, v2, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v2, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1866
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v2, v2, Landroid/widget/AbsListView$SavedState;->position:I

    iput v2, v1, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1867
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v2, v2, Landroid/widget/AbsListView$SavedState;->height:I

    iput v2, v1, Landroid/widget/AbsListView$SavedState;->height:I

    .line 1868
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v2, v2, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    iput-object v2, v1, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1869
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-boolean v2, v2, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    iput-boolean v2, v1, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 1870
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v2, v2, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v2, v1, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 1871
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v2, v2, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v2, v1, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 1872
    iget-object v2, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v2, v2, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v2, v1, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 1873
    return-object v1

    .line 1876
    :cond_4b
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_59

    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lez v2, :cond_59

    move v2, v3

    goto :goto_5a

    :cond_59
    move v2, v4

    .line 1877
    .local v2, "haveChildren":Z
    :goto_5a
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemId()J

    move-result-wide v5

    .line 1878
    .local v5, "selectedId":J
    iput-wide v5, v1, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 1879
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    iput v7, v1, Landroid/widget/AbsListView$SavedState;->height:I

    .line 1881
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    const-wide/16 v8, -0x1

    if-ltz v7, :cond_7b

    .line 1883
    iget v7, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    iput v7, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1884
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v7

    iput v7, v1, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1885
    iput-wide v8, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    goto :goto_a6

    .line 1887
    :cond_7b
    if-eqz v2, :cond_a0

    iget v7, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v7, :cond_a0

    .line 1897
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1898
    .local v7, "v":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    iput v8, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1899
    iget v8, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 1900
    .local v8, "firstPos":I
    iget v9, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lt v8, v9, :cond_95

    .line 1901
    iget v9, p0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v8, v9, -0x1

    .line 1903
    :cond_95
    iput v8, v1, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1904
    iget-object v9, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v9

    iput-wide v9, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 1905
    .end local v7    # "v":Landroid/view/View;
    .end local v8    # "firstPos":I
    goto :goto_a6

    .line 1906
    :cond_a0
    iput v4, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1907
    iput-wide v8, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 1908
    iput v4, v1, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1912
    :goto_a6
    const/4 v7, 0x0

    iput-object v7, v1, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1913
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v7, :cond_bd

    .line 1914
    iget-object v7, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 1915
    .local v7, "textFilter":Landroid/widget/EditText;
    if-eqz v7, :cond_bd

    .line 1916
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    .line 1917
    .local v8, "filterText":Landroid/text/Editable;
    if-eqz v8, :cond_bd

    .line 1918
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1923
    .end local v7    # "textFilter":Landroid/widget/EditText;
    .end local v8    # "filterText":Landroid/text/Editable;
    :cond_bd
    iget v7, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_c7

    iget-object v7, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v7, :cond_c7

    goto :goto_c8

    :cond_c7
    move v3, v4

    :goto_c8
    iput-boolean v3, v1, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 1925
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_d4

    .line 1926
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v3

    iput-object v3, v1, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 1928
    :cond_d4
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v3, :cond_fc

    .line 1929
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    .line 1930
    .local v3, "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    iget-object v4, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    .line 1931
    .local v4, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_e4
    if-ge v7, v4, :cond_fa

    .line 1932
    iget-object v8, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v7}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v8

    iget-object v10, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v10, v7}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v3, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1931
    add-int/lit8 v7, v7, 0x1

    goto :goto_e4

    .line 1934
    .end local v7    # "i":I
    :cond_fa
    iput-object v3, v1, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 1936
    .end local v3    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v4    # "count":I
    :cond_fc
    iget v3, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    iput v3, v1, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 1938
    iget-object v3, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v3, :cond_107

    .line 1939
    invoke-virtual {v3}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    .line 1942
    :cond_107
    return-object v1
.end method

.method protected whitelist onSizeChanged(IIII)V
    .registers 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 2797
    invoke-virtual {p0}, Landroid/widget/AbsListView;->handleBoundsChange()V

    .line 2798
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_a

    .line 2799
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FastScroller;->onSizeChanged(IIII)V

    .line 2801
    :cond_a
    return-void
.end method

.method public whitelist onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .line 4500
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 10
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 6430
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 6431
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 6432
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 6433
    .local v1, "length":I
    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 6434
    .local v2, "showing":Z
    if-nez v2, :cond_1e

    if-lez v1, :cond_1e

    .line 6436
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 6437
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_28

    .line 6438
    :cond_1e
    if-eqz v2, :cond_28

    if-nez v1, :cond_28

    .line 6440
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 6441
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 6443
    :cond_28
    :goto_28
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v0, Landroid/widget/Filterable;

    if-eqz v3, :cond_42

    .line 6444
    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 6446
    .local v0, "f":Landroid/widget/Filter;
    if-eqz v0, :cond_3a

    .line 6447
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    goto :goto_42

    .line 6449
    :cond_3a
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6454
    .end local v0    # "f":Landroid/widget/Filter;
    .end local v1    # "length":I
    .end local v2    # "showing":Z
    :cond_42
    :goto_42
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 3950
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_17

    .line 3953
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_16

    :cond_15
    move v1, v2

    :cond_16
    :goto_16
    return v1

    .line 3956
    :cond_17
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v0, :cond_1e

    .line 3957
    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3960
    :cond_1e
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    if-nez v0, :cond_d8

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_2a

    goto/16 :goto_d8

    .line 3968
    :cond_2a
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    .line 3970
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_39

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 3971
    return v1

    .line 3974
    :cond_39
    invoke-direct {p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    .line 3975
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 3977
    .local v0, "vtev":Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 3978
    .local v3, "actionMasked":I
    if-nez v3, :cond_48

    .line 3979
    iput v2, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 3981
    :cond_48
    const/4 v4, 0x0

    iget v5, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3982
    packed-switch v3, :pswitch_data_da

    :pswitch_52
    goto/16 :goto_cd

    .line 4021
    :pswitch_54
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 4022
    iget v4, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4023
    .local v4, "x":I
    iget v5, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4024
    .local v5, "y":I
    invoke-virtual {p0, v4, v5}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v6

    .line 4025
    .local v6, "motionPosition":I
    if-ltz v6, :cond_71

    .line 4027
    iget v7, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v7, v6, v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4028
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    iput v8, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4029
    iput v6, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4031
    .end local v7    # "child":Landroid/view/View;
    :cond_71
    iput v5, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4033
    iput v2, p0, Landroid/widget/AbsListView;->mNumTouchMoveEvent:I

    .line 4035
    goto :goto_cd

    .line 4040
    .end local v4    # "x":I
    .end local v5    # "y":I
    .end local v6    # "motionPosition":I
    :pswitch_76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    .line 4041
    .local v4, "index":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 4042
    .local v5, "id":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    .line 4043
    .local v6, "x":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v7, v7

    .line 4044
    .local v7, "y":I
    iput v2, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4045
    iput v5, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4046
    iput v6, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4047
    iput v7, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4048
    invoke-virtual {p0, v6, v7}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v8

    .line 4049
    .local v8, "motionPosition":I
    if-ltz v8, :cond_a6

    .line 4051
    iget v9, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v9, v8, v9

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 4052
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4053
    iput v8, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4055
    .end local v9    # "child":Landroid/view/View;
    :cond_a6
    iput v7, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4057
    iput v2, p0, Landroid/widget/AbsListView;->mNumTouchMoveEvent:I

    .line 4059
    goto :goto_cd

    .line 4013
    .end local v4    # "index":I
    .end local v5    # "id":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    .end local v8    # "motionPosition":I
    :pswitch_ab
    invoke-direct {p0}, Landroid/widget/AbsListView;->onTouchCancel()V

    .line 4015
    iput v2, p0, Landroid/widget/AbsListView;->mNumTouchMoveEvent:I

    .line 4017
    goto :goto_cd

    .line 3993
    :pswitch_b1
    iget v4, p0, Landroid/widget/AbsListView;->mNumTouchMoveEvent:I

    add-int/2addr v4, v1

    iput v4, p0, Landroid/widget/AbsListView;->mNumTouchMoveEvent:I

    .line 3994
    if-ne v4, v1, :cond_bb

    .line 3995
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsFirstTouchMoveEvent:Z

    goto :goto_bd

    .line 3997
    :cond_bb
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsFirstTouchMoveEvent:Z

    .line 4000
    :goto_bd
    invoke-direct {p0, p1, v0}, Landroid/widget/AbsListView;->onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 4001
    goto :goto_cd

    .line 4005
    :pswitch_c1
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onTouchUp(Landroid/view/MotionEvent;)V

    .line 4007
    iput v2, p0, Landroid/widget/AbsListView;->mNumTouchMoveEvent:I

    .line 4009
    goto :goto_cd

    .line 3984
    :pswitch_c7
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onTouchDown(Landroid/view/MotionEvent;)V

    .line 3986
    iput v2, p0, Landroid/widget/AbsListView;->mNumTouchMoveEvent:I

    .line 3988
    nop

    .line 4063
    :goto_cd
    iget-object v2, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_d4

    .line 4064
    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4066
    :cond_d4
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 4067
    return v1

    .line 3965
    .end local v0    # "vtev":Landroid/view/MotionEvent;
    .end local v3    # "actionMasked":I
    :cond_d8
    :goto_d8
    return v2

    nop

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_c7
        :pswitch_c1
        :pswitch_b1
        :pswitch_ab
        :pswitch_52
        :pswitch_76
        :pswitch_54
    .end packed-switch
.end method

.method public whitelist onTouchModeChanged(Z)V
    .registers 4
    .param p1, "isInTouchMode"    # Z

    .line 3909
    if-eqz p1, :cond_18

    .line 3911
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 3915
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    if-lez v0, :cond_14

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_14

    .line 3918
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 3920
    :cond_14
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto :goto_3e

    .line 3922
    :cond_18
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3923
    .local v0, "touchMode":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_20

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3e

    .line 3924
    :cond_20
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_27

    .line 3925
    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 3927
    :cond_27
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_2e

    .line 3928
    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3931
    :cond_2e
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v1, :cond_3e

    .line 3932
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 3933
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentCaches()V

    .line 3934
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 3935
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3939
    .end local v0    # "touchMode":I
    :cond_3e
    :goto_3e
    return-void
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .registers 7
    .param p1, "hasWindowFocus"    # Z

    .line 3128
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onWindowFocusChanged(Z)V

    .line 3130
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 3132
    .local v0, "touchMode":I
    const/4 v2, 0x0

    if-nez p1, :cond_40

    .line 3133
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 3134
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v3, :cond_36

    .line 3135
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3138
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-static {v3, v2}, Landroid/widget/AbsListView$FlingRunnable;->-$$Nest$fputmSuppressIdleStateChangeCall(Landroid/widget/AbsListView$FlingRunnable;Z)V

    .line 3139
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v3}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 3140
    iget-object v3, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v3, :cond_27

    .line 3141
    invoke-virtual {v3}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3143
    :cond_27
    iget v3, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v3, :cond_36

    .line 3144
    iput v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 3145
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentCaches()V

    .line 3146
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 3147
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3151
    :cond_36
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 3153
    if-ne v0, v1, :cond_60

    .line 3155
    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iput v1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    goto :goto_60

    .line 3158
    :cond_40
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v3, :cond_4b

    iget-boolean v3, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v3, :cond_4b

    .line 3160
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 3164
    :cond_4b
    iget v3, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    if-eq v0, v3, :cond_60

    const/4 v4, -0x1

    if-eq v3, v4, :cond_60

    .line 3166
    if-ne v0, v1, :cond_58

    .line 3168
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    goto :goto_60

    .line 3172
    :cond_58
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 3173
    iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 3174
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 3179
    :cond_60
    :goto_60
    iput v0, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 3180
    return-void
.end method

.method public greylist-max-o performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 7
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 1614
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 1615
    return v1

    .line 1617
    :cond_8
    const/16 v0, 0xc8

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_4e

    .line 1635
    return v2

    .line 1628
    :sswitch_f
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 1629
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    .line 1630
    .local v2, "viewportHeight":I
    neg-int v3, v2

    invoke-virtual {p0, v3, v0}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 1631
    return v1

    .line 1633
    .end local v2    # "viewportHeight":I
    :cond_2e
    return v2

    .line 1620
    :sswitch_2f
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 1621
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    .line 1622
    .restart local v2    # "viewportHeight":I
    invoke-virtual {p0, v2, v0}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 1623
    return v1

    .line 1625
    .end local v2    # "viewportHeight":I
    :cond_4d
    return v2

    :sswitch_data_4e
    .sparse-switch
        0x1000 -> :sswitch_2f
        0x2000 -> :sswitch_f
        0x1020038 -> :sswitch_f
        0x102003a -> :sswitch_2f
    .end sparse-switch
.end method

.method public whitelist performItemClick(Landroid/view/View;IJ)Z
    .registers 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 1180
    move-object v0, p0

    move v7, p2

    const/4 v1, 0x0

    .line 1181
    .local v1, "handled":Z
    const/4 v8, 0x1

    .line 1183
    .local v8, "dispatchItemClick":Z
    iget v2, v0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v2, :cond_bc

    .line 1184
    const/4 v9, 0x1

    .line 1185
    .end local v1    # "handled":Z
    .local v9, "handled":Z
    const/4 v10, 0x0

    .line 1187
    .local v10, "checkedStateChanged":Z
    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v1, :cond_64

    const/4 v1, 0x3

    if-ne v2, v1, :cond_17

    iget-object v1, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_17

    goto :goto_64

    .line 1209
    :cond_17
    if-ne v2, v4, :cond_63

    .line 1210
    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    xor-int/2addr v1, v4

    .line 1211
    .local v1, "checked":Z
    if-eqz v1, :cond_4f

    .line 1212
    iget-object v2, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1213
    iget-object v2, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1214
    iget-object v2, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_4c

    iget-object v2, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1215
    iget-object v2, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1216
    iget-object v2, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v6, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1218
    :cond_4c
    iput v4, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_61

    .line 1219
    :cond_4f
    iget-object v2, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-eqz v2, :cond_5f

    iget-object v2, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_61

    .line 1220
    :cond_5f
    iput v3, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1222
    :cond_61
    :goto_61
    const/4 v10, 0x1

    goto :goto_b6

    .line 1209
    .end local v1    # "checked":Z
    :cond_63
    :goto_63
    goto :goto_b6

    .line 1189
    :cond_64
    :goto_64
    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    xor-int/2addr v1, v4

    move v11, v1

    .line 1190
    .local v11, "checked":Z
    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1191
    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_9a

    iget-object v1, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 1192
    if-eqz v11, :cond_8f

    .line 1193
    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_9a

    .line 1195
    :cond_8f
    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    .line 1198
    :cond_9a
    :goto_9a
    if-eqz v11, :cond_a2

    .line 1199
    iget v1, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/2addr v1, v4

    iput v1, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_a7

    .line 1201
    :cond_a2
    iget v1, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    sub-int/2addr v1, v4

    iput v1, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1203
    :goto_a7
    iget-object v2, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_b4

    .line 1204
    iget-object v1, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    move v3, p2

    move-wide v4, p3

    move v6, v11

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1206
    const/4 v8, 0x0

    .line 1208
    :cond_b4
    const/4 v10, 0x1

    .end local v11    # "checked":Z
    goto :goto_63

    .line 1225
    :goto_b6
    if-eqz v10, :cond_bb

    .line 1226
    invoke-direct {p0}, Landroid/widget/AbsListView;->updateOnScreenCheckedViews()V

    .line 1230
    .end local v10    # "checkedStateChanged":Z
    :cond_bb
    move v1, v9

    .end local v9    # "handled":Z
    .local v1, "handled":Z
    :cond_bc
    if-eqz v8, :cond_c3

    .line 1231
    invoke-super/range {p0 .. p4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v2

    or-int/2addr v1, v2

    .line 1234
    :cond_c3
    return v1
.end method

.method greylist performLongPress(Landroid/view/View;IJ)Z
    .registers 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .line 3347
    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJFF)Z

    move-result v0

    return v0
.end method

.method greylist-max-r performLongPress(Landroid/view/View;IJFF)Z
    .registers 16
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J
    .param p5, "x"    # F
    .param p6, "y"    # F

    .line 3359
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1c

    .line 3360
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v2, 0x1

    if-nez v0, :cond_1b

    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 3361
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1b

    .line 3362
    invoke-virtual {p0, p2, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 3363
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    .line 3365
    :cond_1b
    return v2

    .line 3368
    :cond_1c
    const/4 v0, 0x0

    .line 3369
    .local v0, "handled":Z
    iget-object v2, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v2, :cond_2b

    .line 3370
    iget-object v3, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-interface/range {v3 .. v8}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    .line 3373
    :cond_2b
    if-nez v0, :cond_46

    .line 3374
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3375
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, p5, v2

    if-eqz v3, :cond_42

    cmpl-float v2, p6, v2

    if-eqz v2, :cond_42

    .line 3376
    invoke-super {p0, p0, p5, p6}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result v0

    goto :goto_46

    .line 3378
    :cond_42
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    .line 3381
    :cond_46
    :goto_46
    if-eqz v0, :cond_4b

    .line 3382
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    .line 3384
    :cond_4b
    return v0
.end method

.method public whitelist pointToPosition(II)I
    .registers 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 3513
    iget-object v0, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3514
    .local v0, "frame":Landroid/graphics/Rect;
    if-nez v0, :cond_d

    .line 3515
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3516
    iget-object v0, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3519
    :cond_d
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 3520
    .local v1, "count":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_13
    if-ltz v2, :cond_2f

    .line 3521
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3522
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2c

    .line 3523
    invoke-virtual {v3, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3524
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 3525
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v4, v2

    return v4

    .line 3520
    .end local v3    # "child":Landroid/view/View;
    :cond_2c
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    .line 3529
    .end local v2    # "i":I
    :cond_2f
    const/4 v2, -0x1

    return v2
.end method

.method public whitelist pointToRowId(II)J
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 3542
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 3543
    .local v0, "position":I
    if-ltz v0, :cond_d

    .line 3544
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    return-wide v1

    .line 3546
    :cond_d
    const-wide/high16 v1, -0x8000000000000000L

    return-wide v1
.end method

.method greylist-max-o positionSelector(ILandroid/view/View;)V
    .registers 9
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .line 2657
    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40800000    # -1.0f

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 2658
    return-void
.end method

.method greylist-max-o positionSelectorLikeFocus(ILandroid/view/View;)V
    .registers 12
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .line 2646
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1f

    iget v0, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    if-eq v0, p1, :cond_1f

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1f

    .line 2647
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2648
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v7

    .line 2649
    .local v7, "x":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v8

    .line 2650
    .local v8, "y":F
    const/4 v4, 0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 2651
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v7    # "x":F
    .end local v8    # "y":F
    goto :goto_22

    .line 2652
    :cond_1f
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 2654
    :goto_22
    return-void
.end method

.method greylist-max-o positionSelectorLikeTouch(ILandroid/view/View;FF)V
    .registers 11
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 2639
    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 2640
    return-void
.end method

.method public whitelist reclaimViews(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 6569
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 6570
    .local v0, "childCount":I
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-static {v1}, Landroid/widget/AbsListView$RecycleBin;->-$$Nest$fgetmRecyclerListener(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;

    move-result-object v1

    .line 6573
    .local v1, "listener":Landroid/widget/AbsListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_35

    .line 6574
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6575
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 6577
    .local v4, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v4, :cond_32

    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget v6, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 6578
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6579
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 6580
    invoke-virtual {v3}, Landroid/view/View;->resetSubtreeAutofillIds()V

    .line 6581
    if-eqz v1, :cond_32

    .line 6583
    invoke-interface {v1, v3}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 6573
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 6587
    .end local v2    # "i":I
    :cond_35
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 6588
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 6589
    return-void
.end method

.method greylist-max-o reconcileSelectedPosition()I
    .registers 3

    .line 5585
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    .line 5586
    .local v0, "position":I
    if-gez v0, :cond_6

    .line 5587
    iget v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5589
    :cond_6
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5590
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5591
    return v0
.end method

.method greylist-max-p reportScrollStateChange(I)V
    .registers 3
    .param p1, "newState"    # I

    .line 4805
    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_d

    .line 4806
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_d

    .line 4807
    iput p1, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 4808
    invoke-interface {v0, p0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 4811
    :cond_d
    return-void
.end method

.method public whitelist requestDisallowInterceptTouchEvent(Z)V
    .registers 2
    .param p1, "disallowIntercept"    # Z

    .line 4618
    if-eqz p1, :cond_5

    .line 4619
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 4621
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->requestDisallowInterceptTouchEvent(Z)V

    .line 4622
    return-void
.end method

.method public whitelist requestLayout()V
    .registers 2

    .line 2055
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mInLayout:Z

    if-nez v0, :cond_b

    .line 2056
    invoke-super {p0}, Landroid/widget/AdapterView;->requestLayout()V

    .line 2058
    :cond_b
    return-void
.end method

.method greylist-max-o requestLayoutIfNecessary()V
    .registers 2

    .line 1747
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_f

    .line 1748
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 1749
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 1750
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 1752
    :cond_f
    return-void
.end method

.method greylist-max-o resetList()V
    .registers 5

    .line 2064
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 2065
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 2066
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 2067
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 2068
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 2069
    iput-object v1, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 2070
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mOldSelectedPosition:I

    .line 2071
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Landroid/widget/AbsListView;->mOldSelectedRowId:J

    .line 2072
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 2073
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 2074
    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 2075
    iput v1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 2076
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2077
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2078
    return-void
.end method

.method greylist-max-o resurrectSelection()Z
    .registers 17

    .line 5657
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 5659
    .local v1, "childCount":I
    const/4 v2, 0x0

    if-gtz v1, :cond_a

    .line 5660
    return v2

    .line 5663
    :cond_a
    const/4 v3, 0x0

    .line 5665
    .local v3, "selectedTop":I
    iget-object v4, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 5666
    .local v4, "childrenTop":I
    iget v5, v0, Landroid/widget/AbsListView;->mBottom:I

    iget v6, v0, Landroid/widget/AbsListView;->mTop:I

    sub-int/2addr v5, v6

    iget-object v6, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    .line 5667
    .local v5, "childrenBottom":I
    iget v6, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5668
    .local v6, "firstPosition":I
    iget v7, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5669
    .local v7, "toPosition":I
    const/4 v8, 0x1

    .line 5671
    .local v8, "down":Z
    const/4 v9, 0x1

    if-lt v7, v6, :cond_4e

    add-int v10, v6, v1

    if-ge v7, v10, :cond_4e

    .line 5672
    move v10, v7

    .line 5674
    .local v10, "selectedPos":I
    iget v11, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v11, v10, v11

    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 5675
    .local v11, "selected":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v3

    .line 5676
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 5679
    .local v12, "selectedBottom":I
    if-ge v3, v4, :cond_3f

    .line 5680
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v13

    add-int v3, v4, v13

    goto :goto_4d

    .line 5681
    :cond_3f
    if-le v12, v5, :cond_4d

    .line 5682
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    sub-int v13, v5, v13

    .line 5683
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v14

    sub-int v3, v13, v14

    .line 5685
    .end local v11    # "selected":Landroid/view/View;
    .end local v12    # "selectedBottom":I
    :cond_4d
    :goto_4d
    goto :goto_a4

    .line 5686
    .end local v10    # "selectedPos":I
    :cond_4e
    if-ge v7, v6, :cond_72

    .line 5688
    move v10, v6

    .line 5689
    .restart local v10    # "selectedPos":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_52
    if-ge v11, v1, :cond_71

    .line 5690
    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 5691
    .local v12, "v":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    .line 5693
    .local v13, "top":I
    if-nez v11, :cond_68

    .line 5695
    move v3, v13

    .line 5697
    if-gtz v6, :cond_63

    if-ge v13, v4, :cond_68

    .line 5700
    :cond_63
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v14

    add-int/2addr v4, v14

    .line 5703
    :cond_68
    if-lt v13, v4, :cond_6e

    .line 5705
    add-int v10, v6, v11

    .line 5706
    move v3, v13

    .line 5707
    goto :goto_71

    .line 5689
    .end local v12    # "v":Landroid/view/View;
    .end local v13    # "top":I
    :cond_6e
    add-int/lit8 v11, v11, 0x1

    goto :goto_52

    .end local v11    # "i":I
    :cond_71
    :goto_71
    goto :goto_a4

    .line 5711
    .end local v10    # "selectedPos":I
    :cond_72
    iget v10, v0, Landroid/widget/AbsListView;->mItemCount:I

    .line 5712
    .local v10, "itemCount":I
    const/4 v8, 0x0

    .line 5713
    add-int v11, v6, v1

    sub-int/2addr v11, v9

    .line 5715
    .local v11, "selectedPos":I
    add-int/lit8 v12, v1, -0x1

    .local v12, "i":I
    :goto_7a
    if-ltz v12, :cond_a3

    .line 5716
    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 5717
    .local v13, "v":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v14

    .line 5718
    .local v14, "top":I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v15

    .line 5720
    .local v15, "bottom":I
    add-int/lit8 v9, v1, -0x1

    if-ne v12, v9, :cond_98

    .line 5721
    move v3, v14

    .line 5722
    add-int v9, v6, v1

    if-lt v9, v10, :cond_93

    if-le v15, v5, :cond_98

    .line 5723
    :cond_93
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v9

    sub-int/2addr v5, v9

    .line 5727
    :cond_98
    if-gt v15, v5, :cond_9f

    .line 5728
    add-int v9, v6, v12

    .line 5729
    .end local v11    # "selectedPos":I
    .local v9, "selectedPos":I
    move v3, v14

    .line 5730
    move v10, v9

    goto :goto_a4

    .line 5715
    .end local v9    # "selectedPos":I
    .end local v13    # "v":Landroid/view/View;
    .end local v14    # "top":I
    .end local v15    # "bottom":I
    .restart local v11    # "selectedPos":I
    :cond_9f
    add-int/lit8 v12, v12, -0x1

    const/4 v9, 0x1

    goto :goto_7a

    :cond_a3
    move v10, v11

    .line 5736
    .end local v11    # "selectedPos":I
    .end local v12    # "i":I
    .local v10, "selectedPos":I
    :goto_a4
    const/4 v9, -0x1

    iput v9, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5737
    iget-object v11, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5738
    iget-object v11, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v11, :cond_b3

    .line 5739
    invoke-virtual {v11}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 5741
    :cond_b3
    iput v9, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5742
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 5743
    iput v3, v0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 5744
    invoke-virtual {v0, v10, v8}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v9

    .line 5745
    .end local v10    # "selectedPos":I
    .restart local v9    # "selectedPos":I
    if-lt v9, v6, :cond_d3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v10

    if-gt v9, v10, :cond_d3

    .line 5746
    const/4 v10, 0x4

    iput v10, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5747
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 5748
    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->setSelectionInt(I)V

    .line 5749
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    goto :goto_d4

    .line 5751
    :cond_d3
    const/4 v9, -0x1

    .line 5753
    :goto_d4
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5755
    if-ltz v9, :cond_da

    const/4 v2, 0x1

    :cond_da
    return v2
.end method

.method greylist resurrectSelectionIfNeeded()Z
    .registers 2

    .line 5636
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_f

    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5637
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 5638
    const/4 v0, 0x1

    return v0

    .line 5640
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist scrollListBy(I)V
    .registers 4
    .param p1, "y"    # I

    .line 5311
    neg-int v0, p1

    neg-int v1, p1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 5312
    return-void
.end method

.method greylist-max-o sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .registers 10
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 6069
    invoke-direct {p0}, Landroid/widget/AbsListView;->acceptFilter()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 6070
    return v1

    .line 6073
    :cond_8
    const/4 v0, 0x0

    .line 6074
    .local v0, "handled":Z
    const/4 v2, 0x1

    .line 6075
    .local v2, "okToSend":Z
    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_86

    goto :goto_55

    .line 6105
    :sswitch_f
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_55

    .line 6083
    :sswitch_12
    const/4 v2, 0x0

    .line 6084
    goto :goto_55

    .line 6087
    :sswitch_14
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v4, :cond_53

    iget-object v4, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_53

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 6088
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_39

    .line 6089
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_39

    .line 6090
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    .line 6091
    .local v4, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v4, :cond_37

    .line 6092
    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 6094
    :cond_37
    const/4 v0, 0x1

    .line 6095
    .end local v4    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_38
    goto :goto_53

    :cond_39
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_38

    .line 6096
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_53

    .line 6097
    const/4 v0, 0x1

    .line 6098
    iget-object v4, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6101
    :cond_53
    :goto_53
    const/4 v2, 0x0

    .line 6102
    nop

    .line 6109
    :goto_55
    if-eqz v2, :cond_85

    .line 6110
    invoke-direct {p0, v3}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 6112
    move-object v3, p3

    .line 6113
    .local v3, "forwardEvent":Landroid/view/KeyEvent;
    invoke-virtual {v3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_69

    .line 6114
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-static {p3, v4, v5, v1}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v3

    .line 6117
    :cond_69
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 6118
    .local v1, "action":I
    packed-switch v1, :pswitch_data_b0

    goto :goto_85

    .line 6128
    :pswitch_71
    iget-object v4, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_85

    .line 6124
    :pswitch_78
    iget-object v4, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v3}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 6125
    goto :goto_85

    .line 6120
    :pswitch_7f
    iget-object v4, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v3}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 6132
    .end local v1    # "action":I
    .end local v3    # "forwardEvent":Landroid/view/KeyEvent;
    :cond_85
    :goto_85
    return v0

    :sswitch_data_86
    .sparse-switch
        0x4 -> :sswitch_14
        0x13 -> :sswitch_12
        0x14 -> :sswitch_12
        0x15 -> :sswitch_12
        0x16 -> :sswitch_12
        0x17 -> :sswitch_12
        0x3e -> :sswitch_f
        0x42 -> :sswitch_12
        0x6f -> :sswitch_14
        0xa0 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_7f
        :pswitch_78
        :pswitch_71
    .end packed-switch
.end method

.method public bridge synthetic whitelist setAdapter(Landroid/widget/Adapter;)V
    .registers 2

    .line 115
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public whitelist setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 982
    if-eqz p1, :cond_1b

    .line 983
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    .line 984
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v1, :cond_1b

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_1b

    .line 986
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 989
    :cond_1b
    invoke-virtual {p0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 990
    return-void
.end method

.method public whitelist setBottomEdgeEffectColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 6722
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 6723
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    .line 6724
    return-void
.end method

.method public whitelist setCacheColorHint(I)V
    .registers 5
    .param p1, "color"    # I

    .line 6538
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eq p1, v0, :cond_1c

    .line 6539
    iput p1, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    .line 6540
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 6541
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_17

    .line 6542
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 6541
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 6544
    .end local v1    # "i":I
    :cond_17
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1, p1}, Landroid/widget/AbsListView$RecycleBin;->setCacheColorHint(I)V

    .line 6546
    .end local v0    # "count":I
    :cond_1c
    return-void
.end method

.method public whitelist setChoiceMode(I)V
    .registers 4
    .param p1, "choiceMode"    # I

    .line 1284
    iput p1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 1285
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_c

    .line 1286
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1287
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1289
    :cond_c
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_3d

    .line 1290
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    .line 1291
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1293
    :cond_1c
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_31

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_31

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1294
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1297
    :cond_31
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3d

    .line 1298
    invoke-virtual {p0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 1299
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setLongClickable(Z)V

    .line 1302
    :cond_3d
    return-void
.end method

.method public whitelist setDrawSelectorOnTop(Z)V
    .registers 2
    .param p1, "onTop"    # Z

    .line 2881
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 2882
    return-void
.end method

.method public whitelist setEdgeEffectColor(I)V
    .registers 2
    .param p1, "color"    # I

    .line 6708
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setTopEdgeEffectColor(I)V

    .line 6709
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setBottomEdgeEffectColor(I)V

    .line 6710
    return-void
.end method

.method public whitelist setFastScrollAlwaysVisible(Z)V
    .registers 3
    .param p1, "alwaysShow"    # Z

    .line 1408
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    if-eq v0, p1, :cond_22

    .line 1409
    if-eqz p1, :cond_e

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_e

    .line 1410
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 1413
    :cond_e
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    .line 1415
    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1416
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    goto :goto_22

    .line 1418
    :cond_1a
    new-instance v0, Landroid/widget/AbsListView$2;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$2;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 1426
    :cond_22
    :goto_22
    return-void
.end method

.method public whitelist setFastScrollEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 1348
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_18

    .line 1349
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    .line 1351
    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1352
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V

    goto :goto_18

    .line 1354
    :cond_10
    new-instance v0, Landroid/widget/AbsListView$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$1;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 1362
    :cond_18
    :goto_18
    return-void
.end method

.method public whitelist setFastScrollStyle(I)V
    .registers 3
    .param p1, "styleResId"    # I

    .line 1386
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-nez v0, :cond_7

    .line 1387
    iput p1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    goto :goto_a

    .line 1389
    :cond_7
    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setStyle(I)V

    .line 1391
    :goto_a
    return-void
.end method

.method public whitelist setFilterText(Ljava/lang/String;)V
    .registers 4
    .param p1, "filterText"    # Ljava/lang/String;

    .line 2007
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_37

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 2008
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 2011
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2012
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 2013
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v0, Landroid/widget/Filterable;

    if-eqz v1, :cond_37

    .line 2015
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_2f

    .line 2016
    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 2017
    .local v0, "f":Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 2021
    .end local v0    # "f":Landroid/widget/Filter;
    :cond_2f
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 2022
    iget-object v0, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AdapterDataSetObserver;->clearSavedState()V

    .line 2025
    :cond_37
    return-void
.end method

.method protected greylist-max-o setFrame(IIII)Z
    .registers 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 2245
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->setFrame(IIII)Z

    move-result v0

    .line 2247
    .local v0, "changed":Z
    if-eqz v0, :cond_22

    .line 2251
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    .line 2252
    .local v1, "visible":Z
    :goto_f
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v2, :cond_22

    if-eqz v1, :cond_22

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2253
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 2257
    .end local v1    # "visible":Z
    :cond_22
    return v0
.end method

.method public whitelist setFriction(F)V
    .registers 3
    .param p1, "friction"    # F

    .line 5108
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_b

    .line 5109
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 5111
    :cond_b
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-static {v0}, Landroid/widget/AbsListView$FlingRunnable;->-$$Nest$fgetmScroller(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 5112
    return-void
.end method

.method public whitelist setItemChecked(IZ)V
    .registers 14
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .line 1107
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-nez v0, :cond_5

    .line 1108
    return-void

    .line 1112
    :cond_5
    const/4 v1, 0x3

    if-eqz p2, :cond_29

    if-ne v0, v1, :cond_29

    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_29

    .line 1113
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v0, :cond_21

    .line 1114
    invoke-virtual {v0}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1119
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    goto :goto_29

    .line 1115
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1123
    :cond_29
    :goto_29
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_8e

    if-ne v0, v1, :cond_33

    goto :goto_8e

    .line 1147
    :cond_33
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_41

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_41

    move v0, v4

    goto :goto_42

    :cond_41
    move v0, v3

    .line 1150
    .local v0, "updateIds":Z
    :goto_42
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v1

    if-eq v1, p2, :cond_4a

    move v1, v4

    goto :goto_4b

    :cond_4a
    move v1, v3

    .line 1151
    .local v1, "itemCheckChanged":Z
    :goto_4b
    if-nez p2, :cond_53

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 1152
    :cond_53
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1153
    if-eqz v0, :cond_5f

    .line 1154
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1159
    :cond_5f
    if-eqz p2, :cond_7b

    .line 1160
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1161
    if-eqz v0, :cond_77

    .line 1162
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v6, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1164
    :cond_77
    iput v4, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto/16 :goto_ea

    .line 1165
    :cond_7b
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-eqz v2, :cond_8b

    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_ea

    .line 1166
    :cond_8b
    iput v3, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_ea

    .line 1124
    .end local v0    # "updateIds":Z
    .end local v1    # "itemCheckChanged":Z
    :cond_8e
    :goto_8e
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1125
    .local v0, "oldValue":Z
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1126
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_c2

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 1127
    if-eqz p2, :cond_b7

    .line 1128
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v6, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_c2

    .line 1130
    :cond_b7
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Landroid/util/LongSparseArray;->delete(J)V

    .line 1133
    :cond_c2
    :goto_c2
    if-eq v0, p2, :cond_c5

    move v3, v4

    :cond_c5
    move v1, v3

    .line 1134
    .restart local v1    # "itemCheckChanged":Z
    if-eqz v1, :cond_d5

    .line 1135
    if-eqz p2, :cond_d0

    .line 1136
    iget v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/2addr v2, v4

    iput v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_d5

    .line 1138
    :cond_d0
    iget v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    sub-int/2addr v2, v4

    iput v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1141
    :cond_d5
    :goto_d5
    iget-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_e9

    .line 1142
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 1143
    .local v2, "id":J
    iget-object v5, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v6, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v7, p1

    move-wide v8, v2

    move v10, p2

    invoke-virtual/range {v5 .. v10}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1146
    .end local v0    # "oldValue":Z
    .end local v2    # "id":J
    :cond_e9
    nop

    .line 1171
    :cond_ea
    :goto_ea
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mInLayout:Z

    if-nez v0, :cond_fc

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_fc

    if-eqz v1, :cond_fc

    .line 1172
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 1173
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 1174
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 1176
    :cond_fc
    return-void
.end method

.method public whitelist setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/widget/AbsListView$MultiChoiceModeListener;

    .line 1314
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_b

    .line 1315
    new-instance v0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 1317
    :cond_b
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 1318
    return-void
.end method

.method public whitelist setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .registers 2
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .line 1546
    iput-object p1, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 1547
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 1548
    return-void
.end method

.method public whitelist setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/widget/AbsListView$RecyclerListener;

    .line 6779
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-static {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->-$$Nest$fputmRecyclerListener(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)V

    .line 6780
    return-void
.end method

.method public whitelist setRemoteViewsAdapter(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 6604
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;Z)V

    .line 6605
    return-void
.end method

.method public greylist-max-o setRemoteViewsAdapter(Landroid/content/Intent;Z)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "isAsync"    # Z

    .line 6617
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_1b

    .line 6618
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 6619
    .local v0, "fcNew":Landroid/content/Intent$FilterComparison;
    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 6620
    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 6621
    .local v1, "fcOld":Landroid/content/Intent$FilterComparison;
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 6622
    return-void

    .line 6625
    .end local v0    # "fcNew":Landroid/content/Intent$FilterComparison;
    .end local v1    # "fcOld":Landroid/content/Intent$FilterComparison;
    :cond_1b
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 6627
    new-instance v0, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0, p2}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 6628
    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 6629
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6631
    :cond_34
    return-void
.end method

.method public greylist-max-o setRemoteViewsAdapterAsync(Landroid/content/Intent;)Ljava/lang/Runnable;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 6609
    new-instance v0, Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;-><init>(Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Landroid/content/Intent;)V

    return-object v0
.end method

.method public blacklist setRemoteViewsInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V
    .registers 3
    .param p1, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;

    .line 6643
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_7

    .line 6644
    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V

    .line 6646
    :cond_7
    return-void
.end method

.method public whitelist setScrollBarStyle(I)V
    .registers 3
    .param p1, "style"    # I

    .line 1489
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setScrollBarStyle(I)V

    .line 1490
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_a

    .line 1491
    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollBarStyle(I)V

    .line 1493
    :cond_a
    return-void
.end method

.method public whitelist setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .param p1, "up"    # Landroid/view/View;
    .param p2, "down"    # Landroid/view/View;

    .line 2977
    iput-object p1, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    .line 2978
    iput-object p2, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    .line 2979
    return-void
.end method

.method public whitelist setScrollingCacheEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 1667
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_9

    if-nez p1, :cond_9

    .line 1668
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 1670
    :cond_9
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    .line 1671
    return-void
.end method

.method public whitelist setSelectedChildViewEnabled(Z)V
    .registers 2
    .param p1, "selectedChildViewEnabled"    # Z

    .line 2725
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 2726
    return-void
.end method

.method public whitelist setSelectionFromTop(II)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "y"    # I

    .line 7558
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_5

    .line 7559
    return-void

    .line 7562
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_16

    .line 7563
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 7564
    if-ltz p1, :cond_18

    .line 7565
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_18

    .line 7568
    :cond_16
    iput p1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 7571
    :cond_18
    :goto_18
    if-ltz p1, :cond_3c

    .line 7572
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 7573
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 7575
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    if-eqz v0, :cond_32

    .line 7576
    iput p1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 7577
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 7580
    :cond_32
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v0, :cond_39

    .line 7581
    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 7583
    :cond_39
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 7585
    :cond_3c
    return-void
.end method

.method abstract greylist-max-o setSelectionInt(I)V
.end method

.method public whitelist setSelector(I)V
    .registers 3
    .param p1, "resID"    # I

    .line 2904
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2905
    return-void
.end method

.method public whitelist setSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .line 2908
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    .line 2909
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2910
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2912
    :cond_d
    iput-object p1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2913
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2914
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2915
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 2916
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 2917
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 2918
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 2919
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2920
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 2921
    return-void
.end method

.method public whitelist setSmoothScrollbarEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 1524
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 1525
    return-void
.end method

.method public whitelist setStackFromBottom(Z)V
    .registers 3
    .param p1, "stackFromBottom"    # Z

    .line 1740
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_9

    .line 1741
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 1742
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    .line 1744
    :cond_9
    return-void
.end method

.method public whitelist setTextFilterEnabled(Z)V
    .registers 2
    .param p1, "textFilterEnabled"    # Z

    .line 1684
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    .line 1685
    return-void
.end method

.method public whitelist setTopEdgeEffectColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 6736
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 6737
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateEdgeEffects()V

    .line 6738
    return-void
.end method

.method public whitelist setTranscriptMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 6504
    iput p1, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    .line 6505
    return-void
.end method

.method public whitelist setVelocityScale(F)V
    .registers 2
    .param p1, "scale"    # F

    .line 5121
    iput p1, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 5122
    return-void
.end method

.method public whitelist setVerticalScrollbarPosition(I)V
    .registers 3
    .param p1, "position"    # I

    .line 1481
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setVerticalScrollbarPosition(I)V

    .line 1482
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_a

    .line 1483
    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 1485
    :cond_a
    return-void
.end method

.method greylist-max-o setVisibleRangeHint(II)V
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 6693
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_7

    .line 6694
    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    .line 6696
    :cond_7
    return-void
.end method

.method public final blacklist shouldDrawSelector()Z
    .registers 2

    .line 2868
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method greylist-max-o shouldShowSelector()Z
    .registers 2

    .line 2852
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

    .line 3394
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v0, v1}, Landroid/widget/AbsListView;->showContextMenuInternal(FFZ)Z

    move-result v0

    return v0
.end method

.method public whitelist showContextMenu(FF)Z
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 3399
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView;->showContextMenuInternal(FFZ)Z

    move-result v0

    return v0
.end method

.method public whitelist showContextMenuForChild(Landroid/view/View;)Z
    .registers 4
    .param p1, "originalView"    # Landroid/view/View;

    .line 3425
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isShowingContextMenuWithCoords()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 3426
    return v1

    .line 3428
    :cond_8
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v1}, Landroid/widget/AbsListView;->showContextMenuForChildInternal(Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public whitelist showContextMenuForChild(Landroid/view/View;FF)Z
    .registers 5
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 3433
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsListView;->showContextMenuForChildInternal(Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public whitelist smoothScrollBy(II)V
    .registers 4
    .param p1, "distance"    # I
    .param p2, "duration"    # I

    .line 5203
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 5204
    return-void
.end method

.method greylist smoothScrollBy(IIZZ)V
    .registers 11
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z
    .param p4, "suppressEndFlingStateChangeCall"    # Z

    .line 5209
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_b

    .line 5210
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 5214
    :cond_b
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5215
    .local v0, "firstPos":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 5216
    .local v1, "childCount":I
    add-int v2, v0, v1

    .line 5217
    .local v2, "lastPos":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v3

    .line 5218
    .local v3, "topLimit":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 5220
    .local v4, "bottomLimit":I
    if-eqz p1, :cond_54

    iget v5, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-eqz v5, :cond_54

    if-eqz v1, :cond_54

    if-nez v0, :cond_37

    const/4 v5, 0x0

    .line 5221
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-ne v5, v3, :cond_37

    if-ltz p1, :cond_54

    :cond_37
    iget v5, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-ne v2, v5, :cond_4a

    add-int/lit8 v5, v1, -0x1

    .line 5223
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ne v5, v4, :cond_4a

    if-lez p1, :cond_4a

    goto :goto_54

    .line 5229
    :cond_4a
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5230
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5, p1, p2, p3, p4}, Landroid/widget/AbsListView$FlingRunnable;->startScroll(IIZZ)V

    goto :goto_60

    .line 5224
    :cond_54
    :goto_54
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 5225
    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v5, :cond_60

    .line 5226
    invoke-virtual {v5}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 5232
    :cond_60
    :goto_60
    return-void
.end method

.method greylist-max-o smoothScrollByOffset(I)V
    .registers 11
    .param p1, "position"    # I

    .line 5238
    const/4 v0, -0x1

    .line 5239
    .local v0, "index":I
    if-gez p1, :cond_8

    .line 5240
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    goto :goto_e

    .line 5241
    :cond_8
    if-lez p1, :cond_e

    .line 5242
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    .line 5245
    :cond_e
    :goto_e
    const/4 v1, -0x1

    if-le v0, v1, :cond_64

    .line 5246
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5247
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_64

    .line 5248
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 5249
    .local v2, "visibleRect":Landroid/graphics/Rect;
    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 5251
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    .line 5252
    .local v3, "childRectArea":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    .line 5253
    .local v4, "visibleRectArea":I
    int-to-float v5, v4

    int-to-float v6, v3

    div-float/2addr v5, v6

    .line 5254
    .local v5, "visibleArea":F
    const/high16 v6, 0x3f400000    # 0.75f

    .line 5255
    .local v6, "visibleThreshold":F
    const/high16 v7, 0x3f400000    # 0.75f

    if-gez p1, :cond_4a

    cmpg-float v8, v5, v7

    if-gez v8, :cond_4a

    .line 5258
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 5259
    :cond_4a
    if-lez p1, :cond_52

    cmpg-float v7, v5, v7

    if-gez v7, :cond_52

    .line 5262
    add-int/lit8 v0, v0, -0x1

    .line 5265
    .end local v3    # "childRectArea":I
    .end local v4    # "visibleRectArea":I
    .end local v5    # "visibleArea":F
    .end local v6    # "visibleThreshold":F
    :cond_52
    :goto_52
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v4

    add-int v5, v0, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 5268
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "visibleRect":Landroid/graphics/Rect;
    :cond_64
    return-void
.end method

.method public whitelist smoothScrollToPosition(I)V
    .registers 3
    .param p1, "position"    # I

    .line 5137
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_a

    .line 5138
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 5140
    :cond_a
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$AbsPositionScroller;->start(I)V

    .line 5141
    return-void
.end method

.method public whitelist smoothScrollToPosition(II)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .line 5191
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_a

    .line 5192
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 5194
    :cond_a
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$AbsPositionScroller;->start(II)V

    .line 5195
    return-void
.end method

.method public whitelist smoothScrollToPositionFromTop(II)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .line 5174
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_a

    .line 5175
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 5177
    :cond_a
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$AbsPositionScroller;->startWithOffset(II)V

    .line 5178
    return-void
.end method

.method public whitelist smoothScrollToPositionFromTop(III)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .line 5156
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_a

    .line 5157
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 5159
    :cond_a
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/AbsListView$AbsPositionScroller;->startWithOffset(III)V

    .line 5160
    return-void
.end method

.method greylist-max-o touchModeDrawsInPressedState()Z
    .registers 2

    .line 2835
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_a

    .line 2840
    const/4 v0, 0x0

    return v0

    .line 2838
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
    .registers 29
    .param p1, "deltaY"    # I
    .param p2, "incrementalDeltaY"    # I

    .line 5351
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 5352
    .local v3, "childCount":I
    const/4 v4, 0x1

    if-nez v3, :cond_e

    .line 5353
    return v4

    .line 5356
    :cond_e
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    .line 5357
    .local v6, "firstTop":I
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 5359
    .local v7, "lastBottom":I
    iget-object v8, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 5364
    .local v8, "listPadding":Landroid/graphics/Rect;
    const/4 v9, 0x0

    .line 5365
    .local v9, "effectivePaddingTop":I
    const/4 v10, 0x0

    .line 5366
    .local v10, "effectivePaddingBottom":I
    iget v11, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v12, 0x22

    and-int/2addr v11, v12

    if-ne v11, v12, :cond_30

    .line 5367
    iget v9, v8, Landroid/graphics/Rect;->top:I

    .line 5368
    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    .line 5372
    :cond_30
    sub-int v11, v9, v6

    .line 5373
    .local v11, "spaceAbove":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v13

    sub-int/2addr v13, v10

    .line 5374
    .local v13, "end":I
    sub-int v14, v7, v13

    .line 5376
    .local v14, "spaceBelow":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v15

    iget v5, v0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int/2addr v15, v5

    iget v5, v0, Landroid/widget/AbsListView;->mPaddingTop:I

    sub-int/2addr v15, v5

    .line 5377
    .local v15, "height":I
    if-gez v1, :cond_4d

    .line 5378
    add-int/lit8 v5, v15, -0x1

    neg-int v5, v5

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .end local p1    # "deltaY":I
    .local v1, "deltaY":I
    goto :goto_53

    .line 5380
    .end local v1    # "deltaY":I
    .restart local p1    # "deltaY":I
    :cond_4d
    add-int/lit8 v5, v15, -0x1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5383
    .end local p1    # "deltaY":I
    .restart local v1    # "deltaY":I
    :goto_53
    if-gez v2, :cond_5d

    .line 5384
    add-int/lit8 v5, v15, -0x1

    neg-int v5, v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .end local p2    # "incrementalDeltaY":I
    .local v2, "incrementalDeltaY":I
    goto :goto_63

    .line 5386
    .end local v2    # "incrementalDeltaY":I
    .restart local p2    # "incrementalDeltaY":I
    :cond_5d
    add-int/lit8 v5, v15, -0x1

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 5389
    .end local p2    # "incrementalDeltaY":I
    .restart local v2    # "incrementalDeltaY":I
    :goto_63
    iget v5, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5392
    .local v5, "firstPosition":I
    if-nez v5, :cond_6e

    .line 5393
    iget v4, v8, Landroid/graphics/Rect;->top:I

    sub-int v4, v6, v4

    iput v4, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    goto :goto_73

    .line 5395
    :cond_6e
    iget v4, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v4, v2

    iput v4, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    .line 5397
    :goto_73
    add-int v4, v5, v3

    iget v12, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-ne v4, v12, :cond_7f

    .line 5398
    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v7

    iput v4, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    goto :goto_84

    .line 5400
    :cond_7f
    iget v4, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v4, v2

    iput v4, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    .line 5403
    :goto_84
    if-nez v5, :cond_8e

    iget v4, v8, Landroid/graphics/Rect;->top:I

    if-lt v6, v4, :cond_8e

    if-ltz v2, :cond_8e

    const/4 v4, 0x1

    goto :goto_8f

    :cond_8e
    const/4 v4, 0x0

    .line 5405
    .local v4, "cannotScrollDown":Z
    :goto_8f
    add-int v12, v5, v3

    move/from16 v18, v6

    .end local v6    # "firstTop":I
    .local v18, "firstTop":I
    iget v6, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-ne v12, v6, :cond_a4

    .line 5406
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    iget v12, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v12

    if-gt v7, v6, :cond_a4

    if-gtz v2, :cond_a4

    const/4 v6, 0x1

    goto :goto_a5

    :cond_a4
    const/4 v6, 0x0

    .line 5408
    .local v6, "cannotScrollUp":Z
    :goto_a5
    if-nez v4, :cond_21a

    if-eqz v6, :cond_bd

    move/from16 v16, v1

    move/from16 v17, v3

    move/from16 p1, v4

    move/from16 p2, v6

    move/from16 v22, v7

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v13

    const/4 v1, 0x0

    const/4 v9, 0x1

    goto/16 :goto_22c

    .line 5412
    :cond_bd
    if-gez v2, :cond_c1

    const/4 v12, 0x1

    goto :goto_c2

    :cond_c1
    const/4 v12, 0x0

    .line 5414
    .local v12, "down":Z
    :goto_c2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v19

    .line 5415
    .local v19, "inTouchMode":Z
    if-eqz v19, :cond_cb

    .line 5416
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 5419
    :cond_cb
    move/from16 p1, v4

    .end local v4    # "cannotScrollDown":Z
    .local p1, "cannotScrollDown":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeaderViewsCount()I

    move-result v4

    .line 5420
    .local v4, "headerViewsCount":I
    move/from16 p2, v6

    .end local v6    # "cannotScrollUp":Z
    .local p2, "cannotScrollUp":Z
    iget v6, v0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFooterViewsCount()I

    move-result v20

    sub-int v6, v6, v20

    .line 5422
    .local v6, "footerViewsStart":I
    const/16 v20, 0x0

    .line 5423
    .local v20, "start":I
    const/16 v21, 0x0

    .line 5425
    .local v21, "count":I
    if-eqz v12, :cond_137

    .line 5426
    move/from16 v22, v7

    .end local v7    # "lastBottom":I
    .local v22, "lastBottom":I
    neg-int v7, v2

    .line 5427
    .local v7, "top":I
    move/from16 v23, v9

    .end local v9    # "effectivePaddingTop":I
    .local v23, "effectivePaddingTop":I
    iget v9, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    move/from16 v24, v10

    const/16 v10, 0x22

    .end local v10    # "effectivePaddingBottom":I
    .local v24, "effectivePaddingBottom":I
    and-int/2addr v9, v10

    if-ne v9, v10, :cond_f2

    .line 5428
    iget v9, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v9

    .line 5430
    :cond_f2
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_f3
    if-ge v9, v3, :cond_12c

    .line 5431
    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 5432
    .local v10, "child":Landroid/view/View;
    move/from16 v25, v13

    .end local v13    # "end":I
    .local v25, "end":I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v13

    if-lt v13, v7, :cond_102

    .line 5433
    goto :goto_130

    .line 5435
    :cond_102
    add-int/lit8 v21, v21, 0x1

    .line 5436
    add-int v13, v5, v9

    .line 5437
    .local v13, "position":I
    if-lt v13, v4, :cond_123

    if-ge v13, v6, :cond_123

    .line 5440
    invoke-virtual {v10}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 5443
    move/from16 v17, v7

    .end local v7    # "top":I
    .local v17, "top":I
    iget-object v7, v0, Landroid/widget/AbsListView;->mAbsListViewStub:Landroid/widget/AbsListViewStub;

    invoke-interface {v7}, Landroid/widget/AbsListViewStub;->getPrefetchEnableState()Z

    move-result v7

    if-eqz v7, :cond_11d

    .line 5444
    iget-object v7, v0, Landroid/widget/AbsListView;->mAbsListViewStub:Landroid/widget/AbsListViewStub;

    invoke-interface {v7, v13, v10}, Landroid/widget/AbsListViewStub;->addView(ILandroid/view/View;)V

    goto :goto_125

    .line 5446
    :cond_11d
    iget-object v7, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v7, v10, v13}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_125

    .line 5437
    .end local v17    # "top":I
    .restart local v7    # "top":I
    :cond_123
    move/from16 v17, v7

    .line 5430
    .end local v7    # "top":I
    .end local v10    # "child":Landroid/view/View;
    .end local v13    # "position":I
    .restart local v17    # "top":I
    :goto_125
    add-int/lit8 v9, v9, 0x1

    move/from16 v7, v17

    move/from16 v13, v25

    goto :goto_f3

    .end local v17    # "top":I
    .end local v25    # "end":I
    .restart local v7    # "top":I
    .local v13, "end":I
    :cond_12c
    move/from16 v17, v7

    move/from16 v25, v13

    .line 5452
    .end local v7    # "top":I
    .end local v9    # "i":I
    .end local v13    # "end":I
    .restart local v25    # "end":I
    :goto_130
    move/from16 v17, v3

    move/from16 v3, v20

    move/from16 v7, v21

    goto :goto_18f

    .line 5453
    .end local v22    # "lastBottom":I
    .end local v23    # "effectivePaddingTop":I
    .end local v24    # "effectivePaddingBottom":I
    .end local v25    # "end":I
    .local v7, "lastBottom":I
    .local v9, "effectivePaddingTop":I
    .local v10, "effectivePaddingBottom":I
    .restart local v13    # "end":I
    :cond_137
    move/from16 v22, v7

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v13

    .end local v7    # "lastBottom":I
    .end local v9    # "effectivePaddingTop":I
    .end local v10    # "effectivePaddingBottom":I
    .end local v13    # "end":I
    .restart local v22    # "lastBottom":I
    .restart local v23    # "effectivePaddingTop":I
    .restart local v24    # "effectivePaddingBottom":I
    .restart local v25    # "end":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    sub-int/2addr v7, v2

    .line 5454
    .local v7, "bottom":I
    iget v9, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/16 v10, 0x22

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_14e

    .line 5455
    iget v9, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v9

    .line 5457
    :cond_14e
    add-int/lit8 v9, v3, -0x1

    .local v9, "i":I
    :goto_150
    if-ltz v9, :cond_189

    .line 5458
    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 5459
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v13

    if-gt v13, v7, :cond_15f

    .line 5460
    move/from16 v17, v3

    goto :goto_18b

    .line 5462
    :cond_15f
    move/from16 v20, v9

    .line 5463
    add-int/lit8 v21, v21, 0x1

    .line 5464
    add-int v13, v5, v9

    .line 5465
    .local v13, "position":I
    if-lt v13, v4, :cond_182

    if-ge v13, v6, :cond_182

    .line 5468
    invoke-virtual {v10}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 5471
    move/from16 v17, v3

    .end local v3    # "childCount":I
    .local v17, "childCount":I
    iget-object v3, v0, Landroid/widget/AbsListView;->mAbsListViewStub:Landroid/widget/AbsListViewStub;

    invoke-interface {v3}, Landroid/widget/AbsListViewStub;->getPrefetchEnableState()Z

    move-result v3

    if-eqz v3, :cond_17c

    .line 5472
    iget-object v3, v0, Landroid/widget/AbsListView;->mAbsListViewStub:Landroid/widget/AbsListViewStub;

    invoke-interface {v3, v13, v10}, Landroid/widget/AbsListViewStub;->addView(ILandroid/view/View;)V

    goto :goto_184

    .line 5474
    :cond_17c
    iget-object v3, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v3, v10, v13}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_184

    .line 5465
    .end local v17    # "childCount":I
    .restart local v3    # "childCount":I
    :cond_182
    move/from16 v17, v3

    .line 5457
    .end local v3    # "childCount":I
    .end local v10    # "child":Landroid/view/View;
    .end local v13    # "position":I
    .restart local v17    # "childCount":I
    :goto_184
    add-int/lit8 v9, v9, -0x1

    move/from16 v3, v17

    goto :goto_150

    .end local v17    # "childCount":I
    .restart local v3    # "childCount":I
    :cond_189
    move/from16 v17, v3

    .line 5482
    .end local v3    # "childCount":I
    .end local v7    # "bottom":I
    .end local v9    # "i":I
    .restart local v17    # "childCount":I
    :goto_18b
    move/from16 v3, v20

    move/from16 v7, v21

    .end local v20    # "start":I
    .end local v21    # "count":I
    .local v3, "start":I
    .local v7, "count":I
    :goto_18f
    iget v9, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    add-int/2addr v9, v1

    iput v9, v0, Landroid/widget/AbsListView;->mMotionViewNewTop:I

    .line 5484
    const/4 v9, 0x1

    iput-boolean v9, v0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    .line 5486
    if-lez v7, :cond_1a1

    .line 5487
    invoke-virtual {v0, v3, v7}, Landroid/widget/AbsListView;->detachViewsFromParent(II)V

    .line 5488
    iget-object v9, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v9}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 5493
    :cond_1a1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    move-result v9

    if-nez v9, :cond_1aa

    .line 5494
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 5497
    :cond_1aa
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->offsetChildrenTopAndBottom(I)V

    .line 5499
    if-eqz v12, :cond_1b4

    .line 5500
    iget v9, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v9, v7

    iput v9, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5503
    :cond_1b4
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 5504
    .local v9, "absIncrementalDeltaY":I
    if-lt v11, v9, :cond_1bc

    if-ge v14, v9, :cond_1bf

    .line 5505
    :cond_1bc
    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->fillGap(Z)V

    .line 5508
    :cond_1bf
    iget-object v10, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v10}, Landroid/widget/AbsListView$RecycleBin;->fullyDetachScrapViews()V

    .line 5509
    const/4 v10, 0x0

    .line 5510
    .local v10, "selectorOnScreen":Z
    const/4 v13, -0x1

    if-nez v19, :cond_1ef

    move/from16 v16, v1

    .end local v1    # "deltaY":I
    .local v16, "deltaY":I
    iget v1, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-eq v1, v13, :cond_1ec

    .line 5511
    iget v1, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v13, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v1, v13

    .line 5512
    .local v1, "childIndex":I
    if-ltz v1, :cond_1e9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v13

    if-ge v1, v13, :cond_1e9

    .line 5513
    iget v13, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    move/from16 v20, v3

    .end local v3    # "start":I
    .restart local v20    # "start":I
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v13, v3}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 5514
    const/4 v3, 0x1

    move v10, v3

    .end local v10    # "selectorOnScreen":Z
    .local v3, "selectorOnScreen":Z
    goto :goto_1eb

    .line 5512
    .end local v20    # "start":I
    .local v3, "start":I
    .restart local v10    # "selectorOnScreen":Z
    :cond_1e9
    move/from16 v20, v3

    .line 5516
    .end local v1    # "childIndex":I
    .end local v3    # "start":I
    .restart local v20    # "start":I
    :cond_1eb
    :goto_1eb
    goto :goto_20c

    .line 5510
    .end local v20    # "start":I
    .restart local v3    # "start":I
    :cond_1ec
    move/from16 v20, v3

    .end local v3    # "start":I
    .restart local v20    # "start":I
    goto :goto_1f3

    .end local v16    # "deltaY":I
    .end local v20    # "start":I
    .local v1, "deltaY":I
    .restart local v3    # "start":I
    :cond_1ef
    move/from16 v16, v1

    move/from16 v20, v3

    .line 5516
    .end local v1    # "deltaY":I
    .end local v3    # "start":I
    .restart local v16    # "deltaY":I
    .restart local v20    # "start":I
    :goto_1f3
    iget v1, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    if-eq v1, v13, :cond_1eb

    .line 5517
    iget v3, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v1, v3

    .line 5518
    .local v1, "childIndex":I
    if-ltz v1, :cond_20c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_20c

    .line 5519
    iget v3, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v0, v3, v13}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 5520
    const/4 v10, 0x1

    .line 5523
    .end local v1    # "childIndex":I
    :cond_20c
    :goto_20c
    if-nez v10, :cond_213

    .line 5524
    iget-object v1, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 5527
    :cond_213
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    .line 5529
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 5531
    return v1

    .line 5408
    .end local v12    # "down":Z
    .end local v16    # "deltaY":I
    .end local v17    # "childCount":I
    .end local v19    # "inTouchMode":Z
    .end local v20    # "start":I
    .end local v22    # "lastBottom":I
    .end local v23    # "effectivePaddingTop":I
    .end local v24    # "effectivePaddingBottom":I
    .end local v25    # "end":I
    .end local p1    # "cannotScrollDown":Z
    .end local p2    # "cannotScrollUp":Z
    .local v1, "deltaY":I
    .local v3, "childCount":I
    .local v4, "cannotScrollDown":Z
    .local v6, "cannotScrollUp":Z
    .local v7, "lastBottom":I
    .local v9, "effectivePaddingTop":I
    .local v10, "effectivePaddingBottom":I
    .local v13, "end":I
    :cond_21a
    move/from16 v16, v1

    move/from16 v17, v3

    move/from16 p1, v4

    move/from16 p2, v6

    move/from16 v22, v7

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v13

    const/4 v1, 0x0

    const/4 v9, 0x1

    .line 5409
    .end local v1    # "deltaY":I
    .end local v3    # "childCount":I
    .end local v4    # "cannotScrollDown":Z
    .end local v6    # "cannotScrollUp":Z
    .end local v7    # "lastBottom":I
    .end local v9    # "effectivePaddingTop":I
    .end local v10    # "effectivePaddingBottom":I
    .end local v13    # "end":I
    .restart local v16    # "deltaY":I
    .restart local v17    # "childCount":I
    .restart local v22    # "lastBottom":I
    .restart local v23    # "effectivePaddingTop":I
    .restart local v24    # "effectivePaddingBottom":I
    .restart local v25    # "end":I
    .restart local p1    # "cannotScrollDown":Z
    .restart local p2    # "cannotScrollUp":Z
    :goto_22c
    if-eqz v2, :cond_230

    move v4, v9

    goto :goto_231

    :cond_230
    move v4, v1

    :goto_231
    return v4
.end method

.method greylist-max-o updateScrollIndicators()V
    .registers 5

    .line 2286
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_12

    .line 2287
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v3

    if-eqz v3, :cond_e

    move v3, v1

    goto :goto_f

    :cond_e
    move v3, v2

    :goto_f
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2290
    :cond_12
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_21

    .line 2291
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2293
    :cond_21
    return-void
.end method

.method greylist updateSelectorState()V
    .registers 3

    .line 2983
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2984
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 2985
    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2986
    invoke-direct {p0}, Landroid/widget/AbsListView;->getDrawableStateForSelector()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 2987
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_23

    .line 2990
    :cond_1e
    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2993
    :cond_23
    :goto_23
    return-void
.end method

.method public whitelist verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 3038
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_d

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
