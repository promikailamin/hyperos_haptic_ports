.class public Lcom/android/internal/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "ButtonBarLayout.java"


# static fields
.field private static final blacklist PEEK_BUTTON_DP:I = 0x10


# instance fields
.field private blacklist mAllowStacking:Z

.field private blacklist mLastWidthSize:I

.field private blacklist mMinimumHeight:I


# direct methods
.method public constructor greylist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mMinimumHeight:I

    .line 48
    sget-object v1, Lcom/android/internal/R$styleable;->ButtonBarLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 49
    const/4 p2, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 50
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    return-void
.end method

.method private blacklist getNextVisibleChildIndex(I)I
    .registers 4

    .line 134
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getChildCount()I

    move-result v0

    :goto_4
    if-ge p1, v0, :cond_14

    .line 135
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_11

    .line 136
    return p1

    .line 134
    :cond_11
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 139
    :cond_14
    const/4 p1, -0x1

    return p1
.end method

.method private blacklist isStacked()Z
    .registers 3

    .line 165
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method private blacklist setStacked(Z)V
    .registers 3

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ButtonBarLayout;->setOrientation(I)V

    .line 149
    if-eqz p1, :cond_9

    const v0, 0x800005

    goto :goto_b

    :cond_9
    const/16 v0, 0x50

    :goto_b
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ButtonBarLayout;->setGravity(I)V

    .line 151
    const v0, 0x102053e

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_20

    .line 153
    if-eqz p1, :cond_1c

    const/16 p1, 0x8

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x4

    :goto_1d
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    :cond_20
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getChildCount()I

    move-result p1

    .line 159
    add-int/lit8 p1, p1, -0x2

    :goto_26
    if-ltz p1, :cond_32

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    .line 159
    add-int/lit8 p1, p1, -0x1

    goto :goto_26

    .line 162
    :cond_32
    return-void
.end method


# virtual methods
.method public whitelist getMinimumHeight()I
    .registers 3

    .line 144
    iget v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mMinimumHeight:I

    invoke-super {p0}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected whitelist onMeasure(II)V
    .registers 8

    .line 65
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 67
    iget-boolean v1, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 68
    iget v1, p0, Lcom/android/internal/widget/ButtonBarLayout;->mLastWidthSize:I

    if-le v0, v1, :cond_16

    invoke-direct {p0}, Lcom/android/internal/widget/ButtonBarLayout;->isStacked()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 70
    invoke-direct {p0, v2}, Lcom/android/internal/widget/ButtonBarLayout;->setStacked(Z)V

    .line 73
    :cond_16
    iput v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 76
    :cond_18
    nop

    .line 82
    invoke-direct {p0}, Lcom/android/internal/widget/ButtonBarLayout;->isStacked()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_30

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v1, v4, :cond_30

    .line 83
    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 86
    move v1, v3

    goto :goto_32

    .line 88
    :cond_30
    move v0, p1

    move v1, v2

    .line 91
    :goto_32
    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 93
    iget-boolean v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v0, :cond_4e

    invoke-direct {p0}, Lcom/android/internal/widget/ButtonBarLayout;->isStacked()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 94
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getMeasuredWidthAndState()I

    move-result v0

    .line 95
    const/high16 v4, -0x1000000

    and-int/2addr v0, v4

    .line 96
    const/high16 v4, 0x1000000

    if-ne v0, v4, :cond_4e

    .line 97
    invoke-direct {p0, v3}, Lcom/android/internal/widget/ButtonBarLayout;->setStacked(Z)V

    .line 100
    move v1, v3

    .line 104
    :cond_4e
    if-eqz v1, :cond_53

    .line 105
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 110
    :cond_53
    nop

    .line 111
    invoke-direct {p0, v2}, Lcom/android/internal/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    move-result p1

    .line 112
    if-ltz p1, :cond_a5

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 114
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 115
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr v1, p2

    iget p2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, p2

    iget p2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, p2

    add-int/2addr v1, v2

    .line 117
    invoke-direct {p0}, Lcom/android/internal/widget/ButtonBarLayout;->isStacked()Z

    move-result p2

    if-eqz p2, :cond_9f

    .line 118
    add-int/2addr p1, v3

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    move-result p1

    .line 119
    if-ltz p1, :cond_9d

    .line 120
    int-to-float p2, v1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    int-to-float p1, p1

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v0, v1

    add-float/2addr p1, v0

    add-float/2addr p2, p1

    float-to-int p1, p2

    move v2, p1

    goto :goto_9e

    .line 119
    :cond_9d
    move v2, v1

    .line 123
    :goto_9e
    goto :goto_a5

    .line 124
    :cond_9f
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getPaddingBottom()I

    move-result p1

    add-int v2, v1, p1

    .line 128
    :cond_a5
    :goto_a5
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getMinimumHeight()I

    move-result p1

    if-eq p1, v2, :cond_ae

    .line 129
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ButtonBarLayout;->setMinimumHeight(I)V

    .line 131
    :cond_ae
    return-void
.end method

.method public blacklist setAllowStacking(Z)V
    .registers 3

    .line 54
    iget-boolean v0, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eq v0, p1, :cond_18

    .line 55
    iput-boolean p1, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 56
    iget-boolean p1, p0, Lcom/android/internal/widget/ButtonBarLayout;->mAllowStacking:Z

    if-nez p1, :cond_15

    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->getOrientation()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_15

    .line 57
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ButtonBarLayout;->setStacked(Z)V

    .line 59
    :cond_15
    invoke-virtual {p0}, Lcom/android/internal/widget/ButtonBarLayout;->requestLayout()V

    .line 61
    :cond_18
    return-void
.end method
