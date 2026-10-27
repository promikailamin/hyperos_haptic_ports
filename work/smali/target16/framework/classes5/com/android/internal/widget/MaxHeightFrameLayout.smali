.class public Lcom/android/internal/widget/MaxHeightFrameLayout;
.super Landroid/widget/FrameLayout;
.source "MaxHeightFrameLayout.java"


# instance fields
.field private blacklist mMaxHeight:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/MaxHeightFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/MaxHeightFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/MaxHeightFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 14

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/internal/widget/MaxHeightFrameLayout;->mMaxHeight:I

    .line 56
    sget-object v1, Lcom/android/internal/R$styleable;->MaxHeightFrameLayout:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 58
    sget-object v4, Lcom/android/internal/R$styleable;->MaxHeightFrameLayout:[I

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/widget/MaxHeightFrameLayout;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 61
    const/4 p1, 0x0

    invoke-virtual {v6, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MaxHeightFrameLayout;->setMaxHeight(I)V

    .line 63
    return-void
.end method


# virtual methods
.method public blacklist getMaxHeight()I
    .registers 2

    .line 74
    iget v0, p0, Lcom/android/internal/widget/MaxHeightFrameLayout;->mMaxHeight:I

    return v0
.end method

.method protected whitelist onMeasure(II)V
    .registers 5

    .line 92
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/MaxHeightFrameLayout;->mMaxHeight:I

    if-le v0, v1, :cond_12

    .line 93
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 94
    iget v0, p0, Lcom/android/internal/widget/MaxHeightFrameLayout;->mMaxHeight:I

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 96
    :cond_12
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 97
    return-void
.end method

.method public blacklist setMaxHeight(I)V
    .registers 2

    .line 87
    iput p1, p0, Lcom/android/internal/widget/MaxHeightFrameLayout;->mMaxHeight:I

    .line 88
    return-void
.end method
