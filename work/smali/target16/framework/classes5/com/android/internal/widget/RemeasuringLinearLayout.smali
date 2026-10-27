.class public Lcom/android/internal/widget/RemeasuringLinearLayout;
.super Lcom/android/internal/widget/NotificationOptimizedLinearLayout;
.source "RemeasuringLinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private blacklist mMatchParentViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/RemeasuringLinearLayout;->mMatchParentViews:Ljava/util/ArrayList;

    .line 39
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/RemeasuringLinearLayout;->mMatchParentViews:Ljava/util/ArrayList;

    .line 43
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/RemeasuringLinearLayout;->mMatchParentViews:Ljava/util/ArrayList;

    .line 48
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/RemeasuringLinearLayout;->mMatchParentViews:Ljava/util/ArrayList;

    .line 53
    return-void
.end method


# virtual methods
.method protected whitelist onMeasure(II)V
    .registers 11

    .line 57
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->onMeasure(II)V

    .line 58
    invoke-virtual {p0}, Lcom/android/internal/widget/RemeasuringLinearLayout;->getChildCount()I

    move-result p2

    .line 59
    nop

    .line 60
    invoke-virtual {p0}, Lcom/android/internal/widget/RemeasuringLinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_12

    move v0, v2

    goto :goto_13

    :cond_12
    move v0, v1

    .line 61
    :goto_13
    invoke-virtual {p0}, Lcom/android/internal/widget/RemeasuringLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_1d

    goto :goto_1e

    :cond_1d
    move v2, v1

    .line 62
    :goto_1e
    move v3, v1

    :goto_1f
    if-ge v1, p2, :cond_5b

    .line 63
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RemeasuringLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 64
    if-eqz v4, :cond_58

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_30

    .line 65
    goto :goto_58

    .line 68
    :cond_30
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 69
    if-eqz v2, :cond_46

    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_46

    if-eqz v0, :cond_40

    goto :goto_46

    .line 75
    :cond_40
    iget-object v5, p0, Lcom/android/internal/widget/RemeasuringLinearLayout;->mMatchParentViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 70
    :cond_46
    :goto_46
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v6

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    .line 71
    if-eqz v0, :cond_53

    add-int/2addr v4, v3

    :cond_53
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 72
    nop

    .line 62
    :cond_58
    :goto_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 78
    :cond_5b
    iget-object p2, p0, Lcom/android/internal/widget/RemeasuringLinearLayout;->mMatchParentViews:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_93

    .line 79
    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {v3, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 80
    iget-object v0, p0, Lcom/android/internal/widget/RemeasuringLinearLayout;->mMatchParentViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_93

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 81
    nop

    .line 82
    invoke-virtual {p0}, Lcom/android/internal/widget/RemeasuringLinearLayout;->getPaddingStart()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RemeasuringLinearLayout;->getPaddingEnd()I

    move-result v4

    add-int/2addr v2, v4

    .line 83
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 81
    invoke-static {p1, v2, v4}, Lcom/android/internal/widget/RemeasuringLinearLayout;->getChildMeasureSpec(III)I

    move-result v2

    invoke-virtual {v1, v2, p2}, Landroid/view/View;->measure(II)V

    .line 85
    goto :goto_6f

    .line 87
    :cond_93
    iget-object p1, p0, Lcom/android/internal/widget/RemeasuringLinearLayout;->mMatchParentViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 88
    invoke-virtual {p0}, Lcom/android/internal/widget/RemeasuringLinearLayout;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0, p1, v3}, Lcom/android/internal/widget/RemeasuringLinearLayout;->setMeasuredDimension(II)V

    .line 89
    return-void
.end method
