.class Lcom/android/internal/widget/ActionBarView$HomeView;
.super Landroid/widget/FrameLayout;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HomeView"
.end annotation


# static fields
.field private static final blacklist DEFAULT_TRANSITION_DURATION:J = 0x96L


# instance fields
.field private blacklist mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

.field private blacklist mIconView:Landroid/widget/ImageView;

.field private blacklist mStartOffset:I

.field private blacklist mUpIndicator:Landroid/graphics/drawable/Drawable;

.field private blacklist mUpIndicatorRes:I

.field private blacklist mUpView:Landroid/widget/ImageView;

.field private blacklist mUpWidth:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 1398
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1399
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 1402
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1403
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    .line 1404
    if-eqz p1, :cond_e

    .line 1406
    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 1408
    :cond_e
    return-void
.end method

.method private blacklist updateUpIndicator()V
    .registers 4

    .line 1440
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 1441
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_27

    .line 1442
    :cond_c
    iget v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    if-eqz v0, :cond_20

    .line 1443
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_27

    .line 1445
    :cond_20
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1447
    :goto_27
    return-void
.end method


# virtual methods
.method public whitelist dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 1476
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public blacklist dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 2

    .line 1460
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1461
    const/4 p1, 0x1

    return p1
.end method

.method public blacklist getStartOffset()I
    .registers 3

    .line 1487
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_d

    iget v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mStartOffset:I

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public blacklist getUpWidth()I
    .registers 2

    .line 1491
    iget v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    return v0
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1451
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1452
    iget p1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    if-eqz p1, :cond_a

    .line 1454
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->updateUpIndicator()V

    .line 1456
    :cond_a
    return-void
.end method

.method protected whitelist onFinishInflate()V
    .registers 2

    .line 1481
    const v0, 0x10205df

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 1482
    const v0, 0x102002c

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 1483
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 1484
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 12

    .line 1547
    sub-int/2addr p5, p3

    div-int/lit8 p5, p5, 0x2

    .line 1548
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->isLayoutRtl()Z

    move-result p1

    .line 1549
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getWidth()I

    move-result p3

    .line 1550
    nop

    .line 1551
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_47

    .line 1552
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1553
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    .line 1554
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    .line 1555
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v3

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v0

    .line 1556
    div-int/lit8 v0, v1, 0x2

    sub-int v0, p5, v0

    .line 1557
    add-int/2addr v1, v0

    .line 1560
    if-eqz p1, :cond_3e

    .line 1561
    nop

    .line 1562
    sub-int v2, p3, v3

    .line 1563
    sub-int/2addr p4, v4

    move v3, p3

    goto :goto_41

    .line 1565
    :cond_3e
    nop

    .line 1566
    nop

    .line 1567
    add-int/2addr p2, v4

    .line 1569
    :goto_41
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v5, v2, v0, v3, v1}, Landroid/widget/ImageView;->layout(IIII)V

    move v2, v4

    .line 1572
    :cond_47
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1573
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    .line 1574
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    .line 1575
    sub-int/2addr p4, p2

    div-int/lit8 p4, p4, 0x2

    .line 1576
    iget p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr p5, v4

    invoke-static {p2, p5}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1577
    add-int/2addr v1, p2

    .line 1580
    invoke-virtual {v0}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result p5

    .line 1581
    div-int/lit8 v0, v3, 0x2

    sub-int/2addr p4, v0

    invoke-static {p5, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 1582
    if-eqz p1, :cond_7a

    .line 1583
    sub-int/2addr p3, v2

    sub-int/2addr p3, p4

    .line 1584
    sub-int p1, p3, v3

    goto :goto_7e

    .line 1586
    :cond_7a
    add-int p1, v2, p4

    .line 1587
    add-int p3, p1, v3

    .line 1589
    :goto_7e
    iget-object p4, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p4, p1, p2, p3, v1}, Landroid/widget/ImageView;->layout(IIII)V

    .line 1590
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 15

    .line 1496
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarView$HomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1497
    iget-object p1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1498
    iget p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr p2, v1

    .line 1499
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    .line 1500
    iget v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mStartOffset:I

    .line 1501
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_30

    const/4 v1, 0x0

    goto :goto_32

    :cond_30
    iget v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mStartOffset:I

    :goto_32
    move v9, v1

    .line 1502
    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v1, v5

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, p1

    .line 1504
    iget-object p1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eq p1, v3, :cond_76

    .line 1505
    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    const/4 v11, 0x0

    move-object v6, v0

    move v8, v2

    move v10, v4

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/widget/ActionBarView$HomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1506
    iget-object p1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1507
    iget p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr p2, v3

    iget v3, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr p2, v3

    add-int/2addr v9, p2

    .line 1508
    iget p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 1509
    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr p2, v3

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr p2, p1

    .line 1508
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_7a

    .line 1510
    :cond_76
    if-gez p2, :cond_7a

    .line 1512
    sub-int/2addr v9, p2

    goto :goto_7b

    .line 1510
    :cond_7a
    :goto_7a
    nop

    .line 1515
    :goto_7b
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 1516
    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 1517
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1518
    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 1520
    sparse-switch p1, :sswitch_data_a8

    goto :goto_97

    .line 1525
    :sswitch_8f
    nop

    .line 1526
    move v9, v2

    goto :goto_97

    .line 1522
    :sswitch_92
    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1523
    nop

    .line 1531
    :goto_97
    sparse-switch p2, :sswitch_data_b2

    goto :goto_a3

    .line 1536
    :sswitch_9b
    nop

    .line 1537
    move v1, v3

    goto :goto_a3

    .line 1533
    :sswitch_9e
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1534
    nop

    .line 1542
    :goto_a3
    invoke-virtual {p0, v9, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setMeasuredDimension(II)V

    .line 1543
    return-void

    nop

    :sswitch_data_a8
    .sparse-switch
        -0x80000000 -> :sswitch_92
        0x40000000 -> :sswitch_8f
    .end sparse-switch

    :sswitch_data_b2
    .sparse-switch
        -0x80000000 -> :sswitch_9e
        0x40000000 -> :sswitch_9b
    .end sparse-switch
.end method

.method public blacklist onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 1466
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1467
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1468
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 1469
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1471
    :cond_14
    return-void
.end method

.method public blacklist setDefaultUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1429
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 1430
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->updateUpIndicator()V

    .line 1431
    return-void
.end method

.method public blacklist setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1419
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1420
    return-void
.end method

.method public blacklist setShowIcon(Z)V
    .registers 3

    .line 1415
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    const/16 p1, 0x8

    :goto_8
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1416
    return-void
.end method

.method public blacklist setShowUp(Z)V
    .registers 3

    .line 1411
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    const/16 p1, 0x8

    :goto_8
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1412
    return-void
.end method

.method public blacklist setUpIndicator(I)V
    .registers 2

    .line 1434
    iput p1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    .line 1435
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 1436
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->updateUpIndicator()V

    .line 1437
    return-void
.end method

.method public blacklist setUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1423
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 1424
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    .line 1425
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->updateUpIndicator()V

    .line 1426
    return-void
.end method
