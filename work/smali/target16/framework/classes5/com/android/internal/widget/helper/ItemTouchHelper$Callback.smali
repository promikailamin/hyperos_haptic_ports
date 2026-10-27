.class public abstract Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# static fields
.field private static final blacklist ABS_HORIZONTAL_DIR_FLAGS:I = 0xc0c0c

.field public static final blacklist DEFAULT_DRAG_ANIMATION_DURATION:I = 0xc8

.field public static final blacklist DEFAULT_SWIPE_ANIMATION_DURATION:I = 0xfa

.field private static final blacklist DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS:J = 0x7d0L

.field static final blacklist RELATIVE_DIR_FLAGS:I = 0x303030

.field private static final blacklist sDragScrollInterpolator:Landroid/view/animation/Interpolator;

.field private static final blacklist sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

.field private static final blacklist sUICallback:Lcom/android/internal/widget/helper/ItemTouchUIUtil;


# instance fields
.field private blacklist mCachedMaxScrollSpeed:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1355
    new-instance v0, Lcom/android/internal/widget/helper/ItemTouchUIUtilImpl;

    invoke-direct {v0}, Lcom/android/internal/widget/helper/ItemTouchUIUtilImpl;-><init>()V

    sput-object v0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->sUICallback:Lcom/android/internal/widget/helper/ItemTouchUIUtil;

    .line 1361
    new-instance v0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback$1;

    invoke-direct {v0}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->sDragScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 1368
    new-instance v0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback$2;

    invoke-direct {v0}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback$2;-><init>()V

    sput-object v0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 1345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1381
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    return-void
.end method

.method public static blacklist convertToRelativeDirection(II)I
    .registers 5

    .line 1439
    const v0, 0xc0c0c

    and-int v1, p0, v0

    .line 1440
    if-nez v1, :cond_8

    .line 1441
    return p0

    .line 1443
    :cond_8
    not-int v2, v1

    and-int/2addr p0, v2

    .line 1444
    if-nez p1, :cond_10

    .line 1446
    shl-int/lit8 p1, v1, 0x2

    or-int/2addr p0, p1

    .line 1447
    return p0

    .line 1450
    :cond_10
    shl-int/lit8 p1, v1, 0x1

    const v1, -0xc0c0d

    and-int/2addr v1, p1

    or-int/2addr p0, v1

    .line 1452
    and-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x2

    or-int/2addr p0, p1

    .line 1454
    return p0
.end method

.method public static blacklist getDefaultUIUtil()Lcom/android/internal/widget/helper/ItemTouchUIUtil;
    .registers 1

    .line 1424
    sget-object v0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->sUICallback:Lcom/android/internal/widget/helper/ItemTouchUIUtil;

    return-object v0
.end method

.method private blacklist getMaxDragScroll(Lcom/android/internal/widget/RecyclerView;)I
    .registers 4

    .line 1849
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    .line 1850
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x105020e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    .line 1853
    :cond_12
    iget p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    return p1
.end method

.method public static blacklist makeFlag(II)I
    .registers 2

    .line 1485
    mul-int/lit8 p0, p0, 0x8

    shl-int p0, p1, p0

    return p0
.end method

