.class public Landroid/widget/LinearLayout;
.super Landroid/view/ViewGroup;
.source "LinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/LinearLayout$LayoutParams;,
        Landroid/widget/LinearLayout$DividerMode;,
        Landroid/widget/LinearLayout$OrientationMode;
    }
.end annotation


# static fields
.field public static final whitelist HORIZONTAL:I = 0x0

.field private static final greylist-max-r INDEX_BOTTOM:I = 0x2

.field private static final greylist-max-o INDEX_CENTER_VERTICAL:I = 0x0

.field private static final greylist-max-o INDEX_FILL:I = 0x3

.field private static final greylist-max-r INDEX_TOP:I = 0x1

.field public static final whitelist SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final whitelist SHOW_DIVIDER_END:I = 0x4

.field public static final whitelist SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final whitelist SHOW_DIVIDER_NONE:I = 0x0

.field public static final whitelist VERTICAL:I = 0x1

.field private static final greylist-max-o VERTICAL_GRAVITY_COUNT:I = 0x4

.field private static greylist-max-o sCompatibilityDone:Z

.field private static greylist-max-o sRemeasureWeightedChildren:Z


# instance fields
.field private final greylist-max-o mAllowInconsistentMeasurement:Z

.field private greylist-max-o mBaselineAligned:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private greylist-max-o mBaselineAlignedChildIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private greylist-max-o mBaselineChildTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private greylist mDivider:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mDividerHeight:I

.field private greylist-max-o mDividerPadding:I

.field private greylist-max-o mDividerWidth:I

.field private greylist-max-p mGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = -0x1
                mask = -0x1
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x0
                mask = 0x0
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x30
                mask = 0x30
                name = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x50
                mask = 0x50
                name = "BOTTOM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x3
                mask = 0x3
                name = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x5
                mask = 0x5
                name = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800003
                mask = 0x800003
                name = "START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800005
                mask = 0x800005
                name = "END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "CENTER_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x70
                mask = 0x70
                name = "FILL_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "CENTER_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x7
                mask = 0x7
                name = "FILL_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x11
                mask = 0x11
                name = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x77
                mask = 0x77
                name = "FILL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800000
                mask = 0x800000
                name = "RELATIVE"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field private greylist-max-o mLayoutDirection:I

