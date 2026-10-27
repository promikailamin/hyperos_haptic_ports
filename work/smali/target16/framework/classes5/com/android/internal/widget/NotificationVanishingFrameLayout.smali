.class public Lcom/android/internal/widget/NotificationVanishingFrameLayout;
.super Landroid/widget/FrameLayout;
.source "NotificationVanishingFrameLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4

    .line 33
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/internal/widget/NotificationVanishingFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/internal/widget/NotificationVanishingFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/NotificationVanishingFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    return-void
.end method

.method private blacklist allChildrenGone()Z
    .registers 6

    .line 61
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationVanishingFrameLayout;->getChildCount()I

    move-result v0

    .line 62
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_1a

    .line 63
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/NotificationVanishingFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 64
    if-eqz v3, :cond_17

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_17

    .line 65
    return v1

    .line 62
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 68
    :cond_1a
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected whitelist onMeasure(II)V
    .registers 4

    .line 52
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationVanishingFrameLayout;->allChildrenGone()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 53
    const/4 p1, 0x0

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 54
    invoke-super {p0, p1, p1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 55
    goto :goto_14

    .line 56
    :cond_11
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 58
    :goto_14
    return-void
.end method