.method public static blacklist makeMovementFlags(II)I
    .registers 4

    .line 1469
    const/4 v0, 0x0

    or-int v1, p1, p0

    invoke-static {v0, v1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result v0

    .line 1470
    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result p1

    or-int/2addr p1, v0

    .line 1471
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result p0

    or-int/2addr p0, p1

    .line 1469
    return p0
.end method


# virtual methods
.method public blacklist canDropOver(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .registers 4

    .line 1580
    const/4 p1, 0x1

    return p1
.end method

.method public blacklist chooseDropTarget(Lcom/android/internal/widget/RecyclerView$ViewHolder;Ljava/util/List;II)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;II)",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;"
        }
    .end annotation

    .line 1750
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, p3

    .line 1751
    iget-object v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int v1, p4, v1

    .line 1752
    nop

    .line 1753
    nop

    .line 1754
    iget-object v2, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v2, p3, v2

    .line 1755
    iget-object v3, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v3, p4, v3

    .line 1756
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    .line 1757
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    :goto_28
    if-ge v7, v4, :cond_bd

    .line 1758
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 1759
    if-lez v2, :cond_52

    .line 1760
    iget-object v9, v8, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int/2addr v9, v0

    .line 1761
    if-gez v9, :cond_52

    iget-object v10, v8, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    iget-object v11, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    if-le v10, v11, :cond_52

    .line 1762
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 1763
    if-le v9, v6, :cond_52

    .line 1764
    nop

    .line 1765
    move-object v5, v8

    move v6, v9

    .line 1769
    :cond_52
    if-gez v2, :cond_74

    .line 1770
    iget-object v9, v8, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int/2addr v9, p3

    .line 1771
    if-lez v9, :cond_74

    iget-object v10, v8, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    iget-object v11, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    if-ge v10, v11, :cond_74

    .line 1772
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 1773
    if-le v9, v6, :cond_74

    .line 1774
    nop

    .line 1775
    move-object v5, v8

    move v6, v9

    .line 1779
    :cond_74
    if-gez v3, :cond_97

    .line 1780
    iget-object v9, v8, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v9, v9, p4

    .line 1781
    if-lez v9, :cond_97

    iget-object v10, v8, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    iget-object v11, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    if-ge v10, v11, :cond_97

    .line 1782
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 1783
    if-le v9, v6, :cond_97

    .line 1784
    nop

    .line 1785
    move-object v5, v8

    move v6, v9

    .line 1790
    :cond_97
    if-lez v3, :cond_b9

    .line 1791
    iget-object v9, v8, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    sub-int/2addr v9, v1

    .line 1792
    if-gez v9, :cond_b9

    iget-object v10, v8, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    iget-object v11, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v11

    if-le v10, v11, :cond_b9

    .line 1793
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 1794
    if-le v9, v6, :cond_b9

    .line 1795
    nop

    .line 1796
    move-object v5, v8

    move v6, v9

    .line 1757
    :cond_b9
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_28

    .line 1801
    :cond_bd
    return-object v5
.end method

.method public blacklist clearView(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 3

    .line 1986
    sget-object p1, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->sUICallback:Lcom/android/internal/widget/helper/ItemTouchUIUtil;

    iget-object p2, p2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p1, p2}, Lcom/android/internal/widget/helper/ItemTouchUIUtil;->clearView(Landroid/view/View;)V

    .line 1987
    return-void
.end method

.method public blacklist convertToAbsoluteDirection(II)I
    .registers 6

    .line 1528
    const v0, 0x303030

    and-int v1, p1, v0

    .line 1529
    if-nez v1, :cond_8

    .line 1530
    return p1

    .line 1532
    :cond_8
    not-int v2, v1

    and-int/2addr p1, v2

    .line 1533
    if-nez p2, :cond_10

    .line 1535
    shr-int/lit8 p2, v1, 0x2

    or-int/2addr p1, p2

    .line 1536
    return p1

    .line 1539
    :cond_10
    shr-int/lit8 p2, v1, 0x1

    const v1, -0x303031

    and-int/2addr v1, p2

    or-int/2addr p1, v1

    .line 1541
    and-int/2addr p2, v0

    shr-int/lit8 p2, p2, 0x2

    or-int/2addr p1, p2

    .line 1543
    return p1
.end method

