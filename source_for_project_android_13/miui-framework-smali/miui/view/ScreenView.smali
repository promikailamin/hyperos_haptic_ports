.class public Lmiui/view/ScreenView;
.super Landroid/view/ViewGroup;
.source "ScreenView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/view/ScreenView$ScaleDetectorListener;,
        Lmiui/view/ScreenView$SliderTouchListener;,
        Lmiui/view/ScreenView$SlideBar;,
        Lmiui/view/ScreenView$SeekBarIndicator;,
        Lmiui/view/ScreenView$ArrowIndicator;,
        Lmiui/view/ScreenView$ScreenViewOvershootInterpolator;,
        Lmiui/view/ScreenView$GestureVelocityTracker;,
        Lmiui/view/ScreenView$SavedState;,
        Lmiui/view/ScreenView$Indicator;,
        Lmiui/view/ScreenView$SnapScreenOnceNotification;
    }
.end annotation


# static fields
.field private static final blacklist AUTO_HIDE_ANIMATION_DURATION:I = 0x1f4

.field private static final blacklist AUTO_HIDE_TIMEOUT_DURATION:I = 0x3e8

.field private static final blacklist BASELINE_FLING_VELOCITY:F = 2500.0f

.field private static final blacklist DEFAULT_OVER_SHOOT_TENSION:F = 1.3f

.field private static final blacklist DEFAULT_SCREEN_SNAP_DURATION:I = 0x12c

.field private static final blacklist FEATURE_WHOLE_ANIM:Z

.field public static final blacklist FLING_ALIGN:I = 0x4

.field public static final blacklist FLING_CANCEL:I = 0x3

.field public static final blacklist FLING_LEFT:I = 0x1

.field public static final blacklist FLING_RIGHT:I = 0x2

.field private static final blacklist FLING_VELOCITY_INFLUENCE:F = 0.4f

.field private static final blacklist INVALID_POINTER:I = -0x1

.field private static final blacklist INVALID_SCREEN:I = -0x1

.field private static final blacklist MINIMAL_SLIDE_BAR_POINT_WIDTH:I = 0x30

.field private static final blacklist NANOTIME_DIV:F = 1.0E9f

.field public static final blacklist SCREEN_ALIGN_CENTER:I = 0x2

.field public static final blacklist SCREEN_ALIGN_CUSTOMIZED:I = 0x0

.field public static final blacklist SCREEN_ALIGN_LEFT:I = 0x1

.field public static final blacklist SCREEN_ALIGN_RIGHT:I = 0x3

.field public static final blacklist SCREEN_TRANSITION_TYPE_CLASSIC:I = 0x0

.field public static final blacklist SCREEN_TRANSITION_TYPE_CLASSIC_NO_OVER_SHOOT:I = 0x1

.field public static final blacklist SCREEN_TRANSITION_TYPE_CROSSFADE:I = 0x2

.field public static final blacklist SCREEN_TRANSITION_TYPE_CUBE:I = 0x4

.field public static final blacklist SCREEN_TRANSITION_TYPE_CUSTOM:I = 0x9

.field public static final blacklist SCREEN_TRANSITION_TYPE_FALLDOWN:I = 0x3

.field public static final blacklist SCREEN_TRANSITION_TYPE_LEFTPAGE:I = 0x5

.field public static final blacklist SCREEN_TRANSITION_TYPE_RIGHTPAGE:I = 0x6

.field public static final blacklist SCREEN_TRANSITION_TYPE_ROTATE:I = 0x8

.field public static final blacklist SCREEN_TRANSITION_TYPE_STACK:I = 0x7

.field private static final blacklist SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

.field private static final blacklist SMOOTHING_CONSTANT:F

.field private static final blacklist SMOOTHING_SPEED:F = 0.75f

.field private static final blacklist SNAP_VELOCITY:I = 0x12c

.field private static final blacklist TAG:Ljava/lang/String; = "ScreenView"

.field protected static final blacklist TOUCH_STATE_PINCHING:I = 0x4

.field protected static final blacklist TOUCH_STATE_REST:I = 0x0

.field protected static final blacklist TOUCH_STATE_SCROLLING:I = 0x1

.field protected static final blacklist TOUCH_STATE_SLIDING:I = 0x3


# instance fields
.field private final blacklist DEFAULT_CAMERA_DISTANCE:F

.field private blacklist mActivePointerId:I

.field private blacklist mAllowLongPress:Z

.field private blacklist mArrowLeft:Lmiui/view/ScreenView$ArrowIndicator;

.field private blacklist mArrowLeftOffResId:I

.field private blacklist mArrowLeftOnResId:I

.field private blacklist mArrowRight:Lmiui/view/ScreenView$ArrowIndicator;

.field private blacklist mArrowRightOffResId:I

.field private blacklist mArrowRightOnResId:I

.field private blacklist mAutoHideTimer:Ljava/lang/Runnable;

.field protected blacklist mChildScreenWidth:I

.field private blacklist mConfirmHorizontalScrollRatio:F

.field private blacklist mCurrentGestureFinished:Z

.field protected blacklist mCurrentScreen:I

.field private blacklist mFirstLayout:Z

.field private blacklist mGestureVelocityTracker:Lmiui/view/ScreenView$GestureVelocityTracker;

.field private blacklist mHeightMeasureSpec:I

.field private blacklist mIndicatorCount:I

.field private blacklist mIsSlideBarAutoHide:Z

.field protected blacklist mLastMotionX:F

.field protected blacklist mLastMotionY:F

.field private blacklist mMaximumVelocity:I

.field private blacklist mNextScreen:I

.field private blacklist mOverScrollRatio:F

.field private blacklist mOvershootTension:F

.field private blacklist mPrevScreenWidth:I

.field private blacklist mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private blacklist mScreenAlignment:I

.field private blacklist mScreenCounter:I

.field protected blacklist mScreenOffset:I

.field private blacklist mScreenPaddingBottom:I

.field private blacklist mScreenPaddingTop:I

.field private blacklist mScreenSeekBar:Lmiui/view/ScreenView$SeekBarIndicator;

.field private blacklist mScreenSnapDuration:I

.field private blacklist mScreenTransitionType:I

.field private blacklist mScreenWidth:I

.field private blacklist mScrollInterpolator:Lmiui/view/ScreenView$ScreenViewOvershootInterpolator;

.field private blacklist mScrollLeftBound:I

.field private blacklist mScrollOffset:I

.field private blacklist mScrollRightBound:I

.field private blacklist mScrollWholeScreen:Z

.field private blacklist mScroller:Landroid/widget/Scroller;

.field private blacklist mSeekPointResId:I

.field private blacklist mSlideBar:Lmiui/view/ScreenView$SlideBar;

.field private blacklist mSmoothingTime:F

.field private blacklist mSnapScreenOnceNotification:Lmiui/view/ScreenView$SnapScreenOnceNotification;

.field private blacklist mTouchIntercepted:Z

.field private blacklist mTouchSlop:I

.field private blacklist mTouchState:I

.field private blacklist mTouchX:F

.field private blacklist mVisibleExtentionRatio:F

.field protected blacklist mVisibleRange:I

