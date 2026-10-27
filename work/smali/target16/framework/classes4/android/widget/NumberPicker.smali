.class public Landroid/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/NumberPicker$TwoDigitFormatter;,
        Landroid/widget/NumberPicker$OnScrollListener;,
        Landroid/widget/NumberPicker$PressedStateHelper;,
        Landroid/widget/NumberPicker$InputTextFilter;,
        Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;,
        Landroid/widget/NumberPicker$OnValueChangeListener;,
        Landroid/widget/NumberPicker$Formatter;,
        Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;,
        Landroid/widget/NumberPicker$SetSelectionCommand;,
        Landroid/widget/NumberPicker$CustomEditText;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_LAYOUT_RESOURCE_ID:I = 0x10900fd

.field private static final greylist-max-o DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final greylist-max-o DIGIT_CHARACTERS:[C

.field private static final greylist-max-o SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final greylist-max-o SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final greylist SELECTOR_MIDDLE_ITEM_INDEX:I = 0x1

.field private static final greylist SELECTOR_WHEEL_ITEM_COUNT:I = 0x3

.field private static final greylist-max-o SIZE_UNSPECIFIED:I = -0x1

.field private static final greylist-max-o SNAP_SCROLL_DURATION:I = 0x12c

.field private static final greylist-max-o TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field private static final greylist-max-o UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE:I = 0x30

.field private static final greylist-max-o UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2

.field private static final greylist-max-o sTwoDigitFormatter:Landroid/widget/NumberPicker$TwoDigitFormatter;


# instance fields
.field private greylist-max-o mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

.field private final greylist-max-o mAdjustScroller:Landroid/widget/Scroller;

.field private greylist-max-o mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

.field private greylist-max-o mBottomSelectionDividerBottom:I

.field private greylist-max-o mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private final greylist-max-o mComputeMaxWidth:Z

.field private greylist-max-o mCurrentScrollOffset:I

.field private final greylist-max-o mDecrementButton:Landroid/widget/ImageButton;

.field private greylist-max-o mDecrementVirtualButtonPressed:Z

.field private greylist-max-o mDisplayedValues:[Ljava/lang/String;

.field private final greylist-max-r mFlingScroller:Landroid/widget/Scroller;

.field private greylist-max-o mFormatter:Landroid/widget/NumberPicker$Formatter;

.field private final greylist-max-o mHasSelectorWheel:Z

.field private greylist-max-o mHideWheelUntilFocused:Z

.field private greylist-max-o mIgnoreMoveEvents:Z

.field private final greylist-max-o mIncrementButton:Landroid/widget/ImageButton;

.field private greylist-max-o mIncrementVirtualButtonPressed:Z

.field private greylist-max-o mInitialScrollOffset:I

.field private final greylist mInputText:Landroid/widget/EditText;

.field private greylist-max-o mLastDownEventTime:J

.field private greylist-max-o mLastDownEventY:F

.field private greylist-max-o mLastDownOrMoveEventY:F

.field private greylist-max-o mLastHandledDownDpadKeyCode:I

.field private greylist-max-o mLastHoveredChildVirtualViewId:I

.field private greylist-max-o mLongPressUpdateInterval:J

.field private final greylist-max-o mMaxHeight:I

.field private greylist-max-r mMaxValue:I

.field private greylist-max-o mMaxWidth:I

.field private greylist-max-r mMaximumFlingVelocity:I

.field private final greylist-max-r mMinHeight:I

.field private greylist-max-o mMinValue:I

.field private final greylist-max-r mMinWidth:I

.field private final greylist-max-o mMinimumFlingVelocity:I

.field private greylist-max-o mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

.field private greylist-max-r mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

.field private greylist-max-o mPerformClickOnTap:Z

.field private final greylist-max-o mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

.field private greylist-max-o mPreviousScrollerY:I

.field private greylist-max-o mScrollState:I

.field private final greylist-max-p mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field private greylist-max-p mSelectionDividerHeight:I

.field private final greylist-max-o mSelectionDividersDistance:I

.field private greylist-max-o mSelectorElementHeight:I

.field private final greylist-max-o mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist mSelectorIndices:[I

.field private greylist-max-o mSelectorTextGapHeight:I

.field private final greylist-max-p mSelectorWheelPaint:Landroid/graphics/Paint;

.field private greylist-max-o mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

.field private final greylist-max-o mSolidColor:I

.field private final blacklist mTapTimeoutMillis:I

.field private final greylist-max-r mTextSize:I

.field private greylist-max-o mTopSelectionDividerTop:I

.field private final greylist-max-o mTouchSlop:I

.field private greylist-max-o mValue:I

.field private greylist-max-o mVelocityTracker:Landroid/view/VelocityTracker;

.field private final greylist-max-o mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mWrapSelectorWheel:Z

.field private greylist-max-o mWrapSelectorWheelPreferred:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBottomSelectionDividerBottom(Landroid/widget/NumberPicker;)I
    .registers 1

    iget p0, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDecrementVirtualButtonPressed(Landroid/widget/NumberPicker;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayedValues(Landroid/widget/NumberPicker;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIncrementVirtualButtonPressed(Landroid/widget/NumberPicker;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInputText(Landroid/widget/NumberPicker;)Landroid/widget/EditText;
    .registers 1

    iget-object p0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLongPressUpdateInterval(Landroid/widget/NumberPicker;)J
    .registers 3

    iget-wide v0, p0, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxValue(Landroid/widget/NumberPicker;)I
    .registers 1

    iget p0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinValue(Landroid/widget/NumberPicker;)I
    .registers 1

    iget p0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectionDividerHeight(Landroid/widget/NumberPicker;)I
    .registers 1

    iget p0, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSetSelectionCommand(Landroid/widget/NumberPicker;)Landroid/widget/NumberPicker$SetSelectionCommand;
    .registers 1

    iget-object p0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTapTimeoutMillis(Landroid/widget/NumberPicker;)I
    .registers 1

    iget p0, p0, Landroid/widget/NumberPicker;->mTapTimeoutMillis:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTopSelectionDividerTop(Landroid/widget/NumberPicker;)I
    .registers 1

    iget p0, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmValue(Landroid/widget/NumberPicker;)I
    .registers 1

    iget p0, p0, Landroid/widget/NumberPicker;->mValue:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWrapSelectorWheel(Landroid/widget/NumberPicker;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDecrementVirtualButtonPressed(Landroid/widget/NumberPicker;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIncrementVirtualButtonPressed(Landroid/widget/NumberPicker;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mchangeValueByOne(Landroid/widget/NumberPicker;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mformatNumber(Landroid/widget/NumberPicker;I)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSelectedPos(Landroid/widget/NumberPicker;Ljava/lang/String;)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetWrappedSelectorIndex(Landroid/widget/NumberPicker;I)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhideSoftInput(Landroid/widget/NumberPicker;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideSoftInput()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpostChangeCurrentByOneFromLongPress(Landroid/widget/NumberPicker;ZJ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpostSetSelectionCommand(Landroid/widget/NumberPicker;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/NumberPicker;->postSetSelectionCommand(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mvalidateInputTextView(Landroid/widget/NumberPicker;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDIGIT_CHARACTERS()[C
    .registers 1

    sget-object v0, Landroid/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 220
    new-instance v0, Landroid/widget/NumberPicker$TwoDigitFormatter;

    invoke-direct {v0}, Landroid/widget/NumberPicker$TwoDigitFormatter;-><init>()V

    sput-object v0, Landroid/widget/NumberPicker;->sTwoDigitFormatter:Landroid/widget/NumberPicker$TwoDigitFormatter;

    .line 2205
    const/16 v0, 0x3c

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Landroid/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-void

    nop

    :array_12
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
        0x6f0s
        0x6f1s
        0x6f2s
        0x6f3s
        0x6f4s
        0x6f5s
        0x6f6s
        0x6f7s
        0x6f8s
        0x6f9s
        0x966s
        0x967s
        0x968s
        0x969s
        0x96as
        0x96bs
        0x96cs
        0x96ds
        0x96es
        0x96fs
        0x9e6s
        0x9e7s
        0x9e8s
        0x9e9s
        0x9eas
        0x9ebs
        0x9ecs
        0x9eds
        0x9ees
        0x9efs
        0xce6s
        0xce7s
        0xce8s
        0xce9s
        0xceas
        0xcebs
        0xcecs
        0xceds
        0xcees
        0xcefs
    .end array-data
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3

    .line 604
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 605
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 614
    const v0, 0x1010524

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 615
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 627
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 628
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 16

    .line 644
    invoke-direct/range {p0 .. p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 174
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheelPreferred:Z

    .line 329
    const-wide/16 v1, 0x12c

    iput-wide v1, p0, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 334
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 339
    const/4 v8, 0x3

    new-array v1, v8, [I

    iput-object v1, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 361
    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    .line 471
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/NumberPicker;->mScrollState:I

    .line 522
    const/4 v10, -0x1

    iput v10, p0, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 647
    sget-object v1, Lcom/android/internal/R$styleable;->NumberPicker:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 649
    sget-object v2, Lcom/android/internal/R$styleable;->NumberPicker:[I

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/NumberPicker;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 651
    const v1, 0x10900fd

    invoke-virtual {v4, v8, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 654
    if-eq v2, v1, :cond_3b

    move v1, v7

    goto :goto_3c

    :cond_3b
    move v1, v9

    :goto_3c
    iput-boolean v1, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 656
    const/4 v1, 0x2

    invoke-virtual {v4, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/widget/NumberPicker;->mHideWheelUntilFocused:Z

    .line 659
    invoke-virtual {v4, v9, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Landroid/widget/NumberPicker;->mSolidColor:I

    .line 661
    const/16 v3, 0x8

    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 663
    if-eqz v5, :cond_6a

    .line 664
    invoke-virtual {v5, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 665
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getLayoutDirection()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 666
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 667
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getDrawableState()[I

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 670
    :cond_6a
    iput-object v5, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 672
    nop

    .line 674
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 672
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v7, v6, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    .line 675
    invoke-virtual {v4, v7, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    .line 678
    nop

    .line 680
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 678
    const/high16 v6, 0x42400000    # 48.0f

    invoke-static {v7, v6, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    .line 681
    const/16 v6, 0x9

    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/NumberPicker;->mSelectionDividersDistance:I

    .line 684
    const/4 v5, 0x6

    invoke-virtual {v4, v5, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/widget/NumberPicker;->mMinHeight:I

    .line 687
    const/4 v6, 0x4

    invoke-virtual {v4, v6, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/widget/NumberPicker;->mMaxHeight:I

    .line 689
    iget v6, p0, Landroid/widget/NumberPicker;->mMinHeight:I

    if-eq v6, v10, :cond_bf

    iget v6, p0, Landroid/widget/NumberPicker;->mMaxHeight:I

    if-eq v6, v10, :cond_bf

    iget v6, p0, Landroid/widget/NumberPicker;->mMinHeight:I

    iget v8, p0, Landroid/widget/NumberPicker;->mMaxHeight:I

    if-gt v6, v8, :cond_b7

    goto :goto_bf

    .line 691
    :cond_b7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minHeight > maxHeight"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 694
    :cond_bf
    :goto_bf
    const/4 v6, 0x7

    invoke-virtual {v4, v6, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    .line 697
    const/4 v6, 0x5

    invoke-virtual {v4, v6, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    .line 699
    iget v6, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    if-eq v6, v10, :cond_e4

    iget v6, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    if-eq v6, v10, :cond_e4

    iget v6, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    iget v8, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    if-gt v6, v8, :cond_dc

    goto :goto_e4

    .line 701
    :cond_dc
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minWidth > maxWidth"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 704
    :cond_e4
    :goto_e4
    iget v6, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    if-ne v6, v10, :cond_ea

    move v6, v7

    goto :goto_eb

    :cond_ea
    move v6, v9

    :goto_eb
    iput-boolean v6, p0, Landroid/widget/NumberPicker;->mComputeMaxWidth:Z

    .line 706
    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 709
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 711
    new-instance v4, Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-direct {v4, p0}, Landroid/widget/NumberPicker$PressedStateHelper;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v4, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    .line 718
    iget-boolean v4, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    xor-int/2addr v4, v7

    invoke-virtual {p0, v4}, Landroid/widget/NumberPicker;->setWillNotDraw(Z)V

    .line 720
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "layout_inflater"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 722
    invoke-virtual {v4, v2, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 724
    new-instance v2, Landroid/widget/NumberPicker$1;

    invoke-direct {v2, p0}, Landroid/widget/NumberPicker$1;-><init>(Landroid/widget/NumberPicker;)V

    .line 736
    new-instance v4, Landroid/widget/NumberPicker$2;

    invoke-direct {v4, p0}, Landroid/widget/NumberPicker$2;-><init>(Landroid/widget/NumberPicker;)V

    .line 750
    iget-boolean v6, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    const/4 v8, 0x0

    if-nez v6, :cond_139

    .line 751
    const v6, 0x1020378

    invoke-virtual {p0, v6}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 752
    iget-object v6, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 753
    iget-object v6, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v4}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_13b

    .line 755
    :cond_139
    iput-object v8, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 759
    :goto_13b
    iget-boolean v6, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v6, :cond_155

    .line 760
    const v6, 0x10202cc

    invoke-virtual {p0, v6}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 761
    iget-object v6, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 762
    iget-object v2, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_157

    .line 764
    :cond_155
    iput-object v8, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 768
    :goto_157
    const v2, 0x102044b

    invoke-virtual {p0, v2}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 769
    iget-object v2, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    new-instance v4, Landroid/widget/NumberPicker$3;

    invoke-direct {v4, p0}, Landroid/widget/NumberPicker$3;-><init>(Landroid/widget/NumberPicker;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 779
    iget-object v2, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    new-array v4, v7, [Landroid/text/InputFilter;

    new-instance v6, Landroid/widget/NumberPicker$InputTextFilter;

    invoke-direct {v6, p0}, Landroid/widget/NumberPicker$InputTextFilter;-><init>(Landroid/widget/NumberPicker;)V

    aput-object v6, v4, v9

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 783
    iget-object v2, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 784
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 787
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 788
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroid/widget/NumberPicker;->mTouchSlop:I

    .line 789
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->viewconfigurationApis()Z

    move-result v2

    if-eqz v2, :cond_199

    .line 790
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getTapTimeoutMillis()I

    move-result v2

    goto :goto_19d

    :cond_199
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    :goto_19d
    iput v2, p0, Landroid/widget/NumberPicker;->mTapTimeoutMillis:I

    .line 791
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/widget/NumberPicker;->mMinimumFlingVelocity:I

    .line 792
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    div-int/2addr v1, v3

    iput v1, p0, Landroid/widget/NumberPicker;->mMaximumFlingVelocity:I

    .line 794
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTextSize()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/NumberPicker;->mTextSize:I

    .line 797
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 798
    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 799
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 800
    iget v2, p0, Landroid/widget/NumberPicker;->mTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 801
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/widget/flags/Flags;->fixUnboldedTypefaceForNumberpicker()Z

    move-result v2

    if-eqz v2, :cond_1dc

    .line 802
    iget-object v2, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_1e5

    .line 804
    :cond_1dc
    iget-object v2, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 806
    :goto_1e5
    iget-object v2, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 807
    sget-object v3, Landroid/widget/NumberPicker;->ENABLED_STATE_SET:[I

    invoke-virtual {v2, v3, v10}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 808
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 809
    iput-object v1, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 812
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v8, v7}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 813
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x40200000    # 2.5f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 815
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 818
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_21f

    .line 819
    invoke-virtual {p0, v7}, Landroid/widget/NumberPicker;->setImportantForAccessibility(I)V

    .line 823
    :cond_21f
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getFocusable()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_22d

    .line 824
    invoke-virtual {p0, v7}, Landroid/widget/NumberPicker;->setFocusable(I)V

    .line 825
    invoke-virtual {p0, v7}, Landroid/widget/NumberPicker;->setFocusableInTouchMode(Z)V

    .line 827
    :cond_22d
    return-void
.end method

.method static synthetic blacklist access$000(Landroid/widget/NumberPicker;)I
    .registers 1

    .line 112
    iget p0, p0, Landroid/widget/NumberPicker;->mRight:I

    return p0
.end method

.method static synthetic blacklist access$100(Landroid/widget/NumberPicker;)I
    .registers 1

    .line 112
    iget p0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return p0
.end method

.method static synthetic blacklist access$1000(Landroid/widget/NumberPicker;)I
    .registers 1

    .line 112
    iget p0, p0, Landroid/widget/NumberPicker;->mScrollY:I

    return p0
.end method

.method static synthetic blacklist access$1100(Landroid/widget/NumberPicker;)I
    .registers 1

    .line 112
    iget p0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return p0
.end method

.method static synthetic blacklist access$1200(Landroid/widget/NumberPicker;)I
    .registers 1

    .line 112
    iget p0, p0, Landroid/widget/NumberPicker;->mRight:I

    return p0
.end method

.method static synthetic blacklist access$1300(Landroid/widget/NumberPicker;)I
    .registers 1

    .line 112
    iget p0, p0, Landroid/widget/NumberPicker;->mLeft:I

    return p0
.end method

.method static synthetic blacklist access$1400(Landroid/widget/NumberPicker;)I
    .registers 1

    .line 112
    iget p0, p0, Landroid/widget/NumberPicker;->mScrollY:I

    return p0
.end method

.method static synthetic blacklist access$1500(Landroid/widget/NumberPicker;)I
    .registers 1

    .line 112
    iget p0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return p0
.end method

.method static synthetic blacklist access$1600(Landroid/widget/NumberPicker;)I
    .registers 1

    .line 112
    iget p0, p0, Landroid/widget/NumberPicker;->mTop:I

    return p0
.end method

.method static synthetic blacklist access$1700(Landroid/widget/NumberPicker;)I
    .registers 1

    .line 112
    iget p0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return p0
.end method

.method static synthetic blacklist access$1800(Landroid/widget/NumberPicker;)I
    .registers 1

    .line 112
    iget p0, p0, Landroid/widget/NumberPicker;->mScrollY:I

    return p0
.end method

.method static synthetic blacklist access$1900(Landroid/widget/NumberPicker;)I
    .registers 1

    .line 112
    iget p0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return p0
.end method

.method static synthetic blacklist access$200(Landroid/widget/NumberPicker;)I
    .registers 1

    .line 112
    iget p0, p0, Landroid/widget/NumberPicker;->mRight:I

    return p0
.end method

.method static synthetic blacklist access$2000(Landroid/widget/NumberPicker;)I
    .registers 1

    .line 112
    iget p0, p0, Landroid/widget/NumberPicker;->mRight:I

    return p0
.end method

.method static synthetic blacklist access$2100(Landroid/widget/NumberPicker;)I
    .registers 1

    .line 112
    iget p0, p0, Landroid/widget/NumberPicker;->mLeft:I

    return p0
.end method

.method static synthetic blacklist access$2200(Landroid/widget/NumberPicker;)I
    .registers 1

    .line 112
    iget p0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return p0
.end method

.method static synthetic blacklist access$2300(Landroid/widget/NumberPicker;)I
    .registers 1

    .line 112
    iget p0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return p0
.end method

.method static synthetic blacklist access$2400(Landroid/widget/NumberPicker;)I
    .registers 1

    .line 112
    iget p0, p0, Landroid/widget/NumberPicker;->mRight:I

    return p0
.end method

.method static synthetic blacklist access$2500(Landroid/widget/NumberPicker;)I
    .registers 1

    .line 112
    iget p0, p0, Landroid/widget/NumberPicker;->mLeft:I

    return p0
.end method

.method static synthetic blacklist access$2600(Landroid/widget/NumberPicker;)I
    .registers 1

    .line 112
    iget p0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return p0
.end method

.method static synthetic blacklist access$2700(Landroid/widget/NumberPicker;)I
    .registers 1

    .line 112
    iget p0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return p0
.end method

.method static synthetic blacklist access$2800(Landroid/widget/NumberPicker;)I
    .registers 1

    .line 112
    iget p0, p0, Landroid/widget/NumberPicker;->mRight:I

    return p0
.end method

.method static synthetic blacklist access$2900(Landroid/widget/NumberPicker;)I
    .registers 1

    .line 112
    iget p0, p0, Landroid/widget/NumberPicker;->mLeft:I

    return p0
.end method

.method static synthetic blacklist access$300(Landroid/widget/NumberPicker;)I
    .registers 1

    .line 112
    iget p0, p0, Landroid/widget/NumberPicker;->mRight:I

    return p0
.end method

.method static synthetic blacklist access$3000(Landroid/widget/NumberPicker;)I
    .registers 1

    .line 112
    iget p0, p0, Landroid/widget/NumberPicker;->mScrollY:I

    return p0
.end method

.method static synthetic blacklist access$3100(Landroid/widget/NumberPicker;)I
    .registers 1

    .line 112
    iget p0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return p0
.end method

.method static synthetic blacklist access$3200(Landroid/widget/NumberPicker;)I
    .registers 1

    .line 112
    iget p0, p0, Landroid/widget/NumberPicker;->mTop:I

    return p0
.end method

.method static synthetic blacklist access$3300(Landroid/widget/NumberPicker;)I
    .registers 1

    .line 112
    iget p0, p0, Landroid/widget/NumberPicker;->mRight:I

    return p0
.end method

.method static synthetic blacklist access$3400(Landroid/widget/NumberPicker;)I
    .registers 1

    .line 112
    iget p0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return p0
.end method

.method static synthetic blacklist access$3500(Landroid/widget/NumberPicker;)I
    .registers 1

    .line 112
    iget p0, p0, Landroid/widget/NumberPicker;->mRight:I

    return p0
.end method

.method static synthetic blacklist access$3600(Landroid/widget/NumberPicker;)I
    .registers 1

    .line 112
    iget p0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return p0
.end method

.method static synthetic blacklist access$3700(Landroid/widget/NumberPicker;)I
    .registers 1

    .line 112
    iget p0, p0, Landroid/widget/NumberPicker;->mRight:I

    return p0
.end method

.method static synthetic blacklist access$3800(Landroid/widget/NumberPicker;)I
    .registers 1

    .line 112
    iget p0, p0, Landroid/widget/NumberPicker;->mRight:I

    return p0
.end method

.method static synthetic blacklist access$3900(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .registers 1

    .line 112
    iget-object p0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic blacklist access$400(Landroid/widget/NumberPicker;)I
    .registers 1

    .line 112
    iget p0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return p0
.end method

.method static synthetic blacklist access$4000(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .registers 1

    .line 112
    iget-object p0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic blacklist access$4100(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .registers 1

    .line 112
    iget-object p0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic blacklist access$4200(Landroid/widget/NumberPicker;Landroid/graphics/Rect;)Z
    .registers 2

    .line 112
    invoke-virtual {p0, p1}, Landroid/widget/NumberPicker;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$4300(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .registers 1

    .line 112
    iget-object p0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic blacklist access$4400(Landroid/widget/NumberPicker;Landroid/graphics/Rect;)Z
    .registers 2

    .line 112
    invoke-virtual {p0, p1}, Landroid/widget/NumberPicker;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$4500(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .registers 1

    .line 112
    iget-object p0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic blacklist access$500(Landroid/widget/NumberPicker;)I
    .registers 1

    .line 112
    iget p0, p0, Landroid/widget/NumberPicker;->mRight:I

    return p0
.end method

.method static synthetic blacklist access$600(Landroid/widget/NumberPicker;)I
    .registers 1

    .line 112
    iget p0, p0, Landroid/widget/NumberPicker;->mRight:I

    return p0
.end method

.method static synthetic blacklist access$700(Landroid/widget/NumberPicker;)I
    .registers 1

    .line 112
    iget p0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return p0
.end method

.method static synthetic blacklist access$800(Landroid/widget/NumberPicker;)I
    .registers 1

    .line 112
    iget p0, p0, Landroid/widget/NumberPicker;->mRight:I

    return p0
.end method

.method static synthetic blacklist access$900(Landroid/widget/NumberPicker;)I
    .registers 1

    .line 112
    iget p0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return p0
.end method

.method private greylist changeValueByOne(Z)V
    .registers 15

    .line 1877
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v0, :cond_37

    .line 1878
    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideSoftInput()V

    .line 1879
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1880
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 1882
    :cond_14
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1883
    if-eqz p1, :cond_27

    .line 1884
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget p1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    neg-int v5, p1

    const/16 v6, 0x12c

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_33

    .line 1886
    :cond_27
    iget-object v7, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v11, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    const/16 v12, 0x12c

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1888
    :goto_33
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    goto :goto_47

    .line 1890
    :cond_37
    const/4 v0, 0x1

    if-eqz p1, :cond_41

    .line 1891
    iget p1, p0, Landroid/widget/NumberPicker;->mValue:I

    add-int/2addr p1, v0

    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    goto :goto_47

    .line 1893
    :cond_41
    iget p1, p0, Landroid/widget/NumberPicker;->mValue:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1896
    :goto_47
    return-void
.end method

.method private greylist-max-o decrementSelectorIndices([I)V
    .registers 5

    .line 1996
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_3
    if-lez v0, :cond_e

    .line 1997
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1996
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 1999
    :cond_e
    aget v0, p1, v1

    sub-int/2addr v0, v1

    .line 2000
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1b

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ge v0, v1, :cond_1b

    .line 2001
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 2003
    :cond_1b
    const/4 v1, 0x0

    aput v0, p1, v1

    .line 2004
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 2005
    return-void
.end method

.method private greylist-max-o ensureCachedScrollSelectorValue(I)V
    .registers 5

    .line 2012
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 2013
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2014
    if-eqz v1, :cond_b

    .line 2015
    return-void

    .line 2017
    :cond_b
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-lt p1, v1, :cond_26

    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le p1, v1, :cond_14

    goto :goto_26

    .line 2020
    :cond_14
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v1, :cond_21

    .line 2021
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int v1, p1, v1

    .line 2022
    iget-object v2, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v2, v1

    .line 2023
    goto :goto_28

    .line 2024
    :cond_21
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_28

    .line 2018
    :cond_26
    :goto_26
    const-string v1, ""

    .line 2027
    :goto_28
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2028
    return-void
.end method

.method private greylist-max-o ensureScrollWheelAdjusted()Z
    .registers 8

    .line 2305
    iget v0, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    sub-int/2addr v0, v1

    .line 2306
    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 2307
    iput v1, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 2308
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_1c

    .line 2309
    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    if-lez v0, :cond_19

    neg-int v1, v1

    :cond_19
    add-int/2addr v0, v1

    move v5, v0

    goto :goto_1d

    .line 2308
    :cond_1c
    move v5, v0

    .line 2311
    :goto_1d
    iget-object v1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    const/4 v4, 0x0

    const/16 v6, 0x320

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2312
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 2313
    const/4 v0, 0x1

    return v0

    .line 2315
    :cond_2c
    return v1
.end method

.method private greylist-max-o fling(I)V
    .registers 22

    .line 1952
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1954
    if-lez p1, :cond_18

    .line 1955
    iget-object v2, v0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v9, 0x0

    const v10, 0x7fffffff

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v6, p1

    invoke-virtual/range {v2 .. v10}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_2d

    .line 1957
    :cond_18
    iget-object v11, v0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/16 v18, 0x0

    const v19, 0x7fffffff

    const/4 v12, 0x0

    const v13, 0x7fffffff

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v15, p1

    invoke-virtual/range {v11 .. v19}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1960
    :goto_2d
    invoke-virtual {v0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1961
    return-void
.end method

.method private greylist-max-o formatNumber(I)Ljava/lang/String;
    .registers 3

    .line 2031
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Landroid/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    :cond_b
    invoke-static {p1}, Landroid/widget/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object p1

    :goto_f
    return-object p1
.end method

.method private static greylist-max-o formatNumberWithLocale(I)Ljava/lang/String;
    .registers 3

    .line 2934
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%d"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-o getSelectedPos(Ljava/lang/String;)I
    .registers 4

    .line 2162
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_b

    .line 2164
    :try_start_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_8} :catch_9

    return p1

    .line 2165
    :catch_9
    move-exception p1

    .line 2167
    goto :goto_30

    .line 2169
    :cond_b
    const/4 v0, 0x0

    :goto_c
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2a

    .line 2171
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2172
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2173
    iget p1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    add-int/2addr p1, v0

    return p1

    .line 2169
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 2182
    :cond_2a
    :try_start_2a
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_2e} :catch_2f

    return p1

    .line 2183
    :catch_2f
    move-exception p1

    .line 2188
    :goto_30
    iget p1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    return p1
.end method

.method public static final greylist getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;
    .registers 1

    .line 227
    sget-object v0, Landroid/widget/NumberPicker;->sTwoDigitFormatter:Landroid/widget/NumberPicker$TwoDigitFormatter;

    return-object v0
.end method

.method private greylist-max-o getWrappedSelectorIndex(I)I
    .registers 5

    .line 1967
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_13

    .line 1968
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    sub-int/2addr p1, v1

    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    rem-int/2addr p1, v1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 1969
    :cond_13
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_26

    .line 1970
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, p1

    iget p1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr p1, v2

    rem-int/2addr v1, p1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 1972
    :cond_26
    return p1
.end method

.method private greylist-max-o hideSoftInput()V
    .registers 4

    .line 1341
    nop

    .line 1342
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1343
    if-eqz v0, :cond_15

    .line 1344
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromView(Landroid/view/View;I)Z

    .line 1346
    :cond_15
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v0, :cond_1f

    .line 1347
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1349
    :cond_1f
    return-void
.end method

.method private greylist-max-o incrementSelectorIndices([I)V
    .registers 5

    .line 1980
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_e

    .line 1981
    add-int/lit8 v1, v0, 0x1

    aget v2, p1, v1

    aput v2, p1, v0

    .line 1980
    move v0, v1

    goto :goto_1

    .line 1983
    :cond_e
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 1984
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1f

    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le v0, v1, :cond_1f

    .line 1985
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 1987
    :cond_1f
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aput v0, p1, v1

    .line 1988
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1989
    return-void
.end method

.method private greylist-max-o initializeFadingEdges()V
    .registers 3

    .line 1916
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1917
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    iget v1, p0, Landroid/widget/NumberPicker;->mTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/NumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setFadingEdgeLength(I)V

    .line 1918
    return-void
.end method

.method private greylist-max-o initializeSelectorWheel()V
    .registers 5

    .line 1899
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1900
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1901
    array-length v1, v0

    iget v2, p0, Landroid/widget/NumberPicker;->mTextSize:I

    mul-int/2addr v1, v2

    .line 1902
    iget v2, p0, Landroid/widget/NumberPicker;->mBottom:I

    iget v3, p0, Landroid/widget/NumberPicker;->mTop:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    .line 1903
    array-length v0, v0

    int-to-float v0, v0

    .line 1904
    div-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    .line 1905
    iget v0, p0, Landroid/widget/NumberPicker;->mTextSize:I

    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    .line 1908
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBaseline()I

    move-result v0

    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 1909
    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    .line 1911
    iget v0, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v0, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1912
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1913
    return-void
.end method

.method private greylist initializeSelectorWheelIndices()V
    .registers 6

    .line 1825
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1826
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1827
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    .line 1828
    const/4 v2, 0x0

    :goto_c
    iget-object v3, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    array-length v3, v3

    if-ge v2, v3, :cond_26

    .line 1829
    add-int/lit8 v3, v2, -0x1

    add-int/2addr v3, v1

    .line 1830
    iget-boolean v4, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_1c

    .line 1831
    invoke-direct {p0, v3}, Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v3

    .line 1833
    :cond_1c
    aput v3, v0, v2

    .line 1834
    aget v3, v0, v2

    invoke-direct {p0, v3}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1828
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1836
    :cond_26
    return-void
.end method

.method private greylist-max-o makeMeasureSpec(II)I
    .registers 6

    .line 1782
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    .line 1783
    return p1

    .line 1785
    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1786
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1787
    const/high16 v2, 0x40000000    # 2.0f

    sparse-switch v1, :sswitch_data_3a

    .line 1795
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown measure mode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1789
    :sswitch_2a
    return p1

    .line 1793
    :sswitch_2b
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    .line 1791
    :sswitch_30
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    nop

    :sswitch_data_3a
    .sparse-switch
        -0x80000000 -> :sswitch_30
        0x0 -> :sswitch_2b
        0x40000000 -> :sswitch_2a
    .end sparse-switch
.end method

.method private greylist-max-o moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .registers 7

    .line 885
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 886
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result p1

    sub-int/2addr v1, p1

    .line 887
    iget p1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr p1, v1

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    rem-int/2addr p1, v2

    .line 888
    iget v2, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v2, p1

    .line 889
    const/4 p1, 0x0

    if-eqz v2, :cond_31

    .line 890
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v4, v4, 0x2

    if-le v3, v4, :cond_2c

    .line 891
    if-lez v2, :cond_29

    .line 892
    iget v3, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v2, v3

    goto :goto_2c

    .line 894
    :cond_29
    iget v3, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v2, v3

    .line 897
    :cond_2c
    :goto_2c
    add-int/2addr v1, v2

    .line 898
    invoke-virtual {p0, p1, v1}, Landroid/widget/NumberPicker;->scrollBy(II)V

    .line 899
    return v0

    .line 901
    :cond_31
    return p1
.end method

.method private greylist-max-o notifyChange(II)V
    .registers 4

    .line 2091
    iget-object p2, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    if-eqz p2, :cond_b

    .line 2092
    iget-object p2, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    invoke-interface {p2, p0, p1, v0}, Landroid/widget/NumberPicker$OnValueChangeListener;->onValueChange(Landroid/widget/NumberPicker;II)V

    .line 2094
    :cond_b
    return-void
.end method

.method private greylist-max-o onScrollStateChange(I)V
    .registers 3

    .line 1939
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_5

    .line 1940
    return-void

    .line 1942
    :cond_5
    iput p1, p0, Landroid/widget/NumberPicker;->mScrollState:I

    .line 1943
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_10

    .line 1944
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/NumberPicker$OnScrollListener;->onScrollStateChange(Landroid/widget/NumberPicker;I)V

    .line 1946
    :cond_10
    return-void
.end method

.method private greylist-max-o onScrollerFinished(Landroid/widget/Scroller;)V
    .registers 3

    .line 1924
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_f

    .line 1925
    invoke-direct {p0}, Landroid/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    .line 1926
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1927
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_17

    .line 1929
    :cond_f
    iget p1, p0, Landroid/widget/NumberPicker;->mScrollState:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_17

    .line 1930
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1933
    :cond_17
    :goto_17
    return-void
.end method

.method private greylist-max-o postBeginSoftInputOnLongPressCommand()V
    .registers 4

    .line 2125
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_c

    .line 2126
    new-instance v0, Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    goto :goto_11

    .line 2128
    :cond_c
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2130
    :goto_11
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getLongPressTimeoutMillis()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2131
    return-void
.end method

.method private greylist-max-o postChangeCurrentByOneFromLongPress(ZJ)V
    .registers 5

    .line 2102
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_c

    .line 2103
    new-instance v0, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_11

    .line 2105
    :cond_c
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2107
    :goto_11
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->-$$Nest$msetStep(Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 2108
    iget-object p1, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2109
    return-void
.end method

.method private greylist-max-o postSetSelectionCommand(II)V
    .registers 5

    .line 2196
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    if-nez v0, :cond_d

    .line 2197
    new-instance v0, Landroid/widget/NumberPicker$SetSelectionCommand;

    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-direct {v0, v1}, Landroid/widget/NumberPicker$SetSelectionCommand;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    .line 2199
    :cond_d
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {v0, p1, p2}, Landroid/widget/NumberPicker$SetSelectionCommand;->post(II)V

    .line 2200
    return-void
.end method

.method private greylist-max-o removeAllCallbacks()V
    .registers 2

    .line 2146
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_9

    .line 2147
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2149
    :cond_9
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_12

    .line 2150
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {v0}, Landroid/widget/NumberPicker$SetSelectionCommand;->cancel()V

    .line 2152
    :cond_12
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_1b

    .line 2153
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2155
    :cond_1b
    iget-object v0, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Landroid/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 2156
    return-void
.end method

.method private greylist-max-o removeBeginSoftInputCommand()V
    .registers 2

    .line 2137
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_9

    .line 2138
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2140
    :cond_9
    return-void
.end method

.method private greylist-max-o removeChangeCurrentByOneFromLongPress()V
    .registers 2

    .line 2115
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_9

    .line 2116
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2118
    :cond_9
    return-void
.end method

.method private greylist-max-o resolveSizeAndStateRespectingMinSize(III)I
    .registers 5

    .line 1811
    const/4 v0, -0x1

    if-eq p1, v0, :cond_d

    .line 1812
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1813
    const/4 p2, 0x0

    invoke-static {p1, p3, p2}, Landroid/widget/NumberPicker;->resolveSizeAndState(III)I

    move-result p1

    return p1

    .line 1815
    :cond_d
    return p2
.end method

.method private greylist-max-o setValueInternal(IZ)V
    .registers 6

    .line 1845
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    if-ne v0, p1, :cond_5

    .line 1846
    return-void

    .line 1849
    :cond_5
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_e

    .line 1850
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    goto :goto_1a

    .line 1852
    :cond_e
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1853
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1855
    :goto_1a
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1856
    iput p1, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1858
    iget v1, p0, Landroid/widget/NumberPicker;->mScrollState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_26

    .line 1859
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1861
    :cond_26
    if-eqz p2, :cond_2b

    .line 1862
    invoke-direct {p0, v0, p1}, Landroid/widget/NumberPicker;->notifyChange(II)V

    .line 1864
    :cond_2b
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1865
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1866
    return-void
.end method

.method private greylist-max-o showSoftInput()V
    .registers 4

    .line 1326
    nop

    .line 1327
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1328
    if-eqz v0, :cond_23

    .line 1329
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    .line 1330
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1332
    :cond_19
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1333
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1335
    :cond_23
    return-void
.end method

.method private greylist-max-o tryComputeMaxWidth()V
    .registers 6

    .line 1355
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mComputeMaxWidth:Z

    if-nez v0, :cond_5

    .line 1356
    return-void

    .line 1358
    :cond_5
    nop

    .line 1359
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_32

    .line 1360
    nop

    .line 1361
    const/4 v0, 0x0

    move v2, v1

    :goto_e
    const/16 v3, 0x9

    if-gt v2, v3, :cond_24

    .line 1362
    iget-object v3, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Landroid/widget/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 1363
    cmpl-float v4, v3, v0

    if-lez v4, :cond_21

    .line 1364
    move v0, v3

    .line 1361
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1367
    :cond_24
    nop

    .line 1368
    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 1369
    :goto_27
    if-lez v2, :cond_2e

    .line 1370
    add-int/lit8 v1, v1, 0x1

    .line 1371
    div-int/lit8 v2, v2, 0xa

    goto :goto_27

    .line 1373
    :cond_2e
    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    .line 1374
    goto :goto_4c

    .line 1375
    :cond_32
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v0, v0

    .line 1376
    move v2, v1

    :goto_36
    if-ge v1, v0, :cond_4b

    .line 1377
    iget-object v3, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 1378
    int-to-float v4, v2

    cmpl-float v4, v3, v4

    if-lez v4, :cond_48

    .line 1379
    float-to-int v2, v3

    .line 1376
    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    :cond_4b
    move v0, v2

    .line 1383
    :goto_4c
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1384
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    if-eq v1, v0, :cond_6c

    .line 1385
    iget v1, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    if-le v0, v1, :cond_65

    .line 1386
    iput v0, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    goto :goto_69

    .line 1388
    :cond_65
    iget v0, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    iput v0, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    .line 1390
    :goto_69
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1392
    :cond_6c
    return-void
.end method

.method private greylist-max-o updateInputTextView()Z
    .registers 6

    .line 2060
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_b

    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 2061
    :cond_b
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 2062
    :goto_14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_69

    .line 2063
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2064
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_69

    .line 2065
    iget-object v3, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2066
    iget-object v3, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_67

    .line 2067
    const/16 v3, 0x10

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    .line 2069
    iget-object v4, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2070
    iget-object v4, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2071
    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 2072
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 2073
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 2074
    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 2075
    const/4 v0, 0x2

    invoke-virtual {v3, p0, v0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2077
    invoke-virtual {p0, p0, v3}, Landroid/widget/NumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2079
    :cond_67
    const/4 v0, 0x1

    return v0

    .line 2083
    :cond_69
    return v2
.end method

.method private greylist-max-o updateWrapSelectorWheel()V
    .registers 5

    .line 1437
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    array-length v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v3

    .line 1438
    :goto_f
    if-eqz v0, :cond_16

    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheelPreferred:Z

    if-eqz v0, :cond_16

    goto :goto_17

    :cond_16
    move v2, v3

    :goto_17
    iput-boolean v2, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 1439
    return-void
.end method

.method private greylist-max-o validateInputTextView(Landroid/view/View;)V
    .registers 3

    .line 2035
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2036
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2038
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    goto :goto_20

    .line 2041
    :cond_14
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result p1

    .line 2042
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    .line 2044
    :goto_20
    return-void
.end method


# virtual methods
.method public whitelist computeScroll()V
    .registers 5

    .line 1142
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 1143
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1144
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 1145
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1146
    return-void

    .line 1149
    :cond_11
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1150
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 1151
    iget v2, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_22

    .line 1152
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1154
    :cond_22
    iget v2, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    sub-int v2, v1, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Landroid/widget/NumberPicker;->scrollBy(II)V

    .line 1155
    iput v1, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1156
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1157
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_39

    .line 1159
    :cond_36
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1161
    :goto_39
    return-void
.end method

.method protected whitelist computeVerticalScrollExtent()I
    .registers 2

    .line 1223
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getHeight()I

    move-result v0

    return v0
.end method

.method protected whitelist computeVerticalScrollOffset()I
    .registers 2

    .line 1213
    iget v0, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    return v0
.end method

.method protected whitelist computeVerticalScrollRange()I
    .registers 3

    .line 1218
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method protected whitelist dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 1093
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_9

    .line 1094
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1096
    :cond_9
    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1097
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 1099
    iget v1, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    if-ge v0, v1, :cond_20

    .line 1100
    const/4 v0, 0x3

    goto :goto_27

    .line 1101
    :cond_20
    iget v1, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    if-le v0, v1, :cond_26

    .line 1102
    const/4 v0, 0x1

    goto :goto_27

    .line 1104
    :cond_26
    const/4 v0, 0x2

    .line 1106
    :goto_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    .line 1107
    nop

    .line 1108
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 1109
    const/4 v2, -0x1

    const/16 v3, 0x100

    const/4 v4, 0x0

    const/16 v5, 0x40

    const/16 v6, 0x80

    packed-switch p1, :pswitch_data_64

    :pswitch_3d
    goto :goto_62

    .line 1131
    :pswitch_3e
    invoke-virtual {v1, v0, v3}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1133
    iput v2, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    goto :goto_62

    .line 1111
    :pswitch_44
    invoke-virtual {v1, v0, v6}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1113
    iput v0, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 1114
    invoke-virtual {v1, v0, v5, v4}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    .line 1116
    goto :goto_62

    .line 1118
    :pswitch_4d
    iget p1, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq p1, v0, :cond_62

    iget p1, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq p1, v2, :cond_62

    .line 1120
    iget p1, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    invoke-virtual {v1, p1, v3}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1123
    invoke-virtual {v1, v0, v6}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1125
    iput v0, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 1126
    invoke-virtual {v1, v0, v5, v4}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    .line 1137
    :cond_62
    :goto_62
    const/4 p1, 0x0

    return p1

    :pswitch_data_64
    .packed-switch 0x7
        :pswitch_4d
        :pswitch_3d
        :pswitch_44
        :pswitch_3e
    .end packed-switch
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7

    .line 1043
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1044
    sparse-switch v0, :sswitch_data_5e

    goto :goto_58

    .line 1048
    :sswitch_8
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 1049
    goto :goto_58

    .line 1052
    :sswitch_c
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v1, :cond_11

    .line 1053
    goto :goto_58

    .line 1055
    :cond_11
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_74

    goto :goto_58

    .line 1069
    :pswitch_1a
    iget v1, p0, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_58

    .line 1070
    const/4 p1, -0x1

    iput p1, p0, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 1071
    return v2

    .line 1057
    :pswitch_22
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    const/16 v3, 0x14

    if-nez v1, :cond_3f

    if-ne v0, v3, :cond_35

    .line 1058
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v4

    if-ge v1, v4, :cond_58

    goto :goto_3f

    :cond_35
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v4

    if-le v1, v4, :cond_58

    .line 1059
    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->requestFocus()Z

    .line 1060
    iput v0, p0, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 1061
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 1062
    iget-object p1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_57

    .line 1063
    if-ne v0, v3, :cond_53

    move p1, v2

    goto :goto_54

    :cond_53
    const/4 p1, 0x0

    :goto_54
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    .line 1065
    :cond_57
    return v2

    .line 1076
    :cond_58
    :goto_58
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :sswitch_data_5e
    .sparse-switch
        0x13 -> :sswitch_c
        0x14 -> :sswitch_c
        0x17 -> :sswitch_8
        0x42 -> :sswitch_8
        0xa0 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_22
        :pswitch_1a
    .end packed-switch
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1031
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1032
    packed-switch v0, :pswitch_data_10

    :pswitch_7
    goto :goto_b

    .line 1035
    :pswitch_8
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 1038
    :goto_b
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public whitelist dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1081
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1082
    packed-switch v0, :pswitch_data_10

    :pswitch_7
    goto :goto_b

    .line 1085
    :pswitch_8
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 1088
    :goto_b
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected whitelist drawableStateChanged()V
    .registers 3

    .line 1627
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 1629
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 1630
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1631
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1632
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1634
    :cond_1a
    return-void
.end method

.method public whitelist getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .registers 2

    .line 1727
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_9

    .line 1728
    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    return-object v0

    .line 1730
    :cond_9
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_14

    .line 1731
    new-instance v0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 1733
    :cond_14
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    return-object v0
.end method

.method protected whitelist getBottomFadingEdgeStrength()F
    .registers 2

    .line 1615
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public blacklist getDisplayedValueForCurrentSelection()Ljava/lang/CharSequence;
    .registers 3

    .line 1586
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getDisplayedValues()[Ljava/lang/String;
    .registers 2

    .line 1544
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMaxValue()I
    .registers 2

    .line 1507
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    return v0
.end method

.method public whitelist getMinValue()I
    .registers 2

    .line 1470
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    return v0
.end method

.method public whitelist getSelectionDividerHeight()I
    .registers 2

    .line 1605
    iget v0, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    return v0
.end method

.method public whitelist getSolidColor()I
    .registers 2

    .line 1228
    iget v0, p0, Landroid/widget/NumberPicker;->mSolidColor:I

    return v0
.end method

.method public whitelist getTextColor()I
    .registers 2

    .line 1752
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public whitelist getTextSize()F
    .registers 2

    .line 1771
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method protected whitelist getTopFadingEdgeStrength()F
    .registers 2

    .line 1610
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public whitelist getValue()I
    .registers 2

    .line 1461
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    return v0
.end method

.method public whitelist getWrapSelectorWheel()Z
    .registers 2

    .line 1403
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method public whitelist jumpDrawablesToCurrentState()V
    .registers 2

    .line 1639
    invoke-super {p0}, Landroid/widget/LinearLayout;->jumpDrawablesToCurrentState()V

    .line 1641
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 1642
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1644
    :cond_c
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 1

    .line 1620
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1621
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 1622
    return-void
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 11

    .line 1658
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_8

    .line 1659
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1660
    return-void

    .line 1662
    :cond_8
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHideWheelUntilFocused:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->hasFocus()Z

    move-result v0

    goto :goto_13

    :cond_12
    move v0, v1

    .line 1663
    :goto_13
    iget v2, p0, Landroid/widget/NumberPicker;->mRight:I

    iget v3, p0, Landroid/widget/NumberPicker;->mLeft:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 1664
    iget v3, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    int-to-float v3, v3

    .line 1667
    const/4 v4, 0x0

    if-eqz v0, :cond_5d

    iget-object v5, p0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5d

    iget v5, p0, Landroid/widget/NumberPicker;->mScrollState:I

    if-nez v5, :cond_5d

    .line 1669
    iget-boolean v5, p0, Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    if-eqz v5, :cond_42

    .line 1670
    iget-object v5, p0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v6, Landroid/widget/NumberPicker;->PRESSED_STATE_SET:[I

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1671
    iget-object v5, p0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroid/widget/NumberPicker;->mRight:I

    iget v7, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    invoke-virtual {v5, v4, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1672
    iget-object v5, p0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1674
    :cond_42
    iget-boolean v5, p0, Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    if-eqz v5, :cond_5d

    .line 1675
    iget-object v5, p0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v6, Landroid/widget/NumberPicker;->PRESSED_STATE_SET:[I

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1676
    iget-object v5, p0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    iget v7, p0, Landroid/widget/NumberPicker;->mRight:I

    iget v8, p0, Landroid/widget/NumberPicker;->mBottom:I

    invoke-virtual {v5, v4, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1678
    iget-object v5, p0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1683
    :cond_5d
    iget-object v5, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1684
    move v6, v4

    :goto_60
    array-length v7, v5

    if-ge v6, v7, :cond_87

    .line 1685
    aget v7, v5, v6

    .line 1686
    iget-object v8, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1692
    if-eqz v0, :cond_71

    if-ne v6, v1, :cond_7b

    :cond_71
    if-ne v6, v1, :cond_80

    iget-object v8, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 1693
    invoke-virtual {v8}, Landroid/widget/EditText;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_80

    .line 1694
    :cond_7b
    iget-object v8, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v2, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1696
    :cond_80
    iget v7, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    int-to-float v7, v7

    add-float/2addr v3, v7

    .line 1684
    add-int/lit8 v6, v6, 0x1

    goto :goto_60

    .line 1700
    :cond_87
    if-eqz v0, :cond_b0

    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b0

    .line 1702
    iget v0, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 1703
    iget v1, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    add-int/2addr v1, v0

    .line 1704
    iget-object v2, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/widget/NumberPicker;->mRight:I

    invoke-virtual {v2, v4, v0, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1705
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1708
    iget v0, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 1709
    iget v1, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    sub-int v1, v0, v1

    .line 1710
    iget-object v2, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/widget/NumberPicker;->mRight:I

    invoke-virtual {v2, v4, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1711
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1713
    :cond_b0
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 1718
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1719
    const-class v0, Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1720
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1721
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1722
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1723
    return-void
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 906
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_ba

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_ba

    .line 909
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 910
    packed-switch v0, :pswitch_data_bc

    .line 954
    return v1

    .line 912
    :pswitch_15
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 913
    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideSoftInput()V

    .line 914
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iput v0, p0, Landroid/widget/NumberPicker;->mLastDownOrMoveEventY:F

    .line 915
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/NumberPicker;->mLastDownEventTime:J

    .line 916
    iput-boolean v1, p0, Landroid/widget/NumberPicker;->mIgnoreMoveEvents:Z

    .line 917
    iput-boolean v1, p0, Landroid/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 919
    iget p1, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iget v0, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    const/4 v0, 0x1

    if-gez p1, :cond_42

    .line 920
    iget p1, p0, Landroid/widget/NumberPicker;->mScrollState:I

    if-nez p1, :cond_54

    .line 921
    iget-object p1, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_54

    .line 924
    :cond_42
    iget p1, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iget v2, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_54

    .line 925
    iget p1, p0, Landroid/widget/NumberPicker;->mScrollState:I

    if-nez p1, :cond_54

    .line 926
    iget-object p1, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v0}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    .line 931
    :cond_54
    :goto_54
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 932
    iget-object p1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_76

    .line 933
    iget-object p1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 934
    iget-object p1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 935
    iget-object p1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    .line 936
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_b9

    .line 937
    :cond_76
    iget-object p1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_8e

    .line 938
    iget-object p1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 939
    iget-object p1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 940
    iget-object p1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_b9

    .line 941
    :cond_8e
    iget p1, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iget v2, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v2, v2

    cmpg-float p1, p1, v2

    if-gez p1, :cond_a1

    .line 942
    nop

    .line 943
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getLongPressTimeoutMillis()I

    move-result p1

    int-to-long v2, p1

    .line 942
    invoke-direct {p0, v1, v2, v3}, Landroid/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_b9

    .line 944
    :cond_a1
    iget p1, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iget v1, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_b4

    .line 945
    nop

    .line 946
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getLongPressTimeoutMillis()I

    move-result p1

    int-to-long v1, p1

    .line 945
    invoke-direct {p0, v0, v1, v2}, Landroid/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_b9

    .line 948
    :cond_b4
    iput-boolean v0, p0, Landroid/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 949
    invoke-direct {p0}, Landroid/widget/NumberPicker;->postBeginSoftInputOnLongPressCommand()V

    .line 951
    :goto_b9
    return v0

    .line 907
    :cond_ba
    :goto_ba
    return v1

    nop

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_15
    .end packed-switch
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 8

    .line 831
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_8

    .line 832
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 833
    return-void

    .line 835
    :cond_8
    move p2, p1

    move-object p1, p0

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredWidth()I

    move-result p3

    .line 836
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredHeight()I

    move-result p4

    .line 839
    iget-object p5, p1, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p5}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result p5

    .line 840
    iget-object v0, p1, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v0

    .line 841
    sub-int/2addr p3, p5

    div-int/lit8 p3, p3, 0x2

    .line 842
    sub-int/2addr p4, v0

    div-int/lit8 p4, p4, 0x2

    .line 843
    add-int/2addr p5, p3

    .line 844
    add-int/2addr v0, p4

    .line 845
    iget-object v1, p1, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, p3, p4, p5, v0}, Landroid/widget/EditText;->layout(IIII)V

    .line 847
    if-eqz p2, :cond_4d

    .line 849
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheel()V

    .line 850
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeFadingEdges()V

    .line 851
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getHeight()I

    move-result p2

    iget p3, p1, Landroid/widget/NumberPicker;->mSelectionDividersDistance:I

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    iget p3, p1, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 853
    iget p2, p1, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    iget p3, p1, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    iget p3, p1, Landroid/widget/NumberPicker;->mSelectionDividersDistance:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 856
    :cond_4d
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 5

    .line 860
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_8

    .line 861
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 862
    return-void

    .line 865
    :cond_8
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v0

    .line 866
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v1}, Landroid/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 867
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 869
    iget v0, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Landroid/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p1

    .line 871
    iget v0, p0, Landroid/widget/NumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Landroid/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p2

    .line 873
    invoke-virtual {p0, p1, p2}, Landroid/widget/NumberPicker;->setMeasuredDimension(II)V

    .line 874
    return-void
.end method

.method public greylist-max-o onResolveDrawables(I)V
    .registers 3

    .line 1649
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onResolveDrawables(I)V

    .line 1651
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 1652
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1654
    :cond_c
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12

    .line 959
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d4

    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_d

    goto/16 :goto_d4

    .line 962
    :cond_d
    iget-object v0, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_17

    .line 963
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 965
    :cond_17
    iget-object v0, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 966
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 967
    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_d6

    goto/16 :goto_d3

    .line 969
    :pswitch_26
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mIgnoreMoveEvents:Z

    if-eqz v0, :cond_2c

    .line 970
    goto/16 :goto_d3

    .line 972
    :cond_2c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 973
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollState:I

    if-eq v0, v2, :cond_48

    .line 974
    iget v0, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 975
    iget v1, p0, Landroid/widget/NumberPicker;->mTouchSlop:I

    if-le v0, v1, :cond_47

    .line 976
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 977
    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 979
    :cond_47
    goto :goto_53

    .line 980
    :cond_48
    iget v0, p0, Landroid/widget/NumberPicker;->mLastDownOrMoveEventY:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    .line 981
    invoke-virtual {p0, v1, v0}, Landroid/widget/NumberPicker;->scrollBy(II)V

    .line 982
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 984
    :goto_53
    iput p1, p0, Landroid/widget/NumberPicker;->mLastDownOrMoveEventY:F

    .line 985
    goto/16 :goto_d3

    .line 987
    :pswitch_57
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeBeginSoftInputCommand()V

    .line 988
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeChangeCurrentByOneFromLongPress()V

    .line 989
    iget-object v0, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Landroid/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 990
    iget-object v0, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 991
    iget v3, p0, Landroid/widget/NumberPicker;->mMaximumFlingVelocity:I

    int-to-float v3, v3

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 992
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 993
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroid/widget/NumberPicker;->mMinimumFlingVelocity:I

    const/4 v5, 0x2

    if-le v3, v4, :cond_81

    .line 994
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->fling(I)V

    .line 995
    invoke-direct {p0, v5}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_cb

    .line 997
    :cond_81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 998
    int-to-float v3, v0

    iget v4, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    .line 999
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/widget/NumberPicker;->mLastDownEventTime:J

    sub-long/2addr v6, v8

    .line 1000
    iget p1, p0, Landroid/widget/NumberPicker;->mTouchSlop:I

    if-gt v3, p1, :cond_c5

    iget p1, p0, Landroid/widget/NumberPicker;->mTapTimeoutMillis:I

    int-to-long v3, p1

    cmp-long p1, v6, v3

    if-gez p1, :cond_c5

    .line 1001
    iget-boolean p1, p0, Landroid/widget/NumberPicker;->mPerformClickOnTap:Z

    if-eqz p1, :cond_ab

    .line 1002
    iput-boolean v1, p0, Landroid/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 1003
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->performClick()Z

    goto :goto_c8

    .line 1005
    :cond_ab
    iget p1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/2addr v0, p1

    sub-int/2addr v0, v2

    .line 1007
    if-lez v0, :cond_ba

    .line 1008
    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    .line 1009
    iget-object p1, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v2}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_c4

    .line 1011
    :cond_ba
    if-gez v0, :cond_c4

    .line 1012
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    .line 1013
    iget-object p1, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v5}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    .line 1016
    :cond_c4
    :goto_c4
    goto :goto_c8

    .line 1018
    :cond_c5
    invoke-direct {p0}, Landroid/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    .line 1020
    :goto_c8
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 1022
    :goto_cb
    iget-object p1, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 1023
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1026
    :goto_d3
    return v2

    .line 960
    :cond_d4
    :goto_d4
    return v1

    nop

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_57
        :pswitch_26
    .end packed-switch
.end method

.method public whitelist performClick()Z
    .registers 2

    .line 1303
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_9

    .line 1304
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    return v0

    .line 1305
    :cond_9
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1306
    invoke-direct {p0}, Landroid/widget/NumberPicker;->showSoftInput()V

    .line 1308
    :cond_12
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist performLongClick()Z
    .registers 3

    .line 1313
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_9

    .line 1314
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v0

    return v0

    .line 1315
    :cond_9
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_15

    .line 1316
    invoke-direct {p0}, Landroid/widget/NumberPicker;->showSoftInput()V

    .line 1317
    iput-boolean v1, p0, Landroid/widget/NumberPicker;->mIgnoreMoveEvents:Z

    .line 1319
    :cond_15
    return v1
.end method

.method public whitelist scrollBy(II)V
    .registers 7

    .line 1177
    iget-object p1, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1178
    iget v0, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1179
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    const/4 v2, 0x1

    if-nez v1, :cond_16

    if-lez p2, :cond_16

    aget v1, p1, v2

    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-gt v1, v3, :cond_16

    .line 1181
    iget p1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1182
    return-void

    .line 1184
    :cond_16
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_27

    if-gez p2, :cond_27

    aget v1, p1, v2

    iget v3, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-lt v1, v3, :cond_27

    .line 1186
    iget p1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1187
    return-void

    .line 1189
    :cond_27
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1190
    :cond_2c
    :goto_2c
    iget p2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr p2, v1

    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    if-le p2, v1, :cond_53

    .line 1191
    iget p2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr p2, v1

    iput p2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1192
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->decrementSelectorIndices([I)V

    .line 1193
    aget p2, p1, v2

    invoke-direct {p0, p2, v2}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1194
    iget-boolean p2, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_2c

    aget p2, p1, v2

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-gt p2, v1, :cond_2c

    .line 1195
    iget p2, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput p2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_2c

    .line 1198
    :cond_53
    :goto_53
    iget p2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr p2, v1

    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    neg-int v1, v1

    if-ge p2, v1, :cond_7b

    .line 1199
    iget p2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr p2, v1

    iput p2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1200
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->incrementSelectorIndices([I)V

    .line 1201
    aget p2, p1, v2

    invoke-direct {p0, p2, v2}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1202
    iget-boolean p2, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_53

    aget p2, p1, v2

    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-lt p2, v1, :cond_53

    .line 1203
    iget p2, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput p2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_53

    .line 1206
    :cond_7b
    iget p1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    if-eq v0, p1, :cond_85

    .line 1207
    iget p1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1, p2, v0}, Landroid/widget/NumberPicker;->onScrollChanged(IIII)V

    .line 1209
    :cond_85
    return-void
.end method

.method public whitelist setDisplayedValues([Ljava/lang/String;)V
    .registers 3

    .line 1557
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_5

    .line 1558
    return-void

    .line 1560
    :cond_5
    iput-object p1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1561
    iget-object p1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz p1, :cond_14

    .line 1563
    iget-object p1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const v0, 0x80001

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_1a

    .line 1566
    :cond_14
    iget-object p1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1568
    :goto_1a
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1569
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1570
    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1571
    return-void
.end method

.method public whitelist setEnabled(Z)V
    .registers 3

    .line 1165
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1166
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_c

    .line 1167
    iget-object v0, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1169
    :cond_c
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_15

    .line 1170
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1172
    :cond_15
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1173
    return-void
.end method

.method public whitelist setFormatter(Landroid/widget/NumberPicker$Formatter;)V
    .registers 3

    .line 1261
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    if-ne p1, v0, :cond_5

    .line 1262
    return-void

    .line 1264
    :cond_5
    iput-object p1, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    .line 1265
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1266
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1267
    return-void
.end method

.method public whitelist setMaxValue(I)V
    .registers 3

    .line 1521
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-ne v0, p1, :cond_5

    .line 1522
    return-void

    .line 1524
    :cond_5
    if-ltz p1, :cond_23

    .line 1527
    iput p1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 1528
    iget p1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    if-ge p1, v0, :cond_13

    .line 1529
    iget p1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iput p1, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1531
    :cond_13
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateWrapSelectorWheel()V

    .line 1532
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1533
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1534
    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1535
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1536
    return-void

    .line 1525
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxValue must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setMinValue(I)V
    .registers 3

    .line 1484
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ne v0, p1, :cond_5

    .line 1485
    return-void

    .line 1487
    :cond_5
    if-ltz p1, :cond_23

    .line 1490
    iput p1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 1491
    iget p1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    if-le p1, v0, :cond_13

    .line 1492
    iget p1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iput p1, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1494
    :cond_13
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateWrapSelectorWheel()V

    .line 1495
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1496
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1497
    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1498
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1499
    return-void

    .line 1488
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "minValue must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setOnLongPressUpdateInterval(J)V
    .registers 3

    .line 1452
    iput-wide p1, p0, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 1453
    return-void
.end method

.method public whitelist setOnScrollListener(Landroid/widget/NumberPicker$OnScrollListener;)V
    .registers 2

    .line 1246
    iput-object p1, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    .line 1247
    return-void
.end method

.method public whitelist setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V
    .registers 2

    .line 1237
    iput-object p1, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    .line 1238
    return-void
.end method

.method public whitelist setSelectionDividerHeight(I)V
    .registers 2

    .line 1594
    iput p1, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    .line 1595
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1596
    return-void
.end method

.method public whitelist setTextColor(I)V
    .registers 3

    .line 1742
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1743
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1744
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1745
    return-void
.end method

.method public whitelist setTextSize(F)V
    .registers 4

    .line 1761
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1762
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 1763
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1764
    return-void
.end method

.method public whitelist setValue(I)V
    .registers 3

    .line 1298
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1299
    return-void
.end method

.method public whitelist setWrapSelectorWheel(Z)V
    .registers 2

    .line 1424
    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheelPreferred:Z

    .line 1425
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateWrapSelectorWheel()V

    .line 1427
    return-void
.end method
