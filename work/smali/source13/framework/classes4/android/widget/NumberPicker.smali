.class public Landroid/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;,
        Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;,
        Landroid/widget/NumberPicker$CustomEditText;,
        Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Landroid/widget/NumberPicker$SetSelectionCommand;,
        Landroid/widget/NumberPicker$PressedStateHelper;,
        Landroid/widget/NumberPicker$InputTextFilter;,
        Landroid/widget/NumberPicker$Formatter;,
        Landroid/widget/NumberPicker$OnScrollListener;,
        Landroid/widget/NumberPicker$OnValueChangeListener;,
        Landroid/widget/NumberPicker$TwoDigitFormatter;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_LAYOUT_RESOURCE_ID:I = 0x10900d0

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

.field private greylist-max-o mMinimumFlingVelocity:I

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

.field private final greylist-max-r mTextSize:I

.field private greylist-max-o mTopSelectionDividerTop:I

.field private greylist-max-o mTouchSlop:I

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

    .line 219
    new-instance v0, Landroid/widget/NumberPicker$TwoDigitFormatter;

    invoke-direct {v0}, Landroid/widget/NumberPicker$TwoDigitFormatter;-><init>()V

    sput-object v0, Landroid/widget/NumberPicker;->sTwoDigitFormatter:Landroid/widget/NumberPicker$TwoDigitFormatter;

    .line 2193
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
    .param p1, "context"    # Landroid/content/Context;

    .line 598
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 599
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 608
    const v0, 0x1010524

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 609
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 621
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 622
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 638
    move-object/from16 v7, p0

    invoke-direct/range {p0 .. p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 173
    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/widget/NumberPicker;->mWrapSelectorWheelPreferred:Z

    .line 328
    const-wide/16 v0, 0x12c

    iput-wide v0, v7, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 333
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v7, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 338
    const/4 v9, 0x3

    new-array v0, v9, [I

    iput-object v0, v7, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 360
    const/high16 v0, -0x80000000

    iput v0, v7, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    .line 465
    const/4 v10, 0x0

    iput v10, v7, Landroid/widget/NumberPicker;->mScrollState:I

    .line 516
    const/4 v11, -0x1

    iput v11, v7, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 641
    sget-object v0, Lcom/android/internal/R$styleable;->NumberPicker:[I

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p4

    invoke-virtual {v12, v13, v0, v14, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 643
    .local v6, "attributesArray":Landroid/content/res/TypedArray;
    sget-object v2, Lcom/android/internal/R$styleable;->NumberPicker:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object v4, v6

    move/from16 v5, p3

    move-object v11, v6

    .end local v6    # "attributesArray":Landroid/content/res/TypedArray;
    .local v11, "attributesArray":Landroid/content/res/TypedArray;
    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/NumberPicker;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 645
    const v0, 0x10900d0

    invoke-virtual {v11, v9, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 648
    .local v1, "layoutResId":I
    if-eq v1, v0, :cond_4c

    move v0, v8

    goto :goto_4d

    :cond_4c
    move v0, v10

    :goto_4d
    iput-boolean v0, v7, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 650
    const/4 v2, 0x2

    invoke-virtual {v11, v2, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v7, Landroid/widget/NumberPicker;->mHideWheelUntilFocused:Z

    .line 653
    invoke-virtual {v11, v10, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, v7, Landroid/widget/NumberPicker;->mSolidColor:I

    .line 655
    const/16 v3, 0x8

    invoke-virtual {v11, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 657
    .local v4, "selectionDivider":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_7b

    .line 658
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 659
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getLayoutDirection()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 660
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 661
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getDrawableState()[I

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 664
    :cond_7b
    iput-object v4, v7, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 666
    const/high16 v5, 0x40000000    # 2.0f

    .line 668
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 666
    invoke-static {v8, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    .line 669
    .local v5, "defSelectionDividerHeight":I
    invoke-virtual {v11, v8, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v7, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    .line 672
    const/high16 v6, 0x42400000    # 48.0f

    .line 674
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 672
    invoke-static {v8, v6, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    .line 675
    .local v6, "defSelectionDividerDistance":I
    const/16 v9, 0x9

    invoke-virtual {v11, v9, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    iput v9, v7, Landroid/widget/NumberPicker;->mSelectionDividersDistance:I

    .line 678
    const/4 v9, 0x6

    const/4 v3, -0x1

    invoke-virtual {v11, v9, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v7, Landroid/widget/NumberPicker;->mMinHeight:I

    .line 681
    const/4 v9, 0x4

    invoke-virtual {v11, v9, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    iput v9, v7, Landroid/widget/NumberPicker;->mMaxHeight:I

    .line 683
    if-eq v2, v3, :cond_c8

    if-eq v9, v3, :cond_c8

    if-gt v2, v9, :cond_bf

    goto :goto_c8

    .line 685
    :cond_bf
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "minHeight > maxHeight"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 688
    :cond_c8
    :goto_c8
    const/4 v2, 0x7

    const/4 v3, -0x1

    invoke-virtual {v11, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v7, Landroid/widget/NumberPicker;->mMinWidth:I

    .line 691
    const/4 v9, 0x5

    invoke-virtual {v11, v9, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    iput v9, v7, Landroid/widget/NumberPicker;->mMaxWidth:I

    .line 693
    if-eq v2, v3, :cond_e7

    if-eq v9, v3, :cond_e7

    if-gt v2, v9, :cond_de

    goto :goto_e7

    .line 695
    :cond_de
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "minWidth > maxWidth"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 698
    :cond_e7
    :goto_e7
    const/4 v2, -0x1

    if-ne v9, v2, :cond_ec

    move v2, v8

    goto :goto_ed

    :cond_ec
    move v2, v10

    :goto_ed
    iput-boolean v2, v7, Landroid/widget/NumberPicker;->mComputeMaxWidth:Z

    .line 700
    const/16 v2, 0xa

    invoke-virtual {v11, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v7, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 703
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 705
    new-instance v2, Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-direct {v2, v7}, Landroid/widget/NumberPicker$PressedStateHelper;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v2, v7, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    .line 712
    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v7, v2}, Landroid/widget/NumberPicker;->setWillNotDraw(Z)V

    .line 714
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 716
    .local v2, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v2, v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 718
    new-instance v3, Landroid/widget/NumberPicker$1;

    invoke-direct {v3, v7}, Landroid/widget/NumberPicker$1;-><init>(Landroid/widget/NumberPicker;)V

    .line 730
    .local v3, "onClickListener":Landroid/view/View$OnClickListener;
    new-instance v9, Landroid/widget/NumberPicker$2;

    invoke-direct {v9, v7}, Landroid/widget/NumberPicker$2;-><init>(Landroid/widget/NumberPicker;)V

    .line 744
    .local v9, "onLongClickListener":Landroid/view/View$OnLongClickListener;
    const/4 v10, 0x0

    if-nez v0, :cond_134

    .line 745
    const v8, 0x1020342

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, v7, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 746
    invoke-virtual {v8, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 747
    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_136

    .line 749
    :cond_134
    iput-object v10, v7, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 753
    :goto_136
    if-nez v0, :cond_14a

    .line 754
    const v0, 0x10202a0

    invoke-virtual {v7, v0}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v7, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 755
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 756
    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_14c

    .line 758
    :cond_14a
    iput-object v10, v7, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 762
    :goto_14c
    const v0, 0x1020405

    invoke-virtual {v7, v0}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, v7, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 763
    new-instance v8, Landroid/widget/NumberPicker$3;

    invoke-direct {v8, v7}, Landroid/widget/NumberPicker$3;-><init>(Landroid/widget/NumberPicker;)V

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 773
    const/4 v8, 0x1

    new-array v10, v8, [Landroid/text/InputFilter;

    new-instance v8, Landroid/widget/NumberPicker$InputTextFilter;

    invoke-direct {v8, v7}, Landroid/widget/NumberPicker$InputTextFilter;-><init>(Landroid/widget/NumberPicker;)V

    const/16 v20, 0x0

    aput-object v8, v10, v20

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 777
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 778
    const/4 v8, 0x6

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 781
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    .line 782
    .local v8, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v10

    iput v10, v7, Landroid/widget/NumberPicker;->mTouchSlop:I

    .line 783
    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v10

    iput v10, v7, Landroid/widget/NumberPicker;->mMinimumFlingVelocity:I

    .line 784
    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v10

    const/16 v17, 0x8

    div-int/lit8 v10, v10, 0x8

    iput v10, v7, Landroid/widget/NumberPicker;->mMaximumFlingVelocity:I

    .line 786
    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result v10

    float-to-int v10, v10

    iput v10, v7, Landroid/widget/NumberPicker;->mTextSize:I

    .line 789
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v18, v17

    .line 790
    .local v18, "paint":Landroid/graphics/Paint;
    move/from16 v17, v1

    move-object/from16 v1, v18

    move-object/from16 v18, v2

    const/4 v2, 0x1

    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .local v1, "paint":Landroid/graphics/Paint;
    .local v17, "layoutResId":I
    .local v18, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 791
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 792
    int-to-float v2, v10

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 793
    invoke-virtual {v0}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 794
    invoke-virtual {v0}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 795
    .local v0, "colors":Landroid/content/res/ColorStateList;
    sget-object v2, Landroid/widget/NumberPicker;->ENABLED_STATE_SET:[I

    const/4 v10, -0x1

    invoke-virtual {v0, v2, v10}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 796
    .local v2, "color":I
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 797
    iput-object v1, v7, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 800
    new-instance v10, Landroid/widget/Scroller;

    move-object/from16 v16, v0

    .end local v0    # "colors":Landroid/content/res/ColorStateList;
    .local v16, "colors":Landroid/content/res/ColorStateList;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v19, v1

    move/from16 v20, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .end local v1    # "paint":Landroid/graphics/Paint;
    .end local v2    # "color":I
    .local v19, "paint":Landroid/graphics/Paint;
    .local v20, "color":I
    invoke-direct {v10, v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v10, v7, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 801
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v10, 0x40200000    # 2.5f

    invoke-direct {v2, v10}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, v7, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 803
    invoke-direct/range {p0 .. p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 806
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_1fb

    .line 807
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/widget/NumberPicker;->setImportantForAccessibility(I)V

    goto :goto_1fc

    .line 806
    :cond_1fb
    const/4 v0, 0x1

    .line 811
    :goto_1fc
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getFocusable()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_20a

    .line 812
    invoke-virtual {v7, v0}, Landroid/widget/NumberPicker;->setFocusable(I)V

    .line 813
    invoke-virtual {v7, v0}, Landroid/widget/NumberPicker;->setFocusableInTouchMode(Z)V

    .line 815
    :cond_20a
    return-void
.end method

.method static synthetic blacklist access$000(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$100(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic blacklist access$1000(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollY:I

    return v0
.end method

.method static synthetic blacklist access$1100(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic blacklist access$1200(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$1300(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget v0, p0, Landroid/widget/NumberPicker;->mLeft:I

    return v0
.end method

.method static synthetic blacklist access$1400(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollY:I

    return v0
.end method

.method static synthetic blacklist access$1500(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic blacklist access$1600(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget v0, p0, Landroid/widget/NumberPicker;->mTop:I

    return v0
.end method

.method static synthetic blacklist access$1700(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic blacklist access$1800(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollY:I

    return v0
.end method

.method static synthetic blacklist access$1900(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic blacklist access$200(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$2000(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$2100(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget v0, p0, Landroid/widget/NumberPicker;->mLeft:I

    return v0
.end method

.method static synthetic blacklist access$2200(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic blacklist access$2300(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic blacklist access$2400(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$2500(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget v0, p0, Landroid/widget/NumberPicker;->mLeft:I

    return v0
.end method

.method static synthetic blacklist access$2600(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic blacklist access$2700(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic blacklist access$2800(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$2900(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget v0, p0, Landroid/widget/NumberPicker;->mLeft:I

    return v0
.end method

.method static synthetic blacklist access$300(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$3000(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollY:I

    return v0
.end method

.method static synthetic blacklist access$3100(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic blacklist access$3200(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget v0, p0, Landroid/widget/NumberPicker;->mTop:I

    return v0
.end method

.method static synthetic blacklist access$3300(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$3400(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic blacklist access$3500(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$3600(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic blacklist access$3700(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$3800(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$3900(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$400(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic blacklist access$4000(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$4100(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$4200(Landroid/widget/NumberPicker;Landroid/graphics/Rect;)Z
    .registers 3
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .line 111
    invoke-virtual {p0, p1}, Landroid/widget/NumberPicker;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$4300(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$4400(Landroid/widget/NumberPicker;Landroid/graphics/Rect;)Z
    .registers 3
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .line 111
    invoke-virtual {p0, p1}, Landroid/widget/NumberPicker;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$4500(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$500(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$600(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$700(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic blacklist access$800(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic blacklist access$900(Landroid/widget/NumberPicker;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .line 111
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method private greylist changeValueByOne(Z)V
    .registers 15
    .param p1, "increment"    # Z

    .line 1865
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v0, :cond_37

    .line 1866
    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideSoftInput()V

    .line 1867
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1868
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 1870
    :cond_14
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1871
    if-eqz p1, :cond_27

    .line 1872
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v0, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    neg-int v5, v0

    const/16 v6, 0x12c

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_33

    .line 1874
    :cond_27
    iget-object v7, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    const/16 v12, 0x12c

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1876
    :goto_33
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    goto :goto_47

    .line 1878
    :cond_37
    const/4 v0, 0x1

    if-eqz p1, :cond_41

    .line 1879
    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1, v0}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    goto :goto_47

    .line 1881
    :cond_41
    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    sub-int/2addr v1, v0

    invoke-direct {p0, v1, v0}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1884
    :goto_47
    return-void
.end method

.method private greylist-max-o decrementSelectorIndices([I)V
    .registers 5
    .param p1, "selectorIndices"    # [I

    .line 1984
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_3
    if-lez v0, :cond_e

    .line 1985
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1984
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 1987
    .end local v0    # "i":I
    :cond_e
    aget v0, p1, v1

    sub-int/2addr v0, v1

    .line 1988
    .local v0, "nextScrollSelectorIndex":I
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1b

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ge v0, v1, :cond_1b

    .line 1989
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 1991
    :cond_1b
    const/4 v1, 0x0

    aput v0, p1, v1

    .line 1992
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1993
    return-void
.end method

.method private greylist-max-o ensureCachedScrollSelectorValue(I)V
    .registers 6
    .param p1, "selectorIndex"    # I

    .line 2000
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 2001
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2002
    .local v1, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v1, :cond_b

    .line 2003
    return-void

    .line 2005
    :cond_b
    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-lt p1, v2, :cond_22

    iget v3, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le p1, v3, :cond_14

    goto :goto_22

    .line 2008
    :cond_14
    iget-object v3, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_1d

    .line 2009
    sub-int v2, p1, v2

    .line 2010
    .local v2, "displayedValueIndex":I
    aget-object v1, v3, v2

    .line 2011
    .end local v2    # "displayedValueIndex":I
    goto :goto_24

    .line 2012
    :cond_1d
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_24

    .line 2006
    :cond_22
    :goto_22
    const-string v1, ""

    .line 2015
    :goto_24
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2016
    return-void
.end method

.method private greylist-max-o ensureScrollWheelAdjusted()Z
    .registers 8

    .line 2293
    iget v0, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    sub-int/2addr v0, v1

    .line 2294
    .local v0, "deltaY":I
    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 2295
    iput v1, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 2296
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v3, v2, 0x2

    if-le v1, v3, :cond_18

    .line 2297
    if-lez v0, :cond_17

    neg-int v2, v2

    :cond_17
    add-int/2addr v0, v2

    .line 2299
    :cond_18
    iget-object v1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x320

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2300
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 2301
    const/4 v1, 0x1

    return v1

    .line 2303
    :cond_28
    return v1
.end method

.method private greylist-max-o fling(I)V
    .registers 12
    .param p1, "velocityY"    # I

    .line 1940
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1942
    if-lez p1, :cond_15

    .line 1943
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_26

    .line 1945
    :cond_15
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1948
    :goto_26
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1949
    return-void
.end method

.method private greylist-max-o formatNumber(I)Ljava/lang/String;
    .registers 3
    .param p1, "value"    # I

    .line 2019
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Landroid/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_9
    invoke-static {p1}, Landroid/widget/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method private static greylist-max-o formatNumberWithLocale(I)Ljava/lang/String;
    .registers 5
    .param p0, "value"    # I

    .line 2922
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getSelectedPos(Ljava/lang/String;)I
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 2150
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_b

    .line 2152
    :try_start_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    .line 2153
    :catch_9
    move-exception v0

    .line 2155
    goto :goto_30

    .line 2157
    :cond_b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2a

    .line 2159
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2160
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2161
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    add-int/2addr v1, v0

    return v1

    .line 2157
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 2170
    .end local v0    # "i":I
    :cond_2a
    :try_start_2a
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_2e} :catch_2f

    return v0

    .line 2171
    :catch_2f
    move-exception v0

    .line 2176
    :goto_30
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    return v0
.end method

.method public static final greylist getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;
    .registers 1

    .line 226
    sget-object v0, Landroid/widget/NumberPicker;->sTwoDigitFormatter:Landroid/widget/NumberPicker$TwoDigitFormatter;

    return-object v0
.end method

.method private greylist-max-o getWrappedSelectorIndex(I)I
    .registers 5
    .param p1, "selectorIndex"    # I

    .line 1955
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_e

    .line 1956
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int v2, p1, v0

    sub-int/2addr v0, v1

    rem-int/2addr v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    return v1

    .line 1957
    :cond_e
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ge p1, v1, :cond_1b

    .line 1958
    sub-int v2, v1, p1

    sub-int v1, v0, v1

    rem-int/2addr v2, v1

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 1960
    :cond_1b
    return p1
.end method

.method private greylist-max-o hideSoftInput()V
    .registers 4

    .line 1329
    nop

    .line 1330
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1331
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1f

    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1332
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1334
    :cond_1f
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v1, :cond_29

    .line 1335
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1337
    :cond_29
    return-void
.end method

.method private greylist-max-o incrementSelectorIndices([I)V
    .registers 4
    .param p1, "selectorIndices"    # [I

    .line 1968
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_f

    .line 1969
    add-int/lit8 v1, v0, 0x1

    aget v1, p1, v1

    aput v1, p1, v0

    .line 1968
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1971
    .end local v0    # "i":I
    :cond_f
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 1972
    .local v0, "nextScrollSelectorIndex":I
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_20

    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le v0, v1, :cond_20

    .line 1973
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 1975
    :cond_20
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aput v0, p1, v1

    .line 1976
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1977
    return-void
.end method

.method private greylist-max-o initializeFadingEdges()V
    .registers 3

    .line 1904
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1905
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    iget v1, p0, Landroid/widget/NumberPicker;->mTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/NumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setFadingEdgeLength(I)V

    .line 1906
    return-void
.end method

.method private greylist-max-o initializeSelectorWheel()V
    .registers 7

    .line 1887
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1888
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1889
    .local v0, "selectorIndices":[I
    array-length v1, v0

    iget v2, p0, Landroid/widget/NumberPicker;->mTextSize:I

    mul-int/2addr v1, v2

    .line 1890
    .local v1, "totalTextHeight":I
    iget v2, p0, Landroid/widget/NumberPicker;->mBottom:I

    iget v3, p0, Landroid/widget/NumberPicker;->mTop:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v2, v2

    .line 1891
    .local v2, "totalTextGapHeight":F
    array-length v3, v0

    int-to-float v3, v3

    .line 1892
    .local v3, "textGapCount":F
    div-float v4, v2, v3

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    .line 1893
    iget v5, p0, Landroid/widget/NumberPicker;->mTextSize:I

    add-int/2addr v5, v4

    iput v5, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    .line 1896
    iget-object v4, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getBaseline()I

    move-result v4

    iget-object v5, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getTop()I

    move-result v5

    add-int/2addr v4, v5

    .line 1897
    .local v4, "editTextTextPosition":I
    iget v5, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/lit8 v5, v5, 0x1

    sub-int v5, v4, v5

    iput v5, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    .line 1899
    iput v5, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1900
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1901
    return-void
.end method

.method private greylist initializeSelectorWheelIndices()V
    .registers 6

    .line 1813
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1814
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1815
    .local v0, "selectorIndices":[I
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    .line 1816
    .local v1, "current":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    iget-object v3, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    array-length v3, v3

    if-ge v2, v3, :cond_26

    .line 1817
    add-int/lit8 v3, v2, -0x1

    add-int/2addr v3, v1

    .line 1818
    .local v3, "selectorIndex":I
    iget-boolean v4, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_1c

    .line 1819
    invoke-direct {p0, v3}, Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v3

    .line 1821
    :cond_1c
    aput v3, v0, v2

    .line 1822
    aget v4, v0, v2

    invoke-direct {p0, v4}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1816
    .end local v3    # "selectorIndex":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1824
    .end local v2    # "i":I
    :cond_26
    return-void
.end method

.method private greylist-max-o makeMeasureSpec(II)I
    .registers 8
    .param p1, "measureSpec"    # I
    .param p2, "maxSize"    # I

    .line 1770
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    .line 1771
    return p1

    .line 1773
    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1774
    .local v0, "size":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1775
    .local v1, "mode":I
    const/high16 v2, 0x40000000    # 2.0f

    sparse-switch v1, :sswitch_data_3a

    .line 1783
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1777
    :sswitch_2a
    return p1

    .line 1781
    :sswitch_2b
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    .line 1779
    :sswitch_30
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    nop

    :sswitch_data_3a
    .sparse-switch
        -0x80000000 -> :sswitch_30
        0x0 -> :sswitch_2b
        0x40000000 -> :sswitch_2a
    .end sparse-switch
.end method

.method private greylist-max-o moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .registers 10
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .line 873
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 874
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    sub-int/2addr v1, v2

    .line 875
    .local v1, "amountToScroll":I
    iget v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v2, v1

    iget v3, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    rem-int/2addr v2, v3

    .line 876
    .local v2, "futureScrollOffset":I
    iget v3, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v3, v2

    .line 877
    .local v3, "overshootAdjustment":I
    const/4 v4, 0x0

    if-eqz v3, :cond_2d

    .line 878
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v7, v6, 0x2

    if-le v5, v7, :cond_28

    .line 879
    if-lez v3, :cond_27

    .line 880
    sub-int/2addr v3, v6

    goto :goto_28

    .line 882
    :cond_27
    add-int/2addr v3, v6

    .line 885
    :cond_28
    :goto_28
    add-int/2addr v1, v3

    .line 886
    invoke-virtual {p0, v4, v1}, Landroid/widget/NumberPicker;->scrollBy(II)V

    .line 887
    return v0

    .line 889
    :cond_2d
    return v4
.end method

.method private greylist-max-o notifyChange(II)V
    .registers 5
    .param p1, "previous"    # I
    .param p2, "current"    # I

    .line 2079
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_9

    .line 2080
    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Landroid/widget/NumberPicker$OnValueChangeListener;->onValueChange(Landroid/widget/NumberPicker;II)V

    .line 2082
    :cond_9
    return-void
.end method

.method private greylist-max-o onScrollStateChange(I)V
    .registers 3
    .param p1, "scrollState"    # I

    .line 1927
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_5

    .line 1928
    return-void

    .line 1930
    :cond_5
    iput p1, p0, Landroid/widget/NumberPicker;->mScrollState:I

    .line 1931
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_e

    .line 1932
    invoke-interface {v0, p0, p1}, Landroid/widget/NumberPicker$OnScrollListener;->onScrollStateChange(Landroid/widget/NumberPicker;I)V

    .line 1934
    :cond_e
    return-void
.end method

.method private greylist-max-o onScrollerFinished(Landroid/widget/Scroller;)V
    .registers 4
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .line 1912
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_f

    .line 1913
    invoke-direct {p0}, Landroid/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    .line 1914
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1915
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_17

    .line 1917
    :cond_f
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17

    .line 1918
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1921
    :cond_17
    :goto_17
    return-void
.end method

.method private greylist-max-o postBeginSoftInputOnLongPressCommand()V
    .registers 4

    .line 2113
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_c

    .line 2114
    new-instance v0, Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    goto :goto_f

    .line 2116
    :cond_c
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2118
    :goto_f
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2119
    return-void
.end method

.method private greylist-max-o postChangeCurrentByOneFromLongPress(ZJ)V
    .registers 5
    .param p1, "increment"    # Z
    .param p2, "delayMillis"    # J

    .line 2090
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_c

    .line 2091
    new-instance v0, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_f

    .line 2093
    :cond_c
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2095
    :goto_f
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->-$$Nest$msetStep(Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 2096
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0, p2, p3}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2097
    return-void
.end method

.method private greylist-max-o postSetSelectionCommand(II)V
    .registers 5
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I

    .line 2184
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    if-nez v0, :cond_d

    .line 2185
    new-instance v0, Landroid/widget/NumberPicker$SetSelectionCommand;

    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-direct {v0, v1}, Landroid/widget/NumberPicker$SetSelectionCommand;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    .line 2187
    :cond_d
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {v0, p1, p2}, Landroid/widget/NumberPicker$SetSelectionCommand;->post(II)V

    .line 2188
    return-void
.end method

.method private greylist-max-o removeAllCallbacks()V
    .registers 2

    .line 2134
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_7

    .line 2135
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2137
    :cond_7
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_e

    .line 2138
    invoke-virtual {v0}, Landroid/widget/NumberPicker$SetSelectionCommand;->cancel()V

    .line 2140
    :cond_e
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_15

    .line 2141
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2143
    :cond_15
    iget-object v0, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Landroid/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 2144
    return-void
.end method

.method private greylist-max-o removeBeginSoftInputCommand()V
    .registers 2

    .line 2125
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_7

    .line 2126
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2128
    :cond_7
    return-void
.end method

.method private greylist-max-o removeChangeCurrentByOneFromLongPress()V
    .registers 2

    .line 2103
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_7

    .line 2104
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2106
    :cond_7
    return-void
.end method

.method private greylist-max-o resolveSizeAndStateRespectingMinSize(III)I
    .registers 6
    .param p1, "minSize"    # I
    .param p2, "measuredSize"    # I
    .param p3, "measureSpec"    # I

    .line 1799
    const/4 v0, -0x1

    if-eq p1, v0, :cond_d

    .line 1800
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1801
    .local v0, "desiredWidth":I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Landroid/widget/NumberPicker;->resolveSizeAndState(III)I

    move-result v1

    return v1

    .line 1803
    .end local v0    # "desiredWidth":I
    :cond_d
    return p2
.end method

.method private greylist-max-o setValueInternal(IZ)V
    .registers 6
    .param p1, "current"    # I
    .param p2, "notifyChange"    # Z

    .line 1833
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    if-ne v0, p1, :cond_5

    .line 1834
    return-void

    .line 1837
    :cond_5
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_e

    .line 1838
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    goto :goto_1a

    .line 1840
    :cond_e
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1841
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1843
    :goto_1a
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1844
    .local v0, "previous":I
    iput p1, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1846
    iget v1, p0, Landroid/widget/NumberPicker;->mScrollState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_26

    .line 1847
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1849
    :cond_26
    if-eqz p2, :cond_2b

    .line 1850
    invoke-direct {p0, v0, p1}, Landroid/widget/NumberPicker;->notifyChange(II)V

    .line 1852
    :cond_2b
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1853
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1854
    return-void
.end method

.method private greylist-max-o showSoftInput()V
    .registers 4

    .line 1314
    nop

    .line 1315
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1316
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_23

    .line 1317
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    .line 1318
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1320
    :cond_19
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1321
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1323
    :cond_23
    return-void
.end method

.method private greylist-max-o tryComputeMaxWidth()V
    .registers 6

    .line 1343
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mComputeMaxWidth:Z

    if-nez v0, :cond_5

    .line 1344
    return-void

    .line 1346
    :cond_5
    const/4 v0, 0x0

    .line 1347
    .local v0, "maxTextWidth":I
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_30

    .line 1348
    const/4 v1, 0x0

    .line 1349
    .local v1, "maxDigitWidth":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    const/16 v3, 0x9

    if-gt v2, v3, :cond_22

    .line 1350
    iget-object v3, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Landroid/widget/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 1351
    .local v3, "digitWidth":F
    cmpl-float v4, v3, v1

    if-lez v4, :cond_1f

    .line 1352
    move v1, v3

    .line 1349
    .end local v3    # "digitWidth":F
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1355
    .end local v2    # "i":I
    :cond_22
    const/4 v2, 0x0

    .line 1356
    .local v2, "numberOfDigits":I
    iget v3, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 1357
    .local v3, "current":I
    :goto_25
    if-lez v3, :cond_2c

    .line 1358
    add-int/lit8 v2, v2, 0x1

    .line 1359
    div-int/lit8 v3, v3, 0xa

    goto :goto_25

    .line 1361
    :cond_2c
    int-to-float v4, v2

    mul-float/2addr v4, v1

    float-to-int v0, v4

    .line 1362
    .end local v1    # "maxDigitWidth":F
    .end local v2    # "numberOfDigits":I
    .end local v3    # "current":I
    goto :goto_47

    .line 1363
    :cond_30
    array-length v1, v1

    .line 1364
    .local v1, "valueCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_32
    if-ge v2, v1, :cond_47

    .line 1365
    iget-object v3, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 1366
    .local v3, "textWidth":F
    int-to-float v4, v0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_44

    .line 1367
    float-to-int v0, v3

    .line 1364
    .end local v3    # "textWidth":F
    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 1371
    .end local v1    # "valueCount":I
    .end local v2    # "i":I
    :cond_47
    :goto_47
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1372
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    if-eq v1, v0, :cond_65

    .line 1373
    iget v1, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    if-le v0, v1, :cond_60

    .line 1374
    iput v0, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    goto :goto_62

    .line 1376
    :cond_60
    iput v1, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    .line 1378
    :goto_62
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1380
    :cond_65
    return-void
.end method

.method private greylist-max-o updateInputTextView()Z
    .registers 6

    .line 2048
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_b

    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 2049
    :cond_b
    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    :goto_12
    nop

    .line 2050
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_68

    .line 2051
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2052
    .local v1, "beforeText":Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_68

    .line 2053
    iget-object v3, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2054
    iget-object v3, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_66

    .line 2055
    const/16 v3, 0x10

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    .line 2057
    .local v3, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v4, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2058
    iget-object v4, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2059
    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 2060
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 2061
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 2062
    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 2063
    const/4 v2, 0x2

    invoke-virtual {v3, p0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2065
    invoke-virtual {p0, p0, v3}, Landroid/widget/NumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2067
    .end local v3    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_66
    const/4 v2, 0x1

    return v2

    .line 2071
    .end local v1    # "beforeText":Ljava/lang/CharSequence;
    :cond_68
    return v2
.end method

.method private greylist-max-o updateWrapSelectorWheel()V
    .registers 5

    .line 1425
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

    .line 1426
    .local v0, "wrappingAllowed":Z
    :goto_f
    if-eqz v0, :cond_16

    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheelPreferred:Z

    if-eqz v1, :cond_16

    goto :goto_17

    :cond_16
    move v2, v3

    :goto_17
    iput-boolean v2, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 1427
    return-void
.end method

.method private greylist-max-o validateInputTextView(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 2023
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2024
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2026
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    goto :goto_21

    .line 2029
    :cond_15
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v1

    .line 2030
    .local v1, "current":I
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    .line 2032
    .end local v1    # "current":I
    :goto_21
    return-void
.end method


# virtual methods
.method public whitelist computeScroll()V
    .registers 5

    .line 1130
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 1131
    .local v0, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1132
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 1133
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1134
    return-void

    .line 1137
    :cond_11
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1138
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 1139
    .local v1, "currentScrollerY":I
    iget v2, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_22

    .line 1140
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1142
    :cond_22
    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Landroid/widget/NumberPicker;->scrollBy(II)V

    .line 1143
    iput v1, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1144
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 1145
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_39

    .line 1147
    :cond_36
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1149
    :goto_39
    return-void
.end method

.method protected whitelist computeVerticalScrollExtent()I
    .registers 2

    .line 1211
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getHeight()I

    move-result v0

    return v0
.end method

.method protected whitelist computeVerticalScrollOffset()I
    .registers 2

    .line 1201
    iget v0, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    return v0
.end method

.method protected whitelist computeVerticalScrollRange()I
    .registers 3

    .line 1206
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method protected whitelist dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1081
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_9

    .line 1082
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1084
    :cond_9
    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 1085
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 1087
    .local v0, "eventY":I
    iget v1, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    if-ge v0, v1, :cond_20

    .line 1088
    const/4 v1, 0x3

    .local v1, "hoveredVirtualViewId":I
    goto :goto_27

    .line 1089
    .end local v1    # "hoveredVirtualViewId":I
    :cond_20
    iget v1, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    if-le v0, v1, :cond_26

    .line 1090
    const/4 v1, 0x1

    .restart local v1    # "hoveredVirtualViewId":I
    goto :goto_27

    .line 1092
    .end local v1    # "hoveredVirtualViewId":I
    :cond_26
    const/4 v1, 0x2

    .line 1094
    .restart local v1    # "hoveredVirtualViewId":I
    :goto_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 1095
    .local v2, "action":I
    nop

    .line 1096
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    check-cast v3, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 1097
    .local v3, "provider":Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;
    const/4 v4, -0x1

    const/16 v5, 0x100

    const/4 v6, 0x0

    const/16 v7, 0x40

    const/16 v8, 0x80

    packed-switch v2, :pswitch_data_60

    :pswitch_3d
    goto :goto_5e

    .line 1119
    :pswitch_3e
    invoke-virtual {v3, v1, v5}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1121
    iput v4, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    goto :goto_5e

    .line 1099
    :pswitch_44
    invoke-virtual {v3, v1, v8}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1101
    iput v1, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 1102
    invoke-virtual {v3, v1, v7, v6}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    .line 1104
    goto :goto_5e

    .line 1106
    :pswitch_4d
    iget v9, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq v9, v1, :cond_5e

    if-eq v9, v4, :cond_5e

    .line 1108
    invoke-virtual {v3, v9, v5}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1111
    invoke-virtual {v3, v1, v8}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1113
    iput v1, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 1114
    invoke-virtual {v3, v1, v7, v6}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    .line 1125
    .end local v0    # "eventY":I
    .end local v1    # "hoveredVirtualViewId":I
    .end local v2    # "action":I
    .end local v3    # "provider":Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;
    :cond_5e
    :goto_5e
    const/4 v0, 0x0

    return v0

    :pswitch_data_60
    .packed-switch 0x7
        :pswitch_4d
        :pswitch_3d
        :pswitch_44
        :pswitch_3e
    .end packed-switch
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1031
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1032
    .local v0, "keyCode":I
    sparse-switch v0, :sswitch_data_5e

    goto :goto_58

    .line 1036
    :sswitch_8
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 1037
    goto :goto_58

    .line 1040
    :sswitch_c
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v1, :cond_11

    .line 1041
    goto :goto_58

    .line 1043
    :cond_11
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_74

    goto :goto_58

    .line 1057
    :pswitch_1a
    iget v1, p0, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_58

    .line 1058
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 1059
    return v2

    .line 1045
    :pswitch_22
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    const/16 v3, 0x14

    if-nez v1, :cond_3f

    if-ne v0, v3, :cond_35

    .line 1046
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

    .line 1047
    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->requestFocus()Z

    .line 1048
    iput v0, p0, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 1049
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 1050
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1051
    if-ne v0, v3, :cond_53

    move v1, v2

    goto :goto_54

    :cond_53
    const/4 v1, 0x0

    :goto_54
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    .line 1053
    :cond_57
    return v2

    .line 1064
    :cond_58
    :goto_58
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

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
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1019
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1020
    .local v0, "action":I
    packed-switch v0, :pswitch_data_10

    :pswitch_7
    goto :goto_b

    .line 1023
    :pswitch_8
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 1026
    :goto_b
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public whitelist dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1069
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1070
    .local v0, "action":I
    packed-switch v0, :pswitch_data_10

    :pswitch_7
    goto :goto_b

    .line 1073
    :pswitch_8
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 1076
    :goto_b
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected whitelist drawableStateChanged()V
    .registers 3

    .line 1615
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 1617
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 1618
    .local v0, "selectionDivider":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1619
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1620
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1622
    :cond_1a
    return-void
.end method

.method public whitelist getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .registers 2

    .line 1715
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_9

    .line 1716
    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    return-object v0

    .line 1718
    :cond_9
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_14

    .line 1719
    new-instance v0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 1721
    :cond_14
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    return-object v0
.end method

.method protected whitelist getBottomFadingEdgeStrength()F
    .registers 2

    .line 1603
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public blacklist getDisplayedValueForCurrentSelection()Ljava/lang/CharSequence;
    .registers 3

    .line 1574
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

    .line 1532
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMaxValue()I
    .registers 2

    .line 1495
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    return v0
.end method

.method public whitelist getMinValue()I
    .registers 2

    .line 1458
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    return v0
.end method

.method public whitelist getSelectionDividerHeight()I
    .registers 2

    .line 1593
    iget v0, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    return v0
.end method

.method public whitelist getSolidColor()I
    .registers 2

    .line 1216
    iget v0, p0, Landroid/widget/NumberPicker;->mSolidColor:I

    return v0
.end method

.method public whitelist getTextColor()I
    .registers 2

    .line 1740
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public whitelist getTextSize()F
    .registers 2

    .line 1759
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method protected whitelist getTopFadingEdgeStrength()F
    .registers 2

    .line 1598
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public whitelist getValue()I
    .registers 2

    .line 1449
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    return v0
.end method

.method public whitelist getWrapSelectorWheel()Z
    .registers 2

    .line 1391
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method public whitelist jumpDrawablesToCurrentState()V
    .registers 2

    .line 1627
    invoke-super {p0}, Landroid/widget/LinearLayout;->jumpDrawablesToCurrentState()V

    .line 1629
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 1630
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1632
    :cond_a
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 1

    .line 1608
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1609
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 1610
    return-void
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1646
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_8

    .line 1647
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1648
    return-void

    .line 1650
    :cond_8
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHideWheelUntilFocused:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->hasFocus()Z

    move-result v0

    goto :goto_13

    :cond_12
    move v0, v1

    .line 1651
    .local v0, "showSelectorWheel":Z
    :goto_13
    iget v2, p0, Landroid/widget/NumberPicker;->mRight:I

    iget v3, p0, Landroid/widget/NumberPicker;->mLeft:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 1652
    .local v2, "x":F
    iget v3, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    int-to-float v3, v3

    .line 1655
    .local v3, "y":F
    const/4 v4, 0x0

    if-eqz v0, :cond_5b

    iget-object v5, p0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5b

    iget v6, p0, Landroid/widget/NumberPicker;->mScrollState:I

    if-nez v6, :cond_5b

    .line 1657
    iget-boolean v6, p0, Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    if-eqz v6, :cond_40

    .line 1658
    sget-object v6, Landroid/widget/NumberPicker;->PRESSED_STATE_SET:[I

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1659
    iget-object v5, p0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroid/widget/NumberPicker;->mRight:I

    iget v7, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    invoke-virtual {v5, v4, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1660
    iget-object v5, p0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1662
    :cond_40
    iget-boolean v5, p0, Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    if-eqz v5, :cond_5b

    .line 1663
    iget-object v5, p0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v6, Landroid/widget/NumberPicker;->PRESSED_STATE_SET:[I

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1664
    iget-object v5, p0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    iget v7, p0, Landroid/widget/NumberPicker;->mRight:I

    iget v8, p0, Landroid/widget/NumberPicker;->mBottom:I

    invoke-virtual {v5, v4, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1666
    iget-object v5, p0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1671
    :cond_5b
    iget-object v5, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1672
    .local v5, "selectorIndices":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_5e
    array-length v7, v5

    if-ge v6, v7, :cond_85

    .line 1673
    aget v7, v5, v6

    .line 1674
    .local v7, "selectorIndex":I
    iget-object v8, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1680
    .local v8, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v0, :cond_6f

    if-ne v6, v1, :cond_79

    :cond_6f
    if-ne v6, v1, :cond_7e

    iget-object v9, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 1681
    invoke-virtual {v9}, Landroid/widget/EditText;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_7e

    .line 1682
    :cond_79
    iget-object v9, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v2, v3, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1684
    :cond_7e
    iget v9, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    int-to-float v9, v9

    add-float/2addr v3, v9

    .line 1672
    .end local v7    # "selectorIndex":I
    .end local v8    # "scrollSelectorValue":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_5e

    .line 1688
    .end local v6    # "i":I
    :cond_85
    if-eqz v0, :cond_ac

    iget-object v1, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_ac

    .line 1690
    iget v6, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 1691
    .local v6, "topOfTopDivider":I
    iget v7, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    add-int/2addr v7, v6

    .line 1692
    .local v7, "bottomOfTopDivider":I
    iget v8, p0, Landroid/widget/NumberPicker;->mRight:I

    invoke-virtual {v1, v4, v6, v8, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1693
    iget-object v1, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1696
    iget v1, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 1697
    .local v1, "bottomOfBottomDivider":I
    iget v8, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    sub-int v8, v1, v8

    .line 1698
    .local v8, "topOfBottomDivider":I
    iget-object v9, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    iget v10, p0, Landroid/widget/NumberPicker;->mRight:I

    invoke-virtual {v9, v4, v8, v10, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1699
    iget-object v4, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1701
    .end local v1    # "bottomOfBottomDivider":I
    .end local v6    # "topOfTopDivider":I
    .end local v7    # "bottomOfTopDivider":I
    .end local v8    # "topOfBottomDivider":I
    :cond_ac
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1706
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1707
    const-class v0, Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1708
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1709
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1710
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1711
    return-void
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 894
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b6

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_b6

    .line 897
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 898
    .local v0, "action":I
    packed-switch v0, :pswitch_data_b8

    .line 942
    return v1

    .line 900
    :pswitch_15
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 901
    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideSoftInput()V

    .line 902
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iput v2, p0, Landroid/widget/NumberPicker;->mLastDownOrMoveEventY:F

    .line 903
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/NumberPicker;->mLastDownEventTime:J

    .line 904
    iput-boolean v1, p0, Landroid/widget/NumberPicker;->mIgnoreMoveEvents:Z

    .line 905
    iput-boolean v1, p0, Landroid/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 907
    iget v2, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iget v3, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    const/4 v4, 0x1

    if-gez v3, :cond_42

    .line 908
    iget v2, p0, Landroid/widget/NumberPicker;->mScrollState:I

    if-nez v2, :cond_52

    .line 909
    iget-object v2, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_52

    .line 912
    :cond_42
    iget v3, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_52

    .line 913
    iget v2, p0, Landroid/widget/NumberPicker;->mScrollState:I

    if-nez v2, :cond_52

    .line 914
    iget-object v2, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v2, v4}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    .line 919
    :cond_52
    :goto_52
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 920
    iget-object v2, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_74

    .line 921
    iget-object v2, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 922
    iget-object v2, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 923
    iget-object v2, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    .line 924
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_b5

    .line 925
    :cond_74
    iget-object v2, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_8c

    .line 926
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 927
    iget-object v1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 928
    iget-object v1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_b5

    .line 929
    :cond_8c
    iget v2, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iget v3, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_9f

    .line 930
    nop

    .line 931
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    .line 930
    invoke-direct {p0, v1, v2, v3}, Landroid/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_b5

    .line 932
    :cond_9f
    iget v1, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-lez v1, :cond_b0

    .line 933
    nop

    .line 934
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    .line 933
    invoke-direct {p0, v4, v1, v2}, Landroid/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_b5

    .line 936
    :cond_b0
    iput-boolean v4, p0, Landroid/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 937
    invoke-direct {p0}, Landroid/widget/NumberPicker;->postBeginSoftInputOnLongPressCommand()V

    .line 939
    :goto_b5
    return v4

    .line 895
    .end local v0    # "action":I
    :cond_b6
    :goto_b6
    return v1

    nop

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_15
    .end packed-switch
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 18
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 819
    move-object v0, p0

    iget-boolean v1, v0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v1, :cond_9

    .line 820
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 821
    return-void

    .line 823
    :cond_9
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredWidth()I

    move-result v1

    .line 824
    .local v1, "msrdWdth":I
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredHeight()I

    move-result v2

    .line 827
    .local v2, "msrdHght":I
    iget-object v3, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v3

    .line 828
    .local v3, "inptTxtMsrdWdth":I
    iget-object v4, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v4

    .line 829
    .local v4, "inptTxtMsrdHght":I
    sub-int v5, v1, v3

    div-int/lit8 v5, v5, 0x2

    .line 830
    .local v5, "inptTxtLeft":I
    sub-int v6, v2, v4

    div-int/lit8 v6, v6, 0x2

    .line 831
    .local v6, "inptTxtTop":I
    add-int v7, v5, v3

    .line 832
    .local v7, "inptTxtRight":I
    add-int v8, v6, v4

    .line 833
    .local v8, "inptTxtBottom":I
    iget-object v9, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9, v5, v6, v7, v8}, Landroid/widget/EditText;->layout(IIII)V

    .line 835
    if-eqz p1, :cond_4a

    .line 837
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheel()V

    .line 838
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeFadingEdges()V

    .line 839
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getHeight()I

    move-result v9

    iget v10, v0, Landroid/widget/NumberPicker;->mSelectionDividersDistance:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    iget v11, v0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    sub-int/2addr v9, v11

    iput v9, v0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 841
    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v9, v11

    add-int/2addr v9, v10

    iput v9, v0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 844
    :cond_4a
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 848
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_8

    .line 849
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 850
    return-void

    .line 853
    :cond_8
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v0

    .line 854
    .local v0, "newWidthMeasureSpec":I
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v1}, Landroid/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 855
    .local v1, "newHeightMeasureSpec":I
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 857
    iget v2, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredWidth()I

    move-result v3

    invoke-direct {p0, v2, v3, p1}, Landroid/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v2

    .line 859
    .local v2, "widthSize":I
    iget v3, p0, Landroid/widget/NumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredHeight()I

    move-result v4

    invoke-direct {p0, v3, v4, p2}, Landroid/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 861
    .local v3, "heightSize":I
    invoke-virtual {p0, v2, v3}, Landroid/widget/NumberPicker;->setMeasuredDimension(II)V

    .line 862
    return-void
.end method

.method public greylist-max-o onResolveDrawables(I)V
    .registers 3
    .param p1, "layoutDirection"    # I

    .line 1637
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onResolveDrawables(I)V

    .line 1639
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 1640
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1642
    :cond_a
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 947
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d7

    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_d

    goto/16 :goto_d7

    .line 950
    :cond_d
    iget-object v0, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_17

    .line 951
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 953
    :cond_17
    iget-object v0, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 954
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 955
    .local v0, "action":I
    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_d8

    goto/16 :goto_d6

    .line 957
    :pswitch_26
    iget-boolean v3, p0, Landroid/widget/NumberPicker;->mIgnoreMoveEvents:Z

    if-eqz v3, :cond_2c

    .line 958
    goto/16 :goto_d6

    .line 960
    :cond_2c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 961
    .local v3, "currentMoveY":F
    iget v4, p0, Landroid/widget/NumberPicker;->mScrollState:I

    if-eq v4, v2, :cond_48

    .line 962
    iget v1, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    sub-float v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    .line 963
    .local v1, "deltaDownY":I
    iget v4, p0, Landroid/widget/NumberPicker;->mTouchSlop:I

    if-le v1, v4, :cond_47

    .line 964
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 965
    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 967
    .end local v1    # "deltaDownY":I
    :cond_47
    goto :goto_53

    .line 968
    :cond_48
    iget v4, p0, Landroid/widget/NumberPicker;->mLastDownOrMoveEventY:F

    sub-float v4, v3, v4

    float-to-int v4, v4

    .line 969
    .local v4, "deltaMoveY":I
    invoke-virtual {p0, v1, v4}, Landroid/widget/NumberPicker;->scrollBy(II)V

    .line 970
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 972
    .end local v4    # "deltaMoveY":I
    :goto_53
    iput v3, p0, Landroid/widget/NumberPicker;->mLastDownOrMoveEventY:F

    .line 973
    .end local v3    # "currentMoveY":F
    goto/16 :goto_d6

    .line 975
    :pswitch_57
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeBeginSoftInputCommand()V

    .line 976
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeChangeCurrentByOneFromLongPress()V

    .line 977
    iget-object v3, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v3}, Landroid/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 978
    iget-object v3, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 979
    .local v3, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v4, 0x3e8

    iget v5, p0, Landroid/widget/NumberPicker;->mMaximumFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 980
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    float-to-int v4, v4

    .line 981
    .local v4, "initialVelocity":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Landroid/widget/NumberPicker;->mMinimumFlingVelocity:I

    const/4 v7, 0x2

    if-le v5, v6, :cond_81

    .line 982
    invoke-direct {p0, v4}, Landroid/widget/NumberPicker;->fling(I)V

    .line 983
    invoke-direct {p0, v7}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_ce

    .line 985
    :cond_81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 986
    .local v5, "eventY":I
    int-to-float v6, v5

    iget v8, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    sub-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v6, v6

    .line 987
    .local v6, "deltaMoveY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iget-wide v10, p0, Landroid/widget/NumberPicker;->mLastDownEventTime:J

    sub-long/2addr v8, v10

    .line 988
    .local v8, "deltaTime":J
    iget v10, p0, Landroid/widget/NumberPicker;->mTouchSlop:I

    if-gt v6, v10, :cond_c8

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v8, v10

    if-gez v10, :cond_c8

    .line 989
    iget-boolean v10, p0, Landroid/widget/NumberPicker;->mPerformClickOnTap:Z

    if-eqz v10, :cond_ad

    .line 990
    iput-boolean v1, p0, Landroid/widget/NumberPicker;->mPerformClickOnTap:Z

    .line 991
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->performClick()Z

    goto :goto_cb

    .line 993
    :cond_ad
    iget v10, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    div-int v10, v5, v10

    sub-int/2addr v10, v2

    .line 995
    .local v10, "selectorIndexOffset":I
    if-lez v10, :cond_bd

    .line 996
    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    .line 997
    iget-object v7, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v7, v2}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_c7

    .line 999
    :cond_bd
    if-gez v10, :cond_c7

    .line 1000
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    .line 1001
    iget-object v11, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v11, v7}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    .line 1004
    .end local v10    # "selectorIndexOffset":I
    :cond_c7
    :goto_c7
    goto :goto_cb

    .line 1006
    :cond_c8
    invoke-direct {p0}, Landroid/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    .line 1008
    :goto_cb
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 1010
    .end local v5    # "eventY":I
    .end local v6    # "deltaMoveY":I
    .end local v8    # "deltaTime":J
    :goto_ce
    iget-object v1, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 1011
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1014
    .end local v3    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v4    # "initialVelocity":I
    :goto_d6
    return v2

    .line 948
    .end local v0    # "action":I
    :cond_d7
    :goto_d7
    return v1

    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_57
        :pswitch_26
    .end packed-switch
.end method

.method public whitelist performClick()Z
    .registers 2

    .line 1291
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_9

    .line 1292
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    return v0

    .line 1293
    :cond_9
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1294
    invoke-direct {p0}, Landroid/widget/NumberPicker;->showSoftInput()V

    .line 1296
    :cond_12
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist performLongClick()Z
    .registers 3

    .line 1301
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_9

    .line 1302
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v0

    return v0

    .line 1303
    :cond_9
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_15

    .line 1304
    invoke-direct {p0}, Landroid/widget/NumberPicker;->showSoftInput()V

    .line 1305
    iput-boolean v1, p0, Landroid/widget/NumberPicker;->mIgnoreMoveEvents:Z

    .line 1307
    :cond_15
    return v1
.end method

.method public whitelist scrollBy(II)V
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1165
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1166
    .local v0, "selectorIndices":[I
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1167
    .local v1, "startScrollOffset":I
    iget-boolean v2, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    const/4 v3, 0x1

    if-nez v2, :cond_16

    if-lez p2, :cond_16

    aget v4, v0, v3

    iget v5, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-gt v4, v5, :cond_16

    .line 1169
    iget v2, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1170
    return-void

    .line 1172
    :cond_16
    if-nez v2, :cond_25

    if-gez p2, :cond_25

    aget v2, v0, v3

    iget v4, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-lt v2, v4, :cond_25

    .line 1174
    iget v2, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1175
    return-void

    .line 1177
    :cond_25
    iget v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v2, p2

    iput v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1178
    :cond_2a
    :goto_2a
    iget v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v4, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int v4, v2, v4

    iget v5, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    if-le v4, v5, :cond_50

    .line 1179
    iget v4, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v2, v4

    iput v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1180
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->decrementSelectorIndices([I)V

    .line 1181
    aget v2, v0, v3

    invoke-direct {p0, v2, v3}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1182
    iget-boolean v2, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v2, :cond_2a

    aget v2, v0, v3

    iget v4, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-gt v2, v4, :cond_2a

    .line 1183
    iget v2, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_2a

    .line 1186
    :cond_50
    :goto_50
    iget v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v4, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int v4, v2, v4

    iget v5, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    neg-int v5, v5

    if-ge v4, v5, :cond_77

    .line 1187
    iget v4, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v2, v4

    iput v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1188
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->incrementSelectorIndices([I)V

    .line 1189
    aget v2, v0, v3

    invoke-direct {p0, v2, v3}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1190
    iget-boolean v2, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v2, :cond_50

    aget v2, v0, v3

    iget v4, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-lt v2, v4, :cond_50

    .line 1191
    iget v2, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_50

    .line 1194
    :cond_77
    if-eq v1, v2, :cond_7d

    .line 1195
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2, v3, v1}, Landroid/widget/NumberPicker;->onScrollChanged(IIII)V

    .line 1197
    :cond_7d
    return-void
.end method

.method public whitelist setDisplayedValues([Ljava/lang/String;)V
    .registers 4
    .param p1, "displayedValues"    # [Ljava/lang/String;

    .line 1545
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_5

    .line 1546
    return-void

    .line 1548
    :cond_5
    iput-object p1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1549
    if-eqz p1, :cond_12

    .line 1551
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_18

    .line 1554
    :cond_12
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1556
    :goto_18
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1557
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1558
    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1559
    return-void
.end method

.method public whitelist setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 1153
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1154
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_c

    .line 1155
    iget-object v0, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1157
    :cond_c
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_15

    .line 1158
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1160
    :cond_15
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1161
    return-void
.end method

.method public whitelist setFormatter(Landroid/widget/NumberPicker$Formatter;)V
    .registers 3
    .param p1, "formatter"    # Landroid/widget/NumberPicker$Formatter;

    .line 1249
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    if-ne p1, v0, :cond_5

    .line 1250
    return-void

    .line 1252
    :cond_5
    iput-object p1, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    .line 1253
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1254
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1255
    return-void
.end method

.method public whitelist setMaxValue(I)V
    .registers 4
    .param p1, "maxValue"    # I

    .line 1509
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-ne v0, p1, :cond_5

    .line 1510
    return-void

    .line 1512
    :cond_5
    if-ltz p1, :cond_1f

    .line 1515
    iput p1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 1516
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    if-ge p1, v0, :cond_f

    .line 1517
    iput p1, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1519
    :cond_f
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateWrapSelectorWheel()V

    .line 1520
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1521
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1522
    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1523
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1524
    return-void

    .line 1513
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxValue must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMinValue(I)V
    .registers 4
    .param p1, "minValue"    # I

    .line 1472
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ne v0, p1, :cond_5

    .line 1473
    return-void

    .line 1475
    :cond_5
    if-ltz p1, :cond_1f

    .line 1478
    iput p1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 1479
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    if-le p1, v0, :cond_f

    .line 1480
    iput p1, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1482
    :cond_f
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateWrapSelectorWheel()V

    .line 1483
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1484
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1485
    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1486
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1487
    return-void

    .line 1476
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "minValue must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOnLongPressUpdateInterval(J)V
    .registers 3
    .param p1, "intervalMillis"    # J

    .line 1440
    iput-wide p1, p0, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 1441
    return-void
.end method

.method public whitelist setOnScrollListener(Landroid/widget/NumberPicker$OnScrollListener;)V
    .registers 2
    .param p1, "onScrollListener"    # Landroid/widget/NumberPicker$OnScrollListener;

    .line 1234
    iput-object p1, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    .line 1235
    return-void
.end method

.method public whitelist setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V
    .registers 2
    .param p1, "onValueChangedListener"    # Landroid/widget/NumberPicker$OnValueChangeListener;

    .line 1225
    iput-object p1, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    .line 1226
    return-void
.end method

.method public whitelist setSelectionDividerHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .line 1582
    iput p1, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    .line 1583
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1584
    return-void
.end method

.method public whitelist setTextColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 1730
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1731
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1732
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1733
    return-void
.end method

.method public whitelist setTextSize(F)V
    .registers 4
    .param p1, "size"    # F

    .line 1749
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1750
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 1751
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1752
    return-void
.end method

.method public whitelist setValue(I)V
    .registers 3
    .param p1, "value"    # I

    .line 1286
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1287
    return-void
.end method

.method public whitelist setWrapSelectorWheel(Z)V
    .registers 2
    .param p1, "wrapSelectorWheel"    # Z

    .line 1412
    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheelPreferred:Z

    .line 1413
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateWrapSelectorWheel()V

    .line 1415
    return-void
.end method