.method final blacklist getAbsoluteMovementFlags(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I
    .registers 3

    .line 1548
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getMovementFlags(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result p2

    .line 1549
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getLayoutDirection()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result p1

    return p1
.end method

.method public blacklist getAnimationDuration(Lcom/android/internal/widget/RecyclerView;IFF)J
    .registers 5

    .line 2079
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getItemAnimator()Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    .line 2080
    const/16 p3, 0x8

    if-nez p1, :cond_10

    .line 2081
    if-ne p2, p3, :cond_d

    const-wide/16 p1, 0xc8

    goto :goto_f

    .line 2082
    :cond_d
    const-wide/16 p1, 0xfa

    .line 2081
    :goto_f
    return-wide p1

    .line 2084
    :cond_10
    if-ne p2, p3, :cond_17

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->getMoveDuration()J

    move-result-wide p1

    goto :goto_1b

    .line 2085
    :cond_17
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->getRemoveDuration()J

    move-result-wide p1

    .line 2084
    :goto_1b
    return-wide p1
.end method

.method public blacklist getBoundingBoxMargin()I
    .registers 2

    .line 1643
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMoveThreshold(Lcom/android/internal/widget/RecyclerView$ViewHolder;)F
    .registers 2

    .line 1671
    const/high16 p1, 0x3f000000    # 0.5f

    return p1
.end method

.method public abstract blacklist getMovementFlags(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I
.end method

.method public blacklist getSwipeEscapeVelocity(F)F
    .registers 2

    .line 1696
    return p1
.end method

.method public blacklist getSwipeThreshold(Lcom/android/internal/widget/RecyclerView$ViewHolder;)F
    .registers 2

    .line 1658
    const/high16 p1, 0x3f000000    # 0.5f

    return p1
.end method

.method public blacklist getSwipeVelocityThreshold(F)F
    .registers 2

    .line 1719
    return p1
.end method

.method blacklist hasDragFlag(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .registers 3

    .line 1553
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result p1

    .line 1554
    const/high16 p2, 0xff0000

    and-int/2addr p1, p2

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method

.method blacklist hasSwipeFlag(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .registers 3

    .line 1559
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result p1

    .line 1560
    const p2, 0xff00

    and-int/2addr p1, p2

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public blacklist interpolateOutOfBoundsScroll(Lcom/android/internal/widget/RecyclerView;IIIJ)I
    .registers 11

    .line 2112
    invoke-direct {p0, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->getMaxDragScroll(Lcom/android/internal/widget/RecyclerView;)I

    move-result p1

    .line 2113
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p4

    .line 2114
    int-to-float v0, p3

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    .line 2116
    int-to-float p4, p4

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr p4, v1

    int-to-float p2, p2

    div-float/2addr p4, p2

    invoke-static {v1, p4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 2117
    mul-int/2addr v0, p1

    int-to-float p1, v0

    sget-object p4, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

    .line 2118
    invoke-interface {p4, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 2120
    const-wide/16 v2, 0x7d0

    cmp-long p2, p5, v2

    if-lez p2, :cond_29

    .line 2121
    goto :goto_2e

    .line 2123
    :cond_29
    long-to-float p2, p5

    const/high16 p4, 0x44fa0000    # 2000.0f

    div-float v1, p2, p4

    .line 2125
    :goto_2e
    int-to-float p1, p1

    sget-object p2, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->sDragScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 2126
    invoke-interface {p2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 2127
    if-nez p1, :cond_3f

    .line 2128
    if-lez p3, :cond_3d

    const/4 p1, 0x1

    goto :goto_3e

    :cond_3d
    const/4 p1, -0x1

    :goto_3e
    return p1

    .line 2130
    :cond_3f
    return p1
.end method

.method public blacklist isItemViewSwipeEnabled()Z
    .registers 2

    .line 1632
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isLongPressDragEnabled()Z
    .registers 2

    .line 1617
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist onChildDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;FFIZ)V
    .registers 9

    .line 2019
    sget-object v0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->sUICallback:Lcom/android/internal/widget/helper/ItemTouchUIUtil;

    iget-object p3, p3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object p0, v0

    invoke-interface/range {p0 .. p7}, Lcom/android/internal/widget/helper/ItemTouchUIUtil;->onDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Landroid/view/View;FFIZ)V

    .line 2021
    return-void
.end method

.method public blacklist onChildDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;FFIZ)V
    .registers 9

    .line 2053
    sget-object v0, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->sUICallback:Lcom/android/internal/widget/helper/ItemTouchUIUtil;

    iget-object p3, p3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object p0, v0

    invoke-interface/range {p0 .. p7}, Lcom/android/internal/widget/helper/ItemTouchUIUtil;->onDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Landroid/view/View;FFIZ)V

    .line 2055
    return-void
.end method

.method blacklist onDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lcom/android/internal/widget/RecyclerView;",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;",
            ">;IFF)V"
        }
    .end annotation

    .line 1926
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v8

    .line 1927
    const/4 v0, 0x0

    move v9, v0

    :goto_6
    if-ge v9, v8, :cond_2c

    .line 1928
    move-object/from16 v10, p4

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 1929
    invoke-virtual {v0}, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->update()V

    .line 1930
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 1931
    iget-object v3, v0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget v4, v0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    iget v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    iget v6, v0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mActionState:I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 1933
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1927
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 1935
    :cond_2c
    if-eqz p3, :cond_43

    .line 1936
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 1937
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v6, p5

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 1938
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1940
    :cond_43
    return-void
.end method

.method blacklist onDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lcom/android/internal/widget/RecyclerView;",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;",
            ">;IFF)V"
        }
    .end annotation

    .line 1945
    move-object/from16 v8, p4

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 1946
    const/4 v10, 0x0

    move v11, v10

    :goto_8
    if-ge v11, v9, :cond_29

    .line 1947
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 1948
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v12

    .line 1949
    iget-object v3, v0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget v4, v0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    iget v5, v0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    iget v6, v0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mActionState:I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 1951
    invoke-virtual {p1, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1946
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 1953
    :cond_29
    if-eqz p3, :cond_41

    .line 1954
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 1955
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v6, p5

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 1956
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1958
    :cond_41
    nop

    .line 1959
    const/4 v0, 0x1

    sub-int/2addr v9, v0

    :goto_44
    if-ltz v9, :cond_60

    .line 1960
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 1961
    iget-boolean v2, v1, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-eqz v2, :cond_58

    iget-boolean v2, v1, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mIsPendingCleanup:Z

    if-nez v2, :cond_58

    .line 1962
    invoke-interface {v8, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_5d

    .line 1963
    :cond_58
    iget-boolean v1, v1, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-nez v1, :cond_5d

    .line 1964
    move v10, v0

    .line 1959
    :cond_5d
    :goto_5d
    add-int/lit8 v9, v9, -0x1

    goto :goto_44

    .line 1967
    :cond_60
    if-eqz v10, :cond_65

    .line 1968
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView;->invalidate()V

    .line 1970
    :cond_65
    return-void
.end method

.method public abstract blacklist onMove(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
.end method

.method public blacklist onMoved(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$ViewHolder;ILcom/android/internal/widget/RecyclerView$ViewHolder;III)V
    .registers 9

    .line 1892
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object p3

    .line 1893
    instance-of v0, p3, Lcom/android/internal/widget/helper/ItemTouchHelper$ViewDropHandler;

    if-eqz v0, :cond_12

    .line 1894
    check-cast p3, Lcom/android/internal/widget/helper/ItemTouchHelper$ViewDropHandler;

    iget-object p1, p2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p3, p1, p2, p6, p7}, Lcom/android/internal/widget/helper/ItemTouchHelper$ViewDropHandler;->prepareForDrop(Landroid/view/View;Landroid/view/View;II)V

    .line 1896
    return-void

    .line 1900
    :cond_12
    invoke-virtual {p3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result p2

    if-eqz p2, :cond_3b

    .line 1901
    iget-object p2, p4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result p2

    .line 1902
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getPaddingLeft()I

    move-result p6

    if-gt p2, p6, :cond_27

    .line 1903
    invoke-virtual {p1, p5}, Lcom/android/internal/widget/RecyclerView;->scrollToPosition(I)V

    .line 1905
    :cond_27
    iget-object p2, p4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result p2

    .line 1906
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result p6

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getPaddingRight()I

    move-result p7

    sub-int/2addr p6, p7

    if-lt p2, p6, :cond_3b

    .line 1907
    invoke-virtual {p1, p5}, Lcom/android/internal/widget/RecyclerView;->scrollToPosition(I)V

    .line 1911
    :cond_3b
    invoke-virtual {p3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result p2

    if-eqz p2, :cond_64

    .line 1912
    iget-object p2, p4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result p2

    .line 1913
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result p6

    if-gt p2, p6, :cond_50

    .line 1914
    invoke-virtual {p1, p5}, Lcom/android/internal/widget/RecyclerView;->scrollToPosition(I)V

    .line 1916
    :cond_50
    iget-object p2, p4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result p2

    .line 1917
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result p3

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result p4

    sub-int/2addr p3, p4

    if-lt p2, p3, :cond_64

    .line 1918
    invoke-virtual {p1, p5}, Lcom/android/internal/widget/RecyclerView;->scrollToPosition(I)V

    .line 1921
    :cond_64
    return-void
.end method

.method public blacklist onSelectedChanged(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 1843
    if-eqz p1, :cond_9

    .line 1844
    sget-object p2, Lcom/android/internal/widget/helper/ItemTouchHelper$Callback;->sUICallback:Lcom/android/internal/widget/helper/ItemTouchUIUtil;

    iget-object p1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p2, p1}, Lcom/android/internal/widget/helper/ItemTouchUIUtil;->onSelected(Landroid/view/View;)V

    .line 1846
    :cond_9
    return-void
.end method

.method public abstract blacklist onSwiped(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
.end method