.field private greylist mMaxAscent:[I

.field private greylist mMaxDescent:[I

.field private greylist-max-o mOrientation:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private greylist-max-o mShowDividers:I

.field private greylist mTotalLength:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private greylist mUseLargestChild:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private greylist-max-o mWeightSum:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 238
    const/4 v0, 0x0

    sput-boolean v0, Landroid/widget/LinearLayout;->sCompatibilityDone:Z

    .line 243
    const/4 v0, 0x1

    sput-boolean v0, Landroid/widget/LinearLayout;->sRemeasureWeightedChildren:Z

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 246
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 247
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 250
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 251
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 254
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 255
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 258
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 151
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 159
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 165
    const v3, 0x800033

    iput v3, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 232
    iput v1, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    .line 260
    sget-boolean v3, Landroid/widget/LinearLayout;->sCompatibilityDone:Z

    if-nez v3, :cond_2a

    if-eqz p1, :cond_2a

    .line 261
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 264
    .local v3, "targetSdkVersion":I
    const/16 v4, 0x1c

    if-lt v3, v4, :cond_25

    move v4, v0

    goto :goto_26

    :cond_25
    move v4, v2

    :goto_26
    sput-boolean v4, Landroid/widget/LinearLayout;->sRemeasureWeightedChildren:Z

    .line 266
    sput-boolean v0, Landroid/widget/LinearLayout;->sCompatibilityDone:Z

    .line 269
    .end local v3    # "targetSdkVersion":I
    :cond_2a
    sget-object v3, Lcom/android/internal/R$styleable;->LinearLayout:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 271
    .local v3, "a":Landroid/content/res/TypedArray;
    sget-object v6, Lcom/android/internal/R$styleable;->LinearLayout:[I

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object v8, v3

    move v9, p3

    move v10, p4

    invoke-virtual/range {v4 .. v10}, Landroid/widget/LinearLayout;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 274
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 275
    .local v4, "index":I
    if-ltz v4, :cond_44

    .line 276
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 279
    :cond_44
    invoke-virtual {v3, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 280
    if-ltz v4, :cond_4d

    .line 281
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 284
    :cond_4d
    const/4 v5, 0x2

    invoke-virtual {v3, v5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 285
    .local v5, "baselineAligned":Z
    if-nez v5, :cond_57

    .line 286
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 289
    :cond_57
    const/4 v6, 0x4

    const/high16 v7, -0x40800000    # -1.0f

    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    .line 291
    const/4 v6, 0x3

    .line 292
    invoke-virtual {v3, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 294
    const/4 v1, 0x6

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    .line 296
    const/4 v1, 0x7

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    .line 297
    const/16 v1, 0x8

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    .line 298
    const/4 v1, 0x5

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 300
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 301
    .local v1, "version":I
    const/16 v6, 0x17

    if-gt v1, v6, :cond_90

    goto :goto_91

    :cond_90
    move v0, v2

    :goto_91
    iput-boolean v0, p0, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    .line 303
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 304
    return-void
.end method

.method private greylist-max-o allViewsAreGoneBefore(I)Z
    .registers 6
    .param p1, "childIndex"    # I

    .line 756
    add-int/lit8 v0, p1, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_17

    .line 757
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 758
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_14

    .line 759
    const/4 v2, 0x0

    return v2

    .line 756
    .end local v1    # "child":Landroid/view/View;
    :cond_14
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 762
    .end local v0    # "i":I
    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o forceUniformHeight(II)V
    .registers 14
    .param p1, "count"    # I
    .param p2, "widthMeasureSpec"    # I

    .line 1496
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1498
    .local v0, "uniformMeasureSpec":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, p1, :cond_3d

    .line 1499
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1500
    .local v8, "child":Landroid/view/View;
    if-eqz v8, :cond_3a

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3a

    .line 1501
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 1503
    .local v9, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3a

    .line 1506
    iget v10, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1507
    .local v10, "oldWidth":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1510
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v8

    move v4, p2

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1511
    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1498
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "oldWidth":I
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1515
    .end local v1    # "i":I
    :cond_3d
    return-void
.end method

.method private greylist-max-o forceUniformWidth(II)V
    .registers 14
    .param p1, "count"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1074
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1076
    .local v0, "uniformMeasureSpec":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, p1, :cond_3d

    .line 1077
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1078
    .local v8, "child":Landroid/view/View;
    if-eqz v8, :cond_3a

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3a

    .line 1079
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 1081
    .local v9, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3a

    .line 1084
    iget v10, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1085
    .local v10, "oldHeight":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1088
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v8

    move v4, v0

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1089
    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1076
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "oldHeight":I
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1093
    .end local v1    # "i":I
    :cond_3d
    return-void
.end method

.method private greylist-max-o getLastNonGoneChild()Landroid/view/View;
    .registers 5

    .line 470
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_1a

    .line 471
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 472
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_17

    .line 473
    return-object v1

    .line 470
    .end local v1    # "child":Landroid/view/View;
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 476
    .end local v0    # "i":I
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o isShowingDividers()Z
    .registers 2

    .line 311
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private greylist-max-o setChildFrame(Landroid/view/View;IIII)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 1872
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1873
    return-void
.end method


# virtual methods
.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1997
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    return v0
.end method

.method greylist-max-o drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 480
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    .line 481
    .local v0, "count":I
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v1

    .line 482
    .local v1, "isLayoutRtl":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_3f

    .line 483
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 484
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_3c

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3c

    .line 485
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 486
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 488
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v1, :cond_2f

    .line 489
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    .local v5, "position":I
    goto :goto_39

    .line 491
    .end local v5    # "position":I
    :cond_2f
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int/2addr v5, v6

    .line 493
    .restart local v5    # "position":I
    :goto_39
    invoke-virtual {p0, p1, v5}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 482
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "position":I
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 498
    .end local v2    # "i":I
    :cond_3f
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 499
    invoke-direct {p0}, Landroid/widget/LinearLayout;->getLastNonGoneChild()Landroid/view/View;

    move-result-object v2

    .line 501
    .local v2, "child":Landroid/view/View;
    if-nez v2, :cond_5f

    .line 502
    if-eqz v1, :cond_52

    .line 503
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    .local v3, "position":I
    goto :goto_7b

    .line 505
    .end local v3    # "position":I
    :cond_52
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int/2addr v3, v4

    .restart local v3    # "position":I
    goto :goto_7b

    .line 508
    .end local v3    # "position":I
    :cond_5f
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 509
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v1, :cond_73

    .line 510
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int/2addr v4, v5

    move v3, v4

    .local v4, "position":I
    goto :goto_7b

    .line 512
    .end local v4    # "position":I
    :cond_73
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    move v3, v4

    .line 515
    .local v3, "position":I
    :goto_7b
    invoke-virtual {p0, p1, v3}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 517
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "position":I
    :cond_7e
    return-void
.end method

.method greylist-max-o drawDividersVertical(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 440
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    .line 441
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_31

    .line 442
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 443
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2e

    .line 444
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 445
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 446
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    sub-int/2addr v4, v5

    .line 447
    .local v4, "top":I
    invoke-virtual {p0, p1, v4}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 441
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "top":I
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 452
    .end local v1    # "i":I
    :cond_31
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 453
    invoke-direct {p0}, Landroid/widget/LinearLayout;->getLastNonGoneChild()Landroid/view/View;

    move-result-object v1

    .line 454
    .local v1, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 455
    .local v2, "bottom":I
    if-nez v1, :cond_4b

    .line 456
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    sub-int/2addr v3, v4

    .end local v2    # "bottom":I
    .local v3, "bottom":I
    goto :goto_5a

    .line 458
    .end local v3    # "bottom":I
    .restart local v2    # "bottom":I
    :cond_4b
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 459
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v2, v4, v5

    move v3, v2

    .line 461
    .end local v2    # "bottom":I
    .local v3, "bottom":I
    :goto_5a
    invoke-virtual {p0, p1, v3}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 463
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "bottom":I
    :cond_5d
    return-void
.end method

.method greylist-max-o drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "top"    # I

    .line 520
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    .line 521
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v3, p2

    .line 520
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 522
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 523
    return-void
.end method

.method greylist-max-o drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I

    .line 526
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v2, p2

    .line 527
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    sub-int/2addr v3, v4

    .line 526
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 528
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 529
    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 2008
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 2009
    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    const-string v1, "layout:baselineAligned"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 2010
    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    const-string v1, "layout:baselineAlignedChildIndex"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2011
    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    const-string/jumbo v1, "measurement:baselineChildTop"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2012
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const-string/jumbo v1, "measurement:orientation"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2013
    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    const-string/jumbo v1, "measurement:gravity"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2014
    iget v0, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    const-string/jumbo v1, "measurement:totalLength"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2015
    iget v0, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    const-string v1, "layout:totalLength"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2016
    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    const-string v1, "layout:useLargestChild"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 2017
    return-void
.end method

.method protected bridge synthetic whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 93
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    .line 1973
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, -0x2

    if-nez v0, :cond_b

    .line 1974
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    .line 1975
    :cond_b
    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    .line 1976
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    .line 1978
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 93
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 93
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1960
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 4
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1983
    sget-boolean v0, Landroid/widget/LinearLayout;->sPreserveMarginParamsInLayoutParamConversion:Z

    if-eqz v0, :cond_1e

    .line 1984
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_11

    .line 1985
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0

    .line 1986
    :cond_11
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1e

    .line 1987
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 1990
    :cond_1e
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 2002
    const-class v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBaseline()I
    .registers 7

    .line 590
    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-gez v0, :cond_9

    .line 591
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0

    .line 594
    :cond_9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-le v0, v1, :cond_65

    .line 599
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 600
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 602
    .local v1, "childBaseline":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_29

    .line 603
    iget v3, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-nez v3, :cond_21

    .line 605
    return v2

    .line 609
    :cond_21
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 619
    :cond_29
    iget v2, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 621
    .local v2, "childTop":I
    iget v3, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5a

    .line 622
    iget v3, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    .line 623
    .local v3, "majorGravity":I
    const/16 v4, 0x30

    if-eq v3, v4, :cond_5a

    .line 624
    sparse-switch v3, :sswitch_data_6e

    goto :goto_5a

    .line 626
    :sswitch_3c
    iget v4, p0, Landroid/widget/LinearLayout;->mBottom:I

    iget v5, p0, Landroid/widget/LinearLayout;->mTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v2, v4, v5

    .line 627
    goto :goto_5a

    .line 630
    :sswitch_49
    iget v4, p0, Landroid/widget/LinearLayout;->mBottom:I

    iget v5, p0, Landroid/widget/LinearLayout;->mTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 637
    .end local v3    # "majorGravity":I
    :cond_5a
    :goto_5a
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 638
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v2

    add-int/2addr v4, v1

    return v4

    .line 595
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childBaseline":I
    .end local v2    # "childTop":I
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_65
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_6e
    .sparse-switch
        0x10 -> :sswitch_49
        0x50 -> :sswitch_3c
    .end sparse-switch
.end method

.method public whitelist getBaselineAlignedChildIndex()I
    .registers 2

    .line 648
    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method greylist-max-o getChildrenSkipCount(Landroid/view/View;I)I
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 1526
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 354
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getDividerPadding()I
    .registers 2

    .line 414
    iget v0, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    return v0
.end method

.method public greylist-max-o getDividerWidth()I
    .registers 2

    .line 423
    iget v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    return v0
.end method

.method public whitelist getGravity()I
    .registers 2

    .line 1937
    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    return v0
.end method

.method greylist-max-o getLocationOffset(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 1568
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o getNextLocationOffset(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 1580
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getOrientation()I
    .registers 2

    .line 1900
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    return v0
.end method

.method public whitelist getShowDividers()I
    .registers 2

    .line 342
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    return v0
.end method

.method greylist-max-o getVirtualChildAt(I)Landroid/view/View;
    .registers 3
    .param p1, "index"    # I

    .line 677
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getVirtualChildCount()I
    .registers 2

    .line 690
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public whitelist getWeightSum()F
    .registers 2

    .line 702
    iget v0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    return v0
.end method

.method protected greylist-max-o hasDividerBeforeChildAt(I)Z
    .registers 6
    .param p1, "childIndex"    # I

    .line 739
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_10

    .line 741
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_f

    move v1, v2

    :cond_f
    return v1

    .line 743
    :cond_10
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;->allViewsAreGoneBefore(I)Z

    move-result v0

    .line 744
    .local v0, "allViewsAreGoneBefore":Z
    if-eqz v0, :cond_1d

    .line 746
    iget v3, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_1c

    move v1, v2

    :cond_1c
    return v1

    .line 748
    :cond_1d
    iget v3, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_24

    move v1, v2

    :cond_24
    return v1
.end method

.method public whitelist isBaselineAligned()Z
    .registers 2

    .line 539
    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    return v0
.end method

.method public whitelist isMeasureWithLargestChildEnabled()Z
    .registers 2

    .line 568
    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    return v0
.end method

.method greylist-max-o layoutHorizontal(IIII)V
    .registers 39
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1732
    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v7

    .line 1733
    .local v7, "isLayoutRtl":Z
    iget v8, v6, Landroid/widget/LinearLayout;->mPaddingTop:I

    .line 1739
    .local v8, "paddingTop":I
    sub-int v9, p4, p2

    .line 1740
    .local v9, "height":I
    iget v0, v6, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int v10, v9, v0

    .line 1743
    .local v10, "childBottom":I
    sub-int v0, v9, v8

    iget v1, v6, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int v11, v0, v1

    .line 1745
    .local v11, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v12

    .line 1747
    .local v12, "count":I
    iget v0, v6, Landroid/widget/LinearLayout;->mGravity:I

    const v1, 0x800007

    and-int v13, v0, v1

    .line 1748
    .local v13, "majorGravity":I
    and-int/lit8 v14, v0, 0x70

    .line 1750
    .local v14, "minorGravity":I
    iget-boolean v15, v6, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 1752
    .local v15, "baselineAligned":Z
    iget-object v5, v6, Landroid/widget/LinearLayout;->mMaxAscent:[I

    .line 1753
    .local v5, "maxAscent":[I
    iget-object v4, v6, Landroid/widget/LinearLayout;->mMaxDescent:[I

    .line 1755
    .local v4, "maxDescent":[I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v3

    .line 1756
    .local v3, "layoutDirection":I
    invoke-static {v13, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    const/16 v16, 0x2

    sparse-switch v0, :sswitch_data_1fa

    .line 1769
    iget v0, v6, Landroid/widget/LinearLayout;->mPaddingLeft:I

    .local v0, "childLeft":I
    goto :goto_4c

    .line 1759
    .end local v0    # "childLeft":I
    :sswitch_37
    iget v0, v6, Landroid/widget/LinearLayout;->mPaddingLeft:I

    add-int v0, v0, p3

    sub-int v0, v0, p1

    iget v1, v6, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v0, v1

    .line 1760
    .restart local v0    # "childLeft":I
    goto :goto_4c

    .line 1764
    .end local v0    # "childLeft":I
    :sswitch_41
    iget v0, v6, Landroid/widget/LinearLayout;->mPaddingLeft:I

    sub-int v1, p3, p1

    iget v2, v6, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1765
    .restart local v0    # "childLeft":I
    nop

    .line 1773
    :goto_4c
    const/4 v1, 0x0

    .line 1774
    .local v1, "start":I
    const/4 v2, 0x1

    .line 1776
    .local v2, "dir":I
    if-eqz v7, :cond_58

    .line 1777
    add-int/lit8 v1, v12, -0x1

    .line 1778
    const/4 v2, -0x1

    move/from16 v17, v1

    move/from16 v18, v2

    goto :goto_5c

    .line 1776
    :cond_58
    move/from16 v17, v1

    move/from16 v18, v2

    .line 1782
    .end local v1    # "start":I
    .end local v2    # "dir":I
    .local v17, "start":I
    .local v18, "dir":I
    :goto_5c
    sget-boolean v1, Landroid/view/ViewRootImpl;->DEBUG_LAYOUT:Z

    const-string v2, "LinearLayout"

    if-eqz v1, :cond_85

    .line 1783
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v0

    .end local v0    # "childLeft":I
    .local v19, "childLeft":I
    const-string v0, "ll.layoutHorizontal count="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87

    .line 1782
    .end local v19    # "childLeft":I
    .restart local v0    # "childLeft":I
    :cond_85
    move/from16 v19, v0

    .line 1787
    .end local v0    # "childLeft":I
    .restart local v19    # "childLeft":I
    :goto_87
    const/4 v0, 0x0

    move v1, v0

    move/from16 v0, v19

    .end local v19    # "childLeft":I
    .restart local v0    # "childLeft":I
    .local v1, "i":I
    :goto_8b
    if-ge v1, v12, :cond_1ca

    .line 1788
    mul-int v19, v18, v1

    move/from16 v20, v7

    .end local v7    # "isLayoutRtl":Z
    .local v20, "isLayoutRtl":Z
    add-int v7, v17, v19

    .line 1789
    .local v7, "childIndex":I
    move/from16 v19, v9

    .end local v9    # "height":I
    .local v19, "height":I
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1791
    .local v9, "child":Landroid/view/View;
    sget-boolean v21, Landroid/view/ViewRootImpl;->DEBUG_LAYOUT:Z

    move/from16 v22, v1

    .end local v1    # "i":I
    .local v22, "i":I
    const/16 v23, 0x1

    if-eqz v21, :cond_d6

    .line 1792
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v3

    .end local v3    # "layoutDirection":I
    .local v24, "layoutDirection":I
    const-string v3, "ll.layoutHorizontal child="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " isGone="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v9, :cond_c7

    .line 1793
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v3

    move/from16 v25, v12

    const/16 v12, 0x8

    .end local v12    # "count":I
    .local v25, "count":I
    if-ne v3, v12, :cond_c9

    move/from16 v3, v23

    goto :goto_ca

    .line 1792
    .end local v25    # "count":I
    .restart local v12    # "count":I
    :cond_c7
    move/from16 v25, v12

    .line 1793
    .end local v12    # "count":I
    .restart local v25    # "count":I
    :cond_c9
    const/4 v3, 0x0

    :goto_ca
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1792
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_da

    .line 1791
    .end local v24    # "layoutDirection":I
    .end local v25    # "count":I
    .restart local v3    # "layoutDirection":I
    .restart local v12    # "count":I
    :cond_d6
    move/from16 v24, v3

    move/from16 v25, v12

    .line 1796
    .end local v3    # "layoutDirection":I
    .end local v12    # "count":I
    .restart local v24    # "layoutDirection":I
    .restart local v25    # "count":I
    :goto_da
    if-nez v9, :cond_f0

    .line 1797
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v1

    add-int/2addr v0, v1

    move-object/from16 v32, v4

    move-object/from16 v33, v5

    move/from16 v31, v8

    move/from16 v29, v10

    move/from16 v30, v11

    move/from16 v1, v22

    move-object v8, v2

    goto/16 :goto_1b3

    .line 1798
    :cond_f0
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_1a6

    .line 1799
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 1800
    .local v12, "childWidth":I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    .line 1801
    .local v21, "childHeight":I
    const/4 v1, -0x1

    .line 1803
    .local v1, "childBaseline":I
    nop

    .line 1804
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1806
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move/from16 v26, v1

    .end local v1    # "childBaseline":I
    .local v26, "childBaseline":I
    const/4 v1, -0x1

    if-eqz v15, :cond_118

    move-object/from16 v27, v2

    iget v2, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eq v2, v1, :cond_11a

    .line 1807
    invoke-virtual {v9}, Landroid/view/View;->getBaseline()I

    move-result v2

    .end local v26    # "childBaseline":I
    .local v2, "childBaseline":I
    goto :goto_11c

    .line 1806
    .end local v2    # "childBaseline":I
    .restart local v26    # "childBaseline":I
    :cond_118
    move-object/from16 v27, v2

    .line 1810
    :cond_11a
    move/from16 v2, v26

    .end local v26    # "childBaseline":I
    .restart local v2    # "childBaseline":I
    :goto_11c
    iget v1, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1811
    .local v1, "gravity":I
    if-gez v1, :cond_124

    .line 1812
    move v1, v14

    move/from16 v28, v1

    goto :goto_126

    .line 1811
    :cond_124
    move/from16 v28, v1

    .line 1815
    .end local v1    # "gravity":I
    .local v28, "gravity":I
    :goto_126
    and-int/lit8 v1, v28, 0x70

    sparse-switch v1, :sswitch_data_204

    .line 1847
    move/from16 v29, v10

    .end local v10    # "childBottom":I
    .local v29, "childBottom":I
    move v1, v8

    move v10, v1

    .local v1, "childTop":I
    goto :goto_167

    .line 1840
    .end local v1    # "childTop":I
    .end local v29    # "childBottom":I
    .restart local v10    # "childBottom":I
    :sswitch_130
    sub-int v1, v10, v21

    move/from16 v29, v10

    .end local v10    # "childBottom":I
    .restart local v29    # "childBottom":I
    iget v10, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v1, v10

    .line 1841
    .restart local v1    # "childTop":I
    const/4 v10, -0x1

    if-eq v2, v10, :cond_147

    .line 1842
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v10, v2

    .line 1843
    .local v10, "descent":I
    aget v26, v4, v16

    sub-int v26, v26, v10

    sub-int v1, v1, v26

    .line 1844
    .end local v10    # "descent":I
    move v10, v1

    goto :goto_167

    .line 1841
    :cond_147
    move v10, v1

    goto :goto_167

    .line 1817
    .end local v1    # "childTop":I
    .end local v29    # "childBottom":I
    .local v10, "childBottom":I
    :sswitch_149
    move/from16 v29, v10

    .end local v10    # "childBottom":I
    .restart local v29    # "childBottom":I
    iget v1, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v8

    .line 1818
    .restart local v1    # "childTop":I
    const/4 v10, -0x1

    if-eq v2, v10, :cond_157

    .line 1819
    aget v10, v5, v23

    sub-int/2addr v10, v2

    add-int/2addr v1, v10

    move v10, v1

    goto :goto_167

    .line 1818
    :cond_157
    move v10, v1

    goto :goto_167

    .line 1835
    .end local v1    # "childTop":I
    .end local v29    # "childBottom":I
    .restart local v10    # "childBottom":I
    :sswitch_159
    move/from16 v29, v10

    .end local v10    # "childBottom":I
    .restart local v29    # "childBottom":I
    sub-int v1, v11, v21

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v8

    iget v10, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v10

    iget v10, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v1, v10

    .line 1837
    .restart local v1    # "childTop":I
    move v10, v1

    .line 1851
    .end local v1    # "childTop":I
    .local v10, "childTop":I
    :goto_167
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_170

    .line 1852
    iget v1, v6, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v0, v1

    .line 1855
    :cond_170
    iget v1, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v26, v0, v1

    .line 1856
    .end local v0    # "childLeft":I
    .local v26, "childLeft":I
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v30, v26, v0

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v31, v8

    move-object/from16 v8, v27

    move/from16 v27, v2

    .end local v2    # "childBaseline":I
    .end local v8    # "paddingTop":I
    .local v27, "childBaseline":I
    .local v31, "paddingTop":I
    move/from16 v2, v30

    move/from16 v30, v11

    move-object v11, v3

    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .local v11, "lp":Landroid/widget/LinearLayout$LayoutParams;
    .local v30, "childSpace":I
    move v3, v10

    move-object/from16 v32, v4

    .end local v4    # "maxDescent":[I
    .local v32, "maxDescent":[I
    move v4, v12

    move-object/from16 v33, v5

    .end local v5    # "maxAscent":[I
    .local v33, "maxAscent":[I
    move/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 1858
    iget v0, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v12

    .line 1859
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v26, v26, v0

    .line 1861
    invoke-virtual {v6, v9, v7}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int v1, v22, v0

    move/from16 v0, v26

    .end local v22    # "i":I
    .local v1, "i":I
    goto :goto_1b3

    .line 1798
    .end local v1    # "i":I
    .end local v12    # "childWidth":I
    .end local v21    # "childHeight":I
    .end local v26    # "childLeft":I
    .end local v27    # "childBaseline":I
    .end local v28    # "gravity":I
    .end local v29    # "childBottom":I
    .end local v30    # "childSpace":I
    .end local v31    # "paddingTop":I
    .end local v32    # "maxDescent":[I
    .end local v33    # "maxAscent":[I
    .restart local v0    # "childLeft":I
    .restart local v4    # "maxDescent":[I
    .restart local v5    # "maxAscent":[I
    .restart local v8    # "paddingTop":I
    .local v10, "childBottom":I
    .local v11, "childSpace":I
    .restart local v22    # "i":I
    :cond_1a6
    move-object/from16 v32, v4

    move-object/from16 v33, v5

    move/from16 v31, v8

    move/from16 v29, v10

    move/from16 v30, v11

    move-object v8, v2

    .end local v4    # "maxDescent":[I
    .end local v5    # "maxAscent":[I
    .end local v8    # "paddingTop":I
    .end local v10    # "childBottom":I
    .end local v11    # "childSpace":I
    .restart local v29    # "childBottom":I
    .restart local v30    # "childSpace":I
    .restart local v31    # "paddingTop":I
    .restart local v32    # "maxDescent":[I
    .restart local v33    # "maxAscent":[I
    move/from16 v1, v22

    .line 1787
    .end local v7    # "childIndex":I
    .end local v9    # "child":Landroid/view/View;
    .end local v22    # "i":I
    .restart local v1    # "i":I
    :goto_1b3
    add-int/lit8 v1, v1, 0x1

    move-object v2, v8

    move/from16 v9, v19

    move/from16 v7, v20

    move/from16 v3, v24

    move/from16 v12, v25

    move/from16 v10, v29

    move/from16 v11, v30

    move/from16 v8, v31

    move-object/from16 v4, v32

    move-object/from16 v5, v33

    goto/16 :goto_8b

    .end local v19    # "height":I
    .end local v20    # "isLayoutRtl":Z
    .end local v24    # "layoutDirection":I
    .end local v25    # "count":I
    .end local v29    # "childBottom":I
    .end local v30    # "childSpace":I
    .end local v31    # "paddingTop":I
    .end local v32    # "maxDescent":[I
    .end local v33    # "maxAscent":[I
    .local v3, "layoutDirection":I
    .restart local v4    # "maxDescent":[I
    .restart local v5    # "maxAscent":[I
    .local v7, "isLayoutRtl":Z
    .restart local v8    # "paddingTop":I
    .local v9, "height":I
    .restart local v10    # "childBottom":I
    .restart local v11    # "childSpace":I
    .local v12, "count":I
    :cond_1ca
    move/from16 v22, v1

    move/from16 v24, v3

    move-object/from16 v32, v4

    move-object/from16 v33, v5

    move/from16 v20, v7

    move/from16 v31, v8

    move/from16 v19, v9

    move/from16 v29, v10

    move/from16 v30, v11

    move/from16 v25, v12

    move-object v8, v2

    .line 1865
    .end local v1    # "i":I
    .end local v3    # "layoutDirection":I
    .end local v4    # "maxDescent":[I
    .end local v5    # "maxAscent":[I
    .end local v7    # "isLayoutRtl":Z
    .end local v8    # "paddingTop":I
    .end local v9    # "height":I
    .end local v10    # "childBottom":I
    .end local v11    # "childSpace":I
    .end local v12    # "count":I
    .restart local v19    # "height":I
    .restart local v20    # "isLayoutRtl":Z
    .restart local v24    # "layoutDirection":I
    .restart local v25    # "count":I
    .restart local v29    # "childBottom":I
    .restart local v30    # "childSpace":I
    .restart local v31    # "paddingTop":I
    .restart local v32    # "maxDescent":[I
    .restart local v33    # "maxAscent":[I
    sget-boolean v1, Landroid/view/ViewRootImpl;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_1f9

    .line 1866
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ll.layoutHorizontal done this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    :cond_1f9
    return-void

    :sswitch_data_1fa
    .sparse-switch
        0x1 -> :sswitch_41
        0x5 -> :sswitch_37
    .end sparse-switch

    :sswitch_data_204
    .sparse-switch
        0x10 -> :sswitch_159
        0x30 -> :sswitch_149
        0x50 -> :sswitch_130
    .end sparse-switch
.end method

.method greylist-max-o layoutVertical(IIII)V
    .registers 31
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1610
    move-object/from16 v6, p0

    iget v7, v6, Landroid/widget/LinearLayout;->mPaddingLeft:I

    .line 1616
    .local v7, "paddingLeft":I
    sub-int v8, p3, p1

    .line 1617
    .local v8, "width":I
    iget v0, v6, Landroid/widget/LinearLayout;->mPaddingRight:I

    sub-int v9, v8, v0

    .line 1620
    .local v9, "childRight":I
    sub-int v0, v8, v7

    iget v1, v6, Landroid/widget/LinearLayout;->mPaddingRight:I

    sub-int v10, v0, v1

    .line 1622
    .local v10, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v11

    .line 1624
    .local v11, "count":I
    iget v0, v6, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v12, v0, 0x70

    .line 1625
    .local v12, "majorGravity":I
    const v1, 0x800007

    and-int v13, v0, v1

    .line 1627
    .local v13, "minorGravity":I
    sparse-switch v12, :sswitch_data_15c

    .line 1640
    iget v0, v6, Landroid/widget/LinearLayout;->mPaddingTop:I

    .local v0, "childTop":I
    goto :goto_38

    .line 1630
    .end local v0    # "childTop":I
    :sswitch_23
    iget v0, v6, Landroid/widget/LinearLayout;->mPaddingTop:I

    add-int v0, v0, p4

    sub-int v0, v0, p2

    iget v1, v6, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v0, v1

    .line 1631
    .restart local v0    # "childTop":I
    goto :goto_38

    .line 1635
    .end local v0    # "childTop":I
    :sswitch_2d
    iget v0, v6, Landroid/widget/LinearLayout;->mPaddingTop:I

    sub-int v1, p4, p2

    iget v2, v6, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1636
    .restart local v0    # "childTop":I
    nop

    .line 1645
    :goto_38
    sget-boolean v1, Landroid/view/ViewRootImpl;->DEBUG_LAYOUT:Z

    const-string v14, "LinearLayout"

    if-eqz v1, :cond_5e

    .line 1646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ll.layoutVertical count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    :cond_5e
    const/4 v1, 0x0

    move v15, v1

    .local v15, "i":I
    :goto_60
    if-ge v15, v11, :cond_13c

    .line 1651
    invoke-virtual {v6, v15}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1653
    .local v5, "child":Landroid/view/View;
    sget-boolean v1, Landroid/view/ViewRootImpl;->DEBUG_LAYOUT:Z

    const/16 v16, 0x1

    const/16 v2, 0x8

    if-eqz v1, :cond_9a

    .line 1654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ll.layoutVertical child="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " isGone="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v5, :cond_8e

    .line 1655
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v2, :cond_8e

    move/from16 v3, v16

    goto :goto_8f

    :cond_8e
    const/4 v3, 0x0

    :goto_8f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1654
    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    :cond_9a
    if-nez v5, :cond_a7

    .line 1659
    invoke-virtual {v6, v15}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v1

    add-int/2addr v0, v1

    move/from16 v23, v7

    move/from16 v25, v8

    goto/16 :goto_134

    .line 1660
    :cond_a7
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_12f

    .line 1661
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    .line 1662
    .local v17, "childWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    .line 1664
    .local v18, "childHeight":I
    nop

    .line 1665
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1667
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1668
    .local v1, "gravity":I
    if-gez v1, :cond_c4

    .line 1669
    move v1, v13

    move v3, v1

    goto :goto_c5

    .line 1668
    :cond_c4
    move v3, v1

    .line 1671
    .end local v1    # "gravity":I
    .local v3, "gravity":I
    :goto_c5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v2

    .line 1672
    .local v2, "layoutDirection":I
    invoke-static {v3, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v19

    .line 1673
    .local v19, "absoluteGravity":I
    and-int/lit8 v1, v19, 0x7

    sparse-switch v1, :sswitch_data_166

    .line 1685
    move/from16 v20, v2

    .end local v2    # "layoutDirection":I
    .local v20, "layoutDirection":I
    iget v1, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v7

    move/from16 v21, v1

    .local v1, "childLeft":I
    goto :goto_f3

    .line 1680
    .end local v1    # "childLeft":I
    .end local v20    # "layoutDirection":I
    .restart local v2    # "layoutDirection":I
    :sswitch_da
    sub-int v1, v9, v17

    move/from16 v20, v2

    .end local v2    # "layoutDirection":I
    .restart local v20    # "layoutDirection":I
    iget v2, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    .line 1681
    .restart local v1    # "childLeft":I
    move/from16 v21, v1

    goto :goto_f3

    .line 1675
    .end local v1    # "childLeft":I
    .end local v20    # "layoutDirection":I
    .restart local v2    # "layoutDirection":I
    :sswitch_e4
    move/from16 v20, v2

    .end local v2    # "layoutDirection":I
    .restart local v20    # "layoutDirection":I
    sub-int v1, v10, v17

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v7

    iget v2, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    .line 1677
    .restart local v1    # "childLeft":I
    move/from16 v21, v1

    .line 1689
    .end local v1    # "childLeft":I
    .local v21, "childLeft":I
    :goto_f3
    invoke-virtual {v6, v15}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_fc

    .line 1690
    iget v1, v6, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v0, v1

    .line 1693
    :cond_fc
    iget v1, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v22, v0, v1

    .line 1694
    .end local v0    # "childTop":I
    .local v22, "childTop":I
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v23, v22, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, v21

    move/from16 v24, v3

    .end local v3    # "gravity":I
    .local v24, "gravity":I
    move/from16 v3, v23

    move/from16 v23, v7

    move-object v7, v4

    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .local v7, "lp":Landroid/widget/LinearLayout$LayoutParams;
    .local v23, "paddingLeft":I
    move/from16 v4, v17

    move/from16 v25, v8

    move-object v8, v5

    .end local v5    # "child":Landroid/view/View;
    .local v8, "child":Landroid/view/View;
    .local v25, "width":I
    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 1696
    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v0, v18, v0

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v22, v22, v0

    .line 1698
    invoke-virtual {v6, v8, v15}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v15, v0

    move/from16 v0, v22

    goto :goto_134

    .line 1660
    .end local v17    # "childWidth":I
    .end local v18    # "childHeight":I
    .end local v19    # "absoluteGravity":I
    .end local v20    # "layoutDirection":I
    .end local v21    # "childLeft":I
    .end local v22    # "childTop":I
    .end local v23    # "paddingLeft":I
    .end local v24    # "gravity":I
    .end local v25    # "width":I
    .restart local v0    # "childTop":I
    .restart local v5    # "child":Landroid/view/View;
    .local v7, "paddingLeft":I
    .local v8, "width":I
    :cond_12f
    move/from16 v23, v7

    move/from16 v25, v8

    move-object v8, v5

    .line 1650
    .end local v5    # "child":Landroid/view/View;
    .end local v7    # "paddingLeft":I
    .end local v8    # "width":I
    .restart local v23    # "paddingLeft":I
    .restart local v25    # "width":I
    :goto_134
    add-int/lit8 v15, v15, 0x1

    move/from16 v7, v23

    move/from16 v8, v25

    goto/16 :goto_60

    .end local v23    # "paddingLeft":I
    .end local v25    # "width":I
    .restart local v7    # "paddingLeft":I
    .restart local v8    # "width":I
    :cond_13c
    move/from16 v23, v7

    move/from16 v25, v8

    .line 1702
    .end local v7    # "paddingLeft":I
    .end local v8    # "width":I
    .end local v15    # "i":I
    .restart local v23    # "paddingLeft":I
    .restart local v25    # "width":I
    sget-boolean v1, Landroid/view/ViewRootImpl;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_15a

    .line 1703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ll.layoutVertical done this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    :cond_15a
    return-void

    nop

    :sswitch_data_15c
    .sparse-switch
        0x10 -> :sswitch_2d
        0x50 -> :sswitch_23
    .end sparse-switch

    :sswitch_data_166
    .sparse-switch
        0x1 -> :sswitch_e4
        0x5 -> :sswitch_da
    .end sparse-switch
.end method

.method greylist-max-o measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .registers 13
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "totalWidth"    # I
    .param p5, "heightMeasureSpec"    # I
    .param p6, "totalHeight"    # I

    .line 1556
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1558
    return-void
.end method

.method greylist-max-o measureHorizontal(II)V
    .registers 53
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1107
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    iput v10, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1108
    const/4 v0, 0x0

    .line 1109
    .local v0, "maxHeight":I
    const/4 v1, 0x0

    .line 1110
    .local v1, "childState":I
    const/4 v2, 0x0

    .line 1111
    .local v2, "alternativeMaxHeight":I
    const/4 v3, 0x0

    .line 1112
    .local v3, "weightedMaxHeight":I
    const/4 v4, 0x1

    .line 1113
    .local v4, "allFillParent":Z
    const/4 v5, 0x0

    .line 1115
    .local v5, "totalWeight":F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v11

    .line 1117
    .local v11, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 1118
    .local v12, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 1120
    .local v13, "heightMode":I
    const/4 v6, 0x0

    .line 1121
    .local v6, "matchHeight":Z
    const/4 v14, 0x0

    .line 1123
    .local v14, "skippedMeasure":Z
    iget-object v15, v7, Landroid/widget/LinearLayout;->mMaxAscent:[I

    if-eqz v15, :cond_25

    iget-object v15, v7, Landroid/widget/LinearLayout;->mMaxDescent:[I

    if-nez v15, :cond_2e

    .line 1124
    :cond_25
    const/4 v15, 0x4

    new-array v10, v15, [I

    iput-object v10, v7, Landroid/widget/LinearLayout;->mMaxAscent:[I

    .line 1125
    new-array v10, v15, [I

    iput-object v10, v7, Landroid/widget/LinearLayout;->mMaxDescent:[I

    .line 1128
    :cond_2e
    iget-object v10, v7, Landroid/widget/LinearLayout;->mMaxAscent:[I

    .line 1129
    .local v10, "maxAscent":[I
    iget-object v15, v7, Landroid/widget/LinearLayout;->mMaxDescent:[I

    .line 1131
    .local v15, "maxDescent":[I
    const/16 v17, 0x3

    move/from16 v18, v6

    .end local v6    # "matchHeight":Z
    .local v18, "matchHeight":Z
    const/4 v6, -0x1

    aput v6, v10, v17

    const/16 v19, 0x2

    aput v6, v10, v19

    const/16 v20, 0x1

    aput v6, v10, v20

    const/16 v16, 0x0

    aput v6, v10, v16

    .line 1132
    aput v6, v15, v17

    aput v6, v15, v19

    aput v6, v15, v20

    aput v6, v15, v16

    .line 1134
    iget-boolean v6, v7, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 1135
    .local v6, "baselineAligned":Z
    move/from16 v22, v14

    .end local v14    # "skippedMeasure":Z
    .local v22, "skippedMeasure":Z
    iget-boolean v14, v7, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    .line 1137
    .local v14, "useLargestChild":Z
    const/high16 v9, 0x40000000    # 2.0f

    if-ne v12, v9, :cond_5a

    move/from16 v23, v20

    goto :goto_5c

    :cond_5a
    const/16 v23, 0x0

    .line 1139
    .local v23, "isExactly":Z
    :goto_5c
    const/high16 v24, -0x80000000

    .line 1140
    .local v24, "largestChildWidth":I
    const/16 v25, 0x0

    .line 1142
    .local v25, "usedExcessSpace":I
    const/16 v26, 0x0

    .line 1145
    .local v26, "nonSkippedChildCount":I
    const/16 v27, 0x0

    move/from16 v9, v27

    move/from16 v47, v5

    move v5, v0

    move/from16 v0, v47

    move/from16 v48, v3

    move v3, v1

    move/from16 v1, v48

    move/from16 v49, v18

    move/from16 v18, v4

    move/from16 v4, v24

    move/from16 v24, v22

    move/from16 v22, v49

    .local v0, "totalWeight":F
    .local v1, "weightedMaxHeight":I
    .local v3, "childState":I
    .local v4, "largestChildWidth":I
    .local v5, "maxHeight":I
    .local v9, "i":I
    .local v18, "allFillParent":Z
    .local v22, "matchHeight":Z
    .local v24, "skippedMeasure":Z
    :goto_7a
    const/16 v29, 0x0

    if-ge v9, v11, :cond_264

    .line 1146
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1147
    .local v8, "child":Landroid/view/View;
    if-nez v8, :cond_9a

    .line 1148
    move/from16 v31, v1

    .end local v1    # "weightedMaxHeight":I
    .local v31, "weightedMaxHeight":I
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v28

    add-int v1, v1, v28

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1149
    move/from16 v21, v6

    move/from16 v32, v11

    move/from16 v1, v31

    move/from16 v31, v12

    goto/16 :goto_258

    .line 1152
    .end local v31    # "weightedMaxHeight":I
    .restart local v1    # "weightedMaxHeight":I
    :cond_9a
    move/from16 v31, v1

    .end local v1    # "weightedMaxHeight":I
    .restart local v31    # "weightedMaxHeight":I
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v1

    move/from16 v32, v2

    const/16 v2, 0x8

    .end local v2    # "alternativeMaxHeight":I
    .local v32, "alternativeMaxHeight":I
    if-ne v1, v2, :cond_b7

    .line 1153
    invoke-virtual {v7, v8, v9}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v9, v1

    .line 1154
    move/from16 v21, v6

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v32, v11

    move/from16 v31, v12

    goto/16 :goto_258

    .line 1157
    :cond_b7
    add-int/lit8 v26, v26, 0x1

    .line 1158
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 1159
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v2, v7, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v1, v2

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1162
    :cond_c6
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1164
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v30, v0, v1

    .line 1166
    .end local v0    # "totalWeight":F
    .local v30, "totalWeight":F
    iget v0, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v0, :cond_de

    iget v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v0, v0, v29

    if-lez v0, :cond_de

    move/from16 v0, v20

    goto :goto_df

    :cond_de
    const/4 v0, 0x0

    :goto_df
    move/from16 v33, v0

    .line 1167
    .local v33, "useExcessSpace":Z
    const/high16 v0, 0x40000000    # 2.0f

    if-ne v12, v0, :cond_142

    if-eqz v33, :cond_142

    .line 1171
    if-eqz v23, :cond_f6

    .line 1172
    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move/from16 v34, v3

    .end local v3    # "childState":I
    .local v34, "childState":I
    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    iput v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_106

    .line 1174
    .end local v34    # "childState":I
    .restart local v3    # "childState":I
    :cond_f6
    move/from16 v34, v3

    .end local v3    # "childState":I
    .restart local v34    # "childState":I
    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1175
    .local v0, "totalLength":I
    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v0

    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1184
    .end local v0    # "totalLength":I
    :goto_106
    if-eqz v6, :cond_12f

    .line 1185
    nop

    .line 1186
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1185
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v0

    .line 1187
    .local v0, "freeWidthSpec":I
    nop

    .line 1188
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 1187
    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v3

    .line 1189
    .local v3, "freeHeightSpec":I
    invoke-virtual {v8, v0, v3}, Landroid/view/View;->measure(II)V

    .line 1190
    .end local v0    # "freeWidthSpec":I
    .end local v3    # "freeHeightSpec":I
    move-object v1, v2

    move/from16 v21, v6

    move/from16 v36, v31

    move/from16 v37, v32

    move/from16 v39, v34

    move/from16 v32, v11

    move/from16 v31, v12

    const/4 v11, -0x1

    move v12, v5

    goto/16 :goto_1b9

    .line 1191
    :cond_12f
    const/16 v24, 0x1

    move-object v1, v2

    move/from16 v21, v6

    move/from16 v36, v31

    move/from16 v37, v32

    move/from16 v39, v34

    move/from16 v32, v11

    move/from16 v31, v12

    const/4 v11, -0x1

    move v12, v5

    goto/16 :goto_1b9

    .line 1167
    .end local v34    # "childState":I
    .local v3, "childState":I
    :cond_142
    move/from16 v34, v3

    .line 1194
    .end local v3    # "childState":I
    .restart local v34    # "childState":I
    if-eqz v33, :cond_149

    .line 1200
    const/4 v0, -0x2

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1207
    :cond_149
    cmpl-float v0, v30, v29

    if-nez v0, :cond_150

    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_151

    :cond_150
    const/4 v0, 0x0

    :goto_151
    move v3, v4

    .end local v4    # "largestChildWidth":I
    .local v3, "largestChildWidth":I
    move v4, v0

    .line 1208
    .local v4, "usedWidth":I
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v36, v31

    .end local v31    # "weightedMaxHeight":I
    .local v36, "weightedMaxHeight":I
    move-object v1, v8

    move-object/from16 v38, v2

    move/from16 v37, v32

    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v32    # "alternativeMaxHeight":I
    .local v37, "alternativeMaxHeight":I
    .local v38, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move v2, v9

    move/from16 v40, v3

    move/from16 v39, v34

    .end local v3    # "largestChildWidth":I
    .end local v34    # "childState":I
    .local v39, "childState":I
    .local v40, "largestChildWidth":I
    move/from16 v3, p1

    move/from16 v31, v12

    move v12, v5

    .end local v5    # "maxHeight":I
    .local v12, "maxHeight":I
    .local v31, "widthMode":I
    move/from16 v5, p2

    move/from16 v21, v6

    move/from16 v32, v11

    const/4 v11, -0x1

    .end local v6    # "baselineAligned":Z
    .end local v11    # "count":I
    .local v21, "baselineAligned":Z
    .local v32, "count":I
    move/from16 v6, v35

    invoke-virtual/range {v0 .. v6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 1211
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1212
    .local v0, "childWidth":I
    if-eqz v33, :cond_182

    .line 1216
    move-object/from16 v1, v38

    const/4 v2, 0x0

    .end local v38    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1217
    add-int v25, v25, v0

    goto :goto_184

    .line 1212
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v38    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_182
    move-object/from16 v1, v38

    .line 1220
    .end local v38    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :goto_184
    if-eqz v23, :cond_197

    .line 1221
    iget v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v0

    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    .line 1222
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v2, v3

    iput v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_1ac

    .line 1224
    :cond_197
    iget v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1225
    .local v2, "totalLength":I
    add-int v3, v2, v0

    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    .line 1226
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    .line 1225
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1229
    .end local v2    # "totalLength":I
    :goto_1ac
    if-eqz v14, :cond_1b6

    .line 1230
    move/from16 v2, v40

    .end local v40    # "largestChildWidth":I
    .local v2, "largestChildWidth":I
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v4, v2

    goto :goto_1b9

    .line 1229
    .end local v2    # "largestChildWidth":I
    .restart local v40    # "largestChildWidth":I
    :cond_1b6
    move/from16 v2, v40

    .end local v40    # "largestChildWidth":I
    .restart local v2    # "largestChildWidth":I
    move v4, v2

    .line 1234
    .end local v0    # "childWidth":I
    .end local v2    # "largestChildWidth":I
    .local v4, "largestChildWidth":I
    :goto_1b9
    const/4 v0, 0x0

    .line 1235
    .local v0, "matchHeightLocally":Z
    const/high16 v2, 0x40000000    # 2.0f

    if-eq v13, v2, :cond_1c5

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-ne v2, v11, :cond_1c5

    .line 1239
    const/16 v22, 0x1

    .line 1240
    const/4 v0, 0x1

    .line 1243
    :cond_1c5
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 1244
    .local v2, "margin":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v2

    .line 1245
    .local v3, "childHeight":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    move/from16 v6, v39

    .end local v39    # "childState":I
    .local v6, "childState":I
    invoke-static {v6, v5}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v5

    .line 1247
    .end local v6    # "childState":I
    .local v5, "childState":I
    if-eqz v21, :cond_210

    .line 1248
    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    move-result v6

    .line 1249
    .local v6, "childBaseline":I
    if-eq v6, v11, :cond_20b

    .line 1252
    iget v11, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v11, :cond_1e8

    iget v11, v7, Landroid/widget/LinearLayout;->mGravity:I

    goto :goto_1ea

    :cond_1e8
    iget v11, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :goto_1ea
    and-int/lit8 v11, v11, 0x70

    .line 1254
    .local v11, "gravity":I
    shr-int/lit8 v35, v11, 0x4

    const/16 v28, -0x2

    and-int/lit8 v28, v35, -0x2

    shr-int/lit8 v28, v28, 0x1

    .line 1257
    .local v28, "index":I
    move/from16 v35, v2

    .end local v2    # "margin":I
    .local v35, "margin":I
    aget v2, v10, v28

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v10, v28

    .line 1258
    aget v2, v15, v28

    move/from16 v38, v4

    .end local v4    # "largestChildWidth":I
    .local v38, "largestChildWidth":I
    sub-int v4, v3, v6

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v15, v28

    goto :goto_214

    .line 1249
    .end local v11    # "gravity":I
    .end local v28    # "index":I
    .end local v35    # "margin":I
    .end local v38    # "largestChildWidth":I
    .restart local v2    # "margin":I
    .restart local v4    # "largestChildWidth":I
    :cond_20b
    move/from16 v35, v2

    move/from16 v38, v4

    .end local v2    # "margin":I
    .end local v4    # "largestChildWidth":I
    .restart local v35    # "margin":I
    .restart local v38    # "largestChildWidth":I
    goto :goto_214

    .line 1247
    .end local v6    # "childBaseline":I
    .end local v35    # "margin":I
    .end local v38    # "largestChildWidth":I
    .restart local v2    # "margin":I
    .restart local v4    # "largestChildWidth":I
    :cond_210
    move/from16 v35, v2

    move/from16 v38, v4

    .line 1262
    .end local v2    # "margin":I
    .end local v4    # "largestChildWidth":I
    .restart local v35    # "margin":I
    .restart local v38    # "largestChildWidth":I
    :goto_214
    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1264
    .end local v12    # "maxHeight":I
    .local v2, "maxHeight":I
    if-eqz v18, :cond_222

    iget v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_222

    move/from16 v4, v20

    goto :goto_223

    :cond_222
    const/4 v4, 0x0

    .line 1265
    .end local v18    # "allFillParent":Z
    .local v4, "allFillParent":Z
    :goto_223
    iget v6, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v6, v6, v29

    if-lez v6, :cond_237

    .line 1270
    nop

    .line 1271
    if-eqz v0, :cond_22f

    move/from16 v6, v35

    goto :goto_230

    :cond_22f
    move v6, v3

    .line 1270
    :goto_230
    move/from16 v11, v36

    .end local v36    # "weightedMaxHeight":I
    .local v11, "weightedMaxHeight":I
    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .end local v11    # "weightedMaxHeight":I
    .local v6, "weightedMaxHeight":I
    goto :goto_248

    .line 1273
    .end local v6    # "weightedMaxHeight":I
    .restart local v36    # "weightedMaxHeight":I
    :cond_237
    move/from16 v11, v36

    .line 1274
    .end local v36    # "weightedMaxHeight":I
    .restart local v11    # "weightedMaxHeight":I
    if-eqz v0, :cond_23e

    move/from16 v6, v35

    goto :goto_23f

    :cond_23e
    move v6, v3

    .line 1273
    :goto_23f
    move/from16 v12, v37

    .end local v37    # "alternativeMaxHeight":I
    .local v12, "alternativeMaxHeight":I
    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move/from16 v37, v6

    move v6, v11

    .line 1277
    .end local v11    # "weightedMaxHeight":I
    .end local v12    # "alternativeMaxHeight":I
    .restart local v6    # "weightedMaxHeight":I
    .restart local v37    # "alternativeMaxHeight":I
    :goto_248
    invoke-virtual {v7, v8, v9}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v11

    add-int/2addr v9, v11

    move/from16 v18, v4

    move v3, v5

    move v1, v6

    move/from16 v0, v30

    move/from16 v4, v38

    move v5, v2

    move/from16 v2, v37

    .line 1145
    .end local v6    # "weightedMaxHeight":I
    .end local v8    # "child":Landroid/view/View;
    .end local v30    # "totalWeight":F
    .end local v33    # "useExcessSpace":Z
    .end local v35    # "margin":I
    .end local v37    # "alternativeMaxHeight":I
    .end local v38    # "largestChildWidth":I
    .local v0, "totalWeight":F
    .local v1, "weightedMaxHeight":I
    .local v2, "alternativeMaxHeight":I
    .local v3, "childState":I
    .local v4, "largestChildWidth":I
    .local v5, "maxHeight":I
    .restart local v18    # "allFillParent":Z
    :goto_258
    add-int/lit8 v9, v9, 0x1

    move/from16 v8, p1

    move/from16 v6, v21

    move/from16 v12, v31

    move/from16 v11, v32

    goto/16 :goto_7a

    .end local v21    # "baselineAligned":Z
    .end local v31    # "widthMode":I
    .end local v32    # "count":I
    .local v6, "baselineAligned":Z
    .local v11, "count":I
    .local v12, "widthMode":I
    :cond_264
    move/from16 v21, v6

    move/from16 v32, v11

    move/from16 v31, v12

    const/16 v28, -0x2

    move v11, v1

    move v1, v2

    move v6, v3

    move v2, v4

    move v12, v5

    .line 1280
    .end local v3    # "childState":I
    .end local v4    # "largestChildWidth":I
    .end local v5    # "maxHeight":I
    .end local v9    # "i":I
    .local v1, "alternativeMaxHeight":I
    .local v2, "largestChildWidth":I
    .local v6, "childState":I
    .local v11, "weightedMaxHeight":I
    .local v12, "maxHeight":I
    .restart local v21    # "baselineAligned":Z
    .restart local v31    # "widthMode":I
    .restart local v32    # "count":I
    if-lez v26, :cond_283

    move/from16 v3, v32

    .end local v32    # "count":I
    .local v3, "count":I
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_285

    .line 1281
    iget v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v5, v7, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v4, v5

    iput v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_285

    .line 1280
    .end local v3    # "count":I
    .restart local v32    # "count":I
    :cond_283
    move/from16 v3, v32

    .line 1286
    .end local v32    # "count":I
    .restart local v3    # "count":I
    :cond_285
    :goto_285
    aget v4, v10, v20

    const/4 v5, -0x1

    if-ne v4, v5, :cond_29c

    const/4 v4, 0x0

    aget v8, v10, v4

    if-ne v8, v5, :cond_29c

    aget v4, v10, v19

    if-ne v4, v5, :cond_29c

    aget v4, v10, v17

    if-eq v4, v5, :cond_298

    goto :goto_29c

    :cond_298
    move/from16 v39, v6

    move v5, v12

    goto :goto_2cf

    .line 1290
    :cond_29c
    :goto_29c
    aget v4, v10, v17

    const/4 v5, 0x0

    aget v8, v10, v5

    aget v9, v10, v20

    aget v5, v10, v19

    .line 1292
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1291
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1290
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1293
    .local v4, "ascent":I
    aget v5, v15, v17

    const/4 v8, 0x0

    aget v9, v15, v8

    aget v8, v15, v20

    move/from16 v39, v6

    .end local v6    # "childState":I
    .restart local v39    # "childState":I
    aget v6, v15, v19

    .line 1295
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1294
    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1293
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1296
    .local v5, "descent":I
    add-int v6, v4, v5

    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v5, v6

    .line 1299
    .end local v4    # "ascent":I
    .end local v12    # "maxHeight":I
    .local v5, "maxHeight":I
    :goto_2cf
    if-eqz v14, :cond_34b

    const/high16 v4, -0x80000000

    move/from16 v6, v31

    .end local v31    # "widthMode":I
    .local v6, "widthMode":I
    if-eq v6, v4, :cond_2de

    if-nez v6, :cond_2da

    goto :goto_2de

    :cond_2da
    move/from16 v32, v5

    goto/16 :goto_34f

    .line 1301
    :cond_2de
    :goto_2de
    const/4 v4, 0x0

    iput v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1303
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2e2
    if-ge v4, v3, :cond_346

    .line 1304
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1305
    .restart local v8    # "child":Landroid/view/View;
    if-nez v8, :cond_2f8

    .line 1306
    iget v9, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v12

    add-int/2addr v9, v12

    iput v9, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1307
    move/from16 v31, v4

    move/from16 v32, v5

    goto :goto_33f

    .line 1310
    :cond_2f8
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v12, 0x8

    if-ne v9, v12, :cond_308

    .line 1311
    invoke-virtual {v7, v8, v4}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v9

    add-int/2addr v4, v9

    .line 1312
    move/from16 v32, v5

    goto :goto_341

    .line 1315
    :cond_308
    nop

    .line 1316
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 1317
    .local v9, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v23, :cond_326

    .line 1318
    iget v12, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v31, v4

    .end local v4    # "i":I
    .local v31, "i":I
    iget v4, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v2

    move/from16 v32, v5

    .end local v5    # "maxHeight":I
    .local v32, "maxHeight":I
    iget v5, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 1319
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v12, v4

    iput v12, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_33f

    .line 1321
    .end local v31    # "i":I
    .end local v32    # "maxHeight":I
    .restart local v4    # "i":I
    .restart local v5    # "maxHeight":I
    :cond_326
    move/from16 v31, v4

    move/from16 v32, v5

    .end local v4    # "i":I
    .end local v5    # "maxHeight":I
    .restart local v31    # "i":I
    .restart local v32    # "maxHeight":I
    iget v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1322
    .local v4, "totalLength":I
    add-int v5, v4, v2

    iget v12, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v12

    iget v12, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v12

    .line 1323
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v12

    add-int/2addr v5, v12

    .line 1322
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1303
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v31    # "i":I
    .end local v32    # "maxHeight":I
    .local v4, "i":I
    .restart local v5    # "maxHeight":I
    :goto_33f
    move/from16 v4, v31

    .end local v5    # "maxHeight":I
    .restart local v32    # "maxHeight":I
    :goto_341
    add-int/lit8 v4, v4, 0x1

    move/from16 v5, v32

    goto :goto_2e2

    .end local v32    # "maxHeight":I
    .restart local v5    # "maxHeight":I
    :cond_346
    move/from16 v31, v4

    move/from16 v32, v5

    .end local v4    # "i":I
    .end local v5    # "maxHeight":I
    .restart local v31    # "i":I
    .restart local v32    # "maxHeight":I
    goto :goto_34f

    .line 1299
    .end local v6    # "widthMode":I
    .end local v32    # "maxHeight":I
    .restart local v5    # "maxHeight":I
    .local v31, "widthMode":I
    :cond_34b
    move/from16 v32, v5

    move/from16 v6, v31

    .line 1329
    .end local v5    # "maxHeight":I
    .end local v31    # "widthMode":I
    .restart local v6    # "widthMode":I
    .restart local v32    # "maxHeight":I
    :goto_34f
    iget v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v5, v7, Landroid/widget/LinearLayout;->mPaddingLeft:I

    iget v8, v7, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v5, v8

    add-int/2addr v4, v5

    iput v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1331
    iget v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1334
    .local v4, "widthSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1337
    move/from16 v5, p1

    move/from16 v8, v28

    const/4 v9, 0x0

    invoke-static {v4, v5, v9}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v12

    .line 1338
    .local v12, "widthSizeAndState":I
    const v9, 0xffffff

    and-int v4, v12, v9

    .line 1343
    iget v9, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v9, v4, v9

    .line 1344
    iget-boolean v8, v7, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v8, :cond_37b

    const/4 v8, 0x0

    goto :goto_37d

    :cond_37b
    move/from16 v8, v25

    :goto_37d
    add-int/2addr v9, v8

    .line 1345
    .local v9, "remainingExcess":I
    if-nez v24, :cond_41d

    sget-boolean v31, Landroid/widget/LinearLayout;->sRemeasureWeightedChildren:Z

    if-nez v31, :cond_386

    if-eqz v9, :cond_392

    :cond_386
    cmpl-float v31, v0, v29

    if-lez v31, :cond_392

    move/from16 v33, v0

    move/from16 v35, v4

    move/from16 v36, v9

    goto/16 :goto_423

    .line 1449
    :cond_392
    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1453
    if-eqz v14, :cond_3fd

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v6, v8, :cond_3fd

    .line 1454
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_39d
    if-ge v8, v3, :cond_3f4

    .line 1455
    move/from16 v33, v0

    .end local v0    # "totalWeight":F
    .local v33, "totalWeight":F
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1456
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_3e3

    move/from16 v16, v1

    .end local v1    # "alternativeMaxHeight":I
    .local v16, "alternativeMaxHeight":I
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    move/from16 v35, v4

    const/16 v4, 0x8

    .end local v4    # "widthSize":I
    .local v35, "widthSize":I
    if-ne v1, v4, :cond_3b6

    .line 1457
    move/from16 v36, v9

    goto :goto_3e9

    .line 1460
    :cond_3b6
    nop

    .line 1461
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1463
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1464
    .local v4, "childExtra":F
    cmpl-float v17, v4, v29

    if-lez v17, :cond_3dc

    .line 1465
    nop

    .line 1466
    move-object/from16 v17, v1

    move/from16 v19, v4

    const/high16 v1, 0x40000000    # 2.0f

    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "childExtra":F
    .local v17, "lp":Landroid/widget/LinearLayout$LayoutParams;
    .local v19, "childExtra":F
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1467
    move/from16 v36, v9

    .end local v9    # "remainingExcess":I
    .local v36, "remainingExcess":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-static {v9, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1465
    invoke-virtual {v0, v4, v9}, Landroid/view/View;->measure(II)V

    goto :goto_3e9

    .line 1464
    .end local v17    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v19    # "childExtra":F
    .end local v36    # "remainingExcess":I
    .restart local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v4    # "childExtra":F
    .restart local v9    # "remainingExcess":I
    :cond_3dc
    move-object/from16 v17, v1

    move/from16 v19, v4

    move/from16 v36, v9

    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "childExtra":F
    .end local v9    # "remainingExcess":I
    .restart local v17    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v19    # "childExtra":F
    .restart local v36    # "remainingExcess":I
    goto :goto_3e9

    .line 1456
    .end local v16    # "alternativeMaxHeight":I
    .end local v17    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v19    # "childExtra":F
    .end local v35    # "widthSize":I
    .end local v36    # "remainingExcess":I
    .local v1, "alternativeMaxHeight":I
    .local v4, "widthSize":I
    .restart local v9    # "remainingExcess":I
    :cond_3e3
    move/from16 v16, v1

    move/from16 v35, v4

    move/from16 v36, v9

    .line 1454
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "alternativeMaxHeight":I
    .end local v4    # "widthSize":I
    .end local v9    # "remainingExcess":I
    .restart local v16    # "alternativeMaxHeight":I
    .restart local v35    # "widthSize":I
    .restart local v36    # "remainingExcess":I
    :goto_3e9
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, v16

    move/from16 v0, v33

    move/from16 v4, v35

    move/from16 v9, v36

    goto :goto_39d

    .end local v16    # "alternativeMaxHeight":I
    .end local v33    # "totalWeight":F
    .end local v35    # "widthSize":I
    .end local v36    # "remainingExcess":I
    .local v0, "totalWeight":F
    .restart local v1    # "alternativeMaxHeight":I
    .restart local v4    # "widthSize":I
    .restart local v9    # "remainingExcess":I
    :cond_3f4
    move/from16 v33, v0

    move/from16 v16, v1

    move/from16 v35, v4

    move/from16 v36, v9

    .end local v0    # "totalWeight":F
    .end local v1    # "alternativeMaxHeight":I
    .end local v4    # "widthSize":I
    .end local v9    # "remainingExcess":I
    .restart local v16    # "alternativeMaxHeight":I
    .restart local v33    # "totalWeight":F
    .restart local v35    # "widthSize":I
    .restart local v36    # "remainingExcess":I
    goto :goto_405

    .line 1453
    .end local v8    # "i":I
    .end local v16    # "alternativeMaxHeight":I
    .end local v33    # "totalWeight":F
    .end local v35    # "widthSize":I
    .end local v36    # "remainingExcess":I
    .restart local v0    # "totalWeight":F
    .restart local v1    # "alternativeMaxHeight":I
    .restart local v4    # "widthSize":I
    .restart local v9    # "remainingExcess":I
    :cond_3fd
    move/from16 v33, v0

    move/from16 v16, v1

    move/from16 v35, v4

    move/from16 v36, v9

    .line 1474
    .end local v0    # "totalWeight":F
    .end local v1    # "alternativeMaxHeight":I
    .end local v4    # "widthSize":I
    .end local v9    # "remainingExcess":I
    .restart local v16    # "alternativeMaxHeight":I
    .restart local v33    # "totalWeight":F
    .restart local v35    # "widthSize":I
    .restart local v36    # "remainingExcess":I
    :goto_405
    move/from16 v40, v2

    move/from16 v37, v3

    move/from16 v43, v6

    move/from16 v38, v12

    move/from16 v1, v16

    move/from16 v5, v32

    move/from16 v9, v36

    move/from16 v3, v39

    move/from16 v6, p2

    move/from16 v36, v11

    move/from16 v32, v14

    goto/16 :goto_615

    .line 1345
    .end local v16    # "alternativeMaxHeight":I
    .end local v33    # "totalWeight":F
    .end local v35    # "widthSize":I
    .end local v36    # "remainingExcess":I
    .restart local v0    # "totalWeight":F
    .restart local v1    # "alternativeMaxHeight":I
    .restart local v4    # "widthSize":I
    .restart local v9    # "remainingExcess":I
    :cond_41d
    move/from16 v33, v0

    move/from16 v35, v4

    move/from16 v36, v9

    .line 1347
    .end local v0    # "totalWeight":F
    .end local v4    # "widthSize":I
    .end local v9    # "remainingExcess":I
    .restart local v33    # "totalWeight":F
    .restart local v35    # "widthSize":I
    .restart local v36    # "remainingExcess":I
    :goto_423
    iget v0, v7, Landroid/widget/LinearLayout;->mWeightSum:F

    cmpl-float v4, v0, v29

    if-lez v4, :cond_42a

    goto :goto_42c

    :cond_42a
    move/from16 v0, v33

    .line 1349
    .local v0, "remainingWeightSum":F
    :goto_42c
    const/4 v4, -0x1

    aput v4, v10, v17

    aput v4, v10, v19

    aput v4, v10, v20

    const/4 v8, 0x0

    aput v4, v10, v8

    .line 1350
    aput v4, v15, v17

    aput v4, v15, v19

    aput v4, v15, v20

    aput v4, v15, v8

    .line 1351
    const/4 v4, -0x1

    .line 1353
    .end local v32    # "maxHeight":I
    .local v4, "maxHeight":I
    iput v8, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1355
    const/4 v8, 0x0

    move v9, v8

    move v8, v4

    move/from16 v4, v39

    move/from16 v47, v36

    move/from16 v36, v11

    move/from16 v11, v47

    .end local v39    # "childState":I
    .local v4, "childState":I
    .local v8, "maxHeight":I
    .local v9, "i":I
    .local v11, "remainingExcess":I
    .local v36, "weightedMaxHeight":I
    :goto_44c
    if-ge v9, v3, :cond_5b7

    .line 1356
    move/from16 v32, v14

    .end local v14    # "useLargestChild":Z
    .local v32, "useLargestChild":Z
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1357
    .local v14, "child":Landroid/view/View;
    if-eqz v14, :cond_599

    move/from16 v37, v3

    .end local v3    # "count":I
    .local v37, "count":I
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_46d

    .line 1358
    move/from16 v40, v2

    move/from16 v43, v6

    move v2, v11

    move/from16 v38, v12

    const/16 v28, -0x2

    move/from16 v6, p2

    goto/16 :goto_5a6

    .line 1361
    :cond_46d
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1362
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1363
    .local v5, "childWeight":F
    cmpl-float v38, v5, v29

    if-lez v38, :cond_4e0

    .line 1364
    move/from16 v38, v12

    .end local v12    # "widthSizeAndState":I
    .local v38, "widthSizeAndState":I
    int-to-float v12, v11

    mul-float/2addr v12, v5

    div-float/2addr v12, v0

    float-to-int v12, v12

    .line 1365
    .local v12, "share":I
    sub-int/2addr v11, v12

    .line 1366
    sub-float/2addr v0, v5

    .line 1369
    move/from16 v39, v0

    .end local v0    # "remainingWeightSum":F
    .local v39, "remainingWeightSum":F
    iget-boolean v0, v7, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    if-eqz v0, :cond_48d

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v6, v0, :cond_48d

    .line 1370
    move v0, v2

    .local v0, "childWidth":I
    goto :goto_4a0

    .line 1371
    .end local v0    # "childWidth":I
    :cond_48d
    iget v0, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v0, :cond_49b

    iget-boolean v0, v7, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v0, :cond_499

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v6, v0, :cond_49b

    .line 1375
    :cond_499
    move v0, v12

    .restart local v0    # "childWidth":I
    goto :goto_4a0

    .line 1379
    .end local v0    # "childWidth":I
    :cond_49b
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v12

    .line 1382
    .restart local v0    # "childWidth":I
    :goto_4a0
    nop

    .line 1383
    move/from16 v40, v2

    move/from16 v41, v5

    const/4 v2, 0x0

    .end local v2    # "largestChildWidth":I
    .end local v5    # "childWeight":F
    .restart local v40    # "largestChildWidth":I
    .local v41, "childWeight":F
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1382
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1384
    .local v5, "childWidthMeasureSpec":I
    iget v2, v7, Landroid/widget/LinearLayout;->mPaddingTop:I

    move/from16 v42, v0

    .end local v0    # "childWidth":I
    .local v42, "childWidth":I
    iget v0, v7, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v2, v0

    iget v0, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v0

    iget v0, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v0

    iget v0, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move/from16 v43, v6

    move/from16 v27, v11

    const/high16 v11, 0x40000000    # 2.0f

    move/from16 v6, p2

    .end local v6    # "widthMode":I
    .end local v11    # "remainingExcess":I
    .local v27, "remainingExcess":I
    .local v43, "widthMode":I
    invoke-static {v6, v2, v0}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 1387
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {v14, v5, v0}, Landroid/view/View;->measure(II)V

    .line 1390
    nop

    .line 1391
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    const/high16 v31, -0x1000000

    and-int v2, v2, v31

    .line 1390
    invoke-static {v4, v2}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v4

    move/from16 v2, v27

    move/from16 v0, v39

    goto :goto_4ed

    .line 1363
    .end local v27    # "remainingExcess":I
    .end local v38    # "widthSizeAndState":I
    .end local v39    # "remainingWeightSum":F
    .end local v40    # "largestChildWidth":I
    .end local v41    # "childWeight":F
    .end local v42    # "childWidth":I
    .end local v43    # "widthMode":I
    .local v0, "remainingWeightSum":F
    .restart local v2    # "largestChildWidth":I
    .local v5, "childWeight":F
    .restart local v6    # "widthMode":I
    .restart local v11    # "remainingExcess":I
    .local v12, "widthSizeAndState":I
    :cond_4e0
    move/from16 v40, v2

    move/from16 v41, v5

    move/from16 v43, v6

    move v2, v11

    move/from16 v38, v12

    const/high16 v11, 0x40000000    # 2.0f

    move/from16 v6, p2

    .line 1394
    .end local v5    # "childWeight":F
    .end local v6    # "widthMode":I
    .end local v11    # "remainingExcess":I
    .end local v12    # "widthSizeAndState":I
    .local v2, "remainingExcess":I
    .restart local v38    # "widthSizeAndState":I
    .restart local v40    # "largestChildWidth":I
    .restart local v41    # "childWeight":F
    .restart local v43    # "widthMode":I
    :goto_4ed
    if-eqz v23, :cond_504

    .line 1395
    iget v5, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    iget v11, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v12, v11

    iget v11, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v12, v11

    .line 1396
    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v11

    add-int/2addr v12, v11

    add-int/2addr v5, v12

    iput v5, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_51c

    .line 1398
    :cond_504
    iget v5, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1399
    .local v5, "totalLength":I
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v5

    iget v12, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v11, v12

    iget v12, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v11, v12

    .line 1400
    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v12

    add-int/2addr v11, v12

    .line 1399
    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1403
    .end local v5    # "totalLength":I
    :goto_51c
    const/high16 v5, 0x40000000    # 2.0f

    if-eq v13, v5, :cond_528

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v11, -0x1

    if-ne v5, v11, :cond_528

    move/from16 v5, v20

    goto :goto_529

    :cond_528
    const/4 v5, 0x0

    .line 1406
    .local v5, "matchHeightLocally":Z
    :goto_529
    iget v11, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v12, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v11, v12

    .line 1407
    .local v11, "margin":I
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v11

    .line 1408
    .local v12, "childHeight":I
    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1409
    nop

    .line 1410
    move/from16 v39, v0

    if-eqz v5, :cond_53e

    move v0, v11

    goto :goto_53f

    :cond_53e
    move v0, v12

    .line 1409
    .end local v0    # "remainingWeightSum":F
    .restart local v39    # "remainingWeightSum":F
    :goto_53f
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1412
    .end local v1    # "alternativeMaxHeight":I
    .local v0, "alternativeMaxHeight":I
    if-eqz v18, :cond_54f

    iget v1, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move/from16 v42, v0

    const/4 v0, -0x1

    .end local v0    # "alternativeMaxHeight":I
    .local v42, "alternativeMaxHeight":I
    if-ne v1, v0, :cond_551

    move/from16 v0, v20

    goto :goto_552

    .end local v42    # "alternativeMaxHeight":I
    .restart local v0    # "alternativeMaxHeight":I
    :cond_54f
    move/from16 v42, v0

    .end local v0    # "alternativeMaxHeight":I
    .restart local v42    # "alternativeMaxHeight":I
    :cond_551
    const/4 v0, 0x0

    .line 1414
    .end local v18    # "allFillParent":Z
    .local v0, "allFillParent":Z
    :goto_552
    if-eqz v21, :cond_58c

    .line 1415
    invoke-virtual {v14}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 1416
    .local v1, "childBaseline":I
    move/from16 v18, v0

    const/4 v0, -0x1

    .end local v0    # "allFillParent":Z
    .restart local v18    # "allFillParent":Z
    if-eq v1, v0, :cond_587

    .line 1418
    iget v0, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v0, :cond_564

    iget v0, v7, Landroid/widget/LinearLayout;->mGravity:I

    goto :goto_566

    :cond_564
    iget v0, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :goto_566
    and-int/lit8 v0, v0, 0x70

    .line 1420
    .local v0, "gravity":I
    shr-int/lit8 v44, v0, 0x4

    const/16 v28, -0x2

    and-int/lit8 v44, v44, -0x2

    shr-int/lit8 v44, v44, 0x1

    .line 1423
    .local v44, "index":I
    move/from16 v45, v0

    .end local v0    # "gravity":I
    .local v45, "gravity":I
    aget v0, v10, v44

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v10, v44

    .line 1424
    aget v0, v15, v44

    move/from16 v46, v2

    .end local v2    # "remainingExcess":I
    .local v46, "remainingExcess":I
    sub-int v2, v12, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v15, v44

    goto :goto_592

    .line 1416
    .end local v44    # "index":I
    .end local v45    # "gravity":I
    .end local v46    # "remainingExcess":I
    .restart local v2    # "remainingExcess":I
    :cond_587
    move/from16 v46, v2

    const/16 v28, -0x2

    .end local v2    # "remainingExcess":I
    .restart local v46    # "remainingExcess":I
    goto :goto_592

    .line 1414
    .end local v1    # "childBaseline":I
    .end local v18    # "allFillParent":Z
    .end local v46    # "remainingExcess":I
    .local v0, "allFillParent":Z
    .restart local v2    # "remainingExcess":I
    :cond_58c
    move/from16 v18, v0

    move/from16 v46, v2

    const/16 v28, -0x2

    .line 1355
    .end local v0    # "allFillParent":Z
    .end local v2    # "remainingExcess":I
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "matchHeightLocally":Z
    .end local v11    # "margin":I
    .end local v12    # "childHeight":I
    .end local v14    # "child":Landroid/view/View;
    .end local v41    # "childWeight":F
    .restart local v18    # "allFillParent":Z
    .restart local v46    # "remainingExcess":I
    :goto_592
    move/from16 v0, v39

    move/from16 v1, v42

    move/from16 v11, v46

    goto :goto_5a7

    .line 1357
    .end local v37    # "count":I
    .end local v38    # "widthSizeAndState":I
    .end local v39    # "remainingWeightSum":F
    .end local v40    # "largestChildWidth":I
    .end local v42    # "alternativeMaxHeight":I
    .end local v43    # "widthMode":I
    .end local v46    # "remainingExcess":I
    .local v0, "remainingWeightSum":F
    .local v1, "alternativeMaxHeight":I
    .local v2, "largestChildWidth":I
    .local v3, "count":I
    .restart local v6    # "widthMode":I
    .local v11, "remainingExcess":I
    .local v12, "widthSizeAndState":I
    .restart local v14    # "child":Landroid/view/View;
    :cond_599
    move/from16 v40, v2

    move/from16 v37, v3

    move/from16 v43, v6

    move v2, v11

    move/from16 v38, v12

    const/16 v28, -0x2

    move/from16 v6, p2

    .line 1355
    .end local v3    # "count":I
    .end local v6    # "widthMode":I
    .end local v11    # "remainingExcess":I
    .end local v12    # "widthSizeAndState":I
    .end local v14    # "child":Landroid/view/View;
    .local v2, "remainingExcess":I
    .restart local v37    # "count":I
    .restart local v38    # "widthSizeAndState":I
    .restart local v40    # "largestChildWidth":I
    .restart local v43    # "widthMode":I
    :goto_5a6
    move v11, v2

    .end local v2    # "remainingExcess":I
    .restart local v11    # "remainingExcess":I
    :goto_5a7
    add-int/lit8 v9, v9, 0x1

    move/from16 v5, p1

    move/from16 v14, v32

    move/from16 v3, v37

    move/from16 v12, v38

    move/from16 v2, v40

    move/from16 v6, v43

    goto/16 :goto_44c

    .end local v32    # "useLargestChild":Z
    .end local v37    # "count":I
    .end local v38    # "widthSizeAndState":I
    .end local v40    # "largestChildWidth":I
    .end local v43    # "widthMode":I
    .local v2, "largestChildWidth":I
    .restart local v3    # "count":I
    .restart local v6    # "widthMode":I
    .restart local v12    # "widthSizeAndState":I
    .local v14, "useLargestChild":Z
    :cond_5b7
    move/from16 v40, v2

    move/from16 v37, v3

    move/from16 v43, v6

    move v2, v11

    move/from16 v38, v12

    move/from16 v32, v14

    move/from16 v6, p2

    .line 1431
    .end local v3    # "count":I
    .end local v6    # "widthMode":I
    .end local v9    # "i":I
    .end local v11    # "remainingExcess":I
    .end local v12    # "widthSizeAndState":I
    .end local v14    # "useLargestChild":Z
    .local v2, "remainingExcess":I
    .restart local v32    # "useLargestChild":Z
    .restart local v37    # "count":I
    .restart local v38    # "widthSizeAndState":I
    .restart local v40    # "largestChildWidth":I
    .restart local v43    # "widthMode":I
    iget v3, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v5, v7, Landroid/widget/LinearLayout;->mPaddingLeft:I

    iget v9, v7, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v5, v9

    add-int/2addr v3, v5

    iput v3, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1436
    aget v3, v10, v20

    const/4 v5, -0x1

    if-ne v3, v5, :cond_5e3

    const/4 v3, 0x0

    aget v9, v10, v3

    if-ne v9, v5, :cond_5e3

    aget v3, v10, v19

    if-ne v3, v5, :cond_5e3

    aget v3, v10, v17

    if-eq v3, v5, :cond_5e1

    goto :goto_5e3

    :cond_5e1
    move v5, v8

    goto :goto_613

    .line 1440
    :cond_5e3
    :goto_5e3
    aget v3, v10, v17

    const/4 v5, 0x0

    aget v9, v10, v5

    aget v11, v10, v20

    aget v12, v10, v19

    .line 1442
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1441
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1440
    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1443
    .local v3, "ascent":I
    aget v9, v15, v17

    aget v5, v15, v5

    aget v11, v15, v20

    aget v12, v15, v19

    .line 1445
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1444
    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1443
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1446
    .local v5, "descent":I
    add-int v9, v3, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v5, v8

    .line 1448
    .end local v0    # "remainingWeightSum":F
    .end local v3    # "ascent":I
    .end local v8    # "maxHeight":I
    .local v5, "maxHeight":I
    :goto_613
    move v9, v2

    move v3, v4

    .line 1474
    .end local v2    # "remainingExcess":I
    .end local v4    # "childState":I
    .local v3, "childState":I
    .local v9, "remainingExcess":I
    :goto_615
    if-nez v18, :cond_61c

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v13, v0, :cond_61c

    .line 1475
    move v5, v1

    .line 1478
    :cond_61c
    iget v0, v7, Landroid/widget/LinearLayout;->mPaddingTop:I

    iget v2, v7, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v0, v2

    add-int/2addr v5, v0

    .line 1481
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1483
    .end local v5    # "maxHeight":I
    .local v0, "maxHeight":I
    const/high16 v2, -0x1000000

    and-int/2addr v2, v3

    or-int v2, v38, v2

    shl-int/lit8 v4, v3, 0x10

    .line 1484
    invoke-static {v0, v6, v4}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v4

    .line 1483
    invoke-virtual {v7, v2, v4}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 1487
    if-eqz v22, :cond_642

    .line 1488
    move/from16 v2, p1

    move/from16 v4, v37

    .end local v37    # "count":I
    .local v4, "count":I
    invoke-direct {v7, v4, v2}, Landroid/widget/LinearLayout;->forceUniformHeight(II)V

    goto :goto_646

    .line 1487
    .end local v4    # "count":I
    .restart local v37    # "count":I
    :cond_642
    move/from16 v2, p1

    move/from16 v4, v37

    .line 1490
    .end local v37    # "count":I
    .restart local v4    # "count":I
    :goto_646
    return-void
.end method

.method greylist-max-o measureNullChild(I)I
    .registers 3
    .param p1, "childIndex"    # I

    .line 1537
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o measureVertical(II)V
    .registers 44
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 777
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    iput v10, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 778
    const/4 v0, 0x0

    .line 779
    .local v0, "maxWidth":I
    const/4 v1, 0x0

    .line 780
    .local v1, "childState":I
    const/4 v2, 0x0

    .line 781
    .local v2, "alternativeMaxWidth":I
    const/4 v3, 0x0

    .line 782
    .local v3, "weightedMaxWidth":I
    const/4 v4, 0x1

    .line 783
    .local v4, "allFillParent":Z
    const/4 v5, 0x0

    .line 785
    .local v5, "totalWeight":F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v11

    .line 787
    .local v11, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 788
    .local v12, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 790
    .local v13, "heightMode":I
    const/4 v6, 0x0

    .line 791
    .local v6, "matchWidth":Z
    const/4 v14, 0x0

    .line 793
    .local v14, "skippedMeasure":Z
    iget v15, v7, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 794
    .local v15, "baselineChildIndex":I
    iget-boolean v10, v7, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    .line 796
    .local v10, "useLargestChild":Z
    const/high16 v17, -0x80000000

    .line 797
    .local v17, "largestChildHeight":I
    const/16 v18, 0x0

    .line 799
    .local v18, "consumedExcessSpace":I
    const/16 v19, 0x0

    .line 802
    .local v19, "nonSkippedChildCount":I
    const/16 v20, 0x0

    move/from16 v38, v14

    move v14, v0

    move v0, v5

    move v5, v1

    move/from16 v1, v19

    move/from16 v19, v38

    move/from16 v39, v4

    move v4, v2

    move/from16 v2, v17

    move/from16 v17, v39

    move/from16 v40, v18

    move/from16 v18, v6

    move/from16 v6, v20

    move/from16 v20, v40

    .local v0, "totalWeight":F
    .local v1, "nonSkippedChildCount":I
    .local v2, "largestChildHeight":I
    .local v4, "alternativeMaxWidth":I
    .local v5, "childState":I
    .local v6, "i":I
    .local v14, "maxWidth":I
    .local v17, "allFillParent":Z
    .local v18, "matchWidth":Z
    .local v19, "skippedMeasure":Z
    .local v20, "consumedExcessSpace":I
    :goto_41
    move/from16 v21, v4

    .end local v4    # "alternativeMaxWidth":I
    .local v21, "alternativeMaxWidth":I
    const/16 v23, 0x0

    const/16 v25, 0x1

    if-ge v6, v11, :cond_1c2

    .line 803
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 804
    .local v4, "child":Landroid/view/View;
    if-nez v4, :cond_65

    .line 805
    move/from16 v27, v2

    .end local v2    # "largestChildHeight":I
    .local v27, "largestChildHeight":I
    iget v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v22

    add-int v2, v2, v22

    iput v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 806
    move/from16 v22, v11

    move/from16 v4, v21

    move/from16 v2, v27

    move/from16 v27, v13

    goto/16 :goto_1b6

    .line 809
    .end local v27    # "largestChildHeight":I
    .restart local v2    # "largestChildHeight":I
    :cond_65
    move/from16 v27, v2

    .end local v2    # "largestChildHeight":I
    .restart local v27    # "largestChildHeight":I
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v2

    move/from16 v28, v3

    const/16 v3, 0x8

    .end local v3    # "weightedMaxWidth":I
    .local v28, "weightedMaxWidth":I
    if-ne v2, v3, :cond_82

    .line 810
    invoke-virtual {v7, v4, v6}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v2

    add-int/2addr v6, v2

    .line 811
    move/from16 v22, v11

    move/from16 v4, v21

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v27, v13

    goto/16 :goto_1b6

    .line 814
    :cond_82
    add-int/lit8 v24, v1, 0x1

    .line 815
    .end local v1    # "nonSkippedChildCount":I
    .local v24, "nonSkippedChildCount":I
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 816
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v2, v7, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v1, v2

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 819
    :cond_91
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 821
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v29, v0, v1

    .line 823
    .end local v0    # "totalWeight":F
    .local v29, "totalWeight":F
    iget v0, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v0, :cond_a9

    iget v0, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v0, v0, v23

    if-lez v0, :cond_a9

    move/from16 v0, v25

    goto :goto_aa

    :cond_a9
    const/4 v0, 0x0

    :goto_aa
    move/from16 v30, v0

    .line 824
    .local v30, "useExcessSpace":Z
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v13, v2, :cond_d6

    if-eqz v30, :cond_d6

    .line 828
    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 829
    .local v0, "totalLength":I
    iget v1, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v0

    iget v2, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 830
    const/16 v19, 0x1

    .line 831
    .end local v0    # "totalLength":I
    move-object v9, v3

    move-object v3, v4

    move/from16 v34, v5

    move/from16 v32, v6

    move/from16 v22, v11

    move/from16 v2, v27

    move/from16 v8, v28

    const/high16 v11, 0x40000000    # 2.0f

    move/from16 v27, v13

    move/from16 v13, v21

    goto/16 :goto_137

    .line 832
    :cond_d6
    if-eqz v30, :cond_db

    .line 838
    const/4 v0, -0x2

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 845
    :cond_db
    cmpl-float v0, v29, v23

    if-nez v0, :cond_e2

    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_e3

    :cond_e2
    const/4 v0, 0x0

    :goto_e3
    move v1, v6

    .end local v6    # "i":I
    .local v1, "i":I
    move v6, v0

    .line 846
    .local v6, "usedHeight":I
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v32, v1

    .end local v1    # "i":I
    .local v32, "i":I
    move-object v1, v4

    move/from16 v33, v27

    const/high16 v26, 0x40000000    # 2.0f

    .end local v27    # "largestChildHeight":I
    .local v33, "largestChildHeight":I
    move/from16 v2, v32

    move-object v9, v3

    move/from16 v8, v28

    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v28    # "weightedMaxWidth":I
    .local v8, "weightedMaxWidth":I
    .local v9, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move/from16 v3, p1

    move/from16 v22, v11

    move/from16 v27, v13

    move/from16 v13, v21

    move/from16 v11, v26

    move-object/from16 v21, v4

    .end local v4    # "child":Landroid/view/View;
    .end local v11    # "count":I
    .local v13, "alternativeMaxWidth":I
    .local v21, "child":Landroid/view/View;
    .local v22, "count":I
    .local v27, "heightMode":I
    move/from16 v4, v31

    move/from16 v34, v5

    .end local v5    # "childState":I
    .local v34, "childState":I
    move/from16 v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 849
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 850
    .local v0, "childHeight":I
    if-eqz v30, :cond_115

    .line 854
    const/4 v1, 0x0

    iput v1, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 855
    add-int v20, v20, v0

    .line 858
    :cond_115
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 859
    .local v1, "totalLength":I
    add-int v2, v1, v0

    iget v3, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 860
    move-object/from16 v3, v21

    .end local v21    # "child":Landroid/view/View;
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    .line 859
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 862
    if-eqz v10, :cond_135

    .line 863
    move/from16 v2, v33

    .end local v33    # "largestChildHeight":I
    .restart local v2    # "largestChildHeight":I
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_137

    .line 862
    .end local v2    # "largestChildHeight":I
    .restart local v33    # "largestChildHeight":I
    :cond_135
    move/from16 v2, v33

    .line 871
    .end local v0    # "childHeight":I
    .end local v1    # "totalLength":I
    .end local v6    # "usedHeight":I
    .end local v33    # "largestChildHeight":I
    .restart local v2    # "largestChildHeight":I
    :goto_137
    if-ltz v15, :cond_144

    move/from16 v4, v32

    .end local v32    # "i":I
    .local v4, "i":I
    add-int/lit8 v6, v4, 0x1

    if-ne v15, v6, :cond_146

    .line 872
    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iput v0, v7, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    goto :goto_146

    .line 871
    .end local v4    # "i":I
    .restart local v32    # "i":I
    :cond_144
    move/from16 v4, v32

    .line 878
    .end local v32    # "i":I
    .restart local v4    # "i":I
    :cond_146
    :goto_146
    if-ge v4, v15, :cond_157

    iget v0, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v0, v0, v23

    if-gtz v0, :cond_14f

    goto :goto_157

    .line 879
    :cond_14f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 885
    :cond_157
    :goto_157
    const/4 v0, 0x0

    .line 886
    .local v0, "matchWidthLocally":Z
    if-eq v12, v11, :cond_162

    iget v1, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v1, v5, :cond_162

    .line 891
    const/16 v18, 0x1

    .line 892
    const/4 v0, 0x1

    .line 895
    :cond_162
    iget v1, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v5, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v5

    .line 896
    .local v1, "margin":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v1

    .line 897
    .local v5, "measuredWidth":I
    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 898
    .end local v14    # "maxWidth":I
    .local v6, "maxWidth":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v11

    move/from16 v14, v34

    .end local v34    # "childState":I
    .local v14, "childState":I
    invoke-static {v14, v11}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v11

    .line 900
    .end local v14    # "childState":I
    .local v11, "childState":I
    if-eqz v17, :cond_186

    iget v14, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v21, v1

    const/4 v1, -0x1

    .end local v1    # "margin":I
    .local v21, "margin":I
    if-ne v14, v1, :cond_188

    move/from16 v1, v25

    goto :goto_189

    .end local v21    # "margin":I
    .restart local v1    # "margin":I
    :cond_186
    move/from16 v21, v1

    .end local v1    # "margin":I
    .restart local v21    # "margin":I
    :cond_188
    const/4 v1, 0x0

    .line 901
    .end local v17    # "allFillParent":Z
    .local v1, "allFillParent":Z
    :goto_189
    iget v14, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v14, v14, v23

    if-lez v14, :cond_19b

    .line 906
    nop

    .line 907
    if-eqz v0, :cond_195

    move/from16 v14, v21

    goto :goto_196

    :cond_195
    move v14, v5

    .line 906
    :goto_196
    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_1a6

    .line 909
    :cond_19b
    nop

    .line 910
    if-eqz v0, :cond_1a1

    move/from16 v14, v21

    goto :goto_1a2

    :cond_1a1
    move v14, v5

    .line 909
    :goto_1a2
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 913
    :goto_1a6
    invoke-virtual {v7, v3, v4}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v14

    add-int/2addr v4, v14

    move/from16 v17, v1

    move v14, v6

    move v3, v8

    move v5, v11

    move/from16 v1, v24

    move/from16 v0, v29

    move v6, v4

    move v4, v13

    .line 802
    .end local v8    # "weightedMaxWidth":I
    .end local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "childState":I
    .end local v13    # "alternativeMaxWidth":I
    .end local v21    # "margin":I
    .end local v24    # "nonSkippedChildCount":I
    .end local v29    # "totalWeight":F
    .end local v30    # "useExcessSpace":Z
    .local v0, "totalWeight":F
    .local v1, "nonSkippedChildCount":I
    .local v3, "weightedMaxWidth":I
    .local v4, "alternativeMaxWidth":I
    .local v5, "childState":I
    .local v6, "i":I
    .local v14, "maxWidth":I
    .restart local v17    # "allFillParent":Z
    :goto_1b6
    add-int/lit8 v6, v6, 0x1

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v11, v22

    move/from16 v13, v27

    goto/16 :goto_41

    .end local v4    # "alternativeMaxWidth":I
    .end local v22    # "count":I
    .end local v27    # "heightMode":I
    .local v11, "count":I
    .local v13, "heightMode":I
    .local v21, "alternativeMaxWidth":I
    :cond_1c2
    move v8, v3

    move v4, v6

    move/from16 v22, v11

    move/from16 v27, v13

    move/from16 v13, v21

    const/high16 v11, 0x40000000    # 2.0f

    .line 916
    .end local v3    # "weightedMaxWidth":I
    .end local v6    # "i":I
    .end local v11    # "count":I
    .end local v21    # "alternativeMaxWidth":I
    .restart local v8    # "weightedMaxWidth":I
    .local v13, "alternativeMaxWidth":I
    .restart local v22    # "count":I
    .restart local v27    # "heightMode":I
    if-lez v1, :cond_1de

    move/from16 v3, v22

    .end local v22    # "count":I
    .local v3, "count":I
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_1e0

    .line 917
    iget v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v6, v7, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v4, v6

    iput v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_1e0

    .line 916
    .end local v3    # "count":I
    .restart local v22    # "count":I
    :cond_1de
    move/from16 v3, v22

    .line 920
    .end local v22    # "count":I
    .restart local v3    # "count":I
    :cond_1e0
    :goto_1e0
    if-eqz v10, :cond_248

    const/high16 v4, -0x80000000

    move/from16 v6, v27

    .end local v27    # "heightMode":I
    .local v6, "heightMode":I
    if-eq v6, v4, :cond_1ee

    if-nez v6, :cond_1eb

    goto :goto_1ee

    :cond_1eb
    move/from16 v22, v1

    goto :goto_24c

    .line 922
    :cond_1ee
    :goto_1ee
    const/4 v4, 0x0

    iput v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 924
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1f2
    if-ge v4, v3, :cond_243

    .line 925
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 926
    .local v9, "child":Landroid/view/View;
    if-nez v9, :cond_209

    .line 927
    iget v11, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v22

    add-int v11, v11, v22

    iput v11, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 928
    move/from16 v22, v1

    move/from16 v28, v4

    goto :goto_23a

    .line 931
    :cond_209
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v11

    move/from16 v22, v1

    const/16 v1, 0x8

    .end local v1    # "nonSkippedChildCount":I
    .local v22, "nonSkippedChildCount":I
    if-ne v11, v1, :cond_219

    .line 932
    invoke-virtual {v7, v9, v4}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v4, v1

    .line 933
    goto :goto_23c

    .line 936
    :cond_219
    nop

    .line 937
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 939
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v11, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 940
    .local v11, "totalLength":I
    add-int v27, v11, v2

    move/from16 v28, v4

    .end local v4    # "i":I
    .local v28, "i":I
    iget v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v27, v27, v4

    iget v4, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v27, v27, v4

    .line 941
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int v4, v27, v4

    .line 940
    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 924
    .end local v9    # "child":Landroid/view/View;
    .end local v11    # "totalLength":I
    .end local v22    # "nonSkippedChildCount":I
    .end local v28    # "i":I
    .local v1, "nonSkippedChildCount":I
    .restart local v4    # "i":I
    :goto_23a
    move/from16 v4, v28

    .end local v1    # "nonSkippedChildCount":I
    .restart local v22    # "nonSkippedChildCount":I
    :goto_23c
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v22

    const/high16 v11, 0x40000000    # 2.0f

    goto :goto_1f2

    .end local v22    # "nonSkippedChildCount":I
    .restart local v1    # "nonSkippedChildCount":I
    :cond_243
    move/from16 v22, v1

    move/from16 v28, v4

    .end local v1    # "nonSkippedChildCount":I
    .end local v4    # "i":I
    .restart local v22    # "nonSkippedChildCount":I
    .restart local v28    # "i":I
    goto :goto_24c

    .line 920
    .end local v6    # "heightMode":I
    .end local v22    # "nonSkippedChildCount":I
    .end local v28    # "i":I
    .restart local v1    # "nonSkippedChildCount":I
    .restart local v27    # "heightMode":I
    :cond_248
    move/from16 v22, v1

    move/from16 v6, v27

    .line 946
    .end local v1    # "nonSkippedChildCount":I
    .end local v27    # "heightMode":I
    .restart local v6    # "heightMode":I
    .restart local v22    # "nonSkippedChildCount":I
    :goto_24c
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v4, v7, Landroid/widget/LinearLayout;->mPaddingTop:I

    iget v9, v7, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v4, v9

    add-int/2addr v1, v4

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 948
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 951
    .local v1, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 954
    move/from16 v4, p2

    const/4 v9, 0x0

    invoke-static {v1, v4, v9}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v11

    .line 955
    .local v11, "heightSizeAndState":I
    const v9, 0xffffff

    and-int v1, v11, v9

    .line 959
    iget v9, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v9, v1, v9

    .line 960
    move/from16 v27, v1

    .end local v1    # "heightSize":I
    .local v27, "heightSize":I
    iget-boolean v1, v7, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v1, :cond_278

    const/4 v1, 0x0

    goto :goto_27a

    :cond_278
    move/from16 v1, v20

    :goto_27a
    add-int/2addr v9, v1

    .line 961
    .local v9, "remainingExcess":I
    if-nez v19, :cond_314

    sget-boolean v1, Landroid/widget/LinearLayout;->sRemeasureWeightedChildren:Z

    if-nez v1, :cond_283

    if-eqz v9, :cond_28f

    :cond_283
    cmpl-float v1, v0, v23

    if-lez v1, :cond_28f

    move/from16 v28, v0

    move/from16 v34, v5

    move/from16 v29, v8

    goto/16 :goto_31a

    .line 1027
    :cond_28f
    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1033
    .end local v13    # "alternativeMaxWidth":I
    .local v1, "alternativeMaxWidth":I
    if-eqz v10, :cond_2fa

    const/high16 v13, 0x40000000    # 2.0f

    if-eq v6, v13, :cond_2fa

    .line 1034
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_29a
    if-ge v13, v3, :cond_2f1

    .line 1035
    move/from16 v28, v0

    .end local v0    # "totalWeight":F
    .local v28, "totalWeight":F
    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1036
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2e0

    move/from16 v16, v1

    .end local v1    # "alternativeMaxWidth":I
    .local v16, "alternativeMaxWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    move/from16 v34, v5

    const/16 v5, 0x8

    .end local v5    # "childState":I
    .restart local v34    # "childState":I
    if-ne v1, v5, :cond_2b3

    .line 1037
    move/from16 v29, v8

    goto :goto_2e6

    .line 1040
    :cond_2b3
    nop

    .line 1041
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1043
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1044
    .local v5, "childExtra":F
    cmpl-float v25, v5, v23

    if-lez v25, :cond_2d9

    .line 1045
    nop

    .line 1046
    move-object/from16 v25, v1

    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .local v25, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    move/from16 v26, v5

    const/high16 v5, 0x40000000    # 2.0f

    .end local v5    # "childExtra":F
    .local v26, "childExtra":F
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1048
    move/from16 v29, v8

    .end local v8    # "weightedMaxWidth":I
    .local v29, "weightedMaxWidth":I
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1045
    invoke-virtual {v0, v1, v8}, Landroid/view/View;->measure(II)V

    goto :goto_2e6

    .line 1044
    .end local v25    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v26    # "childExtra":F
    .end local v29    # "weightedMaxWidth":I
    .restart local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v5    # "childExtra":F
    .restart local v8    # "weightedMaxWidth":I
    :cond_2d9
    move-object/from16 v25, v1

    move/from16 v26, v5

    move/from16 v29, v8

    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "childExtra":F
    .end local v8    # "weightedMaxWidth":I
    .restart local v25    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v26    # "childExtra":F
    .restart local v29    # "weightedMaxWidth":I
    goto :goto_2e6

    .line 1036
    .end local v16    # "alternativeMaxWidth":I
    .end local v25    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v26    # "childExtra":F
    .end local v29    # "weightedMaxWidth":I
    .end local v34    # "childState":I
    .local v1, "alternativeMaxWidth":I
    .local v5, "childState":I
    .restart local v8    # "weightedMaxWidth":I
    :cond_2e0
    move/from16 v16, v1

    move/from16 v34, v5

    move/from16 v29, v8

    .line 1034
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "alternativeMaxWidth":I
    .end local v5    # "childState":I
    .end local v8    # "weightedMaxWidth":I
    .restart local v16    # "alternativeMaxWidth":I
    .restart local v29    # "weightedMaxWidth":I
    .restart local v34    # "childState":I
    :goto_2e6
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, v16

    move/from16 v0, v28

    move/from16 v8, v29

    move/from16 v5, v34

    goto :goto_29a

    .end local v16    # "alternativeMaxWidth":I
    .end local v28    # "totalWeight":F
    .end local v29    # "weightedMaxWidth":I
    .end local v34    # "childState":I
    .local v0, "totalWeight":F
    .restart local v1    # "alternativeMaxWidth":I
    .restart local v5    # "childState":I
    .restart local v8    # "weightedMaxWidth":I
    :cond_2f1
    move/from16 v28, v0

    move/from16 v16, v1

    move/from16 v34, v5

    move/from16 v29, v8

    .end local v0    # "totalWeight":F
    .end local v1    # "alternativeMaxWidth":I
    .end local v5    # "childState":I
    .end local v8    # "weightedMaxWidth":I
    .restart local v16    # "alternativeMaxWidth":I
    .restart local v28    # "totalWeight":F
    .restart local v29    # "weightedMaxWidth":I
    .restart local v34    # "childState":I
    goto :goto_302

    .line 1033
    .end local v13    # "i":I
    .end local v16    # "alternativeMaxWidth":I
    .end local v28    # "totalWeight":F
    .end local v29    # "weightedMaxWidth":I
    .end local v34    # "childState":I
    .restart local v0    # "totalWeight":F
    .restart local v1    # "alternativeMaxWidth":I
    .restart local v5    # "childState":I
    .restart local v8    # "weightedMaxWidth":I
    :cond_2fa
    move/from16 v28, v0

    move/from16 v16, v1

    move/from16 v34, v5

    move/from16 v29, v8

    .line 1055
    .end local v0    # "totalWeight":F
    .end local v1    # "alternativeMaxWidth":I
    .end local v5    # "childState":I
    .end local v8    # "weightedMaxWidth":I
    .restart local v16    # "alternativeMaxWidth":I
    .restart local v28    # "totalWeight":F
    .restart local v29    # "weightedMaxWidth":I
    .restart local v34    # "childState":I
    :goto_302
    move/from16 v32, v3

    move/from16 v36, v6

    move/from16 v30, v10

    move/from16 v31, v15

    move/from16 v1, v16

    move/from16 v5, v34

    move/from16 v6, p1

    move/from16 v34, v2

    goto/16 :goto_44b

    .line 961
    .end local v16    # "alternativeMaxWidth":I
    .end local v28    # "totalWeight":F
    .end local v29    # "weightedMaxWidth":I
    .end local v34    # "childState":I
    .restart local v0    # "totalWeight":F
    .restart local v5    # "childState":I
    .restart local v8    # "weightedMaxWidth":I
    .local v13, "alternativeMaxWidth":I
    :cond_314
    move/from16 v28, v0

    move/from16 v34, v5

    move/from16 v29, v8

    .line 963
    .end local v0    # "totalWeight":F
    .end local v5    # "childState":I
    .end local v8    # "weightedMaxWidth":I
    .restart local v28    # "totalWeight":F
    .restart local v29    # "weightedMaxWidth":I
    .restart local v34    # "childState":I
    :goto_31a
    iget v0, v7, Landroid/widget/LinearLayout;->mWeightSum:F

    cmpl-float v1, v0, v23

    if-lez v1, :cond_321

    goto :goto_323

    :cond_321
    move/from16 v0, v28

    .line 965
    .local v0, "remainingWeightSum":F
    :goto_323
    const/4 v1, 0x0

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 967
    const/4 v1, 0x0

    move/from16 v5, v34

    .end local v34    # "childState":I
    .local v1, "i":I
    .restart local v5    # "childState":I
    :goto_329
    if-ge v1, v3, :cond_434

    .line 968
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 969
    .local v8, "child":Landroid/view/View;
    if-eqz v8, :cond_41a

    move/from16 v30, v10

    .end local v10    # "useLargestChild":Z
    .local v30, "useLargestChild":Z
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v10

    move/from16 v31, v15

    const/16 v15, 0x8

    .end local v15    # "baselineChildIndex":I
    .local v31, "baselineChildIndex":I
    if-ne v10, v15, :cond_347

    .line 970
    move/from16 v34, v2

    move/from16 v32, v3

    move/from16 v36, v6

    move/from16 v6, p1

    goto/16 :goto_426

    .line 973
    :cond_347
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 974
    .local v10, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v15, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 975
    .local v15, "childWeight":F
    cmpl-float v32, v15, v23

    if-lez v32, :cond_3b1

    .line 976
    move/from16 v32, v3

    .end local v3    # "count":I
    .local v32, "count":I
    int-to-float v3, v9

    mul-float/2addr v3, v15

    div-float/2addr v3, v0

    float-to-int v3, v3

    .line 977
    .local v3, "share":I
    sub-int/2addr v9, v3

    .line 978
    sub-float/2addr v0, v15

    .line 981
    move/from16 v33, v0

    .end local v0    # "remainingWeightSum":F
    .local v33, "remainingWeightSum":F
    iget-boolean v0, v7, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    if-eqz v0, :cond_367

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v6, v0, :cond_367

    .line 982
    move v0, v2

    .local v0, "childHeight":I
    goto :goto_37a

    .line 983
    .end local v0    # "childHeight":I
    :cond_367
    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v0, :cond_375

    iget-boolean v0, v7, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v0, :cond_373

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v6, v0, :cond_375

    .line 987
    :cond_373
    move v0, v3

    .restart local v0    # "childHeight":I
    goto :goto_37a

    .line 991
    .end local v0    # "childHeight":I
    :cond_375
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v3

    .line 994
    .restart local v0    # "childHeight":I
    :goto_37a
    nop

    .line 995
    move/from16 v34, v2

    move/from16 v16, v3

    const/4 v2, 0x0

    .end local v2    # "largestChildHeight":I
    .end local v3    # "share":I
    .local v16, "share":I
    .local v34, "largestChildHeight":I
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 994
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 996
    .local v3, "childHeightMeasureSpec":I
    iget v2, v7, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move/from16 v35, v0

    .end local v0    # "childHeight":I
    .local v35, "childHeight":I
    iget v0, v7, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v2, v0

    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v0

    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v0

    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v36, v6

    move/from16 v6, p1

    .end local v6    # "heightMode":I
    .local v36, "heightMode":I
    invoke-static {v6, v2, v0}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 999
    .local v0, "childWidthMeasureSpec":I
    invoke-virtual {v8, v0, v3}, Landroid/view/View;->measure(II)V

    .line 1002
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    and-int/lit16 v2, v2, -0x100

    invoke-static {v5, v2}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v5

    move/from16 v0, v33

    goto :goto_3b9

    .line 975
    .end local v16    # "share":I
    .end local v32    # "count":I
    .end local v33    # "remainingWeightSum":F
    .end local v34    # "largestChildHeight":I
    .end local v35    # "childHeight":I
    .end local v36    # "heightMode":I
    .local v0, "remainingWeightSum":F
    .restart local v2    # "largestChildHeight":I
    .local v3, "count":I
    .restart local v6    # "heightMode":I
    :cond_3b1
    move/from16 v34, v2

    move/from16 v32, v3

    move/from16 v36, v6

    move/from16 v6, p1

    .line 1006
    .end local v2    # "largestChildHeight":I
    .end local v3    # "count":I
    .end local v6    # "heightMode":I
    .restart local v32    # "count":I
    .restart local v34    # "largestChildHeight":I
    .restart local v36    # "heightMode":I
    :goto_3b9
    iget v2, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v3, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    .line 1007
    .local v2, "margin":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v2

    .line 1008
    .local v3, "measuredWidth":I
    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1010
    move/from16 v16, v0

    const/high16 v0, 0x40000000    # 2.0f

    .end local v0    # "remainingWeightSum":F
    .local v16, "remainingWeightSum":F
    if-eq v12, v0, :cond_3d7

    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v33, v2

    const/4 v2, -0x1

    .end local v2    # "margin":I
    .local v33, "margin":I
    if-ne v0, v2, :cond_3d9

    move/from16 v0, v25

    goto :goto_3da

    .end local v33    # "margin":I
    .restart local v2    # "margin":I
    :cond_3d7
    move/from16 v33, v2

    .end local v2    # "margin":I
    .restart local v33    # "margin":I
    :cond_3d9
    const/4 v0, 0x0

    .line 1013
    .local v0, "matchWidthLocally":Z
    :goto_3da
    nop

    .line 1014
    if-eqz v0, :cond_3e0

    move/from16 v2, v33

    goto :goto_3e1

    :cond_3e0
    move v2, v3

    .line 1013
    :goto_3e1
    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1016
    .end local v13    # "alternativeMaxWidth":I
    .local v2, "alternativeMaxWidth":I
    if-eqz v17, :cond_3f1

    iget v13, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v35, v0

    const/4 v0, -0x1

    .end local v0    # "matchWidthLocally":Z
    .local v35, "matchWidthLocally":Z
    if-ne v13, v0, :cond_3f4

    move/from16 v13, v25

    goto :goto_3f5

    .end local v35    # "matchWidthLocally":Z
    .restart local v0    # "matchWidthLocally":Z
    :cond_3f1
    move/from16 v35, v0

    const/4 v0, -0x1

    .end local v0    # "matchWidthLocally":Z
    .restart local v35    # "matchWidthLocally":Z
    :cond_3f4
    const/4 v13, 0x0

    .line 1018
    .end local v17    # "allFillParent":Z
    .local v13, "allFillParent":Z
    :goto_3f5
    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1019
    .local v0, "totalLength":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    add-int v17, v0, v17

    move/from16 v37, v2

    .end local v2    # "alternativeMaxWidth":I
    .local v37, "alternativeMaxWidth":I
    iget v2, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v17, v17, v2

    iget v2, v10, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v17, v17, v2

    .line 1020
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int v2, v17, v2

    .line 1019
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v17, v13

    move/from16 v0, v16

    move/from16 v13, v37

    goto :goto_426

    .line 969
    .end local v16    # "remainingWeightSum":F
    .end local v30    # "useLargestChild":Z
    .end local v31    # "baselineChildIndex":I
    .end local v32    # "count":I
    .end local v33    # "margin":I
    .end local v34    # "largestChildHeight":I
    .end local v35    # "matchWidthLocally":Z
    .end local v36    # "heightMode":I
    .end local v37    # "alternativeMaxWidth":I
    .local v0, "remainingWeightSum":F
    .local v2, "largestChildHeight":I
    .local v3, "count":I
    .restart local v6    # "heightMode":I
    .local v10, "useLargestChild":Z
    .local v13, "alternativeMaxWidth":I
    .local v15, "baselineChildIndex":I
    .restart local v17    # "allFillParent":Z
    :cond_41a
    move/from16 v34, v2

    move/from16 v32, v3

    move/from16 v36, v6

    move/from16 v30, v10

    move/from16 v31, v15

    move/from16 v6, p1

    .line 967
    .end local v2    # "largestChildHeight":I
    .end local v3    # "count":I
    .end local v6    # "heightMode":I
    .end local v8    # "child":Landroid/view/View;
    .end local v10    # "useLargestChild":Z
    .end local v15    # "baselineChildIndex":I
    .restart local v30    # "useLargestChild":Z
    .restart local v31    # "baselineChildIndex":I
    .restart local v32    # "count":I
    .restart local v34    # "largestChildHeight":I
    .restart local v36    # "heightMode":I
    :goto_426
    add-int/lit8 v1, v1, 0x1

    move/from16 v10, v30

    move/from16 v15, v31

    move/from16 v3, v32

    move/from16 v2, v34

    move/from16 v6, v36

    goto/16 :goto_329

    .end local v30    # "useLargestChild":Z
    .end local v31    # "baselineChildIndex":I
    .end local v32    # "count":I
    .end local v34    # "largestChildHeight":I
    .end local v36    # "heightMode":I
    .restart local v2    # "largestChildHeight":I
    .restart local v3    # "count":I
    .restart local v6    # "heightMode":I
    .restart local v10    # "useLargestChild":Z
    .restart local v15    # "baselineChildIndex":I
    :cond_434
    move/from16 v34, v2

    move/from16 v32, v3

    move/from16 v36, v6

    move/from16 v30, v10

    move/from16 v31, v15

    move/from16 v6, p1

    .line 1024
    .end local v1    # "i":I
    .end local v2    # "largestChildHeight":I
    .end local v3    # "count":I
    .end local v6    # "heightMode":I
    .end local v10    # "useLargestChild":Z
    .end local v15    # "baselineChildIndex":I
    .restart local v30    # "useLargestChild":Z
    .restart local v31    # "baselineChildIndex":I
    .restart local v32    # "count":I
    .restart local v34    # "largestChildHeight":I
    .restart local v36    # "heightMode":I
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v2, v7, Landroid/widget/LinearLayout;->mPaddingTop:I

    iget v3, v7, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1026
    .end local v0    # "remainingWeightSum":F
    move v1, v13

    .line 1055
    .end local v13    # "alternativeMaxWidth":I
    .local v1, "alternativeMaxWidth":I
    :goto_44b
    if-nez v17, :cond_452

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v12, v0, :cond_452

    .line 1056
    move v14, v1

    .line 1059
    :cond_452
    iget v0, v7, Landroid/widget/LinearLayout;->mPaddingLeft:I

    iget v2, v7, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v0, v2

    add-int/2addr v14, v0

    .line 1062
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1064
    .end local v14    # "maxWidth":I
    .local v0, "maxWidth":I
    invoke-static {v0, v6, v5}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v2

    invoke-virtual {v7, v2, v11}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 1067
    if-eqz v18, :cond_46f

    .line 1068
    move/from16 v2, v32

    .end local v32    # "count":I
    .local v2, "count":I
    invoke-direct {v7, v2, v4}, Landroid/widget/LinearLayout;->forceUniformWidth(II)V

    goto :goto_471

    .line 1067
    .end local v2    # "count":I
    .restart local v32    # "count":I
    :cond_46f
    move/from16 v2, v32

    .line 1070
    .end local v32    # "count":I
    .restart local v2    # "count":I
    :goto_471
    return-void
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 428
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    .line 429
    return-void

    .line 432
    :cond_5
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 433
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->drawDividersVertical(Landroid/graphics/Canvas;)V

    goto :goto_11

    .line 435
    :cond_e
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    .line 437
    :goto_11
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1586
    sget-boolean v0, Landroid/view/ViewRootImpl;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_1e

    .line 1587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ll.onLayout orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LinearLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    :cond_1e
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    .line 1591
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/LinearLayout;->layoutVertical(IIII)V

    goto :goto_2a

    .line 1593
    :cond_27
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/LinearLayout;->layoutHorizontal(IIII)V

    .line 1595
    :goto_2a
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 724
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 725
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureVertical(II)V

    goto :goto_c

    .line 727
    :cond_9
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    .line 729
    :goto_c
    return-void
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .registers 3
    .param p1, "layoutDirection"    # I

    .line 1710
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 1711
    iget v0, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    if-eq p1, v0, :cond_10

    .line 1712
    iput p1, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    .line 1713
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-nez v0, :cond_10

    .line 1714
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1717
    :cond_10
    return-void
.end method

.method public whitelist setBaselineAligned(Z)V
    .registers 2
    .param p1, "baselineAligned"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 553
    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 554
    return-void
.end method

.method public whitelist setBaselineAlignedChildIndex(I)V
    .registers 5
    .param p1, "i"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 659
    if-ltz p1, :cond_b

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_b

    .line 663
    iput p1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 664
    return-void

    .line 660
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base aligned child index out of range (0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 661
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .line 367
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_5

    .line 368
    return-void

    .line 370
    :cond_5
    iput-object p1, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 371
    if-eqz p1, :cond_16

    .line 372
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    .line 373
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    goto :goto_1b

    .line 375
    :cond_16
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    .line 376
    iput v0, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    .line 379
    :goto_1b
    invoke-direct {p0}, Landroid/widget/LinearLayout;->isShowingDividers()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 380
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 381
    return-void
.end method

.method public whitelist setDividerPadding(I)V
    .registers 3
    .param p1, "padding"    # I

    .line 395
    iget v0, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    if-ne p1, v0, :cond_5

    .line 396
    return-void

    .line 398
    :cond_5
    iput p1, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    .line 400
    invoke-direct {p0}, Landroid/widget/LinearLayout;->isShowingDividers()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 401
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 402
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 404
    :cond_13
    return-void
.end method

.method public whitelist setGravity(I)V
    .registers 3
    .param p1, "gravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1915
    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    if-eq v0, p1, :cond_19

    .line 1916
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_e

    .line 1917
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 1920
    :cond_e
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_14

    .line 1921
    or-int/lit8 p1, p1, 0x30

    .line 1924
    :cond_14
    iput p1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1925
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1927
    :cond_19
    return-void
.end method

.method public whitelist setHorizontalGravity(I)V
    .registers 5
    .param p1, "horizontalGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1942
    const v0, 0x800007

    and-int v1, p1, v0

    .line 1943
    .local v1, "gravity":I
    iget v2, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/2addr v0, v2

    if-eq v0, v1, :cond_14

    .line 1944
    const v0, -0x800008

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1945
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1947
    :cond_14
    return-void
.end method

.method public whitelist setMeasureWithLargestChildEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 585
    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    .line 586
    return-void
.end method

.method public whitelist setOrientation(I)V
    .registers 3
    .param p1, "orientation"    # I

    .line 1883
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-eq v0, p1, :cond_9

    .line 1884
    iput p1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    .line 1885
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1887
    :cond_9
    return-void
.end method

.method public whitelist setShowDividers(I)V
    .registers 3
    .param p1, "showDividers"    # I

    .line 322
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    if-ne p1, v0, :cond_5

    .line 323
    return-void

    .line 325
    :cond_5
    iput p1, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    .line 327
    invoke-direct {p0}, Landroid/widget/LinearLayout;->isShowingDividers()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 328
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 329
    return-void
.end method

.method public whitelist setVerticalGravity(I)V
    .registers 5
    .param p1, "verticalGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1951
    and-int/lit8 v0, p1, 0x70

    .line 1952
    .local v0, "gravity":I
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v2, v1, 0x70

    if-eq v2, v0, :cond_10

    .line 1953
    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1954
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1956
    :cond_10
    return-void
.end method

.method public whitelist setWeightSum(F)V
    .registers 3
    .param p1, "weightSum"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 719
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    .line 720
    return-void
.end method

.method public whitelist shouldDelayChildPressedState()Z
    .registers 2

    .line 333
    const/4 v0, 0x0

    return v0
.end method