.field private blacklist mWidthMeasureSpec:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmNextScreen(Lmiui/view/ScreenView;)I
    .registers 1

    iget p0, p0, Lmiui/view/ScreenView;->mNextScreen:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOvershootTension(Lmiui/view/ScreenView;)F
    .registers 1

    iget p0, p0, Lmiui/view/ScreenView;->mOvershootTension:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScroller(Lmiui/view/ScreenView;)Landroid/widget/Scroller;
    .registers 1

    iget-object p0, p0, Lmiui/view/ScreenView;->mScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSlideBar(Lmiui/view/ScreenView;)Lmiui/view/ScreenView$SlideBar;
    .registers 1

    iget-object p0, p0, Lmiui/view/ScreenView;->mSlideBar:Lmiui/view/ScreenView$SlideBar;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTouchSlop(Lmiui/view/ScreenView;)I
    .registers 1

    iget p0, p0, Lmiui/view/ScreenView;->mTouchSlop:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTouchState(Lmiui/view/ScreenView;)I
    .registers 1

    iget p0, p0, Lmiui/view/ScreenView;->mTouchState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetCurrentScreenInner(Lmiui/view/ScreenView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/view/ScreenView;->setCurrentScreenInner(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetTouchState(Lmiui/view/ScreenView;Landroid/view/MotionEvent;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/view/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartHideSlideBar(Lmiui/view/ScreenView;)V
    .registers 1

    invoke-direct {p0}, Lmiui/view/ScreenView;->startHideSlideBar()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateSeekPoints(Lmiui/view/ScreenView;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/view/ScreenView;->updateSeekPoints(II)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 165
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lmiui/view/ScreenView;->SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 202
    nop

    .line 203
    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3f90624dd2f1a9fcL    # 0.016

    div-double/2addr v2, v0

    double-to-float v0, v2

    sput v0, Lmiui/view/ScreenView;->SMOOTHING_CONSTANT:F

    .line 351
    nop

    .line 352
    const-string v0, "ro.sys.ft_whole_anim"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/view/ScreenView;->FEATURE_WHOLE_ANIM:Z

    .line 351
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 360
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 213
    nop

    .line 214
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x44a00000    # 1280.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lmiui/view/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/view/ScreenView;->mFirstLayout:Z

    .line 223
    const v1, 0x110801d8

    iput v1, p0, Lmiui/view/ScreenView;->mArrowLeftOnResId:I

    .line 225
    const v1, 0x110801d9

    iput v1, p0, Lmiui/view/ScreenView;->mArrowLeftOffResId:I

    .line 227
    const v1, 0x110801da

    iput v1, p0, Lmiui/view/ScreenView;->mArrowRightOnResId:I

    .line 229
    const v1, 0x110801db

    iput v1, p0, Lmiui/view/ScreenView;->mArrowRightOffResId:I

    .line 231
    const v1, 0x110801e2

    iput v1, p0, Lmiui/view/ScreenView;->mSeekPointResId:I

    .line 249
    new-instance v1, Lmiui/view/ScreenView$1;

    invoke-direct {v1, p0}, Lmiui/view/ScreenView$1;-><init>(Lmiui/view/ScreenView;)V

    iput-object v1, p0, Lmiui/view/ScreenView;->mAutoHideTimer:Ljava/lang/Runnable;

    .line 271
    iput v0, p0, Lmiui/view/ScreenView;->mVisibleRange:I

    .line 278
    const/4 v1, 0x0

    iput v1, p0, Lmiui/view/ScreenView;->mPrevScreenWidth:I

    .line 280
    iput v1, p0, Lmiui/view/ScreenView;->mScreenWidth:I

    .line 291
    const/4 v2, -0x1

    iput v2, p0, Lmiui/view/ScreenView;->mNextScreen:I

    .line 297
    const v3, 0x3eaaaaab

    iput v3, p0, Lmiui/view/ScreenView;->mOverScrollRatio:F

    .line 303
    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Lmiui/view/ScreenView;->mVisibleExtentionRatio:F

    .line 305
    iput v1, p0, Lmiui/view/ScreenView;->mScreenCounter:I

    .line 318
    iput v1, p0, Lmiui/view/ScreenView;->mTouchState:I

    .line 324
    iput-boolean v0, p0, Lmiui/view/ScreenView;->mAllowLongPress:Z

    .line 330
    iput v2, p0, Lmiui/view/ScreenView;->mActivePointerId:I

    .line 336
    iput v3, p0, Lmiui/view/ScreenView;->mConfirmHorizontalScrollRatio:F

    .line 338
    const/16 v0, 0x12c

    iput v0, p0, Lmiui/view/ScreenView;->mScreenSnapDuration:I

    .line 342
    iput v1, p0, Lmiui/view/ScreenView;->mScreenTransitionType:I

    .line 344
    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lmiui/view/ScreenView;->mOvershootTension:F

    .line 348
    new-instance v0, Lmiui/view/ScreenView$GestureVelocityTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/view/ScreenView$GestureVelocityTracker;-><init>(Lmiui/view/ScreenView;Lmiui/view/ScreenView$GestureVelocityTracker-IA;)V

    iput-object v0, p0, Lmiui/view/ScreenView;->mGestureVelocityTracker:Lmiui/view/ScreenView$GestureVelocityTracker;

    .line 361
    invoke-direct {p0}, Lmiui/view/ScreenView;->initScreenView()V

    .line 362
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 372
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/view/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 373
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 384
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 213
    nop

    .line 214
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x44a00000    # 1280.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lmiui/view/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/view/ScreenView;->mFirstLayout:Z

    .line 223
    const v1, 0x110801d8

    iput v1, p0, Lmiui/view/ScreenView;->mArrowLeftOnResId:I

    .line 225
    const v1, 0x110801d9

    iput v1, p0, Lmiui/view/ScreenView;->mArrowLeftOffResId:I

    .line 227
    const v1, 0x110801da

    iput v1, p0, Lmiui/view/ScreenView;->mArrowRightOnResId:I

    .line 229
    const v1, 0x110801db

    iput v1, p0, Lmiui/view/ScreenView;->mArrowRightOffResId:I

    .line 231
    const v1, 0x110801e2

    iput v1, p0, Lmiui/view/ScreenView;->mSeekPointResId:I

    .line 249
    new-instance v1, Lmiui/view/ScreenView$1;

    invoke-direct {v1, p0}, Lmiui/view/ScreenView$1;-><init>(Lmiui/view/ScreenView;)V

    iput-object v1, p0, Lmiui/view/ScreenView;->mAutoHideTimer:Ljava/lang/Runnable;

    .line 271
    iput v0, p0, Lmiui/view/ScreenView;->mVisibleRange:I

    .line 278
    const/4 v1, 0x0

    iput v1, p0, Lmiui/view/ScreenView;->mPrevScreenWidth:I

    .line 280
    iput v1, p0, Lmiui/view/ScreenView;->mScreenWidth:I

    .line 291
    const/4 v2, -0x1

    iput v2, p0, Lmiui/view/ScreenView;->mNextScreen:I

    .line 297
    const v3, 0x3eaaaaab

    iput v3, p0, Lmiui/view/ScreenView;->mOverScrollRatio:F

    .line 303
    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Lmiui/view/ScreenView;->mVisibleExtentionRatio:F

    .line 305
    iput v1, p0, Lmiui/view/ScreenView;->mScreenCounter:I

    .line 318
    iput v1, p0, Lmiui/view/ScreenView;->mTouchState:I

    .line 324
    iput-boolean v0, p0, Lmiui/view/ScreenView;->mAllowLongPress:Z

    .line 330
    iput v2, p0, Lmiui/view/ScreenView;->mActivePointerId:I

    .line 336
    iput v3, p0, Lmiui/view/ScreenView;->mConfirmHorizontalScrollRatio:F

    .line 338
    const/16 v0, 0x12c

    iput v0, p0, Lmiui/view/ScreenView;->mScreenSnapDuration:I

    .line 342
    iput v1, p0, Lmiui/view/ScreenView;->mScreenTransitionType:I

    .line 344
    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lmiui/view/ScreenView;->mOvershootTension:F

    .line 348
    new-instance v0, Lmiui/view/ScreenView$GestureVelocityTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/view/ScreenView$GestureVelocityTracker;-><init>(Lmiui/view/ScreenView;Lmiui/view/ScreenView$GestureVelocityTracker-IA;)V

    iput-object v0, p0, Lmiui/view/ScreenView;->mGestureVelocityTracker:Lmiui/view/ScreenView$GestureVelocityTracker;

    .line 385
    invoke-direct {p0}, Lmiui/view/ScreenView;->initScreenView()V

    .line 386
    return-void
.end method

.method private blacklist createSeekPoint()Landroid/widget/ImageView;
    .registers 3

    .line 1693
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lmiui/view/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1694
    .local v0, "seekPoint":Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1695
    iget v1, p0, Lmiui/view/ScreenView;->mSeekPointResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1696
    return-object v0
.end method

.method private blacklist doGetScreen(IZ)Landroid/view/View;
    .registers 4
    .param p1, "screenIndex"    # I
    .param p2, "innerCall"    # Z

    .line 1442
    if-ltz p1, :cond_12

    invoke-virtual {p0}, Lmiui/view/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_9

    goto :goto_12

    .line 1445
    :cond_9
    invoke-direct {p0, p1, p2}, Lmiui/view/ScreenView;->toInnerIndex(IZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/view/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1443
    :cond_12
    :goto_12
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist doScrollToScreen(IZ)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "innerCall"    # Z

    .line 874
    invoke-direct {p0, p1, p2}, Lmiui/view/ScreenView;->toInnerIndex(IZ)I

    move-result v0

    .line 875
    .local v0, "idx":I
    iget-boolean v1, p0, Lmiui/view/ScreenView;->mScrollWholeScreen:Z

    if-eqz v1, :cond_d

    .line 876
    iget v1, p0, Lmiui/view/ScreenView;->mVisibleRange:I

    rem-int v1, v0, v1

    sub-int/2addr v0, v1

    .line 878
    :cond_d
    iget v1, p0, Lmiui/view/ScreenView;->mWidthMeasureSpec:I

    iget v2, p0, Lmiui/view/ScreenView;->mHeightMeasureSpec:I

    invoke-virtual {p0, v1, v2}, Lmiui/view/ScreenView;->measure(II)V

    .line 879
    iget v1, p0, Lmiui/view/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v1, v0

    iget v2, p0, Lmiui/view/ScreenView;->mScrollOffset:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lmiui/view/ScreenView;->scrollTo(II)V

    .line 880
    return-void
.end method

.method private blacklist doSetCurrentScreen(IZ)V
    .registers 7
    .param p1, "screenIndex"    # I
    .param p2, "innerCall"    # Z

    .line 1405
    iget-boolean v0, p0, Lmiui/view/ScreenView;->mScrollWholeScreen:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    .line 1406
    nop

    .line 1407
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1408
    iget v0, p0, Lmiui/view/ScreenView;->mVisibleRange:I

    rem-int v0, p1, v0

    sub-int/2addr p1, v0

    goto :goto_2a

    .line 1410
    :cond_1a
    nop

    .line 1411
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getScreenCount()I

    move-result v0

    iget v3, p0, Lmiui/view/ScreenView;->mVisibleRange:I

    sub-int/2addr v0, v3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1410
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1413
    :goto_2a
    invoke-direct {p0, p1, p2}, Lmiui/view/ScreenView;->toInnerIndex(IZ)I

    move-result v0

    .line 1414
    .local v0, "innerIdx":I
    invoke-direct {p0, v0}, Lmiui/view/ScreenView;->setCurrentScreenInner(I)V

    .line 1415
    iget-boolean v2, p0, Lmiui/view/ScreenView;->mFirstLayout:Z

    if-nez v2, :cond_4a

    .line 1416
    iget-object v2, p0, Lmiui/view/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_42

    .line 1417
    iget-object v2, p0, Lmiui/view/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1419
    :cond_42
    iget v2, p0, Lmiui/view/ScreenView;->mCurrentScreen:I

    invoke-direct {p0, v2, v1}, Lmiui/view/ScreenView;->doScrollToScreen(IZ)V

    .line 1420
    invoke-virtual {p0}, Lmiui/view/ScreenView;->invalidate()V

    .line 1422
    :cond_4a
    return-void
.end method

.method private blacklist initScreenView()V
    .registers 6

    .line 453
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/view/ScreenView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 454
    invoke-virtual {p0, v0}, Lmiui/view/ScreenView;->setClipToPadding(Z)V

    .line 455
    new-instance v0, Lmiui/view/ScreenView$ScreenViewOvershootInterpolator;

    invoke-direct {v0, p0}, Lmiui/view/ScreenView$ScreenViewOvershootInterpolator;-><init>(Lmiui/view/ScreenView;)V

    iput-object v0, p0, Lmiui/view/ScreenView;->mScrollInterpolator:Lmiui/view/ScreenView$ScreenViewOvershootInterpolator;

    .line 456
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lmiui/view/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmiui/view/ScreenView;->mScrollInterpolator:Lmiui/view/ScreenView$ScreenViewOvershootInterpolator;

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lmiui/view/ScreenView;->mScroller:Landroid/widget/Scroller;

    .line 457
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/view/ScreenView;->setCurrentScreenInner(I)V

    .line 458
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 459
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lmiui/view/ScreenView;->mTouchSlop:I

    .line 460
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    invoke-virtual {p0, v1}, Lmiui/view/ScreenView;->setMaximumSnapVelocity(I)V

    .line 461
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lmiui/view/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lmiui/view/ScreenView$ScaleDetectorListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lmiui/view/ScreenView$ScaleDetectorListener;-><init>(Lmiui/view/ScreenView;Lmiui/view/ScreenView$ScaleDetectorListener-IA;)V

    invoke-direct {v1, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lmiui/view/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 463
    return-void
.end method

.method private blacklist isRTL()Z
    .registers 4

    .line 510
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 511
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    return v2
.end method

.method private blacklist onTouchEventUnique(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1167
    iget-object v0, p0, Lmiui/view/ScreenView;->mGestureVelocityTracker:Lmiui/view/ScreenView$GestureVelocityTracker;

    invoke-virtual {v0, p1}, Lmiui/view/ScreenView$GestureVelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1168
    iget v0, p0, Lmiui/view/ScreenView;->mTouchState:I

    if-eqz v0, :cond_c

    const/4 v1, 0x4

    if-ne v1, v0, :cond_11

    .line 1170
    :cond_c
    iget-object v0, p0, Lmiui/view/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1172
    :cond_11
    return-void
.end method

.method private blacklist refreshScrollBound()V
    .registers 4

    .line 851
    iget v0, p0, Lmiui/view/ScreenView;->mChildScreenWidth:I

    neg-int v1, v0

    int-to-float v1, v1

    iget v2, p0, Lmiui/view/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lmiui/view/ScreenView;->mScrollOffset:I

    sub-int/2addr v1, v2

    iput v1, p0, Lmiui/view/ScreenView;->mScrollLeftBound:I

    .line 853
    iget-boolean v1, p0, Lmiui/view/ScreenView;->mScrollWholeScreen:Z

    if-nez v1, :cond_26

    .line 854
    int-to-float v0, v0

    invoke-virtual {p0}, Lmiui/view/ScreenView;->getScreenCount()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lmiui/view/ScreenView;->mOverScrollRatio:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lmiui/view/ScreenView;->mScreenWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lmiui/view/ScreenView;->mScrollOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/view/ScreenView;->mScrollRightBound:I

    goto :goto_3e

    .line 858
    :cond_26
    nop

    .line 859
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lmiui/view/ScreenView;->mVisibleRange:I

    div-int/2addr v0, v1

    iget v1, p0, Lmiui/view/ScreenView;->mScreenWidth:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lmiui/view/ScreenView;->mChildScreenWidth:I

    int-to-float v1, v1

    iget v2, p0, Lmiui/view/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lmiui/view/ScreenView;->mScrollRightBound:I

    .line 862
    :goto_3e
    return-void
.end method

.method private blacklist revertIndex(I)I
    .registers 3
    .param p1, "screenIndex"    # I

    .line 1401
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0
.end method

.method private blacklist scrolledFarEnough(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1160
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget v2, p0, Lmiui/view/ScreenView;->mLastMotionX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1161
    .local v1, "dx":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget v3, p0, Lmiui/view/ScreenView;->mLastMotionY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1162
    .local v2, "dy":F
    iget v3, p0, Lmiui/view/ScreenView;->mConfirmHorizontalScrollRatio:F

    mul-float/2addr v3, v2

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2c

    iget v3, p0, Lmiui/view/ScreenView;->mTouchSlop:I

    .line 1163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2c

    const/4 v0, 0x1

    goto :goto_2d

    :cond_2c
    nop

    .line 1162
    :goto_2d
    return v0
.end method

.method private blacklist setCameraDistance(Landroid/view/View;F)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "distance"    # F

    .line 2060
    invoke-virtual {p1}, Landroid/view/View;->getCameraDistance()F

    move-result v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_9

    .line 2061
    return-void

    .line 2063
    :cond_9
    invoke-virtual {p1, p2}, Landroid/view/View;->setCameraDistance(F)V

    .line 2064
    return-void
.end method

.method private blacklist setCurrentScreenInner(I)V
    .registers 3
    .param p1, "screenIndex"    # I

    .line 1425
    iget v0, p0, Lmiui/view/ScreenView;->mCurrentScreen:I

    invoke-direct {p0, v0, p1}, Lmiui/view/ScreenView;->updateSeekPoints(II)V

    .line 1426
    iput p1, p0, Lmiui/view/ScreenView;->mCurrentScreen:I

    .line 1427
    const/4 v0, -0x1

    iput v0, p0, Lmiui/view/ScreenView;->mNextScreen:I

    .line 1428
    return-void
.end method

.method private blacklist setTouchState(Landroid/view/MotionEvent;I)V
    .registers 7
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "touchState"    # I

    .line 1082
    iput p2, p0, Lmiui/view/ScreenView;->mTouchState:I

    .line 1083
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget v1, p0, Lmiui/view/ScreenView;->mTouchState:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_e

    move v1, v2

    goto :goto_f

    :cond_e
    move v1, v3

    :goto_f
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1085
    iget v0, p0, Lmiui/view/ScreenView;->mTouchState:I

    if-nez v0, :cond_21

    .line 1086
    const/4 v0, -0x1

    iput v0, p0, Lmiui/view/ScreenView;->mActivePointerId:I

    .line 1087
    iput-boolean v3, p0, Lmiui/view/ScreenView;->mAllowLongPress:Z

    .line 1088
    iget-object v0, p0, Lmiui/view/ScreenView;->mGestureVelocityTracker:Lmiui/view/ScreenView$GestureVelocityTracker;

    invoke-virtual {v0}, Lmiui/view/ScreenView$GestureVelocityTracker;->recycle()V

    goto :goto_5a

    .line 1090
    :cond_21
    if-eqz p1, :cond_33

    .line 1091
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiui/view/ScreenView;->mActivePointerId:I

    .line 1092
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lmiui/view/ScreenView;->mLastMotionX:F

    .line 1095
    :cond_33
    iget-boolean v0, p0, Lmiui/view/ScreenView;->mAllowLongPress:Z

    if-eqz v0, :cond_44

    .line 1096
    iput-boolean v3, p0, Lmiui/view/ScreenView;->mAllowLongPress:Z

    .line 1100
    iget v0, p0, Lmiui/view/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lmiui/view/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1101
    .local v0, "currentScreen":Landroid/view/View;
    if-eqz v0, :cond_44

    .line 1102
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1105
    .end local v0    # "currentScreen":Landroid/view/View;
    :cond_44
    iget v0, p0, Lmiui/view/ScreenView;->mTouchState:I

    if-ne v0, v2, :cond_5a

    .line 1106
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiui/view/ScreenView;->mTouchX:F

    .line 1107
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v1

    iput v0, p0, Lmiui/view/ScreenView;->mSmoothingTime:F

    .line 1110
    :cond_5a
    :goto_5a
    invoke-direct {p0}, Lmiui/view/ScreenView;->showSlideBar()V

    .line 1111
    return-void
.end method

.method private blacklist showSlideBar()V
    .registers 4

    .line 604
    iget-object v0, p0, Lmiui/view/ScreenView;->mSlideBar:Lmiui/view/ScreenView$SlideBar;

    if-eqz v0, :cond_30

    iget-boolean v0, p0, Lmiui/view/ScreenView;->mIsSlideBarAutoHide:Z

    if-nez v0, :cond_9

    goto :goto_30

    .line 607
    :cond_9
    iget-object v0, p0, Lmiui/view/ScreenView;->mAutoHideTimer:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmiui/view/ScreenView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 608
    iget-object v0, p0, Lmiui/view/ScreenView;->mSlideBar:Lmiui/view/ScreenView$SlideBar;

    invoke-virtual {v0}, Lmiui/view/ScreenView$SlideBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 609
    iget-object v0, p0, Lmiui/view/ScreenView;->mSlideBar:Lmiui/view/ScreenView$SlideBar;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lmiui/view/ScreenView$SlideBar;->setAlpha(F)V

    .line 610
    iget-object v0, p0, Lmiui/view/ScreenView;->mSlideBar:Lmiui/view/ScreenView$SlideBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/view/ScreenView$SlideBar;->setVisibility(I)V

    .line 611
    iget v0, p0, Lmiui/view/ScreenView;->mTouchState:I

    if-nez v0, :cond_2f

    .line 612
    iget-object v0, p0, Lmiui/view/ScreenView;->mAutoHideTimer:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lmiui/view/ScreenView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 614
    :cond_2f
    return-void

    .line 605
    :cond_30
    :goto_30
    return-void
.end method

.method private blacklist snapByVelocity(I)V
    .registers 5
    .param p1, "pointerId"    # I

    .line 1234
    iget v0, p0, Lmiui/view/ScreenView;->mChildScreenWidth:I

    if-lez v0, :cond_25

    invoke-virtual {p0}, Lmiui/view/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_25

    .line 1237
    :cond_b
    iget-object v0, p0, Lmiui/view/ScreenView;->mGestureVelocityTracker:Lmiui/view/ScreenView$GestureVelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lmiui/view/ScreenView;->mMaximumVelocity:I

    .line 1238
    invoke-virtual {v0, v1, v2, p1}, Lmiui/view/ScreenView$GestureVelocityTracker;->getXVelocity(III)F

    move-result v0

    float-to-int v0, v0

    .line 1239
    .local v0, "velocityX":I
    iget-object v1, p0, Lmiui/view/ScreenView;->mGestureVelocityTracker:Lmiui/view/ScreenView$GestureVelocityTracker;

    .line 1240
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lmiui/view/ScreenView$GestureVelocityTracker;->getFlingDirection(F)I

    move-result v1

    .line 1241
    .local v1, "flingDirection":I
    invoke-virtual {p0, v0, v1}, Lmiui/view/ScreenView;->snapByVelocity(II)V

    .line 1242
    return-void

    .line 1235
    .end local v0    # "velocityX":I
    .end local v1    # "flingDirection":I
    :cond_25
    :goto_25
    return-void
.end method

.method private blacklist startHideSlideBar()V
    .registers 4

    .line 617
    iget-boolean v0, p0, Lmiui/view/ScreenView;->mIsSlideBarAutoHide:Z

    if-nez v0, :cond_5

    .line 618
    return-void

    .line 620
    :cond_5
    iget-object v0, p0, Lmiui/view/ScreenView;->mSlideBar:Lmiui/view/ScreenView$SlideBar;

    invoke-virtual {v0}, Lmiui/view/ScreenView$SlideBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 621
    sget-boolean v1, Lmiui/view/ScreenView;->FEATURE_WHOLE_ANIM:Z

    if-eqz v1, :cond_12

    const-wide/16 v1, 0x1f4

    goto :goto_14

    :cond_12
    const-wide/16 v1, 0x0

    :goto_14
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 622
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmiui/view/ScreenView$2;

    invoke-direct {v1, p0}, Lmiui/view/ScreenView$2;-><init>(Lmiui/view/ScreenView;)V

    .line 623
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 628
    return-void
.end method

.method private blacklist toInnerIndex(IZ)I
    .registers 4
    .param p1, "screenIndex"    # I
    .param p2, "innerCall"    # Z

    .line 1393
    if-nez p2, :cond_e

    invoke-direct {p0}, Lmiui/view/ScreenView;->isRTL()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-direct {p0, p1}, Lmiui/view/ScreenView;->revertIndex(I)I

    move-result v0

    goto :goto_f

    :cond_e
    :goto_e
    move v0, p1

    :goto_f
    return v0
.end method

.method private blacklist toOuterIndex(I)I
    .registers 3
    .param p1, "screenIndex"    # I

    .line 1397
    invoke-direct {p0}, Lmiui/view/ScreenView;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, Lmiui/view/ScreenView;->revertIndex(I)I

    move-result v0

    goto :goto_c

    :cond_b
    move v0, p1

    :goto_c
    return v0
.end method

.method private blacklist updateArrowIndicatorResource(I)V
    .registers 5
    .param p1, "x"    # I

    .line 815
    iget-object v0, p0, Lmiui/view/ScreenView;->mArrowLeft:Lmiui/view/ScreenView$ArrowIndicator;

    if-eqz v0, :cond_28

    .line 816
    nop

    .line 817
    if-gtz p1, :cond_a

    .line 818
    iget v1, p0, Lmiui/view/ScreenView;->mArrowLeftOffResId:I

    goto :goto_c

    .line 819
    :cond_a
    iget v1, p0, Lmiui/view/ScreenView;->mArrowLeftOnResId:I

    .line 816
    :goto_c
    invoke-virtual {v0, v1}, Lmiui/view/ScreenView$ArrowIndicator;->setImageResource(I)V

    .line 820
    iget-object v0, p0, Lmiui/view/ScreenView;->mArrowRight:Lmiui/view/ScreenView$ArrowIndicator;

    .line 821
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getScreenCount()I

    move-result v1

    iget v2, p0, Lmiui/view/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Lmiui/view/ScreenView;->mScreenWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Lmiui/view/ScreenView;->mScrollOffset:I

    sub-int/2addr v1, v2

    if-lt p1, v1, :cond_23

    .line 823
    iget v1, p0, Lmiui/view/ScreenView;->mArrowRightOffResId:I

    goto :goto_25

    .line 824
    :cond_23
    iget v1, p0, Lmiui/view/ScreenView;->mArrowRightOnResId:I

    .line 820
    :goto_25
    invoke-virtual {v0, v1}, Lmiui/view/ScreenView$ArrowIndicator;->setImageResource(I)V

    .line 826
    :cond_28
    return-void
.end method

.method private blacklist updateChildStaticTransformation(Landroid/view/View;)V
    .registers 14
    .param p1, "child"    # Landroid/view/View;

    .line 1872
    instance-of v0, p1, Lmiui/view/ScreenView$Indicator;

    if-eqz v0, :cond_5

    .line 1873
    return-void

    .line 1875
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1876
    .local v0, "childW":F
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    .line 1877
    .local v1, "childH":F
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 1878
    .local v2, "halfScreenW":F
    div-float v4, v0, v3

    .line 1879
    .local v4, "halfChildW":F
    div-float v3, v1, v3

    .line 1880
    .local v3, "halfChildH":F
    nop

    .line 1881
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    sub-float/2addr v5, v4

    div-float/2addr v5, v0

    .line 1883
    .local v5, "interpolation":F
    iget v6, p0, Lmiui/view/ScreenView;->mScreenTransitionType:I

    const v7, 0x459c4000    # 5000.0f

    const v8, 0x3e99999a    # 0.3f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    packed-switch v6, :pswitch_data_1d2

    goto/16 :goto_1d1

    .line 1998
    :pswitch_3a
    invoke-virtual {p0, p1, v5}, Lmiui/view/ScreenView;->updateChildStaticTransformationByScreen(Landroid/view/View;F)V

    goto/16 :goto_1d1

    .line 1981
    :pswitch_3f
    cmpl-float v6, v5, v10

    if-eqz v6, :cond_7b

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v9

    if-lez v6, :cond_4c

    goto :goto_7b

    .line 1985
    :cond_4c
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float v6, v9, v6

    invoke-virtual {p1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 1986
    mul-float v6, v0, v5

    invoke-virtual {p1, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 1987
    invoke-virtual {p1, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 1988
    invoke-virtual {p1, v9}, Landroid/view/View;->setScaleX(F)V

    .line 1989
    invoke-virtual {p1, v9}, Landroid/view/View;->setScaleY(F)V

    .line 1990
    invoke-virtual {p1, v4}, Landroid/view/View;->setPivotX(F)V

    .line 1991
    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotY(F)V

    .line 1992
    invoke-virtual {p1, v10}, Landroid/view/View;->setRotation(F)V

    .line 1993
    invoke-virtual {p1, v10}, Landroid/view/View;->setRotationX(F)V

    .line 1994
    const/high16 v6, 0x42b40000    # 90.0f

    neg-float v8, v5

    mul-float/2addr v8, v6

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    .line 1995
    invoke-direct {p0, p1, v7}, Lmiui/view/ScreenView;->setCameraDistance(Landroid/view/View;F)V

    .line 1996
    goto/16 :goto_1d1

    .line 1982
    :cond_7b
    :goto_7b
    invoke-virtual {p0, p1}, Lmiui/view/ScreenView;->resetTransformation(Landroid/view/View;)V

    .line 1983
    goto/16 :goto_1d1

    .line 1963
    :pswitch_80
    cmpg-float v6, v5, v10

    if-gtz v6, :cond_89

    .line 1964
    invoke-virtual {p0, p1}, Lmiui/view/ScreenView;->resetTransformation(Landroid/view/View;)V

    .line 1965
    goto/16 :goto_1d1

    .line 1967
    :cond_89
    sub-float v6, v9, v5

    invoke-virtual {p1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 1968
    const v6, 0x3f19999a    # 0.6f

    const v7, 0x3ecccccd    # 0.4f

    sub-float v8, v9, v5

    mul-float/2addr v8, v7

    add-float/2addr v8, v6

    .line 1969
    .local v8, "scale2":F
    sub-float v6, v9, v8

    mul-float/2addr v6, v0

    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v6, v7

    invoke-virtual {p1, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 1970
    sub-float/2addr v9, v8

    mul-float/2addr v9, v1

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v9, v6

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 1971
    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleX(F)V

    .line 1972
    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleY(F)V

    .line 1973
    invoke-virtual {p1, v10}, Landroid/view/View;->setPivotX(F)V

    .line 1974
    invoke-virtual {p1, v10}, Landroid/view/View;->setPivotY(F)V

    .line 1975
    invoke-virtual {p1, v10}, Landroid/view/View;->setRotation(F)V

    .line 1976
    invoke-virtual {p1, v10}, Landroid/view/View;->setRotationX(F)V

    .line 1977
    invoke-virtual {p1, v10}, Landroid/view/View;->setRotationY(F)V

    .line 1978
    iget v6, p0, Lmiui/view/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-direct {p0, p1, v6}, Lmiui/view/ScreenView;->setCameraDistance(Landroid/view/View;F)V

    .line 1979
    goto/16 :goto_1d1

    .line 1961
    .end local v8    # "scale2":F
    :pswitch_c5
    goto/16 :goto_1d1

    .line 1942
    :pswitch_c7
    cmpl-float v6, v5, v10

    if-eqz v6, :cond_10c

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v9

    if-lez v6, :cond_d4

    goto :goto_10c

    .line 1946
    :cond_d4
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float v6, v9, v6

    invoke-virtual {p1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 1947
    invoke-virtual {p1, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 1948
    mul-float v6, v0, v5

    .line 1949
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v11

    mul-float/2addr v11, v0

    mul-float/2addr v11, v8

    sub-float/2addr v6, v11

    .line 1948
    invoke-virtual {p1, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 1950
    mul-float/2addr v8, v5

    add-float/2addr v8, v9

    .line 1951
    .local v8, "scale1":F
    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleX(F)V

    .line 1952
    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleY(F)V

    .line 1953
    invoke-virtual {p1, v10}, Landroid/view/View;->setPivotX(F)V

    .line 1954
    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotY(F)V

    .line 1955
    invoke-virtual {p1, v10}, Landroid/view/View;->setRotation(F)V

    .line 1956
    invoke-virtual {p1, v10}, Landroid/view/View;->setRotationX(F)V

    .line 1957
    const/high16 v6, 0x42340000    # 45.0f

    neg-float v9, v5

    mul-float/2addr v9, v6

    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationY(F)V

    .line 1958
    invoke-direct {p0, p1, v7}, Lmiui/view/ScreenView;->setCameraDistance(Landroid/view/View;F)V

    .line 1959
    goto/16 :goto_1d1

    .line 1943
    .end local v8    # "scale1":F
    :cond_10c
    :goto_10c
    invoke-virtual {p0, p1}, Lmiui/view/ScreenView;->resetTransformation(Landroid/view/View;)V

    .line 1944
    goto/16 :goto_1d1

    .line 1925
    :pswitch_111
    cmpl-float v6, v5, v10

    if-eqz v6, :cond_14b

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v9

    if-lez v6, :cond_11e

    goto :goto_14b

    .line 1929
    :cond_11e
    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1930
    invoke-virtual {p1, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 1931
    invoke-virtual {p1, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 1932
    invoke-virtual {p1, v9}, Landroid/view/View;->setScaleX(F)V

    .line 1933
    invoke-virtual {p1, v9}, Landroid/view/View;->setScaleY(F)V

    .line 1934
    cmpg-float v6, v5, v10

    if-gez v6, :cond_133

    move v6, v10

    goto :goto_134

    :cond_133
    move v6, v0

    :goto_134
    invoke-virtual {p1, v6}, Landroid/view/View;->setPivotX(F)V

    .line 1935
    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotY(F)V

    .line 1936
    invoke-virtual {p1, v10}, Landroid/view/View;->setRotation(F)V

    .line 1937
    invoke-virtual {p1, v10}, Landroid/view/View;->setRotationX(F)V

    .line 1938
    const/high16 v6, -0x3d4c0000    # -90.0f

    mul-float/2addr v6, v5

    invoke-virtual {p1, v6}, Landroid/view/View;->setRotationY(F)V

    .line 1939
    invoke-direct {p0, p1, v7}, Lmiui/view/ScreenView;->setCameraDistance(Landroid/view/View;F)V

    .line 1940
    goto/16 :goto_1d1

    .line 1926
    :cond_14b
    :goto_14b
    invoke-virtual {p0, p1}, Lmiui/view/ScreenView;->resetTransformation(Landroid/view/View;)V

    .line 1927
    goto/16 :goto_1d1

    .line 1908
    :pswitch_150
    cmpl-float v6, v5, v10

    if-eqz v6, :cond_185

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v9

    if-lez v6, :cond_15d

    goto :goto_185

    .line 1912
    :cond_15d
    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1913
    invoke-virtual {p1, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 1914
    invoke-virtual {p1, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 1915
    invoke-virtual {p1, v9}, Landroid/view/View;->setScaleX(F)V

    .line 1916
    invoke-virtual {p1, v9}, Landroid/view/View;->setScaleY(F)V

    .line 1917
    invoke-virtual {p1, v4}, Landroid/view/View;->setPivotX(F)V

    .line 1918
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 1919
    neg-float v6, v5

    const/high16 v7, 0x41f00000    # 30.0f

    mul-float/2addr v6, v7

    invoke-virtual {p1, v6}, Landroid/view/View;->setRotation(F)V

    .line 1920
    invoke-virtual {p1, v10}, Landroid/view/View;->setRotationX(F)V

    .line 1921
    invoke-virtual {p1, v10}, Landroid/view/View;->setRotationY(F)V

    .line 1922
    iget v6, p0, Lmiui/view/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-direct {p0, p1, v6}, Lmiui/view/ScreenView;->setCameraDistance(Landroid/view/View;F)V

    .line 1923
    goto :goto_1d1

    .line 1909
    :cond_185
    :goto_185
    invoke-virtual {p0, p1}, Lmiui/view/ScreenView;->resetTransformation(Landroid/view/View;)V

    .line 1910
    goto :goto_1d1

    .line 1891
    :pswitch_189
    cmpl-float v6, v5, v10

    if-eqz v6, :cond_1c5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v9

    if-lez v6, :cond_196

    goto :goto_1c5

    .line 1895
    :cond_196
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float v6, v9, v6

    const v7, 0x3f333333    # 0.7f

    mul-float/2addr v6, v7

    add-float/2addr v6, v8

    invoke-virtual {p1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 1896
    invoke-virtual {p1, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 1897
    invoke-virtual {p1, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 1898
    invoke-virtual {p1, v9}, Landroid/view/View;->setScaleX(F)V

    .line 1899
    invoke-virtual {p1, v9}, Landroid/view/View;->setScaleY(F)V

    .line 1900
    invoke-virtual {p1, v10}, Landroid/view/View;->setPivotX(F)V

    .line 1901
    invoke-virtual {p1, v10}, Landroid/view/View;->setPivotY(F)V

    .line 1902
    invoke-virtual {p1, v10}, Landroid/view/View;->setRotation(F)V

    .line 1903
    invoke-virtual {p1, v10}, Landroid/view/View;->setRotationX(F)V

    .line 1904
    invoke-virtual {p1, v10}, Landroid/view/View;->setRotationY(F)V

    .line 1905
    iget v6, p0, Lmiui/view/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-direct {p0, p1, v6}, Lmiui/view/ScreenView;->setCameraDistance(Landroid/view/View;F)V

    .line 1906
    goto :goto_1d1

    .line 1892
    :cond_1c5
    :goto_1c5
    invoke-virtual {p0, p1}, Lmiui/view/ScreenView;->resetTransformation(Landroid/view/View;)V

    .line 1893
    goto :goto_1d1

    .line 1888
    :pswitch_1c9
    invoke-virtual {p0, p1}, Lmiui/view/ScreenView;->resetTransformation(Landroid/view/View;)V

    .line 1889
    goto :goto_1d1

    .line 1885
    :pswitch_1cd
    invoke-virtual {p0, p1}, Lmiui/view/ScreenView;->resetTransformation(Landroid/view/View;)V

    .line 1886
    nop

    .line 2001
    :goto_1d1
    return-void

    :pswitch_data_1d2
    .packed-switch 0x0
        :pswitch_1cd
        :pswitch_1c9
        :pswitch_189
        :pswitch_150
        :pswitch_111
        :pswitch_c7
        :pswitch_c5
        :pswitch_80
        :pswitch_3f
        :pswitch_3a
    .end packed-switch
.end method

.method private blacklist updateIndicatorPositions(IZ)V
    .registers 19
    .param p1, "scrollX"    # I
    .param p2, "requestLayout"    # Z

    .line 734
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ScreenView;->getWidth()I

    move-result v1

    if-lez v1, :cond_9c

    .line 735
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ScreenView;->getScreenCount()I

    move-result v1

    .line 736
    .local v1, "indexOffset":I
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ScreenView;->getWidth()I

    move-result v2

    .line 737
    .local v2, "screenWidth":I
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ScreenView;->getHeight()I

    move-result v3

    .line 738
    .local v3, "screenHeight":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_15
    iget v5, v0, Lmiui/view/ScreenView;->mIndicatorCount:I

    if-ge v4, v5, :cond_99

    .line 739
    add-int v5, v4, v1

    invoke-virtual {v0, v5}, Lmiui/view/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 740
    .local v5, "indicator":Landroid/view/View;
    nop

    .line 742
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 743
    .local v6, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 744
    .local v7, "indicatorWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 745
    .local v8, "indicatorHeight":I
    const/4 v9, 0x0

    .line 746
    .local v9, "indicatorLeft":I
    const/4 v10, 0x0

    .line 747
    .local v10, "indicatorTop":I
    iget v11, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 748
    .local v11, "gravity":I
    const/4 v12, -0x1

    if-eq v11, v12, :cond_77

    .line 749
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ScreenView;->getLayoutDirection()I

    move-result v12

    invoke-static {v11, v12}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v12

    and-int/lit8 v12, v12, 0x7

    .line 751
    .local v12, "horizontalGravity":I
    and-int/lit8 v13, v11, 0x70

    .line 753
    .local v13, "verticalGravity":I
    packed-switch v12, :pswitch_data_a0

    .line 766
    :pswitch_44
    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_5c

    .line 762
    :pswitch_47
    sub-int v14, v2, v7

    iget v15, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v14, v15

    .line 764
    .end local v9    # "indicatorLeft":I
    .local v14, "indicatorLeft":I
    move v9, v14

    goto :goto_5c

    .line 755
    .end local v14    # "indicatorLeft":I
    .restart local v9    # "indicatorLeft":I
    :pswitch_4e
    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 756
    goto :goto_5c

    .line 758
    :pswitch_51
    sub-int v14, v2, v7

    div-int/lit8 v14, v14, 0x2

    iget v15, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v14, v15

    iget v15, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v14, v15

    .line 760
    .end local v9    # "indicatorLeft":I
    .restart local v14    # "indicatorLeft":I
    move v9, v14

    .line 768
    .end local v14    # "indicatorLeft":I
    .restart local v9    # "indicatorLeft":I
    :goto_5c
    sparse-switch v13, :sswitch_data_ae

    .line 781
    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_77

    .line 777
    :sswitch_62
    sub-int v14, v3, v8

    iget v15, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v10, v14, v15

    .line 779
    goto :goto_77

    .line 770
    :sswitch_69
    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 771
    goto :goto_77

    .line 773
    :sswitch_6c
    sub-int v14, v3, v8

    div-int/lit8 v14, v14, 0x2

    iget v15, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v14, v15

    iget v15, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v10, v14, v15

    .line 784
    .end local v12    # "horizontalGravity":I
    .end local v13    # "verticalGravity":I
    :cond_77
    :goto_77
    if-nez p2, :cond_8c

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v12

    if-lez v12, :cond_8c

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v12

    if-lez v12, :cond_8c

    .line 785
    move/from16 v12, p1

    int-to-float v13, v12

    invoke-virtual {v5, v13}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_95

    .line 784
    :cond_8c
    move/from16 v12, p1

    .line 787
    add-int v13, v9, v7

    add-int v14, v10, v8

    invoke-virtual {v5, v9, v10, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 738
    .end local v5    # "indicator":Landroid/view/View;
    .end local v6    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v7    # "indicatorWidth":I
    .end local v8    # "indicatorHeight":I
    .end local v9    # "indicatorLeft":I
    .end local v10    # "indicatorTop":I
    .end local v11    # "gravity":I
    :goto_95
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_15

    :cond_99
    move/from16 v12, p1

    goto :goto_9e

    .line 734
    .end local v1    # "indexOffset":I
    .end local v2    # "screenWidth":I
    .end local v3    # "screenHeight":I
    .end local v4    # "i":I
    :cond_9c
    move/from16 v12, p1

    .line 791
    :goto_9e
    return-void

    nop

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_51
        :pswitch_44
        :pswitch_4e
        :pswitch_44
        :pswitch_47
    .end packed-switch

    :sswitch_data_ae
    .sparse-switch
        0x10 -> :sswitch_6c
        0x30 -> :sswitch_69
        0x50 -> :sswitch_62
    .end sparse-switch
.end method

.method private blacklist updateScreenOffset()V
    .registers 3

    .line 716
    iget v0, p0, Lmiui/view/ScreenView;->mScreenAlignment:I

    packed-switch v0, :pswitch_data_2c

    goto :goto_21

    .line 727
    :pswitch_6
    iget v0, p0, Lmiui/view/ScreenView;->mScreenWidth:I

    iget v1, p0, Lmiui/view/ScreenView;->mChildScreenWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/view/ScreenView;->mScrollOffset:I

    goto :goto_21

    .line 724
    :pswitch_e
    iget v0, p0, Lmiui/view/ScreenView;->mScreenWidth:I

    iget v1, p0, Lmiui/view/ScreenView;->mChildScreenWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lmiui/view/ScreenView;->mScrollOffset:I

    .line 725
    goto :goto_21

    .line 721
    :pswitch_18
    const/4 v0, 0x0

    iput v0, p0, Lmiui/view/ScreenView;->mScrollOffset:I

    .line 722
    goto :goto_21

    .line 718
    :pswitch_1c
    iget v0, p0, Lmiui/view/ScreenView;->mScreenOffset:I

    iput v0, p0, Lmiui/view/ScreenView;->mScrollOffset:I

    .line 719
    nop

    .line 730
    :goto_21
    iget v0, p0, Lmiui/view/ScreenView;->mScrollOffset:I

    invoke-virtual {p0}, Lmiui/view/ScreenView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/view/ScreenView;->mScrollOffset:I

    .line 731
    return-void

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_18
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method

.method private blacklist updateSeekPoints(II)V
    .registers 7
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 1700
    iget-object v0, p0, Lmiui/view/ScreenView;->mScreenSeekBar:Lmiui/view/ScreenView$SeekBarIndicator;

    if-eqz v0, :cond_44

    .line 1701
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getScreenCount()I

    move-result v0

    .line 1702
    .local v0, "count":I
    iget-object v1, p0, Lmiui/view/ScreenView;->mScreenSeekBar:Lmiui/view/ScreenView$SeekBarIndicator;

    new-instance v2, Lmiui/view/ScreenView$3;

    invoke-direct {v2, p0}, Lmiui/view/ScreenView$3;-><init>(Lmiui/view/ScreenView;)V

    invoke-virtual {v1, v2}, Lmiui/view/ScreenView$SeekBarIndicator;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1743
    if-ltz p1, :cond_2c

    .line 1744
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    iget v2, p0, Lmiui/view/ScreenView;->mVisibleRange:I

    if-ge v1, v2, :cond_2c

    add-int v2, p1, v1

    if-ge v2, v0, :cond_2c

    .line 1745
    iget-object v2, p0, Lmiui/view/ScreenView;->mScreenSeekBar:Lmiui/view/ScreenView$SeekBarIndicator;

    add-int v3, p1, v1

    invoke-virtual {v2, v3}, Lmiui/view/ScreenView$SeekBarIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 1744
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 1750
    .end local v1    # "i":I
    :cond_2c
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2d
    iget v2, p0, Lmiui/view/ScreenView;->mVisibleRange:I

    if-ge v1, v2, :cond_44

    add-int v2, p2, v1

    if-ge v2, v0, :cond_44

    .line 1751
    iget-object v2, p0, Lmiui/view/ScreenView;->mScreenSeekBar:Lmiui/view/ScreenView$SeekBarIndicator;

    add-int v3, p2, v1

    invoke-virtual {v2, v3}, Lmiui/view/ScreenView$SeekBarIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 1750
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 1754
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_44
    return-void
.end method

.method private blacklist updateSlidePointPosition(I)V
    .registers 9
    .param p1, "scrollX"    # I

    .line 795
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getScreenCount()I

    move-result v0

    .line 796
    .local v0, "screenCount":I
    iget-object v1, p0, Lmiui/view/ScreenView;->mSlideBar:Lmiui/view/ScreenView$SlideBar;

    if-eqz v1, :cond_39

    if-lez v0, :cond_39

    .line 797
    invoke-virtual {v1}, Lmiui/view/ScreenView$SlideBar;->getSlideWidth()I

    move-result v1

    .line 798
    .local v1, "slideBarWidth":I
    div-int v2, v1, v0

    iget v3, p0, Lmiui/view/ScreenView;->mVisibleRange:I

    mul-int/2addr v2, v3

    const/16 v3, 0x30

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 801
    .local v2, "slidePointWidth":I
    iget v3, p0, Lmiui/view/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v3, v0

    .line 803
    .local v3, "screenViewContentWidth":I
    if-gt v3, v1, :cond_20

    .line 804
    const/4 v4, 0x0

    goto :goto_26

    .line 806
    :cond_20
    sub-int v4, v1, v2

    mul-int/2addr v4, p1

    sub-int v5, v3, v1

    div-int/2addr v4, v5

    :goto_26
    nop

    .line 807
    .local v4, "slidePointX":I
    iget-object v5, p0, Lmiui/view/ScreenView;->mSlideBar:Lmiui/view/ScreenView$SlideBar;

    add-int v6, v4, v2

    invoke-virtual {v5, v4, v6}, Lmiui/view/ScreenView$SlideBar;->setPosition(II)V

    .line 808
    invoke-virtual {p0}, Lmiui/view/ScreenView;->isHardwareAccelerated()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 809
    iget-object v5, p0, Lmiui/view/ScreenView;->mSlideBar:Lmiui/view/ScreenView$SlideBar;

    invoke-virtual {v5}, Lmiui/view/ScreenView$SlideBar;->invalidate()V

    .line 812
    .end local v1    # "slideBarWidth":I
    .end local v2    # "slidePointWidth":I
    .end local v3    # "screenViewContentWidth":I
    .end local v4    # "slidePointX":I
    :cond_39
    return-void
.end method


# virtual methods
.method protected blacklist addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 4
    .param p1, "indicator"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/FrameLayout$LayoutParams;

    .line 1555
    iget v0, p0, Lmiui/view/ScreenView;->mIndicatorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/view/ScreenView;->mIndicatorCount:I

    .line 1556
    const/4 v0, -0x1

    invoke-super {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1557
    return-void
.end method

.method protected blacklist addIndicatorAt(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;I)V
    .registers 6
    .param p1, "indicator"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/FrameLayout$LayoutParams;
    .param p3, "index"    # I

    .line 1569
    iget v0, p0, Lmiui/view/ScreenView;->mIndicatorCount:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 1570
    if-ltz p3, :cond_12

    .line 1571
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getScreenCount()I

    move-result v0

    add-int/2addr p3, v0

    .line 1573
    :cond_12
    iget v0, p0, Lmiui/view/ScreenView;->mIndicatorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/view/ScreenView;->mIndicatorCount:I

    .line 1574
    invoke-super {p0, p1, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1575
    return-void
.end method

.method public whitelist addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1468
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getScreenCount()I

    move-result v0

    .line 1469
    .local v0, "currentCount":I
    invoke-direct {p0}, Lmiui/view/ScreenView;->isRTL()Z

    move-result v1

    .line 1470
    .local v1, "isRtl":Z
    const/4 v2, 0x0

    .line 1471
    .local v2, "rIndex":I
    if-gez p2, :cond_f

    .line 1472
    nop

    .line 1473
    const/4 v2, 0x0

    .line 1475
    move p2, v0

    goto :goto_17

    .line 1477
    :cond_f
    if-eqz v1, :cond_13

    .line 1478
    sub-int v2, v0, p2

    .line 1480
    :cond_13
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1482
    :goto_17
    if-eqz v1, :cond_1b

    move v3, v2

    goto :goto_1c

    :cond_1b
    move v3, p2

    .line 1483
    .local v3, "idx":I
    :goto_1c
    iget-object v4, p0, Lmiui/view/ScreenView;->mScreenSeekBar:Lmiui/view/ScreenView$SeekBarIndicator;

    if-eqz v4, :cond_29

    .line 1484
    invoke-direct {p0}, Lmiui/view/ScreenView;->createSeekPoint()Landroid/widget/ImageView;

    move-result-object v5

    sget-object v6, Lmiui/view/ScreenView;->SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v5, v3, v6}, Lmiui/view/ScreenView$SeekBarIndicator;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1486
    :cond_29
    iget v4, p0, Lmiui/view/ScreenView;->mScreenCounter:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmiui/view/ScreenView;->mScreenCounter:I

    .line 1487
    invoke-direct {p0}, Lmiui/view/ScreenView;->refreshScrollBound()V

    .line 1488
    invoke-super {p0, p1, v3, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1489
    return-void
.end method

.method public blacklist allowLongPress()Z
    .registers 2

    .line 1656
    iget-boolean v0, p0, Lmiui/view/ScreenView;->mAllowLongPress:Z

    return v0
.end method

.method public whitelist computeScroll()V
    .registers 7

    .line 892
    iget-object v0, p0, Lmiui/view/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x4e6e6b28    # 1.0E9f

    if-eqz v0, :cond_2c

    .line 893
    iget-object v0, p0, Lmiui/view/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiui/view/ScreenView;->mTouchX:F

    .line 894
    float-to-int v0, v0

    iput v0, p0, Lmiui/view/ScreenView;->mScrollX:I

    .line 895
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    long-to-float v0, v3

    div-float/2addr v0, v2

    iput v0, p0, Lmiui/view/ScreenView;->mSmoothingTime:F

    .line 896
    iget-object v0, p0, Lmiui/view/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Lmiui/view/ScreenView;->mScrollY:I

    .line 897
    invoke-virtual {p0}, Lmiui/view/ScreenView;->postInvalidateOnAnimation()V

    goto :goto_8b

    .line 898
    :cond_2c
    iget v0, p0, Lmiui/view/ScreenView;->mNextScreen:I

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v0, v4, :cond_50

    .line 899
    nop

    .line 900
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getScreenCount()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 899
    invoke-direct {p0, v0}, Lmiui/view/ScreenView;->setCurrentScreenInner(I)V

    .line 901
    iput v4, p0, Lmiui/view/ScreenView;->mNextScreen:I

    .line 902
    iget-object v0, p0, Lmiui/view/ScreenView;->mSnapScreenOnceNotification:Lmiui/view/ScreenView$SnapScreenOnceNotification;

    if-eqz v0, :cond_8b

    .line 903
    invoke-interface {v0, p0}, Lmiui/view/ScreenView$SnapScreenOnceNotification;->onSnapEnd(Lmiui/view/ScreenView;)V

    .line 904
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/view/ScreenView;->mSnapScreenOnceNotification:Lmiui/view/ScreenView$SnapScreenOnceNotification;

    goto :goto_8b

    .line 906
    :cond_50
    iget v0, p0, Lmiui/view/ScreenView;->mTouchState:I

    if-ne v0, v3, :cond_8b

    .line 907
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    long-to-float v0, v3

    div-float/2addr v0, v2

    .line 908
    .local v0, "now":F
    iget v2, p0, Lmiui/view/ScreenView;->mSmoothingTime:F

    sub-float v2, v0, v2

    sget v3, Lmiui/view/ScreenView;->SMOOTHING_CONSTANT:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    .line 909
    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 910
    .local v2, "e":F
    iget v3, p0, Lmiui/view/ScreenView;->mTouchX:F

    invoke-virtual {p0}, Lmiui/view/ScreenView;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 911
    .local v3, "dx":F
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    mul-float v5, v3, v2

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lmiui/view/ScreenView;->mScrollX:I

    .line 912
    iput v0, p0, Lmiui/view/ScreenView;->mSmoothingTime:F

    .line 914
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v4

    if-gtz v4, :cond_88

    const/high16 v4, -0x40800000    # -1.0f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_8b

    .line 915
    :cond_88
    invoke-virtual {p0}, Lmiui/view/ScreenView;->postInvalidate()V

    .line 918
    .end local v0    # "now":F
    .end local v2    # "e":F
    .end local v3    # "dx":F
    :cond_8b
    :goto_8b
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lmiui/view/ScreenView;->updateIndicatorPositions(IZ)V

    .line 919
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lmiui/view/ScreenView;->updateSlidePointPosition(I)V

    .line 920
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lmiui/view/ScreenView;->updateArrowIndicatorResource(I)V

    .line 921
    return-void
.end method

.method public whitelist dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 7
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .line 1060
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x11

    if-ne p2, v2, :cond_f

    .line 1061
    iget v2, p0, Lmiui/view/ScreenView;->mCurrentScreen:I

    if-lez v2, :cond_23

    .line 1062
    sub-int/2addr v2, v1

    invoke-virtual {p0, v2, v0, v0}, Lmiui/view/ScreenView;->snapToScreen(IIZ)V

    .line 1063
    return v1

    .line 1065
    :cond_f
    const/16 v2, 0x42

    if-ne p2, v2, :cond_23

    .line 1066
    iget v2, p0, Lmiui/view/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0}, Lmiui/view/ScreenView;->getScreenCount()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_23

    .line 1067
    iget v2, p0, Lmiui/view/ScreenView;->mCurrentScreen:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2, v0, v0}, Lmiui/view/ScreenView;->snapToScreen(IIZ)V

    .line 1068
    return v1

    .line 1071
    :cond_23
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method protected whitelist drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 1040
    invoke-direct {p0, p2}, Lmiui/view/ScreenView;->updateChildStaticTransformation(Landroid/view/View;)V

    .line 1041
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method protected blacklist finishCurrentGesture()V
    .registers 3

    .line 2035
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/view/ScreenView;->mCurrentGestureFinished:Z

    .line 2036
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lmiui/view/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 2037
    return-void
.end method

.method public blacklist getCurrentScreen()Landroid/view/View;
    .registers 3

    .line 1382
    iget v0, p0, Lmiui/view/ScreenView;->mCurrentScreen:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lmiui/view/ScreenView;->doGetScreen(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCurrentScreenIndex()I
    .registers 3

    .line 1368
    iget v0, p0, Lmiui/view/ScreenView;->mNextScreen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 1369
    iget v0, p0, Lmiui/view/ScreenView;->mNextScreen:I

    .local v0, "idx":I
    goto :goto_a

    .line 1371
    .end local v0    # "idx":I
    :cond_8
    iget v0, p0, Lmiui/view/ScreenView;->mCurrentScreen:I

    .line 1373
    .restart local v0    # "idx":I
    :goto_a
    invoke-direct {p0, v0}, Lmiui/view/ScreenView;->toOuterIndex(I)I

    move-result v1

    return v1
.end method

.method public blacklist getScreen(I)Landroid/view/View;
    .registers 3
    .param p1, "screenIndex"    # I

    .line 1438
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/view/ScreenView;->doGetScreen(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getScreenCount()I
    .registers 2

    .line 1358
    iget v0, p0, Lmiui/view/ScreenView;->mScreenCounter:I

    return v0
.end method

.method public blacklist getScreenTransitionType()I
    .registers 2

    .line 1783
    iget v0, p0, Lmiui/view/ScreenView;->mScreenTransitionType:I

    return v0
.end method

.method public blacklist getSeekPointView(I)Landroid/widget/ImageView;
    .registers 4
    .param p1, "index"    # I

    .line 1689
    iget-object v0, p0, Lmiui/view/ScreenView;->mScreenSeekBar:Lmiui/view/ScreenView$SeekBarIndicator;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lmiui/view/ScreenView;->toInnerIndex(IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/view/ScreenView$SeekBarIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method protected blacklist getTouchState()I
    .registers 2

    .line 1078
    iget v0, p0, Lmiui/view/ScreenView;->mTouchState:I

    return v0
.end method

.method public blacklist getVisibleRange()I
    .registers 2

    .line 1457
    iget v0, p0, Lmiui/view/ScreenView;->mVisibleRange:I

    return v0
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 1

    .line 925
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 926
    invoke-virtual {p0}, Lmiui/view/ScreenView;->computeScroll()V

    .line 927
    invoke-direct {p0}, Lmiui/view/ScreenView;->showSlideBar()V

    .line 928
    return-void
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_6a

    goto :goto_51

    .line 1117
    :pswitch_d
    invoke-direct {p0, p1}, Lmiui/view/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    .line 1118
    iget v0, p0, Lmiui/view/ScreenView;->mTouchState:I

    if-nez v0, :cond_51

    invoke-direct {p0, p1}, Lmiui/view/ScreenView;->scrolledFarEnough(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1119
    invoke-direct {p0, p1, v2}, Lmiui/view/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_51

    .line 1147
    :pswitch_1e
    invoke-direct {p0, p1, v3}, Lmiui/view/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_51

    .line 1124
    :pswitch_22
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1125
    iget-object v0, p0, Lmiui/view/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1126
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1127
    iput-boolean v3, p0, Lmiui/view/ScreenView;->mCurrentGestureFinished:Z

    .line 1128
    iput-boolean v3, p0, Lmiui/view/ScreenView;->mTouchIntercepted:Z

    .line 1130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lmiui/view/ScreenView;->mLastMotionX:F

    .line 1131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lmiui/view/ScreenView;->mLastMotionY:F

    .line 1132
    iget-object v0, p0, Lmiui/view/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1133
    iput-boolean v2, p0, Lmiui/view/ScreenView;->mAllowLongPress:Z

    goto :goto_51

    .line 1140
    :cond_48
    iget-object v0, p0, Lmiui/view/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1141
    invoke-direct {p0, p1, v2}, Lmiui/view/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 1143
    nop

    .line 1150
    :cond_51
    :goto_51
    const/4 v0, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    if-eq v0, v4, :cond_5d

    .line 1152
    invoke-direct {p0, p1}, Lmiui/view/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    .line 1154
    :cond_5d
    iget-boolean v0, p0, Lmiui/view/ScreenView;->mCurrentGestureFinished:Z

    if-nez v0, :cond_69

    iget v0, p0, Lmiui/view/ScreenView;->mTouchState:I

    if-eqz v0, :cond_68

    if-eq v0, v1, :cond_68

    goto :goto_69

    :cond_68
    move v2, v3

    :cond_69
    :goto_69
    return v2

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_22
        :pswitch_1e
        :pswitch_d
        :pswitch_1e
    .end packed-switch
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 15
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1013
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getScrollX()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lmiui/view/ScreenView;->updateIndicatorPositions(IZ)V

    .line 1015
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getScreenCount()I

    move-result v0

    .line 1016
    .local v0, "count":I
    const/4 v2, 0x0

    .line 1017
    .local v2, "childLeft":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, v0, :cond_40

    .line 1018
    invoke-virtual {p0, v3}, Lmiui/view/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1019
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_3d

    .line 1020
    nop

    .line 1022
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getPaddingTop()I

    move-result v5

    iget v6, p0, Lmiui/view/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v5, v6

    .line 1023
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v2

    .line 1024
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getPaddingTop()I

    move-result v7

    iget v8, p0, Lmiui/view/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v7, v8

    .line 1025
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    .line 1020
    invoke-virtual {v4, v2, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 1026
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v2, v5

    .line 1017
    .end local v4    # "child":Landroid/view/View;
    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1029
    .end local v3    # "i":I
    :cond_40
    iget-boolean v3, p0, Lmiui/view/ScreenView;->mScrollWholeScreen:Z

    if-eqz v3, :cond_53

    iget v3, p0, Lmiui/view/ScreenView;->mCurrentScreen:I

    iget v4, p0, Lmiui/view/ScreenView;->mVisibleRange:I

    rem-int v5, v3, v4

    if-lez v5, :cond_53

    .line 1030
    rem-int v4, v3, v4

    sub-int/2addr v3, v4

    invoke-direct {p0, v3, v1}, Lmiui/view/ScreenView;->doSetCurrentScreen(IZ)V

    goto :goto_60

    .line 1031
    :cond_53
    iget v3, p0, Lmiui/view/ScreenView;->mPrevScreenWidth:I

    if-lez v3, :cond_60

    iget v4, p0, Lmiui/view/ScreenView;->mScreenWidth:I

    if-eq v3, v4, :cond_60

    .line 1033
    iget v3, p0, Lmiui/view/ScreenView;->mCurrentScreen:I

    invoke-direct {p0, v3, v1}, Lmiui/view/ScreenView;->doSetCurrentScreen(IZ)V

    .line 1035
    :cond_60
    :goto_60
    iget v1, p0, Lmiui/view/ScreenView;->mScreenWidth:I

    iput v1, p0, Lmiui/view/ScreenView;->mPrevScreenWidth:I

    .line 1036
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 940
    iput p1, p0, Lmiui/view/ScreenView;->mWidthMeasureSpec:I

    .line 941
    iput p2, p0, Lmiui/view/ScreenView;->mHeightMeasureSpec:I

    .line 942
    const/4 v0, 0x0

    .line 943
    .local v0, "maxHeight":I
    const/4 v1, 0x0

    .line 944
    .local v1, "maxWidth":I
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getScreenCount()I

    move-result v2

    .line 946
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    iget v4, p0, Lmiui/view/ScreenView;->mIndicatorCount:I

    if-ge v3, v4, :cond_55

    .line 947
    add-int v4, v3, v2

    invoke-virtual {p0, v4}, Lmiui/view/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 948
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 949
    .local v5, "lp":Landroid/view/ViewGroup$LayoutParams;
    nop

    .line 951
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lmiui/view/ScreenView;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 949
    invoke-static {p1, v6, v7}, Lmiui/view/ScreenView;->getChildMeasureSpec(III)I

    move-result v6

    .line 952
    .local v6, "childWidthMeasureSpec":I
    nop

    .line 954
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getPaddingTop()I

    move-result v7

    iget v8, p0, Lmiui/view/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lmiui/view/ScreenView;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Lmiui/view/ScreenView;->mScreenPaddingBottom:I

    add-int/2addr v7, v8

    iget v8, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 952
    invoke-static {p2, v7, v8}, Lmiui/view/ScreenView;->getChildMeasureSpec(III)I

    move-result v7

    .line 957
    .local v7, "childHeightMeasureSpec":I
    invoke-virtual {v4, v6, v7}, Landroid/view/View;->measure(II)V

    .line 958
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 959
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 946
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v6    # "childWidthMeasureSpec":I
    .end local v7    # "childHeightMeasureSpec":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 962
    .end local v3    # "i":I
    :cond_55
    const/4 v3, 0x0

    .line 963
    .local v3, "maxChildHeight":I
    const/4 v4, 0x0

    .line 964
    .local v4, "maxChildWidth":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_58
    if-ge v5, v2, :cond_9f

    .line 965
    invoke-virtual {p0, v5}, Lmiui/view/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 966
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 967
    .local v7, "lp":Landroid/view/ViewGroup$LayoutParams;
    nop

    .line 969
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getPaddingLeft()I

    move-result v8

    invoke-virtual {p0}, Lmiui/view/ScreenView;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 967
    invoke-static {p1, v8, v9}, Lmiui/view/ScreenView;->getChildMeasureSpec(III)I

    move-result v8

    .line 970
    .local v8, "childWidthMeasureSpec":I
    nop

    .line 972
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getPaddingTop()I

    move-result v9

    iget v10, p0, Lmiui/view/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v9, v10

    invoke-virtual {p0}, Lmiui/view/ScreenView;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, p0, Lmiui/view/ScreenView;->mScreenPaddingBottom:I

    add-int/2addr v9, v10

    iget v10, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 970
    invoke-static {p2, v9, v10}, Lmiui/view/ScreenView;->getChildMeasureSpec(III)I

    move-result v9

    .line 975
    .local v9, "childHeightMeasureSpec":I
    invoke-virtual {v6, v8, v9}, Landroid/view/View;->measure(II)V

    .line 976
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 977
    nop

    .line 978
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 964
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v8    # "childWidthMeasureSpec":I
    .end local v9    # "childHeightMeasureSpec":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_58

    .line 980
    .end local v5    # "i":I
    :cond_9f
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 981
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 983
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lmiui/view/ScreenView;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 984
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getPaddingTop()I

    move-result v5

    iget v6, p0, Lmiui/view/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lmiui/view/ScreenView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lmiui/view/ScreenView;->mScreenPaddingBottom:I

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 986
    nop

    .line 987
    invoke-static {v1, p1}, Lmiui/view/ScreenView;->resolveSize(II)I

    move-result v5

    .line 988
    invoke-static {v0, p2}, Lmiui/view/ScreenView;->resolveSize(II)I

    move-result v6

    .line 986
    invoke-virtual {p0, v5, v6}, Lmiui/view/ScreenView;->setMeasuredDimension(II)V

    .line 989
    const/4 v5, 0x1

    if-lez v2, :cond_fd

    .line 990
    iput v4, p0, Lmiui/view/ScreenView;->mChildScreenWidth:I

    .line 991
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-virtual {p0}, Lmiui/view/ScreenView;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    .line 992
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Lmiui/view/ScreenView;->mScreenWidth:I

    .line 993
    invoke-direct {p0}, Lmiui/view/ScreenView;->updateScreenOffset()V

    .line 994
    iget v6, p0, Lmiui/view/ScreenView;->mChildScreenWidth:I

    if-lez v6, :cond_f8

    .line 995
    iget v7, p0, Lmiui/view/ScreenView;->mScreenWidth:I

    int-to-float v8, v6

    iget v9, p0, Lmiui/view/ScreenView;->mVisibleExtentionRatio:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v7, v8

    div-int/2addr v7, v6

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lmiui/view/ScreenView;->mVisibleRange:I

    .line 999
    :cond_f8
    iget v6, p0, Lmiui/view/ScreenView;->mOverScrollRatio:F

    invoke-virtual {p0, v6}, Lmiui/view/ScreenView;->setOverScrollRatio(F)V

    .line 1001
    :cond_fd
    iget-boolean v6, p0, Lmiui/view/ScreenView;->mFirstLayout:Z

    if-eqz v6, :cond_113

    iget v6, p0, Lmiui/view/ScreenView;->mVisibleRange:I

    if-lez v6, :cond_113

    .line 1002
    const/4 v6, 0x0

    iput-boolean v6, p0, Lmiui/view/ScreenView;->mFirstLayout:Z

    .line 1003
    invoke-virtual {p0, v6}, Lmiui/view/ScreenView;->setHorizontalScrollBarEnabled(Z)V

    .line 1005
    iget v6, p0, Lmiui/view/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v6}, Lmiui/view/ScreenView;->setCurrentScreen(I)V

    .line 1006
    invoke-virtual {p0, v5}, Lmiui/view/ScreenView;->setHorizontalScrollBarEnabled(Z)V

    .line 1008
    :cond_113
    return-void
.end method

.method public blacklist onPause()V
    .registers 4

    .line 1768
    iget-object v0, p0, Lmiui/view/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_23

    .line 1769
    iget-object v0, p0, Lmiui/view/ScreenView;->mScroller:Landroid/widget/Scroller;

    .line 1770
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget v1, p0, Lmiui/view/ScreenView;->mChildScreenWidth:I

    div-int/lit8 v2, v1, 0x2

    add-int/2addr v0, v2

    div-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x1

    .line 1769
    invoke-direct {p0, v0, v1}, Lmiui/view/ScreenView;->doSetCurrentScreen(IZ)V

    .line 1772
    iget-object v0, p0, Lmiui/view/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1774
    :cond_23
    return-void
.end method

.method protected blacklist onPinchIn(Landroid/view/ScaleGestureDetector;)V
    .registers 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .line 2020
    return-void
.end method

.method protected blacklist onPinchOut(Landroid/view/ScaleGestureDetector;)V
    .registers 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .line 2029
    return-void
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 2047
    move-object v0, p1

    check-cast v0, Lmiui/view/ScreenView$SavedState;

    .line 2048
    .local v0, "savedState":Lmiui/view/ScreenView$SavedState;
    invoke-virtual {v0}, Lmiui/view/ScreenView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2049
    iget v1, v0, Lmiui/view/ScreenView$SavedState;->currentScreen:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_15

    .line 2050
    iget v1, v0, Lmiui/view/ScreenView$SavedState;->currentScreen:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lmiui/view/ScreenView;->doSetCurrentScreen(IZ)V

    .line 2052
    :cond_15
    return-void
.end method

.method public blacklist onResume()V
    .registers 1

    .line 1761
    return-void
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 2040
    new-instance v0, Lmiui/view/ScreenView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/view/ScreenView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2041
    .local v0, "state":Lmiui/view/ScreenView$SavedState;
    iget v1, p0, Lmiui/view/ScreenView;->mCurrentScreen:I

    iput v1, v0, Lmiui/view/ScreenView$SavedState;->currentScreen:I

    .line 2042
    return-object v0
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1176
    iget-boolean v0, p0, Lmiui/view/ScreenView;->mCurrentGestureFinished:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 1177
    return v1

    .line 1179
    :cond_6
    iget-boolean v0, p0, Lmiui/view/ScreenView;->mTouchIntercepted:Z

    if-eqz v0, :cond_d

    .line 1180
    invoke-direct {p0, p1}, Lmiui/view/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    .line 1182
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_92

    :pswitch_17
    goto/16 :goto_8f

    .line 1214
    :pswitch_19
    nop

    .line 1215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v3, 0xff00

    and-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x8

    .line 1217
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 1218
    .local v3, "pointerId":I
    iget v4, p0, Lmiui/view/ScreenView;->mActivePointerId:I

    if-ne v3, v4, :cond_8f

    .line 1222
    if-nez v0, :cond_2f

    move v2, v1

    .line 1223
    .local v2, "newPointerIndex":I
    :cond_2f
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, p0, Lmiui/view/ScreenView;->mLastMotionX:F

    .line 1224
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lmiui/view/ScreenView;->mActivePointerId:I

    .line 1225
    iget-object v5, p0, Lmiui/view/ScreenView;->mGestureVelocityTracker:Lmiui/view/ScreenView$GestureVelocityTracker;

    invoke-virtual {v5, v4}, Lmiui/view/ScreenView$GestureVelocityTracker;->init(I)V

    goto :goto_8f

    .line 1186
    .end local v0    # "pointerIndex":I
    .end local v2    # "newPointerIndex":I
    .end local v3    # "pointerId":I
    :pswitch_41
    iget v0, p0, Lmiui/view/ScreenView;->mTouchState:I

    if-nez v0, :cond_4e

    invoke-direct {p0, p1}, Lmiui/view/ScreenView;->scrolledFarEnough(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1187
    invoke-direct {p0, p1, v1}, Lmiui/view/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 1189
    :cond_4e
    iget v0, p0, Lmiui/view/ScreenView;->mTouchState:I

    if-ne v0, v1, :cond_8f

    .line 1191
    iget v0, p0, Lmiui/view/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1192
    .restart local v0    # "pointerIndex":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_64

    .line 1193
    invoke-direct {p0, p1, v1}, Lmiui/view/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 1194
    iget v3, p0, Lmiui/view/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1196
    :cond_64
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1197
    .local v3, "x":F
    iget v4, p0, Lmiui/view/ScreenView;->mLastMotionX:F

    sub-float/2addr v4, v3

    .line 1198
    .local v4, "deltaX":F
    iput v3, p0, Lmiui/view/ScreenView;->mLastMotionX:F

    .line 1199
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_7d

    .line 1200
    iget v5, p0, Lmiui/view/ScreenView;->mTouchX:F

    add-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {p0, v5, v2}, Lmiui/view/ScreenView;->scrollTo(II)V

    goto :goto_80

    .line 1202
    :cond_7d
    invoke-virtual {p0}, Lmiui/view/ScreenView;->awakenScrollBars()Z

    .line 1204
    .end local v0    # "pointerIndex":I
    .end local v3    # "x":F
    .end local v4    # "deltaX":F
    :goto_80
    goto :goto_8f

    .line 1208
    :pswitch_81
    iget v0, p0, Lmiui/view/ScreenView;->mTouchState:I

    if-ne v0, v1, :cond_8a

    .line 1209
    iget v0, p0, Lmiui/view/ScreenView;->mActivePointerId:I

    invoke-direct {p0, v0}, Lmiui/view/ScreenView;->snapByVelocity(I)V

    .line 1211
    :cond_8a
    invoke-direct {p0, p1, v2}, Lmiui/view/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 1212
    goto :goto_8f

    .line 1184
    :pswitch_8e
    nop

    .line 1229
    :cond_8f
    :goto_8f
    iput-boolean v1, p0, Lmiui/view/ScreenView;->mTouchIntercepted:Z

    .line 1230
    return v1

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_8e
        :pswitch_81
        :pswitch_41
        :pswitch_81
        :pswitch_17
        :pswitch_17
        :pswitch_19
    .end packed-switch
.end method

.method public blacklist removeAllScreens()V
    .registers 3

    .line 1627
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lmiui/view/ScreenView;->removeScreensInLayout(II)V

    .line 1628
    invoke-virtual {p0}, Lmiui/view/ScreenView;->requestLayout()V

    .line 1629
    invoke-virtual {p0}, Lmiui/view/ScreenView;->invalidate()V

    .line 1630
    return-void
.end method

.method public whitelist removeAllViewsInLayout()V
    .registers 2

    .line 1543
    const/4 v0, 0x0

    iput v0, p0, Lmiui/view/ScreenView;->mIndicatorCount:I

    iput v0, p0, Lmiui/view/ScreenView;->mScreenCounter:I

    .line 1544
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 1545
    return-void
.end method

.method protected blacklist removeIndicator(Landroid/view/View;)V
    .registers 5
    .param p1, "indicator"    # Landroid/view/View;

    .line 1584
    invoke-virtual {p0, p1}, Lmiui/view/ScreenView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1585
    .local v0, "index":I
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getScreenCount()I

    move-result v1

    if-lt v0, v1, :cond_14

    .line 1589
    iget v1, p0, Lmiui/view/ScreenView;->mIndicatorCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmiui/view/ScreenView;->mIndicatorCount:I

    .line 1590
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1591
    return-void

    .line 1586
    :cond_14
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "The view passed through the parameter must be indicator."

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist removeScreen(I)V
    .registers 6
    .param p1, "screenIndex"    # I

    .line 1600
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getScreenCount()I

    move-result v0

    if-ge p1, v0, :cond_3b

    .line 1604
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/view/ScreenView;->toInnerIndex(IZ)I

    move-result v1

    .line 1605
    .local v1, "innerIndex":I
    iget v2, p0, Lmiui/view/ScreenView;->mCurrentScreen:I

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2b

    .line 1606
    iget-boolean v2, p0, Lmiui/view/ScreenView;->mScrollWholeScreen:Z

    if-nez v2, :cond_1d

    .line 1607
    const/4 v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0, v3}, Lmiui/view/ScreenView;->doSetCurrentScreen(IZ)V

    goto :goto_2b

    .line 1610
    :cond_1d
    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Lmiui/view/ScreenView;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, v3

    if-ne p1, v0, :cond_2b

    .line 1612
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lmiui/view/ScreenView;->snapToScreen(I)V

    .line 1616
    :cond_2b
    :goto_2b
    iget-object v0, p0, Lmiui/view/ScreenView;->mScreenSeekBar:Lmiui/view/ScreenView$SeekBarIndicator;

    if-eqz v0, :cond_32

    .line 1617
    invoke-virtual {v0, v1}, Lmiui/view/ScreenView$SeekBarIndicator;->removeViewAt(I)V

    .line 1619
    :cond_32
    iget v0, p0, Lmiui/view/ScreenView;->mScreenCounter:I

    sub-int/2addr v0, v3

    iput v0, p0, Lmiui/view/ScreenView;->mScreenCounter:I

    .line 1620
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1621
    return-void

    .line 1601
    .end local v1    # "innerIndex":I
    :cond_3b
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The view specified by the index must be a screen."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist removeScreensInLayout(II)V
    .registers 6
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 1640
    invoke-direct {p0}, Lmiui/view/ScreenView;->isRTL()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-direct {p0, p1, v1}, Lmiui/view/ScreenView;->toInnerIndex(IZ)I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_f
    move v0, p1

    .line 1641
    .local v0, "startIdx":I
    :goto_10
    if-ltz v0, :cond_2f

    invoke-virtual {p0}, Lmiui/view/ScreenView;->getScreenCount()I

    move-result v2

    if-lt v0, v2, :cond_19

    goto :goto_2f

    .line 1644
    :cond_19
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getScreenCount()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1645
    iget-object v2, p0, Lmiui/view/ScreenView;->mScreenSeekBar:Lmiui/view/ScreenView$SeekBarIndicator;

    if-eqz v2, :cond_29

    .line 1646
    invoke-virtual {v2, v0, p2}, Lmiui/view/ScreenView$SeekBarIndicator;->removeViewsInLayout(II)V

    .line 1648
    :cond_29
    iput v1, p0, Lmiui/view/ScreenView;->mScreenCounter:I

    .line 1649
    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    .line 1650
    return-void

    .line 1642
    :cond_2f
    :goto_2f
    return-void
.end method

.method public whitelist removeView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 1497
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeViewAt(I)V
    .registers 4
    .param p1, "index"    # I

    .line 1527
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeViewInLayout(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 1507
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeViews(II)V
    .registers 5
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 1537
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeViewsInLayout(II)V
    .registers 5
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 1517
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .line 1047
    invoke-virtual {p0, p1}, Lmiui/view/ScreenView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1048
    .local v0, "screen":I
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 1049
    iget v1, p0, Lmiui/view/ScreenView;->mCurrentScreen:I

    if-ne v0, v1, :cond_19

    iget-object v1, p0, Lmiui/view/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_19

    .line 1053
    :cond_17
    const/4 v1, 0x0

    return v1

    .line 1050
    :cond_19
    :goto_19
    invoke-virtual {p0, v0}, Lmiui/view/ScreenView;->snapToScreen(I)V

    .line 1051
    const/4 v1, 0x1

    return v1

    .line 1055
    :cond_1e
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v1

    return v1
.end method

.method protected blacklist resetTransformation(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 1853
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1854
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1855
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1856
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 1857
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 1858
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    .line 1859
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationX(F)V

    .line 1860
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationY(F)V

    .line 1861
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1862
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1863
    iget v0, p0, Lmiui/view/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-direct {p0, p1, v0}, Lmiui/view/ScreenView;->setCameraDistance(Landroid/view/View;F)V

    .line 1864
    return-void
.end method

.method public whitelist scrollTo(II)V
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 884
    iget v0, p0, Lmiui/view/ScreenView;->mScrollLeftBound:I

    iget v1, p0, Lmiui/view/ScreenView;->mScrollRightBound:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 885
    int-to-float v0, p1

    iput v0, p0, Lmiui/view/ScreenView;->mTouchX:F

    .line 886
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v1

    iput v0, p0, Lmiui/view/ScreenView;->mSmoothingTime:F

    .line 887
    iget v0, p0, Lmiui/view/ScreenView;->mTouchX:F

    float-to-int v0, v0

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 888
    return-void
.end method

.method public blacklist scrollToScreen(I)V
    .registers 3
    .param p1, "index"    # I

    .line 870
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/view/ScreenView;->doScrollToScreen(IZ)V

    .line 871
    return-void
.end method

.method public blacklist setAllowLongPress(Z)V
    .registers 2
    .param p1, "allowLongPress"    # Z

    .line 1664
    iput-boolean p1, p0, Lmiui/view/ScreenView;->mAllowLongPress:Z

    .line 1665
    return-void
.end method

.method public blacklist setArrowIndicatorMarginRect(Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "margin"    # Landroid/graphics/Rect;

    .line 473
    if-eqz p1, :cond_63

    .line 476
    iget-object v0, p0, Lmiui/view/ScreenView;->mArrowLeft:Lmiui/view/ScreenView$ArrowIndicator;

    if-nez v0, :cond_40

    .line 477
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x13

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 481
    .local v0, "leftArrowLayout":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v1, Lmiui/view/ScreenView$ArrowIndicator;

    invoke-virtual {p0}, Lmiui/view/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lmiui/view/ScreenView$ArrowIndicator;-><init>(Lmiui/view/ScreenView;Landroid/content/Context;)V

    iput-object v1, p0, Lmiui/view/ScreenView;->mArrowLeft:Lmiui/view/ScreenView$ArrowIndicator;

    .line 482
    iget v3, p0, Lmiui/view/ScreenView;->mArrowLeftOnResId:I

    invoke-virtual {v1, v3}, Lmiui/view/ScreenView$ArrowIndicator;->setImageResource(I)V

    .line 483
    iget-object v1, p0, Lmiui/view/ScreenView;->mArrowLeft:Lmiui/view/ScreenView$ArrowIndicator;

    invoke-virtual {p0, v1, v0}, Lmiui/view/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 484
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 488
    .local v1, "rightArrowLayout":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v2, Lmiui/view/ScreenView$ArrowIndicator;

    invoke-virtual {p0}, Lmiui/view/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lmiui/view/ScreenView$ArrowIndicator;-><init>(Lmiui/view/ScreenView;Landroid/content/Context;)V

    iput-object v2, p0, Lmiui/view/ScreenView;->mArrowRight:Lmiui/view/ScreenView$ArrowIndicator;

    .line 489
    iget v3, p0, Lmiui/view/ScreenView;->mArrowRightOnResId:I

    invoke-virtual {v2, v3}, Lmiui/view/ScreenView$ArrowIndicator;->setImageResource(I)V

    .line 490
    iget-object v2, p0, Lmiui/view/ScreenView;->mArrowRight:Lmiui/view/ScreenView$ArrowIndicator;

    invoke-virtual {p0, v2, v1}, Lmiui/view/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    goto :goto_4f

    .line 492
    .end local v0    # "leftArrowLayout":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "rightArrowLayout":Landroid/widget/FrameLayout$LayoutParams;
    :cond_40
    nop

    .line 493
    invoke-virtual {v0}, Lmiui/view/ScreenView$ArrowIndicator;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 494
    .restart local v0    # "leftArrowLayout":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lmiui/view/ScreenView;->mArrowRight:Lmiui/view/ScreenView$ArrowIndicator;

    .line 495
    invoke-virtual {v1}, Lmiui/view/ScreenView$ArrowIndicator;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 497
    .restart local v1    # "rightArrowLayout":Landroid/widget/FrameLayout$LayoutParams;
    :goto_4f
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 498
    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 499
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 500
    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .end local v0    # "leftArrowLayout":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "rightArrowLayout":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_75

    .line 501
    :cond_63
    iget-object v0, p0, Lmiui/view/ScreenView;->mArrowLeft:Lmiui/view/ScreenView$ArrowIndicator;

    if-eqz v0, :cond_75

    .line 502
    invoke-virtual {p0, v0}, Lmiui/view/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 503
    iget-object v0, p0, Lmiui/view/ScreenView;->mArrowRight:Lmiui/view/ScreenView$ArrowIndicator;

    invoke-virtual {p0, v0}, Lmiui/view/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 504
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/view/ScreenView;->mArrowLeft:Lmiui/view/ScreenView$ArrowIndicator;

    .line 505
    iput-object v0, p0, Lmiui/view/ScreenView;->mArrowRight:Lmiui/view/ScreenView$ArrowIndicator;

    goto :goto_76

    .line 501
    :cond_75
    :goto_75
    nop

    .line 507
    :goto_76
    return-void
.end method

.method public blacklist setArrowIndicatorResource(IIII)V
    .registers 5
    .param p1, "leftOn"    # I
    .param p2, "leftOff"    # I
    .param p3, "rightOn"    # I
    .param p4, "rightOff"    # I

    .line 521
    iput p1, p0, Lmiui/view/ScreenView;->mArrowLeftOnResId:I

    .line 522
    iput p2, p0, Lmiui/view/ScreenView;->mArrowLeftOffResId:I

    .line 523
    iput p3, p0, Lmiui/view/ScreenView;->mArrowRightOnResId:I

    .line 524
    iput p4, p0, Lmiui/view/ScreenView;->mArrowRightOffResId:I

    .line 525
    return-void
.end method

.method public blacklist setConfirmHorizontalScrollRatio(F)V
    .registers 2
    .param p1, "ratio"    # F

    .line 417
    iput p1, p0, Lmiui/view/ScreenView;->mConfirmHorizontalScrollRatio:F

    .line 418
    return-void
.end method

.method public blacklist setCurrentScreen(I)V
    .registers 3
    .param p1, "screenIndex"    # I

    .line 1389
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/view/ScreenView;->doSetCurrentScreen(IZ)V

    .line 1390
    return-void
.end method

.method public blacklist setIndicatorBarVisibility(I)V
    .registers 2
    .param p1, "visibility"    # I

    .line 639
    invoke-virtual {p0, p1}, Lmiui/view/ScreenView;->setSeekBarVisibility(I)V

    .line 640
    invoke-virtual {p0, p1}, Lmiui/view/ScreenView;->setSlideBarVisibility(I)V

    .line 641
    return-void
.end method

.method public blacklist setMaximumSnapVelocity(I)V
    .registers 2
    .param p1, "velocity"    # I

    .line 436
    iput p1, p0, Lmiui/view/ScreenView;->mMaximumVelocity:I

    .line 437
    return-void
.end method

.method public whitelist setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 5
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .line 1675
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getScreenCount()I

    move-result v0

    .line 1676
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 1677
    invoke-virtual {p0, v1}, Lmiui/view/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1676
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1679
    .end local v1    # "i":I
    :cond_11
    return-void
.end method

.method public blacklist setOverScrollRatio(F)V
    .registers 2
    .param p1, "ratio"    # F

    .line 836
    iput p1, p0, Lmiui/view/ScreenView;->mOverScrollRatio:F

    .line 837
    invoke-direct {p0}, Lmiui/view/ScreenView;->refreshScrollBound()V

    .line 838
    return-void
.end method

.method public blacklist setOvershootTension(F)V
    .registers 3
    .param p1, "tension"    # F

    .line 394
    iput p1, p0, Lmiui/view/ScreenView;->mOvershootTension:F

    .line 395
    iget-object v0, p0, Lmiui/view/ScreenView;->mScrollInterpolator:Lmiui/view/ScreenView$ScreenViewOvershootInterpolator;

    if-eqz v0, :cond_9

    .line 396
    invoke-static {v0, p1}, Lmiui/view/ScreenView$ScreenViewOvershootInterpolator;->-$$Nest$fputmTension(Lmiui/view/ScreenView$ScreenViewOvershootInterpolator;F)V

    .line 398
    :cond_9
    return-void
.end method

.method public blacklist setScreenAlignment(I)V
    .registers 2
    .param p1, "alignment"    # I

    .line 698
    iput p1, p0, Lmiui/view/ScreenView;->mScreenAlignment:I

    .line 699
    return-void
.end method

.method public blacklist setScreenOffset(I)V
    .registers 3
    .param p1, "offset"    # I

    .line 710
    iput p1, p0, Lmiui/view/ScreenView;->mScreenOffset:I

    .line 711
    const/4 v0, 0x0

    iput v0, p0, Lmiui/view/ScreenView;->mScreenAlignment:I

    .line 712
    invoke-virtual {p0}, Lmiui/view/ScreenView;->requestLayout()V

    .line 713
    return-void
.end method

.method public blacklist setScreenPadding(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 679
    if-eqz p1, :cond_13

    .line 683
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lmiui/view/ScreenView;->mScreenPaddingTop:I

    .line 684
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lmiui/view/ScreenView;->mScreenPaddingBottom:I

    .line 685
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1, v2}, Lmiui/view/ScreenView;->setPadding(IIII)V

    .line 686
    return-void

    .line 680
    :cond_13
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The padding parameter can not be null."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setScreenSnapDuration(I)V
    .registers 2
    .param p1, "duration"    # I

    .line 426
    iput p1, p0, Lmiui/view/ScreenView;->mScreenSnapDuration:I

    .line 427
    return-void
.end method

.method public blacklist setScreenTransitionType(I)V
    .registers 7
    .param p1, "type"    # I

    .line 1802
    iget v0, p0, Lmiui/view/ScreenView;->mScreenTransitionType:I

    if-eq p1, v0, :cond_45

    .line 1803
    iput p1, p0, Lmiui/view/ScreenView;->mScreenTransitionType:I

    .line 1804
    const/16 v0, 0x10e

    const/16 v1, 0x12c

    const/16 v2, 0x14a

    const v3, 0x3fa66666    # 1.3f

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_46

    goto :goto_45

    .line 1837
    :pswitch_14
    invoke-virtual {p0, v3}, Lmiui/view/ScreenView;->setOvershootTension(F)V

    .line 1838
    invoke-virtual {p0, v2}, Lmiui/view/ScreenView;->setScreenSnapDuration(I)V

    .line 1840
    goto :goto_45

    .line 1832
    :pswitch_1b
    invoke-virtual {p0, v4}, Lmiui/view/ScreenView;->setOvershootTension(F)V

    .line 1833
    invoke-virtual {p0, v0}, Lmiui/view/ScreenView;->setScreenSnapDuration(I)V

    .line 1835
    goto :goto_45

    .line 1830
    :pswitch_22
    goto :goto_45

    .line 1825
    :pswitch_23
    invoke-virtual {p0, v4}, Lmiui/view/ScreenView;->setOvershootTension(F)V

    .line 1826
    invoke-virtual {p0, v2}, Lmiui/view/ScreenView;->setScreenSnapDuration(I)V

    .line 1828
    goto :goto_45

    .line 1820
    :pswitch_2a
    invoke-virtual {p0, v4}, Lmiui/view/ScreenView;->setOvershootTension(F)V

    .line 1821
    invoke-virtual {p0, v2}, Lmiui/view/ScreenView;->setScreenSnapDuration(I)V

    .line 1823
    goto :goto_45

    .line 1816
    :pswitch_31
    invoke-virtual {p0, v3}, Lmiui/view/ScreenView;->setOvershootTension(F)V

    .line 1817
    invoke-virtual {p0, v1}, Lmiui/view/ScreenView;->setScreenSnapDuration(I)V

    .line 1818
    goto :goto_45

    .line 1811
    :pswitch_38
    invoke-virtual {p0, v4}, Lmiui/view/ScreenView;->setOvershootTension(F)V

    .line 1812
    invoke-virtual {p0, v0}, Lmiui/view/ScreenView;->setScreenSnapDuration(I)V

    .line 1814
    goto :goto_45

    .line 1806
    :pswitch_3f
    invoke-virtual {p0, v3}, Lmiui/view/ScreenView;->setOvershootTension(F)V

    .line 1807
    invoke-virtual {p0, v1}, Lmiui/view/ScreenView;->setScreenSnapDuration(I)V

    .line 1845
    :cond_45
    :goto_45
    return-void

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_38
        :pswitch_38
        :pswitch_31
        :pswitch_2a
        :pswitch_23
        :pswitch_22
        :pswitch_1b
        :pswitch_14
    .end packed-switch
.end method

.method public blacklist setScrollWholeScreen(Z)V
    .registers 2
    .param p1, "wholeScreen"    # Z

    .line 446
    iput-boolean p1, p0, Lmiui/view/ScreenView;->mScrollWholeScreen:Z

    .line 447
    return-void
.end method

.method public blacklist setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 6
    .param p1, "params"    # Landroid/widget/FrameLayout$LayoutParams;

    .line 542
    if-eqz p1, :cond_5b

    .line 543
    iget-object v0, p0, Lmiui/view/ScreenView;->mScreenSeekBar:Lmiui/view/ScreenView$SeekBarIndicator;

    if-nez v0, :cond_49

    .line 544
    new-instance v0, Lmiui/view/ScreenView$SeekBarIndicator;

    invoke-virtual {p0}, Lmiui/view/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmiui/view/ScreenView$SeekBarIndicator;-><init>(Lmiui/view/ScreenView;Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/view/ScreenView;->mScreenSeekBar:Lmiui/view/ScreenView$SeekBarIndicator;

    .line 545
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/view/ScreenView$SeekBarIndicator;->setFocusableInTouchMode(Z)V

    .line 546
    iget-object v0, p0, Lmiui/view/ScreenView;->mScreenSeekBar:Lmiui/view/ScreenView$SeekBarIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lmiui/view/ScreenView$SeekBarIndicator;->sendAccessibilityEvent(I)V

    .line 547
    iget-object v0, p0, Lmiui/view/ScreenView;->mScreenSeekBar:Lmiui/view/ScreenView$SeekBarIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/view/ScreenView$SeekBarIndicator;->setLayoutDirection(I)V

    .line 548
    iget-object v0, p0, Lmiui/view/ScreenView;->mScreenSeekBar:Lmiui/view/ScreenView$SeekBarIndicator;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lmiui/view/ScreenView$SeekBarIndicator;->setGravity(I)V

    .line 549
    iget-object v0, p0, Lmiui/view/ScreenView;->mScreenSeekBar:Lmiui/view/ScreenView$SeekBarIndicator;

    invoke-virtual {v0, v1}, Lmiui/view/ScreenView$SeekBarIndicator;->setAnimationCacheEnabled(Z)V

    .line 550
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2f
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_43

    .line 551
    iget-object v1, p0, Lmiui/view/ScreenView;->mScreenSeekBar:Lmiui/view/ScreenView$SeekBarIndicator;

    invoke-direct {p0}, Lmiui/view/ScreenView;->createSeekPoint()Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Lmiui/view/ScreenView;->SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2, v3}, Lmiui/view/ScreenView$SeekBarIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 550
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 553
    .end local v0    # "i":I
    :cond_43
    iget-object v0, p0, Lmiui/view/ScreenView;->mScreenSeekBar:Lmiui/view/ScreenView$SeekBarIndicator;

    invoke-virtual {p0, v0, p1}, Lmiui/view/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    goto :goto_65

    .line 555
    :cond_49
    invoke-virtual {v0}, Lmiui/view/ScreenView$SeekBarIndicator;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 556
    iget-object v0, p0, Lmiui/view/ScreenView;->mScreenSeekBar:Lmiui/view/ScreenView$SeekBarIndicator;

    invoke-virtual {v0, p1}, Lmiui/view/ScreenView$SeekBarIndicator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_65

    .line 558
    :cond_55
    iget-object v0, p0, Lmiui/view/ScreenView;->mScreenSeekBar:Lmiui/view/ScreenView$SeekBarIndicator;

    invoke-virtual {p0, v0, p1}, Lmiui/view/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    goto :goto_65

    .line 561
    :cond_5b
    iget-object v0, p0, Lmiui/view/ScreenView;->mScreenSeekBar:Lmiui/view/ScreenView$SeekBarIndicator;

    if-eqz v0, :cond_65

    .line 562
    invoke-virtual {p0, v0}, Lmiui/view/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 563
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/view/ScreenView;->mScreenSeekBar:Lmiui/view/ScreenView$SeekBarIndicator;

    .line 565
    :cond_65
    :goto_65
    return-void
.end method

.method public blacklist setSeekBarVisibility(I)V
    .registers 3
    .param p1, "visibility"    # I

    .line 652
    iget-object v0, p0, Lmiui/view/ScreenView;->mScreenSeekBar:Lmiui/view/ScreenView$SeekBarIndicator;

    if-nez v0, :cond_5

    .line 653
    return-void

    .line 655
    :cond_5
    invoke-virtual {v0, p1}, Lmiui/view/ScreenView$SeekBarIndicator;->setVisibility(I)V

    .line 656
    return-void
.end method

.method public blacklist setSeekPointResource(I)V
    .registers 2
    .param p1, "seekPointResId"    # I

    .line 532
    iput p1, p0, Lmiui/view/ScreenView;->mSeekPointResId:I

    .line 533
    return-void
.end method

.method public blacklist setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 5
    .param p1, "params"    # Landroid/widget/FrameLayout$LayoutParams;

    .line 574
    const v0, 0x110801e3

    const v1, 0x110801e4

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lmiui/view/ScreenView;->setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;IIZ)V

    .line 576
    return-void
.end method

.method public blacklist setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;IIZ)V
    .registers 8
    .param p1, "params"    # Landroid/widget/FrameLayout$LayoutParams;
    .param p2, "slideDrawableId"    # I
    .param p3, "backgroundDrawableId"    # I
    .param p4, "isAutoHide"    # Z

    .line 586
    iput-boolean p4, p0, Lmiui/view/ScreenView;->mIsSlideBarAutoHide:Z

    .line 587
    const/4 v0, 0x0

    if-eqz p1, :cond_2c

    .line 588
    iget-object v1, p0, Lmiui/view/ScreenView;->mSlideBar:Lmiui/view/ScreenView$SlideBar;

    if-nez v1, :cond_28

    .line 589
    new-instance v1, Lmiui/view/ScreenView$SlideBar;

    invoke-virtual {p0}, Lmiui/view/ScreenView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, p2, p3}, Lmiui/view/ScreenView$SlideBar;-><init>(Lmiui/view/ScreenView;Landroid/content/Context;II)V

    iput-object v1, p0, Lmiui/view/ScreenView;->mSlideBar:Lmiui/view/ScreenView$SlideBar;

    .line 591
    new-instance v2, Lmiui/view/ScreenView$SliderTouchListener;

    invoke-direct {v2, p0, v0}, Lmiui/view/ScreenView$SliderTouchListener;-><init>(Lmiui/view/ScreenView;Lmiui/view/ScreenView$SliderTouchListener-IA;)V

    invoke-virtual {v1, v2}, Lmiui/view/ScreenView$SlideBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 592
    iget-object v0, p0, Lmiui/view/ScreenView;->mSlideBar:Lmiui/view/ScreenView$SlideBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/view/ScreenView$SlideBar;->setAnimationCacheEnabled(Z)V

    .line 593
    iget-object v0, p0, Lmiui/view/ScreenView;->mSlideBar:Lmiui/view/ScreenView$SlideBar;

    invoke-virtual {p0, v0, p1}, Lmiui/view/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    goto :goto_35

    .line 595
    :cond_28
    invoke-virtual {v1, p1}, Lmiui/view/ScreenView$SlideBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_35

    .line 597
    :cond_2c
    iget-object v1, p0, Lmiui/view/ScreenView;->mSlideBar:Lmiui/view/ScreenView$SlideBar;

    if-eqz v1, :cond_35

    .line 598
    invoke-virtual {p0, v1}, Lmiui/view/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 599
    iput-object v0, p0, Lmiui/view/ScreenView;->mSlideBar:Lmiui/view/ScreenView$SlideBar;

    .line 601
    :cond_35
    :goto_35
    return-void
.end method

.method public blacklist setSlideBarVisibility(I)V
    .registers 3
    .param p1, "visibility"    # I

    .line 667
    iget-object v0, p0, Lmiui/view/ScreenView;->mSlideBar:Lmiui/view/ScreenView$SlideBar;

    if-nez v0, :cond_5

    .line 668
    return-void

    .line 670
    :cond_5
    invoke-virtual {v0, p1}, Lmiui/view/ScreenView$SlideBar;->setVisibility(I)V

    .line 671
    return-void
.end method

.method public blacklist setTouchSlop(I)V
    .registers 2
    .param p1, "slop"    # I

    .line 407
    iput p1, p0, Lmiui/view/ScreenView;->mTouchSlop:I

    .line 408
    return-void
.end method

.method public whitelist setVisibility(I)V
    .registers 2
    .param p1, "visibility"    # I

    .line 932
    if-nez p1, :cond_5

    .line 933
    invoke-direct {p0}, Lmiui/view/ScreenView;->showSlideBar()V

    .line 935
    :cond_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 936
    return-void
.end method

.method public blacklist setVisibleExtentionRatio(F)V
    .registers 2
    .param p1, "ratio"    # F

    .line 847
    iput p1, p0, Lmiui/view/ScreenView;->mVisibleExtentionRatio:F

    .line 848
    return-void
.end method

.method protected blacklist snapByVelocity(II)V
    .registers 7
    .param p1, "velocity"    # I
    .param p2, "flingDirection"    # I

    .line 1251
    const/4 v0, 0x1

    if-ne p2, v0, :cond_e

    iget v1, p0, Lmiui/view/ScreenView;->mCurrentScreen:I

    if-lez v1, :cond_e

    .line 1252
    iget v2, p0, Lmiui/view/ScreenView;->mVisibleRange:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1, p1, v0}, Lmiui/view/ScreenView;->snapToScreen(IIZ)V

    goto :goto_45

    .line 1253
    :cond_e
    const/4 v1, 0x2

    if-ne p2, v1, :cond_23

    iget v1, p0, Lmiui/view/ScreenView;->mCurrentScreen:I

    .line 1254
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getScreenCount()I

    move-result v2

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_23

    .line 1255
    iget v1, p0, Lmiui/view/ScreenView;->mCurrentScreen:I

    iget v2, p0, Lmiui/view/ScreenView;->mVisibleRange:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1, p1, v0}, Lmiui/view/ScreenView;->snapToScreen(IIZ)V

    goto :goto_45

    .line 1256
    :cond_23
    const/4 v1, 0x3

    if-ne p2, v1, :cond_2c

    .line 1257
    iget v1, p0, Lmiui/view/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v1, p1, v0}, Lmiui/view/ScreenView;->snapToScreen(IIZ)V

    goto :goto_45

    .line 1259
    :cond_2c
    iget v1, p0, Lmiui/view/ScreenView;->mChildScreenWidth:I

    iget-boolean v2, p0, Lmiui/view/ScreenView;->mScrollWholeScreen:Z

    if-eqz v2, :cond_35

    .line 1260
    iget v2, p0, Lmiui/view/ScreenView;->mVisibleRange:I

    goto :goto_36

    :cond_35
    move v2, v0

    :goto_36
    mul-int/2addr v1, v2

    .line 1261
    .local v1, "snapUnit":I
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getScrollX()I

    move-result v2

    shr-int/lit8 v3, v1, 0x1

    add-int/2addr v2, v3

    iget v3, p0, Lmiui/view/ScreenView;->mChildScreenWidth:I

    div-int/2addr v2, v3

    .line 1263
    .local v2, "whichScreen":I
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0}, Lmiui/view/ScreenView;->snapToScreen(IIZ)V

    .line 1265
    .end local v1    # "snapUnit":I
    .end local v2    # "whichScreen":I
    :goto_45
    return-void
.end method

.method public blacklist snapToScreen(I)V
    .registers 4
    .param p1, "whichScreen"    # I

    .line 1273
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/view/ScreenView;->toInnerIndex(IZ)I

    move-result v1

    invoke-virtual {p0, v1, v0, v0}, Lmiui/view/ScreenView;->snapToScreen(IIZ)V

    .line 1274
    return-void
.end method

.method protected blacklist snapToScreen(IIZ)V
    .registers 5
    .param p1, "whichScreen"    # I
    .param p2, "velocity"    # I
    .param p3, "settle"    # Z

    .line 1349
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/view/ScreenView;->snapToScreen(IIZLmiui/view/ScreenView$SnapScreenOnceNotification;)V

    .line 1350
    return-void
.end method

.method protected blacklist snapToScreen(IIZLmiui/view/ScreenView$SnapScreenOnceNotification;)V
    .registers 15
    .param p1, "whichScreen"    # I
    .param p2, "velocity"    # I
    .param p3, "settle"    # Z
    .param p4, "notification"    # Lmiui/view/ScreenView$SnapScreenOnceNotification;

    .line 1297
    iget v0, p0, Lmiui/view/ScreenView;->mScreenWidth:I

    if-gtz v0, :cond_5

    .line 1298
    return-void

    .line 1300
    :cond_5
    iget-boolean v0, p0, Lmiui/view/ScreenView;->mScrollWholeScreen:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_23

    .line 1301
    nop

    .line 1302
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lmiui/view/ScreenView;->mNextScreen:I

    .line 1303
    iget v1, p0, Lmiui/view/ScreenView;->mVisibleRange:I

    rem-int v1, v0, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/view/ScreenView;->mNextScreen:I

    goto :goto_35

    .line 1305
    :cond_23
    nop

    .line 1306
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getScreenCount()I

    move-result v0

    iget v3, p0, Lmiui/view/ScreenView;->mVisibleRange:I

    sub-int/2addr v0, v3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1305
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lmiui/view/ScreenView;->mNextScreen:I

    .line 1308
    :goto_35
    iget v0, p0, Lmiui/view/ScreenView;->mNextScreen:I

    iget v1, p0, Lmiui/view/ScreenView;->mCurrentScreen:I

    sub-int/2addr v0, v1

    .line 1309
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1310
    .local v0, "screenDelta":I
    iget-object v1, p0, Lmiui/view/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_56

    .line 1311
    iget-object v1, p0, Lmiui/view/ScreenView;->mSnapScreenOnceNotification:Lmiui/view/ScreenView$SnapScreenOnceNotification;

    if-eqz v1, :cond_51

    .line 1312
    invoke-interface {v1, p0}, Lmiui/view/ScreenView$SnapScreenOnceNotification;->onSnapCancelled(Lmiui/view/ScreenView;)V

    .line 1314
    :cond_51
    iget-object v1, p0, Lmiui/view/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1316
    :cond_56
    iput-object p4, p0, Lmiui/view/ScreenView;->mSnapScreenOnceNotification:Lmiui/view/ScreenView$SnapScreenOnceNotification;

    .line 1317
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 1318
    if-eqz p3, :cond_64

    .line 1319
    iget-object v1, p0, Lmiui/view/ScreenView;->mScrollInterpolator:Lmiui/view/ScreenView$ScreenViewOvershootInterpolator;

    invoke-virtual {v1, v0, p2}, Lmiui/view/ScreenView$ScreenViewOvershootInterpolator;->setDistance(II)V

    goto :goto_69

    .line 1321
    :cond_64
    iget-object v1, p0, Lmiui/view/ScreenView;->mScrollInterpolator:Lmiui/view/ScreenView$ScreenViewOvershootInterpolator;

    invoke-virtual {v1}, Lmiui/view/ScreenView$ScreenViewOvershootInterpolator;->disableSettle()V

    .line 1323
    :goto_69
    iget v1, p0, Lmiui/view/ScreenView;->mNextScreen:I

    iget v3, p0, Lmiui/view/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v1, v3

    iget v3, p0, Lmiui/view/ScreenView;->mScrollOffset:I

    sub-int/2addr v1, v3

    .line 1324
    .local v1, "newX":I
    invoke-virtual {p0}, Lmiui/view/ScreenView;->getScrollX()I

    move-result v3

    sub-int v3, v1, v3

    .line 1325
    .local v3, "delta":I
    if-nez v3, :cond_7a

    .line 1326
    return-void

    .line 1328
    :cond_7a
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lmiui/view/ScreenView;->mScreenSnapDuration:I

    mul-int/2addr v4, v5

    iget v6, p0, Lmiui/view/ScreenView;->mScreenWidth:I

    div-int/2addr v4, v6

    .line 1329
    .local v4, "duration":I
    if-lez p2, :cond_93

    .line 1330
    int-to-float v6, v4

    int-to-float v7, p2

    const v8, 0x451c4000    # 2500.0f

    div-float/2addr v7, v8

    div-float/2addr v6, v7

    const v7, 0x3ecccccd    # 0.4f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v4, v6

    .line 1333
    :cond_93
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1334
    if-gt v0, v2, :cond_a3

    .line 1335
    iget v2, p0, Lmiui/view/ScreenView;->mScreenSnapDuration:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v2, v4

    goto :goto_a4

    .line 1334
    :cond_a3
    move v2, v4

    .line 1337
    .end local v4    # "duration":I
    .local v2, "duration":I
    :goto_a4
    iget-object v4, p0, Lmiui/view/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lmiui/view/ScreenView;->getScrollX()I

    move-result v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v7, v3

    move v9, v2

    invoke-virtual/range {v4 .. v9}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1338
    invoke-virtual {p0}, Lmiui/view/ScreenView;->invalidate()V

    .line 1339
    return-void
.end method

.method public blacklist snapToScreen(ILmiui/view/ScreenView$SnapScreenOnceNotification;)V
    .registers 5
    .param p1, "whichScreen"    # I
    .param p2, "notification"    # Lmiui/view/ScreenView$SnapScreenOnceNotification;

    .line 1284
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/view/ScreenView;->toInnerIndex(IZ)I

    move-result v1

    invoke-virtual {p0, v1, v0, v0, p2}, Lmiui/view/ScreenView;->snapToScreen(IIZLmiui/view/ScreenView$SnapScreenOnceNotification;)V

    .line 1285
    return-void
.end method

.method protected blacklist updateChildStaticTransformationByScreen(Landroid/view/View;F)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "interpolation"    # F

    .line 2011
    return-void
.end method
