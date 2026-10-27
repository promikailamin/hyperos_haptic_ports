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

    .line 234
    const/4 v0, 0x0

    sput-boolean v0, Landroid/widget/LinearLayout;->sCompatibilityDone:Z

    .line 239
    const/4 v0, 0x1

    sput-boolean v0, Landroid/widget/LinearLayout;->sRemeasureWeightedChildren:Z

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3

    .line 242
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 243
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 246
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 247
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 250
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 251
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 16

    .line 254
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 147
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 155
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 161
    const v3, 0x800033

    iput v3, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 228
    iput v1, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    .line 256
    sget-boolean v3, Landroid/widget/LinearLayout;->sCompatibilityDone:Z

    if-nez v3, :cond_2a

    if-eqz p1, :cond_2a

    .line 257
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 260
    const/16 v4, 0x1c

    if-lt v3, v4, :cond_25

    move v3, v0

    goto :goto_26

    :cond_25
    move v3, v2

    :goto_26
    sput-boolean v3, Landroid/widget/LinearLayout;->sRemeasureWeightedChildren:Z

    .line 262
    sput-boolean v0, Landroid/widget/LinearLayout;->sCompatibilityDone:Z

    .line 265
    :cond_2a
    sget-object v3, Lcom/android/internal/R$styleable;->LinearLayout:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 267
    sget-object v6, Lcom/android/internal/R$styleable;->LinearLayout:[I

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move v9, p3

    move v10, p4

    invoke-virtual/range {v4 .. v10}, Landroid/widget/LinearLayout;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 270
    invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 271
    if-ltz p1, :cond_43

    .line 272
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 275
    :cond_43
    invoke-virtual {v8, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 276
    if-ltz p1, :cond_4c

    .line 277
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 280
    :cond_4c
    const/4 p1, 0x2

    invoke-virtual {v8, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 281
    if-nez p1, :cond_56

    .line 282
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 285
    :cond_56
    const/4 p1, 0x4

    const/high16 p2, -0x40800000    # -1.0f

    invoke-virtual {v8, p1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, v4, Landroid/widget/LinearLayout;->mWeightSum:F

    .line 287
    nop

    .line 288
    const/4 p1, 0x3

    invoke-virtual {v8, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, v4, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 290
    const/4 p1, 0x6

    invoke-virtual {v8, p1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v4, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    .line 292
    const/4 p1, 0x7

    invoke-virtual {v8, p1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, v4, Landroid/widget/LinearLayout;->mShowDividers:I

    .line 293
    const/16 p1, 0x8

    invoke-virtual {v8, p1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, v4, Landroid/widget/LinearLayout;->mDividerPadding:I

    .line 294
    const/4 p1, 0x5

    invoke-virtual {v8, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 297
    const/16 p2, 0x17

    if-gt p1, p2, :cond_90

    goto :goto_91

    :cond_90
    move v0, v2

    :goto_91
    iput-boolean v0, v4, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    .line 299
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 300
    return-void
.end method

.method private blacklist allViewsAreGoneAfter(I)Z
    .registers 6

    .line 787
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    .line 788
    const/4 v1, 0x1

    add-int/2addr p1, v1

    :goto_6
    if-ge p1, v0, :cond_1b

    .line 789
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 790
    if-eqz v2, :cond_18

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_18

    .line 791
    const/4 p1, 0x0

    return p1

    .line 788
    :cond_18
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 794
    :cond_1b
    return v1
.end method

.method private greylist-max-o allViewsAreGoneBefore(I)Z
    .registers 5

    .line 774
    const/4 v0, 0x1

    sub-int/2addr p1, v0

    :goto_2
    if-ltz p1, :cond_17

    .line 775
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 776
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_14

    .line 777
    const/4 p1, 0x0

    return p1

    .line 774
    :cond_14
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 780
    :cond_17
    return v0
.end method

.method private greylist-max-o forceUniformHeight(II)V
    .registers 12

    .line 1548
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1550
    const/4 v0, 0x0

    :goto_b
    if-ge v0, p1, :cond_3f

    .line 1551
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1552
    if-eqz v3, :cond_3a

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3a

    .line 1553
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1555
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_38

    .line 1558
    iget v8, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1559
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1562
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    invoke-virtual/range {v2 .. v7}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1563
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_3b

    .line 1555
    :cond_38
    move v4, p2

    goto :goto_3b

    .line 1552
    :cond_3a
    move v4, p2

    .line 1550
    :goto_3b
    add-int/lit8 v0, v0, 0x1

    move p2, v4

    goto :goto_b

    .line 1567
    :cond_3f
    return-void
.end method

.method private greylist-max-o forceUniformWidth(II)V
    .registers 12

    .line 1106
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1108
    const/4 v0, 0x0

    :goto_b
    if-ge v0, p1, :cond_3f

    .line 1109
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1110
    if-eqz v3, :cond_3a

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3a

    .line 1111
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1113
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_38

    .line 1116
    iget v8, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1117
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1120
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1121
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_3b

    .line 1113
    :cond_38
    move v6, p2

    goto :goto_3b

    .line 1110
    :cond_3a
    move v6, p2

    .line 1108
    :goto_3b
    add-int/lit8 v0, v0, 0x1

    move p2, v6

    goto :goto_b

    .line 1125
    :cond_3f
    return-void
.end method

.method private greylist-max-o getLastNonGoneChild()Landroid/view/View;
    .registers 5

    .line 466
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1a

    .line 467
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 468
    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_17

    .line 469
    return-object v1

    .line 466
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 472
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist hasDividerAfterChildAt(I)Z
    .registers 4

    .line 759
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 761
    return v1

    .line 763
    :cond_6
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;->allViewsAreGoneAfter(I)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_15

    .line 765
    iget p1, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_14

    move v1, v0

    :cond_14
    return v1

    .line 767
    :cond_15
    iget p1, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1c

    move v1, v0

    :cond_1c
    return v1
.end method

.method private greylist-max-o isShowingDividers()Z
    .registers 2

    .line 307
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
    .registers 6

    .line 1891
    add-int/2addr p4, p2

    add-int/2addr p5, p3

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 1892
    return-void
.end method


# virtual methods
.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 2016
    instance-of p1, p1, Landroid/widget/LinearLayout$LayoutParams;

    return p1
.end method

.method greylist-max-o drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .registers 8

    .line 476
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    .line 477
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v1

    .line 478
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_3f

    .line 479
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 480
    if-eqz v3, :cond_3c

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3c

    .line 481
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 482
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 484
    if-eqz v1, :cond_2f

    .line 485
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    goto :goto_39

    .line 487
    :cond_2f
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int/2addr v3, v4

    .line 489
    :goto_39
    invoke-virtual {p0, p1, v3}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 478
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 494
    :cond_3f
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 495
    invoke-direct {p0}, Landroid/widget/LinearLayout;->getLastNonGoneChild()Landroid/view/View;

    move-result-object v0

    .line 497
    if-nez v0, :cond_5f

    .line 498
    if-eqz v1, :cond_52

    .line 499
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    goto :goto_79

    .line 501
    :cond_52
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int/2addr v0, v1

    goto :goto_79

    .line 504
    :cond_5f
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 505
    if-eqz v1, :cond_72

    .line 506
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int/2addr v0, v1

    goto :goto_79

    .line 508
    :cond_72
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    .line 511
    :goto_79
    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 513
    :cond_7c
    return-void
.end method

.method greylist-max-o drawDividersVertical(Landroid/graphics/Canvas;)V
    .registers 7

    .line 436
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    .line 437
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_31

    .line 438
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 439
    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2e

    .line 440
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 441
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 442
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 443
    invoke-virtual {p0, p1, v2}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 437
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 448
    :cond_31
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 449
    invoke-direct {p0}, Landroid/widget/LinearLayout;->getLastNonGoneChild()Landroid/view/View;

    move-result-object v0

    .line 450
    nop

    .line 451
    if-nez v0, :cond_4b

    .line 452
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    sub-int/2addr v0, v1

    goto :goto_58

    .line 454
    :cond_4b
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 455
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 457
    :goto_58
    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 459
    :cond_5b
    return-void
.end method

.method greylist-max-o drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .registers 7

    .line 516
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    .line 517
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v3, p2

    .line 516
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 518
    iget-object p2, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 519
    return-void
.end method

.method greylist-max-o drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .registers 8

    .line 522
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v2, p2

    .line 523
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    sub-int/2addr v3, v4

    .line 522
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 524
    iget-object p2, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 525
    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4

    .line 2027
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 2028
    const-string v0, "layout:baselineAligned"

    iget-boolean v1, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 2029
    const-string v0, "layout:baselineAlignedChildIndex"

    iget v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2030
    const-string v0, "measurement:baselineChildTop"

    iget v1, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2031
    const-string v0, "measurement:orientation"

    iget v1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2032
    const-string v0, "measurement:gravity"

    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2033
    const-string v0, "measurement:totalLength"

    iget v1, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2034
    const-string v0, "layout:totalLength"

    iget v1, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2035
    const-string v0, "layout:useLargestChild"

    iget-boolean v1, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 2036
    return-void
.end method

.method protected bridge synthetic whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 89
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    .line 1992
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, -0x2

    if-nez v0, :cond_b

    .line 1993
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    .line 1994
    :cond_b
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_17

    .line 1995
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    .line 1997
    :cond_17
    const/4 v0, 0x0

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

    .line 89
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 89
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    .line 1979
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 3

    .line 2002
    sget-boolean v0, Landroid/widget/LinearLayout;->sPreserveMarginParamsInLayoutParamConversion:Z

    if-eqz v0, :cond_1c

    .line 2003
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_10

    .line 2004
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0

    .line 2005
    :cond_10
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1c

    .line 2006
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 2009
    :cond_1c
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 2021
    const-class v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBaseline()I
    .registers 6

    .line 586
    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-gez v0, :cond_9

    .line 587
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0

    .line 590
    :cond_9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-le v0, v1, :cond_66

    .line 595
    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 596
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 598
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2b

    .line 599
    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-nez v0, :cond_23

    .line 601
    return v2

    .line 605
    :cond_23
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 615
    :cond_2b
    iget v2, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 617
    iget v3, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5b

    .line 618
    iget v3, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    .line 619
    const/16 v4, 0x30

    if-eq v3, v4, :cond_5b

    .line 620
    sparse-switch v3, :sswitch_data_6e

    goto :goto_5b

    .line 622
    :sswitch_3e
    iget v2, p0, Landroid/widget/LinearLayout;->mBottom:I

    iget v3, p0, Landroid/widget/LinearLayout;->mTop:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v2, v3

    .line 623
    goto :goto_5b

    .line 626
    :sswitch_4a
    iget v3, p0, Landroid/widget/LinearLayout;->mBottom:I

    iget v4, p0, Landroid/widget/LinearLayout;->mTop:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mPaddingTop:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 633
    :cond_5b
    :goto_5b
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 634
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2

    .line 591
    :cond_66
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_6e
    .sparse-switch
        0x10 -> :sswitch_4a
        0x50 -> :sswitch_3e
    .end sparse-switch
.end method

.method public whitelist getBaselineAlignedChildIndex()I
    .registers 2

    .line 644
    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method greylist-max-o getChildrenSkipCount(Landroid/view/View;I)I
    .registers 3

    .line 1578
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 350
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getDividerPadding()I
    .registers 2

    .line 410
    iget v0, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    return v0
.end method

.method public greylist-max-o getDividerWidth()I
    .registers 2

    .line 419
    iget v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    return v0
.end method

.method public whitelist getGravity()I
    .registers 2

    .line 1956
    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    return v0
.end method

.method greylist-max-o getLocationOffset(Landroid/view/View;)I
    .registers 2

    .line 1620
    const/4 p1, 0x0

    return p1
.end method

.method greylist-max-o getNextLocationOffset(Landroid/view/View;)I
    .registers 2

    .line 1632
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist getOrientation()I
    .registers 2

    .line 1919
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    return v0
.end method

.method public whitelist getShowDividers()I
    .registers 2

    .line 338
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    return v0
.end method

.method greylist-max-o getVirtualChildAt(I)Landroid/view/View;
    .registers 2

    .line 673
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o getVirtualChildCount()I
    .registers 2

    .line 686
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public whitelist getWeightSum()F
    .registers 2

    .line 698
    iget v0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    return v0
.end method

.method protected greylist-max-o hasDividerBeforeChildAt(I)Z
    .registers 5

    .line 735
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 737
    return v1

    .line 739
    :cond_6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_15

    .line 741
    iget p1, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_14

    move v1, v2

    :cond_14
    return v1

    .line 743
    :cond_15
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;->allViewsAreGoneBefore(I)Z

    move-result p1

    .line 744
    if-eqz p1, :cond_22

    .line 746
    iget p1, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_21

    move v1, v2

    :cond_21
    return v1

    .line 748
    :cond_22
    iget p1, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_29

    move v1, v2

    :cond_29
    return v1
.end method

.method public whitelist isBaselineAligned()Z
    .registers 2

    .line 535
    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    return v0
.end method

.method public whitelist isMeasureWithLargestChildEnabled()Z
    .registers 2

    .line 564
    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    return v0
.end method

.method greylist-max-o layoutHorizontal(IIII)V
    .registers 28

    .line 1762
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v6

    .line 1763
    iget v7, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    .line 1769
    sub-int v1, p4, p2

    .line 1770
    iget v2, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int v8, v1, v2

    .line 1773
    sub-int/2addr v1, v7

    iget v2, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int v9, v1, v2

    .line 1775
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v10

    .line 1777
    iget v1, v0, Landroid/widget/LinearLayout;->mGravity:I

    const v2, 0x800007

    and-int/2addr v1, v2

    .line 1778
    iget v2, v0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v11, v2, 0x70

    .line 1780
    iget-boolean v12, v0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 1782
    iget-object v13, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    .line 1783
    iget-object v14, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    .line 1785
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v2

    .line 1786
    invoke-static {v1, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    const/4 v15, 0x2

    sparse-switch v1, :sswitch_data_146

    .line 1799
    iget v1, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    goto :goto_4a

    .line 1789
    :sswitch_36
    iget v1, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    add-int v1, v1, p3

    sub-int v1, v1, p1

    iget v2, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v1, v2

    .line 1790
    goto :goto_4a

    .line 1794
    :sswitch_40
    iget v1, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    sub-int v2, p3, p1

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v2, v3

    div-int/2addr v2, v15

    add-int/2addr v1, v2

    .line 1795
    nop

    .line 1803
    :goto_4a
    nop

    .line 1804
    nop

    .line 1806
    const/4 v2, 0x0

    const/16 v16, 0x1

    if-eqz v6, :cond_58

    .line 1807
    add-int/lit8 v4, v10, -0x1

    .line 1808
    move/from16 v17, v4

    const/16 v18, -0x1

    goto :goto_5c

    .line 1806
    :cond_58
    move/from16 v17, v2

    move/from16 v18, v16

    .line 1811
    :goto_5c
    nop

    :goto_5d
    if-ge v2, v10, :cond_145

    .line 1812
    mul-int v4, v18, v2

    add-int v4, v17, v4

    .line 1813
    move v5, v1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1814
    if-nez v1, :cond_79

    .line 1815
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v1

    add-int/2addr v1, v5

    move/from16 v20, v6

    move/from16 v21, v7

    move/from16 p2, v15

    const/16 v22, -0x1

    goto/16 :goto_13b

    .line 1816
    :cond_79
    move/from16 p2, v15

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v3, 0x8

    if-eq v15, v3, :cond_131

    .line 1817
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1818
    move v15, v5

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 1819
    nop

    .line 1821
    nop

    .line 1822
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    move/from16 v20, v6

    move-object/from16 v6, v19

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 1824
    if-eqz v12, :cond_a9

    move/from16 v19, v2

    iget v2, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move/from16 p3, v3

    const/4 v3, -0x1

    if-eq v2, v3, :cond_ad

    .line 1825
    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v2

    move v3, v2

    goto :goto_ae

    .line 1824
    :cond_a9
    move/from16 v19, v2

    move/from16 p3, v3

    .line 1828
    :cond_ad
    const/4 v3, -0x1

    :goto_ae
    iget v2, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1829
    if-gez v2, :cond_b3

    .line 1830
    move v2, v11

    .line 1833
    :cond_b3
    and-int/lit8 v2, v2, 0x70

    sparse-switch v2, :sswitch_data_150

    .line 1865
    move v3, v7

    goto :goto_f6

    .line 1858
    :sswitch_ba
    sub-int v2, v8, v5

    move/from16 p4, v2

    iget v2, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int v2, p4, v2

    .line 1859
    move/from16 p4, v2

    const/4 v2, -0x1

    if-eq v3, v2, :cond_d3

    .line 1860
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, v3

    .line 1861
    aget v3, v14, p2

    sub-int/2addr v3, v2

    sub-int v2, p4, v3

    .line 1862
    move v3, v2

    goto :goto_f6

    .line 1859
    :cond_d3
    move/from16 v3, p4

    goto :goto_f6

    .line 1835
    :sswitch_d6
    iget v2, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v7

    .line 1836
    move/from16 p4, v2

    const/4 v2, -0x1

    if-eq v3, v2, :cond_e5

    .line 1837
    aget v21, v13, v16

    sub-int v21, v21, v3

    add-int v3, p4, v21

    goto :goto_f6

    .line 1836
    :cond_e5
    move/from16 v3, p4

    goto :goto_f6

    .line 1853
    :sswitch_e8
    const/4 v2, -0x1

    sub-int v3, v9, v5

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v7

    iget v2, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v2

    iget v2, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int v2, v3, v2

    .line 1855
    move v3, v2

    .line 1869
    :goto_f6
    if-eqz v20, :cond_102

    .line 1872
    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;->hasDividerAfterChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_10c

    .line 1873
    iget v2, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v2, v15

    goto :goto_10d

    .line 1875
    :cond_102
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_10c

    .line 1876
    iget v2, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v2, v15

    goto :goto_10d

    .line 1879
    :cond_10c
    move v2, v15

    :goto_10d
    iget v15, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v15, v2

    .line 1880
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v15

    move/from16 v21, v7

    const/16 v22, -0x1

    move v7, v4

    move/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 1882
    iget v2, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v3, v4, v2

    .line 1883
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int/2addr v3, v2

    add-int/2addr v15, v3

    .line 1885
    invoke-virtual {v0, v1, v7}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int v2, v19, v1

    move v1, v15

    goto :goto_13b

    .line 1816
    :cond_131
    move/from16 v19, v2

    move v15, v5

    move/from16 v20, v6

    move/from16 v21, v7

    const/16 v22, -0x1

    move v1, v15

    .line 1811
    :goto_13b
    add-int/lit8 v2, v2, 0x1

    move/from16 v15, p2

    move/from16 v6, v20

    move/from16 v7, v21

    goto/16 :goto_5d

    .line 1888
    :cond_145
    return-void

    :sswitch_data_146
    .sparse-switch
        0x1 -> :sswitch_40
        0x5 -> :sswitch_36
    .end sparse-switch

    :sswitch_data_150
    .sparse-switch
        0x10 -> :sswitch_e8
        0x30 -> :sswitch_d6
        0x50 -> :sswitch_ba
    .end sparse-switch
.end method

.method greylist-max-o layoutVertical(IIII)V
    .registers 15

    .line 1657
    iget v0, p0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    .line 1663
    sub-int/2addr p3, p1

    .line 1664
    iget p1, p0, Landroid/widget/LinearLayout;->mPaddingRight:I

    sub-int p1, p3, p1

    .line 1667
    sub-int/2addr p3, v0

    iget v1, p0, Landroid/widget/LinearLayout;->mPaddingRight:I

    sub-int/2addr p3, v1

    .line 1669
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v1

    .line 1671
    iget v2, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v2, v2, 0x70

    .line 1672
    iget v3, p0, Landroid/widget/LinearLayout;->mGravity:I

    const v4, 0x800007

    and-int/2addr v3, v4

    .line 1674
    sparse-switch v2, :sswitch_data_ac

    .line 1687
    iget v2, p0, Landroid/widget/LinearLayout;->mPaddingTop:I

    goto :goto_31

    .line 1677
    :sswitch_1f
    iget v2, p0, Landroid/widget/LinearLayout;->mPaddingTop:I

    add-int/2addr v2, p4

    sub-int/2addr v2, p2

    iget p2, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v2, p2

    .line 1678
    goto :goto_31

    .line 1682
    :sswitch_27
    iget v2, p0, Landroid/widget/LinearLayout;->mPaddingTop:I

    sub-int/2addr p4, p2

    iget p2, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr p4, p2

    div-int/lit8 p4, p4, 0x2

    add-int/2addr v2, p4

    .line 1683
    nop

    .line 1691
    :goto_31
    const/4 p2, 0x0

    :goto_32
    if-ge p2, v1, :cond_ab

    .line 1692
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1693
    if-nez v5, :cond_41

    .line 1694
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result p4

    add-int/2addr v2, p4

    move-object v4, p0

    goto :goto_a8

    .line 1695
    :cond_41
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result p4

    const/16 v4, 0x8

    if-eq p4, v4, :cond_a7

    .line 1696
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 1697
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 1699
    nop

    .line 1700
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1702
    iget v4, p4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1703
    if-gez v4, :cond_5d

    .line 1704
    move v4, v3

    .line 1706
    :cond_5d
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v6

    .line 1707
    invoke-static {v4, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    .line 1708
    and-int/lit8 v4, v4, 0x7

    sparse-switch v4, :sswitch_data_b6

    .line 1720
    iget v4, p4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v0

    move v6, v4

    goto :goto_82

    .line 1715
    :sswitch_6f
    sub-int v4, p1, v8

    iget v6, p4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v6

    .line 1716
    move v6, v4

    goto :goto_82

    .line 1710
    :sswitch_76
    sub-int v4, p3, v8

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    iget v6, p4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v6

    iget v6, p4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v6

    .line 1712
    move v6, v4

    .line 1724
    :goto_82
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 1725
    iget v4, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v2, v4

    .line 1728
    :cond_8b
    iget v4, p4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    .line 1729
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int v7, v2, v4

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 1731
    iget p4, p4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v9, p4

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result p4

    add-int/2addr v9, p4

    add-int/2addr v2, v9

    .line 1733
    invoke-virtual {p0, v5, p2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result p4

    add-int/2addr p2, p4

    goto :goto_a8

    .line 1695
    :cond_a7
    move-object v4, p0

    .line 1691
    :goto_a8
    add-int/lit8 p2, p2, 0x1

    goto :goto_32

    .line 1736
    :cond_ab
    return-void

    :sswitch_data_ac
    .sparse-switch
        0x10 -> :sswitch_27
        0x50 -> :sswitch_1f
    .end sparse-switch

    :sswitch_data_b6
    .sparse-switch
        0x1 -> :sswitch_76
        0x5 -> :sswitch_6f
    .end sparse-switch
.end method

.method greylist-max-o measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .registers 7

    .line 1608
    move-object p2, p1

    move-object p1, p0

    invoke-virtual/range {p1 .. p6}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1610
    return-void
.end method

.method greylist-max-o measureHorizontal(II)V
    .registers 44

    .line 1139
    move-object/from16 v0, p0

    const/4 v7, 0x0

    iput v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1140
    nop

    .line 1141
    nop

    .line 1142
    nop

    .line 1143
    nop

    .line 1144
    nop

    .line 1145
    nop

    .line 1147
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v8

    .line 1149
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 1150
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 1152
    nop

    .line 1153
    nop

    .line 1155
    iget-object v1, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    const/4 v11, 0x4

    if-eqz v1, :cond_22

    iget-object v1, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    if-nez v1, :cond_2a

    .line 1156
    :cond_22
    new-array v1, v11, [I

    iput-object v1, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    .line 1157
    new-array v1, v11, [I

    iput-object v1, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    .line 1160
    :cond_2a
    iget-object v12, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    .line 1161
    iget-object v13, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    .line 1163
    const/4 v14, 0x3

    const/4 v15, -0x1

    aput v15, v12, v14

    const/16 v16, 0x2

    aput v15, v12, v16

    const/16 v17, 0x1

    aput v15, v12, v17

    aput v15, v12, v7

    .line 1164
    aput v15, v13, v14

    aput v15, v13, v16

    aput v15, v13, v17

    aput v15, v13, v7

    .line 1166
    iget-boolean v1, v0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 1167
    iget-boolean v2, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    .line 1169
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v9, v3, :cond_4f

    move/from16 v18, v17

    goto :goto_51

    :cond_4f
    move/from16 v18, v7

    .line 1171
    :goto_51
    nop

    .line 1172
    nop

    .line 1174
    nop

    .line 1177
    const/16 v19, 0x0

    move v5, v2

    move v2, v7

    move v6, v2

    move/from16 v22, v6

    move/from16 v24, v22

    move/from16 v25, v24

    move/from16 v27, v25

    move/from16 v29, v27

    move/from16 v21, v11

    move/from16 v23, v14

    move/from16 v28, v17

    move/from16 v20, v19

    const/high16 v15, -0x80000000

    move/from16 v11, v29

    move v14, v11

    :goto_70
    move/from16 v30, v6

    const/16 v4, 0x8

    if-ge v2, v8, :cond_22b

    .line 1178
    move/from16 v32, v1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1179
    if-nez v1, :cond_93

    .line 1180
    iget v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v4

    add-int/2addr v1, v4

    iput v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1181
    move/from16 v3, p1

    move/from16 v31, v5

    move-object/from16 v33, v12

    move/from16 v6, v30

    move/from16 v5, p2

    goto/16 :goto_21e

    .line 1184
    :cond_93
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-ne v6, v4, :cond_aa

    .line 1185
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v2, v1

    .line 1186
    move/from16 v3, p1

    move/from16 v31, v5

    move-object/from16 v33, v12

    move/from16 v6, v30

    move/from16 v5, p2

    goto/16 :goto_21e

    .line 1189
    :cond_aa
    add-int/lit8 v30, v30, 0x1

    .line 1190
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 1191
    iget v4, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v6, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v4, v6

    iput v4, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1194
    :cond_b9
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1196
    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v20, v20, v6

    .line 1198
    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v6, :cond_d0

    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v6, v6, v19

    if-lez v6, :cond_d0

    move/from16 v34, v17

    goto :goto_d2

    :cond_d0
    move/from16 v34, v7

    .line 1199
    :goto_d2
    if-ne v9, v3, :cond_125

    if-eqz v34, :cond_125

    .line 1203
    if-eqz v18, :cond_e3

    .line 1204
    iget v6, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v3, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v7

    add-int/2addr v6, v3

    iput v6, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_f1

    .line 1206
    :cond_e3
    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1207
    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v3

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1216
    :goto_f1
    if-eqz v32, :cond_116

    .line 1217
    nop

    .line 1218
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 1217
    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v3

    .line 1219
    nop

    .line 1220
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 1219
    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v7

    .line 1221
    invoke-virtual {v1, v3, v7}, Landroid/view/View;->measure(II)V

    .line 1222
    move/from16 v3, p1

    move-object v7, v4

    move/from16 v31, v5

    move-object/from16 v33, v12

    const/16 v35, -0x2

    move/from16 v5, p2

    goto/16 :goto_18e

    .line 1223
    :cond_116
    move/from16 v3, p1

    move-object v7, v4

    move/from16 v31, v5

    move-object/from16 v33, v12

    move/from16 v25, v17

    const/16 v35, -0x2

    move/from16 v5, p2

    goto/16 :goto_18e

    .line 1226
    :cond_125
    if-eqz v34, :cond_12b

    .line 1232
    const/4 v3, -0x2

    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_12c

    .line 1226
    :cond_12b
    const/4 v3, -0x2

    .line 1239
    :goto_12c
    cmpl-float v6, v20, v19

    if-nez v6, :cond_138

    iget v6, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v40, v6

    move-object v6, v4

    move/from16 v4, v40

    goto :goto_13a

    :cond_138
    move-object v6, v4

    const/4 v4, 0x0

    .line 1240
    :goto_13a
    move-object v7, v6

    const/4 v6, 0x0

    move/from16 v35, v3

    move/from16 v31, v5

    move-object/from16 v33, v12

    const/high16 v12, 0x40000000    # 2.0f

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 1243
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 1244
    if-eqz v34, :cond_156

    .line 1248
    const/4 v6, 0x0

    iput v6, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1249
    add-int v22, v22, v4

    .line 1252
    :cond_156
    if-eqz v18, :cond_16c

    .line 1253
    iget v6, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v12, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v12, v4

    move/from16 v38, v6

    iget v6, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v12, v6

    .line 1254
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v12, v6

    add-int v6, v38, v12

    iput v6, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_188

    .line 1256
    :cond_16c
    iget v6, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1257
    add-int v12, v6, v4

    move/from16 v38, v12

    iget v12, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v12, v38, v12

    move/from16 v38, v12

    iget v12, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v12, v38, v12

    .line 1258
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v38

    add-int v12, v12, v38

    .line 1257
    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1261
    :goto_188
    if-eqz v31, :cond_18e

    .line 1262
    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 1266
    :cond_18e
    :goto_18e
    nop

    .line 1267
    const/high16 v12, 0x40000000    # 2.0f

    if-eq v10, v12, :cond_19e

    iget v4, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_19e

    .line 1271
    nop

    .line 1272
    move/from16 v4, v17

    move/from16 v29, v4

    goto :goto_19f

    .line 1275
    :cond_19e
    const/4 v4, 0x0

    :goto_19f
    iget v6, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v12, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v12

    .line 1276
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v6

    .line 1277
    move/from16 v38, v4

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    move/from16 v39, v6

    move/from16 v6, v27

    invoke-static {v6, v4}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v27

    .line 1279
    if-eqz v32, :cond_1e5

    .line 1280
    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v4

    .line 1281
    const/4 v6, -0x1

    if-eq v4, v6, :cond_1e5

    .line 1284
    iget v6, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v6, :cond_1c7

    iget v6, v0, Landroid/widget/LinearLayout;->mGravity:I

    goto :goto_1c9

    :cond_1c7
    iget v6, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :goto_1c9
    and-int/lit8 v6, v6, 0x70

    .line 1286
    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, -0x2

    shr-int/lit8 v6, v6, 0x1

    .line 1289
    move/from16 v35, v6

    aget v6, v33, v35

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    aput v6, v33, v35

    .line 1290
    aget v6, v13, v35

    sub-int v4, v12, v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v13, v35

    .line 1294
    :cond_1e5
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1296
    if-eqz v28, :cond_1f3

    iget v4, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_1f3

    move/from16 v28, v17

    goto :goto_1f5

    :cond_1f3
    const/16 v28, 0x0

    .line 1297
    :goto_1f5
    iget v4, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v4, v4, v19

    if-lez v4, :cond_209

    .line 1302
    nop

    .line 1303
    if-eqz v38, :cond_201

    move/from16 v6, v39

    goto :goto_202

    :cond_201
    move v6, v12

    .line 1302
    :goto_202
    move/from16 v7, v24

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v24

    goto :goto_217

    .line 1305
    :cond_209
    move/from16 v7, v24

    .line 1306
    if-eqz v38, :cond_210

    move/from16 v6, v39

    goto :goto_211

    :cond_210
    move v6, v12

    .line 1305
    :goto_211
    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    move-result v14

    move/from16 v24, v7

    .line 1309
    :goto_217
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v2, v1

    move/from16 v6, v30

    .line 1177
    :goto_21e
    add-int/lit8 v2, v2, 0x1

    move/from16 v5, v31

    move/from16 v1, v32

    move-object/from16 v12, v33

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v7, 0x0

    goto/16 :goto_70

    .line 1312
    :cond_22b
    move/from16 v3, p1

    move/from16 v32, v1

    move/from16 v31, v5

    move-object/from16 v33, v12

    move/from16 v7, v24

    move/from16 v6, v27

    const/16 v35, -0x2

    move/from16 v5, p2

    if-lez v30, :cond_24a

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_24a

    .line 1313
    iget v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v2, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1318
    :cond_24a
    aget v1, v33, v17

    const/4 v2, -0x1

    if-ne v1, v2, :cond_25d

    const/16 v36, 0x0

    aget v1, v33, v36

    if-ne v1, v2, :cond_25d

    aget v1, v33, v16

    if-ne v1, v2, :cond_25d

    aget v1, v33, v23

    if-eq v1, v2, :cond_28f

    .line 1322
    :cond_25d
    aget v1, v33, v23

    const/16 v36, 0x0

    aget v2, v33, v36

    aget v12, v33, v17

    aget v4, v33, v16

    .line 1324
    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1323
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1322
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1325
    aget v2, v13, v23

    aget v4, v13, v36

    aget v12, v13, v17

    move/from16 v27, v1

    aget v1, v13, v16

    .line 1327
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1326
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1325
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1328
    add-int v1, v27, v1

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1331
    :cond_28f
    if-eqz v31, :cond_332

    const/high16 v1, -0x80000000

    if-eq v9, v1, :cond_29c

    if-nez v9, :cond_298

    goto :goto_29c

    :cond_298
    move/from16 v37, v6

    goto/16 :goto_334

    .line 1333
    :cond_29c
    :goto_29c
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1334
    nop

    .line 1336
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2a2
    if-ge v1, v8, :cond_31e

    .line 1337
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1338
    if-nez v4, :cond_2b6

    .line 1339
    iget v4, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v12

    add-int/2addr v4, v12

    iput v4, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1340
    move/from16 v37, v6

    goto :goto_319

    .line 1343
    :cond_2b6
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v12

    move/from16 v27, v2

    const/16 v2, 0x8

    if-ne v12, v2, :cond_2ca

    .line 1344
    invoke-virtual {v0, v4, v1}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v2

    add-int/2addr v1, v2

    .line 1345
    move/from16 v37, v6

    move/from16 v2, v27

    goto :goto_319

    .line 1348
    :cond_2ca
    add-int/lit8 v2, v27, 0x1

    .line 1349
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v12

    if-eqz v12, :cond_2dc

    .line 1350
    iget v12, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v30, v1

    iget v1, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v12, v1

    iput v12, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_2de

    .line 1349
    :cond_2dc
    move/from16 v30, v1

    .line 1353
    :goto_2de
    nop

    .line 1354
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1355
    if-eqz v18, :cond_2fc

    .line 1356
    iget v12, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v27, v2

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v15

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v1

    .line 1357
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v2, v1

    add-int/2addr v12, v2

    iput v12, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v37, v6

    goto :goto_315

    .line 1359
    :cond_2fc
    move/from16 v27, v2

    iget v2, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1360
    add-int v12, v2, v15

    move/from16 v37, v6

    iget v6, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v12, v6

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v12, v1

    .line 1361
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v12, v1

    .line 1360
    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1336
    :goto_315
    move/from16 v2, v27

    move/from16 v1, v30

    :goto_319
    add-int/lit8 v1, v1, 0x1

    move/from16 v6, v37

    goto :goto_2a2

    .line 1365
    :cond_31e
    move/from16 v27, v2

    move/from16 v37, v6

    if-lez v27, :cond_334

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_334

    .line 1366
    iget v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v2, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_334

    .line 1331
    :cond_332
    move/from16 v37, v6

    .line 1371
    :cond_334
    :goto_334
    iget v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v2, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    iget v4, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v2, v4

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1373
    iget v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1376
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1379
    const/4 v6, 0x0

    invoke-static {v1, v3, v6}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v1

    .line 1380
    const v2, 0xffffff

    and-int/2addr v2, v1

    .line 1385
    iget v4, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v2, v4

    .line 1386
    iget-boolean v4, v0, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v4, :cond_35a

    const/16 v22, 0x0

    :cond_35a
    add-int v2, v2, v22

    .line 1387
    if-nez v25, :cond_3af

    sget-boolean v6, Landroid/widget/LinearLayout;->sRemeasureWeightedChildren:Z

    if-nez v6, :cond_364

    if-eqz v2, :cond_369

    :cond_364
    cmpl-float v6, v20, v19

    if-lez v6, :cond_369

    goto :goto_3af

    .line 1501
    :cond_369
    invoke-static {v14, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1505
    if-eqz v31, :cond_3a7

    const/high16 v12, 0x40000000    # 2.0f

    if-eq v9, v12, :cond_3a7

    .line 1506
    const/4 v7, 0x0

    :goto_374
    if-ge v7, v8, :cond_3a7

    .line 1507
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1508
    if-eqz v6, :cond_3a4

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v12, 0x8

    if-ne v9, v12, :cond_385

    .line 1509
    goto :goto_3a4

    .line 1512
    :cond_385
    nop

    .line 1513
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 1515
    iget v9, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1516
    cmpl-float v9, v9, v19

    if-lez v9, :cond_3a4

    .line 1517
    nop

    .line 1518
    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v15, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1519
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    invoke-static {v13, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1517
    invoke-virtual {v6, v9, v13}, Landroid/view/View;->measure(II)V

    .line 1506
    :cond_3a4
    :goto_3a4
    add-int/lit8 v7, v7, 0x1

    goto :goto_374

    .line 1526
    :cond_3a7
    move/from16 v25, v1

    move/from16 v27, v37

    const/high16 v22, -0x1000000

    goto/16 :goto_570

    .line 1389
    :cond_3af
    :goto_3af
    iget v6, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    cmpl-float v6, v6, v19

    if-lez v6, :cond_3b9

    iget v6, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    move/from16 v20, v6

    .line 1391
    :cond_3b9
    const/16 v26, -0x1

    aput v26, v33, v23

    aput v26, v33, v16

    aput v26, v33, v17

    const/4 v6, 0x0

    aput v26, v33, v6

    .line 1392
    aput v26, v13, v23

    aput v26, v13, v16

    aput v26, v13, v17

    aput v26, v13, v6

    .line 1393
    nop

    .line 1395
    iput v6, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1396
    nop

    .line 1398
    move/from16 v7, v37

    const/4 v6, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_3d5
    if-ge v11, v8, :cond_508

    .line 1399
    const/high16 v22, -0x1000000

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1400
    if-eqz v4, :cond_4fa

    move/from16 v25, v1

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v1

    move/from16 v27, v12

    const/16 v12, 0x8

    if-ne v1, v12, :cond_3ef

    .line 1401
    move/from16 v30, v11

    goto/16 :goto_500

    .line 1404
    :cond_3ef
    add-int/lit8 v1, v27, 0x1

    .line 1405
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v24

    if-eqz v24, :cond_401

    .line 1406
    iget v12, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v27, v1

    iget v1, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v12, v1

    iput v12, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_403

    .line 1405
    :cond_401
    move/from16 v27, v1

    .line 1409
    :goto_403
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1410
    iget v12, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1411
    cmpl-float v30, v12, v19

    if-lez v30, :cond_465

    .line 1412
    move/from16 v30, v11

    int-to-float v11, v2

    mul-float/2addr v11, v12

    div-float v11, v11, v20

    float-to-int v11, v11

    .line 1413
    sub-int/2addr v2, v11

    .line 1414
    sub-float v20, v20, v12

    .line 1417
    iget-boolean v12, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    if-eqz v12, :cond_423

    const/high16 v12, 0x40000000    # 2.0f

    if-eq v9, v12, :cond_423

    .line 1418
    move v11, v15

    goto :goto_435

    .line 1419
    :cond_423
    iget v12, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v12, :cond_430

    iget-boolean v12, v0, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v12, :cond_42f

    const/high16 v12, 0x40000000    # 2.0f

    if-ne v9, v12, :cond_430

    .line 1423
    :cond_42f
    goto :goto_435

    .line 1427
    :cond_430
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v11, v12

    .line 1430
    :goto_435
    nop

    .line 1431
    const/4 v12, 0x0

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1430
    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1432
    iget v12, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move/from16 v31, v2

    iget v2, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v12, v2

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v2

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v12, v2

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-static {v5, v12, v2}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v2

    .line 1435
    invoke-virtual {v4, v11, v2}, Landroid/view/View;->measure(II)V

    .line 1438
    nop

    .line 1439
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    and-int v2, v2, v22

    .line 1438
    invoke-static {v7, v2}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v7

    move/from16 v2, v31

    goto :goto_467

    .line 1411
    :cond_465
    move/from16 v30, v11

    .line 1442
    :goto_467
    if-eqz v18, :cond_480

    .line 1443
    iget v11, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    move/from16 v31, v2

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v12, v2

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v12, v2

    .line 1444
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int/2addr v12, v2

    add-int/2addr v11, v12

    iput v11, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_49a

    .line 1446
    :cond_480
    move/from16 v31, v2

    iget v2, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1447
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v2

    iget v12, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v11, v12

    iget v12, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v11, v12

    .line 1448
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v12

    add-int/2addr v11, v12

    .line 1447
    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1451
    :goto_49a
    const/high16 v12, 0x40000000    # 2.0f

    if-eq v10, v12, :cond_4a6

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v11, -0x1

    if-ne v2, v11, :cond_4a6

    move/from16 v2, v17

    goto :goto_4a7

    :cond_4a6
    const/4 v2, 0x0

    .line 1454
    :goto_4a7
    iget v11, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v12, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v11, v12

    .line 1455
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v11

    .line 1456
    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1457
    nop

    .line 1458
    if-eqz v2, :cond_4b9

    goto :goto_4ba

    :cond_4b9
    move v11, v12

    .line 1457
    :goto_4ba
    invoke-static {v14, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1460
    if-eqz v28, :cond_4c8

    iget v11, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v14, -0x1

    if-ne v11, v14, :cond_4c8

    move/from16 v11, v17

    goto :goto_4c9

    :cond_4c8
    const/4 v11, 0x0

    .line 1462
    :goto_4c9
    if-eqz v32, :cond_4f4

    .line 1463
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v4

    .line 1464
    const/4 v14, -0x1

    if-eq v4, v14, :cond_4f4

    .line 1466
    iget v14, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v14, :cond_4d9

    iget v1, v0, Landroid/widget/LinearLayout;->mGravity:I

    goto :goto_4db

    :cond_4d9
    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :goto_4db
    and-int/lit8 v1, v1, 0x70

    .line 1468
    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, -0x2

    shr-int/lit8 v1, v1, 0x1

    .line 1471
    aget v14, v33, v1

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v14

    aput v14, v33, v1

    .line 1472
    aget v14, v13, v1

    sub-int/2addr v12, v4

    invoke-static {v14, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v13, v1

    .line 1398
    :cond_4f4
    move v14, v2

    move/from16 v28, v11

    move/from16 v2, v31

    goto :goto_500

    .line 1400
    :cond_4fa
    move/from16 v25, v1

    move/from16 v30, v11

    move/from16 v27, v12

    .line 1398
    :goto_500
    move/from16 v12, v27

    add-int/lit8 v11, v30, 0x1

    move/from16 v1, v25

    goto/16 :goto_3d5

    .line 1478
    :cond_508
    move/from16 v25, v1

    move/from16 v27, v12

    const/high16 v22, -0x1000000

    if-lez v27, :cond_51d

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_51d

    .line 1479
    iget v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v2, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1483
    :cond_51d
    iget v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v2, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    iget v4, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v2, v4

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1488
    aget v1, v33, v17

    const/4 v2, -0x1

    if-ne v1, v2, :cond_53d

    const/16 v36, 0x0

    aget v1, v33, v36

    if-ne v1, v2, :cond_53d

    aget v1, v33, v16

    if-ne v1, v2, :cond_53d

    aget v1, v33, v23

    if-eq v1, v2, :cond_53b

    goto :goto_53d

    :cond_53b
    move v11, v6

    goto :goto_56d

    .line 1492
    :cond_53d
    :goto_53d
    aget v1, v33, v23

    const/16 v36, 0x0

    aget v2, v33, v36

    aget v4, v33, v17

    aget v9, v33, v16

    .line 1494
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1493
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1492
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1495
    aget v2, v13, v23

    aget v4, v13, v36

    aget v9, v13, v17

    aget v11, v13, v16

    .line 1497
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1496
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1495
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1498
    add-int/2addr v1, v2

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v11, v1

    .line 1500
    :goto_56d
    move/from16 v27, v7

    move v2, v14

    .line 1526
    :goto_570
    if-nez v28, :cond_577

    const/high16 v12, 0x40000000    # 2.0f

    if-eq v10, v12, :cond_577

    .line 1527
    goto :goto_578

    .line 1530
    :cond_577
    move v2, v11

    :goto_578
    iget v1, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    iget v4, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v1, v4

    add-int/2addr v2, v1

    .line 1533
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1535
    and-int v2, v27, v22

    or-int v2, v25, v2

    shl-int/lit8 v4, v27, 0x10

    .line 1536
    invoke-static {v1, v5, v4}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v1

    .line 1535
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 1539
    if-eqz v29, :cond_598

    .line 1540
    invoke-direct {v0, v8, v3}, Landroid/widget/LinearLayout;->forceUniformHeight(II)V

    .line 1542
    :cond_598
    return-void
.end method

.method greylist-max-o measureNullChild(I)I
    .registers 2

    .line 1589
    const/4 p1, 0x0

    return p1
.end method

.method greylist-max-o measureVertical(II)V
    .registers 33

    .line 809
    move-object/from16 v0, p0

    const/4 v7, 0x0

    iput v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 810
    nop

    .line 811
    nop

    .line 812
    nop

    .line 813
    nop

    .line 814
    nop

    .line 815
    nop

    .line 817
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v8

    .line 819
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 820
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 822
    nop

    .line 823
    nop

    .line 825
    iget v11, v0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 826
    iget-boolean v12, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    .line 828
    nop

    .line 829
    nop

    .line 831
    nop

    .line 834
    move v1, v7

    move v2, v1

    move v4, v2

    move v5, v4

    move v13, v5

    move v14, v13

    move/from16 v16, v14

    move/from16 v17, v16

    move/from16 v21, v17

    const/4 v3, 0x0

    const/high16 v6, -0x80000000

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x1

    :goto_35
    const/16 v15, 0x8

    if-ge v2, v8, :cond_1a3

    .line 835
    move/from16 v23, v1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 836
    if-nez v1, :cond_56

    .line 837
    iget v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v7

    add-int/2addr v1, v7

    iput v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 838
    move v7, v6

    move/from16 v27, v10

    move/from16 v25, v12

    move/from16 v1, v23

    move v6, v5

    move/from16 v5, p2

    goto/16 :goto_198

    .line 841
    :cond_56
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, v15, :cond_6d

    .line 842
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v2, v1

    .line 843
    move v7, v6

    move/from16 v27, v10

    move/from16 v25, v12

    move/from16 v1, v23

    move v6, v5

    move/from16 v5, p2

    goto/16 :goto_198

    .line 846
    :cond_6d
    add-int/lit8 v7, v23, 0x1

    .line 847
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v15

    if-eqz v15, :cond_7f

    .line 848
    iget v15, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v25, v1

    iget v1, v0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v15, v1

    iput v15, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_81

    .line 847
    :cond_7f
    move-object/from16 v25, v1

    .line 851
    :goto_81
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 853
    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v23, v3, v1

    .line 855
    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v1, :cond_99

    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v1, v1, v19

    if-lez v1, :cond_99

    move/from16 v26, v18

    goto :goto_9b

    :cond_99
    const/16 v26, 0x0

    .line 856
    :goto_9b
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v10, v1, :cond_c3

    if-eqz v26, :cond_c3

    .line 860
    iget v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 861
    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v1

    move/from16 v27, v2

    iget v2, v15, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 862
    nop

    .line 863
    move/from16 v28, v7

    move/from16 v17, v18

    move-object/from16 v3, v25

    move/from16 v2, v27

    move v7, v4

    move/from16 v27, v10

    move/from16 v25, v12

    move v12, v5

    move/from16 v5, p2

    goto :goto_11a

    .line 856
    :cond_c3
    move/from16 v27, v2

    .line 864
    if-eqz v26, :cond_ca

    .line 870
    const/4 v1, -0x2

    iput v1, v15, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 877
    :cond_ca
    cmpl-float v1, v23, v19

    if-nez v1, :cond_d6

    iget v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v29, v6

    move v6, v1

    move/from16 v1, v29

    goto :goto_d8

    :cond_d6
    move v1, v6

    const/4 v6, 0x0

    .line 878
    :goto_d8
    move v2, v4

    const/4 v4, 0x0

    move/from16 v3, p1

    move/from16 v28, v7

    move v7, v2

    move/from16 v2, v27

    move/from16 v27, v10

    move v10, v1

    move-object/from16 v1, v25

    move/from16 v25, v12

    move v12, v5

    move/from16 v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 881
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 882
    if-eqz v26, :cond_fa

    .line 886
    const/4 v6, 0x0

    iput v6, v15, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 887
    add-int v16, v16, v4

    .line 890
    :cond_fa
    iget v6, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 891
    add-int v26, v6, v4

    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v26, v26, v1

    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v26, v26, v1

    .line 892
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int v1, v26, v1

    .line 891
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 894
    if-eqz v25, :cond_119

    .line 895
    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_11a

    .line 894
    :cond_119
    move v6, v10

    .line 903
    :goto_11a
    if-ltz v11, :cond_124

    add-int/lit8 v1, v2, 0x1

    if-ne v11, v1, :cond_124

    .line 904
    iget v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    iput v1, v0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 910
    :cond_124
    if-ge v2, v11, :cond_135

    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v1, v1, v19

    if-gtz v1, :cond_12d

    goto :goto_135

    .line 911
    :cond_12d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 917
    :cond_135
    :goto_135
    nop

    .line 918
    const/high16 v1, 0x40000000    # 2.0f

    if-eq v9, v1, :cond_145

    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_145

    .line 923
    nop

    .line 924
    move/from16 v1, v18

    move/from16 v21, v1

    goto :goto_146

    .line 927
    :cond_145
    const/4 v1, 0x0

    :goto_146
    iget v4, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v10, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v10

    .line 928
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v4

    .line 929
    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 930
    move/from16 v24, v1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v14, v1}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v14

    .line 932
    if-eqz v20, :cond_16a

    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v26, v4

    const/4 v4, -0x1

    if-ne v1, v4, :cond_16c

    move/from16 v20, v18

    goto :goto_16e

    :cond_16a
    move/from16 v26, v4

    :cond_16c
    const/16 v20, 0x0

    .line 933
    :goto_16e
    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v1, v1, v19

    if-lez v1, :cond_181

    .line 938
    nop

    .line 939
    if-eqz v24, :cond_17a

    move/from16 v4, v26

    goto :goto_17b

    :cond_17a
    move v4, v10

    .line 938
    :goto_17b
    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v4, v7

    goto :goto_18d

    .line 941
    :cond_181
    nop

    .line 942
    if-eqz v24, :cond_187

    move/from16 v4, v26

    goto :goto_188

    :cond_187
    move v4, v10

    .line 941
    :goto_188
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v1, v12

    .line 945
    :goto_18d
    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v2, v3

    move v7, v6

    move/from16 v3, v23

    move v6, v1

    move/from16 v1, v28

    .line 834
    :goto_198
    add-int/lit8 v2, v2, 0x1

    move v5, v6

    move v6, v7

    move/from16 v12, v25

    move/from16 v10, v27

    const/4 v7, 0x0

    goto/16 :goto_35

    .line 948
    :cond_1a3
    move/from16 v23, v1

    move v7, v4

    move/from16 v27, v10

    move/from16 v25, v12

    move v12, v5

    move v10, v6

    move/from16 v5, p2

    if-lez v23, :cond_1bd

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_1bd

    .line 949
    iget v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v2, v0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 952
    :cond_1bd
    if-eqz v25, :cond_20d

    move/from16 v1, v27

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1c7

    if-nez v1, :cond_20f

    .line 954
    :cond_1c7
    const/4 v6, 0x0

    iput v6, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 956
    const/4 v2, 0x0

    :goto_1cb
    if-ge v2, v8, :cond_20f

    .line 957
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 958
    if-nez v4, :cond_1dd

    .line 959
    iget v4, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 960
    goto :goto_208

    .line 963
    :cond_1dd
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-ne v6, v15, :cond_1e9

    .line 964
    invoke-virtual {v0, v4, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v4

    add-int/2addr v2, v4

    .line 965
    goto :goto_208

    .line 968
    :cond_1e9
    nop

    .line 969
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 971
    iget v11, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 972
    add-int v22, v11, v10

    iget v15, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v22, v22, v15

    iget v6, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v22, v22, v6

    .line 973
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int v4, v22, v4

    .line 972
    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 956
    :goto_208
    add-int/lit8 v2, v2, 0x1

    const/16 v15, 0x8

    goto :goto_1cb

    .line 952
    :cond_20d
    move/from16 v1, v27

    .line 978
    :cond_20f
    iget v2, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v4, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v4, v6

    add-int/2addr v2, v4

    iput v2, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 980
    iget v2, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 983
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 986
    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v2

    .line 987
    const v4, 0xffffff

    and-int/2addr v4, v2

    .line 991
    iget v6, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v4, v6

    .line 992
    iget-boolean v6, v0, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v6, :cond_235

    const/16 v16, 0x0

    :cond_235
    add-int v4, v4, v16

    .line 993
    if-nez v17, :cond_286

    sget-boolean v6, Landroid/widget/LinearLayout;->sRemeasureWeightedChildren:Z

    if-nez v6, :cond_23f

    if-eqz v4, :cond_244

    :cond_23f
    cmpl-float v6, v3, v19

    if-lez v6, :cond_244

    goto :goto_286

    .line 1059
    :cond_244
    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1065
    if-eqz v25, :cond_282

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v1, v4, :cond_282

    .line 1066
    const/4 v7, 0x0

    :goto_24f
    if-ge v7, v8, :cond_282

    .line 1067
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1068
    if-eqz v1, :cond_27f

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v6, 0x8

    if-ne v4, v6, :cond_260

    .line 1069
    goto :goto_27f

    .line 1072
    :cond_260
    nop

    .line 1073
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1075
    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1076
    cmpl-float v4, v4, v19

    if-lez v4, :cond_27f

    .line 1077
    nop

    .line 1078
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1080
    invoke-static {v10, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1077
    invoke-virtual {v1, v4, v11}, Landroid/view/View;->measure(II)V

    .line 1066
    :cond_27f
    :goto_27f
    add-int/lit8 v7, v7, 0x1

    goto :goto_24f

    .line 1087
    :cond_282
    move/from16 v7, p1

    goto/16 :goto_3a4

    .line 995
    :cond_286
    :goto_286
    iget v6, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    cmpl-float v6, v6, v19

    if-lez v6, :cond_28e

    iget v3, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    .line 997
    :cond_28e
    const/4 v6, 0x0

    iput v6, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 999
    move v6, v4

    move v4, v7

    const/4 v7, 0x0

    :goto_294
    if-ge v7, v8, :cond_397

    .line 1000
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1001
    if-eqz v11, :cond_386

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v15, 0x8

    if-ne v12, v15, :cond_2ae

    .line 1002
    move/from16 v27, v1

    move/from16 v16, v3

    move/from16 v22, v7

    move/from16 v7, p1

    goto/16 :goto_38e

    .line 1005
    :cond_2ae
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 1006
    iget v15, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1007
    cmpl-float v16, v15, v19

    if-lez v16, :cond_324

    .line 1008
    move/from16 v16, v3

    int-to-float v3, v6

    mul-float/2addr v3, v15

    div-float v3, v3, v16

    float-to-int v3, v3

    .line 1009
    sub-int/2addr v6, v3

    .line 1010
    sub-float v15, v16, v15

    .line 1013
    move/from16 v17, v3

    iget-boolean v3, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    if-eqz v3, :cond_2d0

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v3, :cond_2d0

    .line 1014
    move v3, v10

    goto :goto_2e5

    .line 1015
    :cond_2d0
    iget v3, v12, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v3, :cond_2df

    iget-boolean v3, v0, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v3, :cond_2dc

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_2df

    .line 1019
    :cond_2dc
    move/from16 v3, v17

    goto :goto_2e5

    .line 1023
    :cond_2df
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, v17

    .line 1026
    :goto_2e5
    nop

    .line 1027
    move/from16 v27, v1

    const/4 v1, 0x0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1026
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1028
    iget v1, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move/from16 v16, v1

    iget v1, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int v1, v16, v1

    move/from16 v16, v1

    iget v1, v12, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v1, v16, v1

    move/from16 v16, v1

    iget v1, v12, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v1, v16, v1

    move/from16 v17, v6

    iget v6, v12, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v22, v7

    move/from16 v7, p1

    invoke-static {v7, v1, v6}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v1

    .line 1031
    invoke-virtual {v11, v1, v3}, Landroid/view/View;->measure(II)V

    .line 1034
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    and-int/lit16 v1, v1, -0x100

    invoke-static {v14, v1}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v14

    move v3, v15

    move/from16 v6, v17

    goto :goto_32c

    .line 1007
    :cond_324
    move/from16 v27, v1

    move/from16 v16, v3

    move/from16 v22, v7

    move/from16 v7, p1

    .line 1038
    :goto_32c
    iget v1, v12, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v15, v12, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v15

    .line 1039
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v1

    .line 1040
    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1042
    move/from16 v16, v1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v9, v1, :cond_34a

    iget v1, v12, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v17, v3

    const/4 v3, -0x1

    if-ne v1, v3, :cond_34c

    move/from16 v1, v18

    goto :goto_34d

    :cond_34a
    move/from16 v17, v3

    :cond_34c
    const/4 v1, 0x0

    .line 1045
    :goto_34d
    nop

    .line 1046
    if-eqz v1, :cond_353

    move/from16 v1, v16

    goto :goto_354

    :cond_353
    move v1, v15

    .line 1045
    :goto_354
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1048
    if-eqz v20, :cond_362

    iget v3, v12, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v15, -0x1

    if-ne v3, v15, :cond_363

    move/from16 v3, v18

    goto :goto_364

    :cond_362
    const/4 v15, -0x1

    :cond_363
    const/4 v3, 0x0

    .line 1050
    :goto_364
    iget v4, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1051
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v16, v4, v16

    iget v15, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v16, v16, v15

    iget v12, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v16, v16, v12

    .line 1052
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v11

    add-int v11, v16, v11

    .line 1051
    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v4, v1

    move/from16 v20, v3

    move/from16 v3, v17

    goto :goto_390

    .line 1001
    :cond_386
    move/from16 v27, v1

    move/from16 v16, v3

    move/from16 v22, v7

    move/from16 v7, p1

    .line 999
    :goto_38e
    move/from16 v3, v16

    :goto_390
    add-int/lit8 v1, v22, 0x1

    move v7, v1

    move/from16 v1, v27

    goto/16 :goto_294

    .line 1056
    :cond_397
    move/from16 v7, p1

    iget v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v3, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v3, v6

    add-int/2addr v1, v3

    iput v1, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1058
    move v3, v4

    .line 1087
    :goto_3a4
    if-nez v20, :cond_3ab

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v9, v1, :cond_3ab

    .line 1088
    goto :goto_3ac

    .line 1091
    :cond_3ab
    move v3, v13

    :goto_3ac
    iget v1, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    iget v4, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v1, v4

    add-int/2addr v3, v1

    .line 1094
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1096
    invoke-static {v1, v7, v14}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 1099
    if-eqz v21, :cond_3c6

    .line 1100
    invoke-direct {v0, v8, v5}, Landroid/widget/LinearLayout;->forceUniformWidth(II)V

    .line 1102
    :cond_3c6
    return-void
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 424
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    .line 425
    return-void

    .line 428
    :cond_5
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 429
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->drawDividersVertical(Landroid/graphics/Canvas;)V

    goto :goto_11

    .line 431
    :cond_e
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    .line 433
    :goto_11
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 7

    .line 1637
    iget p1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    .line 1638
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/LinearLayout;->layoutVertical(IIII)V

    goto :goto_c

    .line 1640
    :cond_9
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/LinearLayout;->layoutHorizontal(IIII)V

    .line 1642
    :goto_c
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 5

    .line 720
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 721
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureVertical(II)V

    goto :goto_c

    .line 723
    :cond_9
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    .line 725
    :goto_c
    return-void
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .registers 3

    .line 1740
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 1741
    iget v0, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    if-eq p1, v0, :cond_10

    .line 1742
    iput p1, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    .line 1743
    iget p1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-nez p1, :cond_10

    .line 1744
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1747
    :cond_10
    return-void
.end method

.method public whitelist setBaselineAligned(Z)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 549
    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 550
    return-void
.end method

.method public whitelist setBaselineAlignedChildIndex(I)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 655
    if-ltz p1, :cond_b

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_b

    .line 659
    iput p1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 660
    return-void

    .line 656
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "base aligned child index out of range (0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 657
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 363
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_5

    .line 364
    return-void

    .line 366
    :cond_5
    iput-object p1, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 367
    if-eqz p1, :cond_16

    .line 368
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    .line 369
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    goto :goto_1b

    .line 371
    :cond_16
    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    .line 372
    iput p1, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    .line 375
    :goto_1b
    invoke-direct {p0}, Landroid/widget/LinearLayout;->isShowingDividers()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 376
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 377
    return-void
.end method

.method public whitelist setDividerPadding(I)V
    .registers 3

    .line 391
    iget v0, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    if-ne p1, v0, :cond_5

    .line 392
    return-void

    .line 394
    :cond_5
    iput p1, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    .line 396
    invoke-direct {p0}, Landroid/widget/LinearLayout;->isShowingDividers()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 397
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 398
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 400
    :cond_13
    return-void
.end method

.method public whitelist setGravity(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1934
    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    if-eq v0, p1, :cond_19

    .line 1935
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_e

    .line 1936
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 1939
    :cond_e
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_14

    .line 1940
    or-int/lit8 p1, p1, 0x30

    .line 1943
    :cond_14
    iput p1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1944
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1946
    :cond_19
    return-void
.end method

.method public whitelist setHorizontalGravity(I)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1961
    const v0, 0x800007

    and-int/2addr p1, v0

    .line 1962
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/2addr v0, v1

    if-eq v0, p1, :cond_15

    .line 1963
    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    const v1, -0x800008

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    iput p1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1964
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1966
    :cond_15
    return-void
.end method

.method public whitelist setMeasureWithLargestChildEnabled(Z)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 581
    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    .line 582
    return-void
.end method

.method public whitelist setOrientation(I)V
    .registers 3

    .line 1902
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-eq v0, p1, :cond_9

    .line 1903
    iput p1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    .line 1904
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1906
    :cond_9
    return-void
.end method

.method public whitelist setShowDividers(I)V
    .registers 3

    .line 318
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    if-ne p1, v0, :cond_5

    .line 319
    return-void

    .line 321
    :cond_5
    iput p1, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    .line 323
    invoke-direct {p0}, Landroid/widget/LinearLayout;->isShowingDividers()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 324
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 325
    return-void
.end method

.method public whitelist setVerticalGravity(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1970
    and-int/lit8 p1, p1, 0x70

    .line 1971
    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v0, v0, 0x70

    if-eq v0, p1, :cond_12

    .line 1972
    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v0, v0, -0x71

    or-int/2addr p1, v0

    iput p1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1973
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1975
    :cond_12
    return-void
.end method

.method public whitelist setWeightSum(F)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 715
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    .line 716
    return-void
.end method

.method public whitelist shouldDelayChildPressedState()Z
    .registers 2

    .line 329
    const/4 v0, 0x0

    return v0
.end method
