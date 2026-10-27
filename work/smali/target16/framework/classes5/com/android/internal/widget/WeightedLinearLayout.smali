.class public Lcom/android/internal/widget/WeightedLinearLayout;
.super Landroid/widget/LinearLayout;
.source "WeightedLinearLayout.java"


# instance fields
.field private blacklist mMajorWeightMax:F

.field private blacklist mMajorWeightMin:F

.field private blacklist mMinorWeightMax:F

.field private blacklist mMinorWeightMin:F


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    sget-object v0, Lcom/android/internal/R$styleable;->WeightedLinearLayout:[I

    .line 46
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 48
    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMajorWeightMin:F

    .line 49
    const/4 p2, 0x3

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMinorWeightMin:F

    .line 50
    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMajorWeightMax:F

    .line 51
    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMinorWeightMax:F

    .line 53
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    return-void
.end method


# virtual methods
.method protected whitelist onMeasure(II)V
    .registers 12

    .line 58
    invoke-virtual {p0}, Lcom/android/internal/widget/WeightedLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 59
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 60
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v1, v0, :cond_16

    move v0, v3

    goto :goto_17

    :cond_16
    move v0, v2

    .line 62
    :goto_17
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 64
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 66
    invoke-virtual {p0}, Lcom/android/internal/widget/WeightedLinearLayout;->getMeasuredWidth()I

    move-result p1

    .line 67
    nop

    .line 69
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 71
    if-eqz v0, :cond_2e

    iget v7, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMinorWeightMin:F

    goto :goto_30

    :cond_2e
    iget v7, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMajorWeightMin:F

    .line 72
    :goto_30
    if-eqz v0, :cond_35

    iget v0, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMinorWeightMax:F

    goto :goto_37

    :cond_35
    iget v0, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMajorWeightMax:F

    .line 73
    :goto_37
    const/high16 v8, -0x80000000

    if-ne v4, v8, :cond_57

    .line 74
    int-to-float v1, v1

    mul-float/2addr v1, v7

    float-to-int v1, v1

    .line 75
    nop

    .line 76
    const/4 v4, 0x0

    cmpl-float v7, v7, v4

    if-lez v7, :cond_4c

    if-ge p1, v1, :cond_4c

    .line 77
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 78
    move v2, v3

    goto :goto_57

    .line 79
    :cond_4c
    cmpl-float v0, v0, v4

    if-lez v0, :cond_57

    if-le p1, v1, :cond_57

    .line 80
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 81
    move v2, v3

    .line 87
    :cond_57
    :goto_57
    if-eqz v2, :cond_5c

    .line 88
    invoke-super {p0, v6, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 90
    :cond_5c
    return-void
.end method
