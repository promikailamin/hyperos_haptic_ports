.class public Lcom/android/internal/widget/ConversationHeaderLinearLayout;
.super Landroid/widget/LinearLayout;
.source "ConversationHeaderLinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method private blacklist calculateTotalChildLength()I
    .registers 7

    .line 55
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationHeaderLinearLayout;->getChildCount()I

    move-result v0

    .line 56
    nop

    .line 58
    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v1, v0, :cond_2d

    .line 59
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ConversationHeaderLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 60
    if-eqz v3, :cond_2a

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_18

    .line 61
    goto :goto_2a

    .line 63
    :cond_18
    nop

    .line 64
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 65
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 58
    :cond_2a
    :goto_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 67
    :cond_2d
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationHeaderLinearLayout;->getPaddingLeft()I

    move-result v0

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationHeaderLinearLayout;->getPaddingRight()I

    move-result v0

    add-int/2addr v2, v0

    return v2
.end method

.method private blacklist remeasureChangedChildren(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;",
            ">;)V"
        }
    .end annotation

    .line 116
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;

    .line 117
    iget v1, v0, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mWidth:I

    iget v2, v0, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mStartWidth:I

    if-eq v1, v2, :cond_32

    .line 118
    iget v1, v0, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mWidth:I

    .line 119
    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 118
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 120
    iget-object v3, v0, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mView:Landroid/view/View;

    .line 121
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 120
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 122
    iget-object v0, v0, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 124
    :cond_32
    goto :goto_4

    .line 125
    :cond_33
    return-void
.end method


# virtual methods
.method blacklist balanceViewWidths(Ljava/util/List;FI)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;",
            ">;FI)V"
        }
    .end annotation

    .line 133
    const/4 v0, 0x1

    move v1, v0

    .line 138
    :goto_2
    if-eqz v1, :cond_50

    if-lez p3, :cond_50

    const/4 v1, 0x0

    cmpl-float v2, p2, v1

    if-lez v2, :cond_50

    .line 139
    nop

    .line 140
    nop

    .line 141
    nop

    .line 142
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v1

    move v5, v3

    move v6, v5

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;

    .line 143
    iget v8, v7, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mWeight:F

    cmpg-float v8, v8, v1

    if-gtz v8, :cond_29

    .line 144
    goto :goto_16

    .line 146
    :cond_29
    iget v8, v7, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mWidth:I

    if-gtz v8, :cond_2e

    .line 147
    goto :goto_16

    .line 149
    :cond_2e
    iget v8, v7, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mWidth:I

    int-to-float v8, v8

    int-to-float v9, p3

    iget v10, v7, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mWeight:F

    div-float/2addr v10, p2

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v8, v8

    .line 150
    if-gez v8, :cond_3d

    .line 151
    nop

    .line 152
    move v5, v0

    move v8, v3

    .line 154
    :cond_3d
    iget v9, v7, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mWidth:I

    sub-int/2addr v9, v8

    add-int/2addr v6, v9

    .line 155
    iput v8, v7, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mWidth:I

    .line 156
    iget v8, v7, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mWidth:I

    if-lez v8, :cond_4a

    .line 157
    iget v7, v7, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mWeight:F

    add-float/2addr v4, v7

    .line 159
    :cond_4a
    goto :goto_16

    .line 160
    :cond_4b
    sub-int/2addr p3, v6

    .line 161
    nop

    .line 162
    move p2, v4

    move v1, v5

    goto :goto_2

    .line 163
    :cond_50
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 10

    .line 72
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 74
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationHeaderLinearLayout;->getMeasuredWidth()I

    move-result p1

    .line 75
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationHeaderLinearLayout;->calculateTotalChildLength()I

    move-result p2

    .line 77
    sub-int/2addr p2, p1

    .line 78
    if-gtz p2, :cond_f

    .line 79
    return-void

    .line 81
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationHeaderLinearLayout;->getChildCount()I

    move-result p1

    .line 83
    nop

    .line 84
    nop

    .line 87
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v0

    :goto_19
    if-ge v2, p1, :cond_55

    .line 88
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationHeaderLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 89
    if-eqz v4, :cond_52

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_2a

    .line 90
    goto :goto_52

    .line 92
    :cond_2a
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 93
    cmpl-float v6, v5, v0

    if-nez v6, :cond_37

    .line 94
    goto :goto_52

    .line 96
    :cond_37
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-nez v6, :cond_3e

    .line 97
    goto :goto_52

    .line 99
    :cond_3e
    if-nez v1, :cond_45

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    :cond_45
    new-instance v6, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;

    invoke-direct {v6, v4}, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;-><init>(Landroid/view/View;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-float/2addr v3, v4

    .line 87
    :cond_52
    :goto_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 105
    :cond_55
    if-eqz v1, :cond_65

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5e

    goto :goto_65

    .line 108
    :cond_5e
    invoke-virtual {p0, v1, v3, p2}, Lcom/android/internal/widget/ConversationHeaderLinearLayout;->balanceViewWidths(Ljava/util/List;FI)V

    .line 109
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ConversationHeaderLinearLayout;->remeasureChangedChildren(Ljava/util/List;)V

    .line 110
    return-void

    .line 106
    :cond_65
    :goto_65
    return-void
.end method
