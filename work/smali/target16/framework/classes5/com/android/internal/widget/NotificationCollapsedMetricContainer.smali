.class public Lcom/android/internal/widget/NotificationCollapsedMetricContainer;
.super Landroid/widget/LinearLayout;
.source "NotificationCollapsedMetricContainer.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    return-void
.end method


# virtual methods
.method protected whitelist onMeasure(II)V
    .registers 11

    .line 57
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 58
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 59
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationCollapsedMetricContainer;->getChildCount()I

    move-result p2

    .line 60
    nop

    .line 61
    nop

    .line 62
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_10
    if-ge v0, p2, :cond_44

    .line 63
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationCollapsedMetricContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 64
    if-eqz v3, :cond_41

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_21

    .line 65
    goto :goto_41

    .line 68
    :cond_21
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 69
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 70
    invoke-virtual {v4}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v4}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v4

    add-int/2addr v6, v4

    .line 71
    if-nez v1, :cond_3d

    add-int/2addr v6, v2

    if-le v6, p1, :cond_3b

    goto :goto_3d

    .line 75
    :cond_3b
    move v2, v6

    goto :goto_41

    .line 72
    :cond_3d
    :goto_3d
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 73
    const/4 v1, 0x1

    .line 62
    :cond_41
    :goto_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 78
    :cond_44
    return-void
.end method
