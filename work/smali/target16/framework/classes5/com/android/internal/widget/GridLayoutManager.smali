.class public Lcom/android/internal/widget/GridLayoutManager;
.super Lcom/android/internal/widget/LinearLayoutManager;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/GridLayoutManager$DefaultSpanSizeLookup;,
        Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;,
        Lcom/android/internal/widget/GridLayoutManager$LayoutParams;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static final blacklist DEFAULT_SPAN_COUNT:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "GridLayoutManager"


# instance fields
.field blacklist mCachedBorders:[I

.field final blacklist mDecorInsets:Landroid/graphics/Rect;

.field blacklist mPendingSpanCountChange:Z

.field final blacklist mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

.field final blacklist mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

.field blacklist mSet:[Landroid/view/View;

.field blacklist mSpanCount:I

.field blacklist mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .registers 3

    .line 86
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 49
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    .line 60
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 61
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 62
    new-instance p1, Lcom/android/internal/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {p1}, Lcom/android/internal/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    .line 64
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 87
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/GridLayoutManager;->setSpanCount(I)V

    .line 88
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;IIZ)V
    .registers 5

    .line 99
    invoke-direct {p0, p1, p3, p4}, Lcom/android/internal/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 48
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 49
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    .line 60
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 61
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 62
    new-instance p1, Lcom/android/internal/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {p1}, Lcom/android/internal/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    .line 64
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 100
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/GridLayoutManager;->setSpanCount(I)V

    .line 101
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    .line 60
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 61
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 62
    new-instance v0, Lcom/android/internal/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Lcom/android/internal/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 75
    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/widget/GridLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;

    move-result-object p1

    .line 76
    iget p1, p1, Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/GridLayoutManager;->setSpanCount(I)V

    .line 77
    return-void
.end method

.method private blacklist assignSpans(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;IIZ)V
    .registers 9

    .line 762
    const/4 p4, 0x0

    if-eqz p5, :cond_a

    .line 763
    nop

    .line 764
    nop

    .line 765
    const/4 p5, 0x1

    move v0, p5

    move p5, p3

    move p3, p4

    goto :goto_f

    .line 767
    :cond_a
    add-int/lit8 p3, p3, -0x1

    .line 768
    nop

    .line 769
    const/4 p5, -0x1

    move v0, p5

    .line 771
    :goto_f
    nop

    .line 772
    nop

    :goto_11
    if-eq p3, p5, :cond_2e

    .line 773
    iget-object v1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v1, v1, p3

    .line 774
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    .line 775
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/internal/widget/GridLayoutManager;->getSpanSize(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I

    move-result v1

    iput v1, v2, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 776
    iput p4, v2, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 777
    iget v1, v2, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    add-int/2addr p4, v1

    .line 772
    add-int/2addr p3, v0

    goto :goto_11

    .line 779
    :cond_2e
    return-void
.end method

.method private blacklist cachePreLayoutSpanMapping()V
    .registers 7

    .line 188
    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    .line 189
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_2a

    .line 190
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    .line 191
    invoke-virtual {v2}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v3

    .line 192
    iget-object v4, p0, Lcom/android/internal/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 193
    iget-object v4, p0, Lcom/android/internal/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v2

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 195
    :cond_2a
    return-void
.end method

.method private blacklist calculateItemBorders(I)V
    .registers 4

    .line 308
    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    iget v1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    invoke-static {v0, v1, p1}, Lcom/android/internal/widget/GridLayoutManager;->calculateItemBorders([III)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    .line 309
    return-void
.end method

.method static blacklist calculateItemBorders([III)[I
    .registers 8

    .line 319
    const/4 v0, 0x1

    if-eqz p0, :cond_e

    array-length v1, p0

    add-int/lit8 v2, p1, 0x1

    if-ne v1, v2, :cond_e

    array-length v1, p0

    sub-int/2addr v1, v0

    aget v1, p0, v1

    if-eq v1, p2, :cond_12

    .line 321
    :cond_e
    add-int/lit8 p0, p1, 0x1

    new-array p0, p0, [I

    .line 323
    :cond_12
    const/4 v1, 0x0

    aput v1, p0, v1

    .line 324
    div-int v2, p2, p1

    .line 325
    rem-int/2addr p2, p1

    .line 326
    nop

    .line 327
    nop

    .line 328
    move v3, v1

    :goto_1b
    if-gt v0, p1, :cond_30

    .line 329
    nop

    .line 330
    add-int/2addr v1, p2

    .line 331
    if-lez v1, :cond_29

    sub-int v4, p1, v1

    if-ge v4, p2, :cond_29

    .line 332
    add-int/lit8 v4, v2, 0x1

    .line 333
    sub-int/2addr v1, p1

    goto :goto_2a

    .line 335
    :cond_29
    move v4, v2

    :goto_2a
    add-int/2addr v3, v4

    .line 336
    aput v3, p0, v0

    .line 328
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 338
    :cond_30
    return-object p0
.end method

.method private blacklist clearPreLayoutSpanMappingCache()V
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 184
    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 185
    return-void
.end method

.method private blacklist ensureAnchorIsInCorrectSpan(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;I)V
    .registers 9

    .line 385
    const/4 v0, 0x1

    if-ne p4, v0, :cond_5

    move p4, v0

    goto :goto_6

    :cond_5
    const/4 p4, 0x0

    .line 387
    :goto_6
    iget v1, p3, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v1}, Lcom/android/internal/widget/GridLayoutManager;->getSpanIndex(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I

    move-result v1

    .line 388
    if-eqz p4, :cond_20

    .line 390
    :goto_e
    if-lez v1, :cond_39

    iget p4, p3, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    if-lez p4, :cond_39

    .line 391
    iget p4, p3, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    sub-int/2addr p4, v0

    iput p4, p3, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 392
    iget p4, p3, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, p4}, Lcom/android/internal/widget/GridLayoutManager;->getSpanIndex(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I

    move-result v1

    goto :goto_e

    .line 396
    :cond_20
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result p4

    sub-int/2addr p4, v0

    .line 397
    iget v0, p3, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 398
    nop

    .line 399
    :goto_28
    if-ge v0, p4, :cond_37

    .line 400
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/widget/GridLayoutManager;->getSpanIndex(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I

    move-result v3

    .line 401
    if-le v3, v1, :cond_37

    .line 402
    nop

    .line 403
    nop

    .line 407
    move v0, v2

    move v1, v3

    goto :goto_28

    .line 408
    :cond_37
    iput v0, p3, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 410
    :cond_39
    return-void
.end method

.method private blacklist ensureViewSet()V
    .registers 3

    .line 362
    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    if-eq v0, v1, :cond_11

    .line 363
    :cond_b
    iget v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 365
    :cond_11
    return-void
.end method

.method private blacklist getSpanGroupIndex(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I
    .registers 4

    .line 448
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-nez p2, :cond_f

    .line 449
    iget-object p1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    iget p2, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p1, p3, p2}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result p1

    return p1

    .line 451
    :cond_f
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result p1

    .line 452
    const/4 p2, -0x1

    if-ne p1, p2, :cond_30

    .line 457
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot find span size for pre layout position. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/4 p1, 0x0

    return p1

    .line 460
    :cond_30
    iget-object p2, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    iget p3, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p2, p1, p3}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result p1

    return p1
.end method

.method private blacklist getSpanIndex(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I
    .registers 5

    .line 464
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-nez p2, :cond_f

    .line 465
    iget-object p1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    iget p2, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p1, p3, p2}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result p1

    return p1

    .line 467
    :cond_f
    iget-object p2, p0, Lcom/android/internal/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    .line 468
    if-eq p2, v0, :cond_19

    .line 469
    return p2

    .line 471
    :cond_19
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result p1

    .line 472
    if-ne p1, v0, :cond_39

    .line 477
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const/4 p1, 0x0

    return p1

    .line 481
    :cond_39
    iget-object p2, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    iget p3, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p2, p1, p3}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result p1

    return p1
.end method

.method private blacklist getSpanSize(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I
    .registers 5

    .line 485
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-nez p2, :cond_d

    .line 486
    iget-object p1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1, p3}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result p1

    return p1

    .line 488
    :cond_d
    iget-object p2, p0, Lcom/android/internal/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    .line 489
    if-eq p2, v0, :cond_17

    .line 490
    return p2

    .line 492
    :cond_17
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result p1

    .line 493
    if-ne p1, v0, :cond_37

    .line 498
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const/4 p1, 0x1

    return p1

    .line 502
    :cond_37
    iget-object p2, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result p1

    return p1
.end method

.method private blacklist guessMeasurement(FI)V
    .registers 4

    .line 737
    iget v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 739
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/GridLayoutManager;->calculateItemBorders(I)V

    .line 740
    return-void
.end method

.method private blacklist measureChild(Landroid/view/View;IZ)V
    .registers 12

    .line 702
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    .line 703
    iget-object v1, v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 704
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 706
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iget v1, v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v3, v1

    iget v1, v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v3, v1

    .line 708
    iget v1, v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v4, v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    invoke-virtual {p0, v1, v4}, Lcom/android/internal/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v1

    .line 711
    iget v4, p0, Lcom/android/internal/widget/GridLayoutManager;->mOrientation:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_43

    .line 712
    iget v4, v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {v1, p2, v3, v4, v5}, Lcom/android/internal/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    .line 714
    iget-object v1, p0, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/android/internal/widget/OrientationHelper;->getTotalSpace()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getHeightMode()I

    move-result v3

    iget v0, v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v1, v3, v2, v0, v6}, Lcom/android/internal/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    goto :goto_5c

    .line 717
    :cond_43
    iget v4, v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v1, p2, v2, v4, v5}, Lcom/android/internal/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    .line 719
    iget-object v1, p0, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/android/internal/widget/OrientationHelper;->getTotalSpace()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getWidthMode()I

    move-result v2

    iget v0, v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {v1, v2, v3, v0, v6}, Lcom/android/internal/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    move v7, v0

    move v0, p2

    move p2, v7

    .line 722
    :goto_5c
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/internal/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    .line 723
    return-void
.end method

.method private blacklist measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .registers 6

    .line 744
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 746
    if-eqz p4, :cond_d

    .line 747
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/GridLayoutManager;->shouldReMeasureChild(Landroid/view/View;IILcom/android/internal/widget/RecyclerView$LayoutParams;)Z

    move-result p4

    goto :goto_11

    .line 749
    :cond_d
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/GridLayoutManager;->shouldMeasureChild(Landroid/view/View;IILcom/android/internal/widget/RecyclerView$LayoutParams;)Z

    move-result p4

    .line 751
    :goto_11
    if-eqz p4, :cond_16

    .line 752
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 754
    :cond_16
    return-void
.end method

.method private blacklist updateMeasurements()V
    .registers 3

    .line 274
    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 275
    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_24

    .line 277
    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 279
    :goto_24
    invoke-direct {p0, v0}, Lcom/android/internal/widget/GridLayoutManager;->calculateItemBorders(I)V

    .line 280
    return-void
.end method


# virtual methods
.method public blacklist checkLayoutParams(Lcom/android/internal/widget/RecyclerView$LayoutParams;)Z
    .registers 2

    .line 250
    instance-of p1, p1, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    return p1
.end method

.method blacklist collectPrefetchPositionsForLayoutState(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .registers 9

    .line 508
    iget v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    .line 509
    const/4 v1, 0x0

    move v2, v1

    .line 510
    :goto_4
    iget v3, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    if-ge v2, v3, :cond_2c

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->hasMore(Lcom/android/internal/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_2c

    if-lez v0, :cond_2c

    .line 511
    iget v3, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 512
    iget v4, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-interface {p3, v3, v4}, Lcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 513
    iget-object v4, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v3

    .line 514
    sub-int/2addr v0, v3

    .line 515
    iget v3, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v4, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v3, v4

    iput v3, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 516
    add-int/lit8 v2, v2, 0x1

    .line 517
    goto :goto_4

    .line 518
    :cond_2c
    return-void
.end method

.method blacklist findReferenceChild(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;III)Landroid/view/View;
    .registers 13

    .line 415
    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->ensureLayoutState()V

    .line 416
    nop

    .line 417
    nop

    .line 418
    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    .line 419
    iget-object v1, p0, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    .line 420
    if-le p4, p3, :cond_15

    const/4 v2, 0x1

    goto :goto_16

    :cond_15
    const/4 v2, -0x1

    .line 421
    :goto_16
    const/4 v3, 0x0

    move-object v4, v3

    :goto_18
    if-eq p3, p4, :cond_54

    .line 422
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 423
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 424
    if-ltz v6, :cond_52

    if-ge v6, p5, :cond_52

    .line 425
    invoke-direct {p0, p1, p2, v6}, Lcom/android/internal/widget/GridLayoutManager;->getSpanIndex(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I

    move-result v6

    .line 426
    if-eqz v6, :cond_2d

    .line 427
    goto :goto_52

    .line 429
    :cond_2d
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 430
    if-nez v4, :cond_52

    .line 431
    move-object v4, v5

    goto :goto_52

    .line 433
    :cond_3d
    iget-object v6, p0, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    if-ge v6, v1, :cond_4f

    iget-object v6, p0, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 434
    invoke-virtual {v6, v5}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    if-ge v6, v0, :cond_4e

    goto :goto_4f

    .line 439
    :cond_4e
    return-object v5

    .line 435
    :cond_4f
    :goto_4f
    if-nez v3, :cond_52

    .line 436
    move-object v3, v5

    .line 421
    :cond_52
    :goto_52
    add-int/2addr p3, v2

    goto :goto_18

    .line 443
    :cond_54
    if-eqz v3, :cond_57

    goto :goto_58

    :cond_57
    move-object v3, v4

    :goto_58
    return-object v3
.end method

.method public blacklist generateDefaultLayoutParams()Lcom/android/internal/widget/RecyclerView$LayoutParams;
    .registers 4

    .line 225
    iget v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-nez v0, :cond_c

    .line 226
    new-instance v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0

    .line 229
    :cond_c
    new-instance v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v2, v1}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public blacklist generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/android/internal/widget/RecyclerView$LayoutParams;
    .registers 4

    .line 236
    new-instance v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public blacklist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/widget/RecyclerView$LayoutParams;
    .registers 3

    .line 241
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_c

    .line 242
    new-instance v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 244
    :cond_c
    new-instance v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public blacklist getColumnCountForAccessibility(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .registers 5

    .line 133
    iget v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 134
    iget p1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    return p1

    .line 136
    :cond_8
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge v0, v1, :cond_10

    .line 137
    const/4 p1, 0x0

    return p1

    .line 140
    :cond_10
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/GridLayoutManager;->getSpanGroupIndex(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method

.method public blacklist getRowCountForAccessibility(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .registers 5

    .line 120
    iget v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_7

    .line 121
    iget p1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    return p1

    .line 123
    :cond_7
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_10

    .line 124
    const/4 p1, 0x0

    return p1

    .line 127
    :cond_10
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/GridLayoutManager;->getSpanGroupIndex(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method

.method blacklist getSpaceForSpanRange(II)I
    .registers 6

    .line 342
    iget v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 343
    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    iget v1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    sub-int/2addr v1, p1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    iget v2, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    aget p1, v1, v2

    sub-int/2addr v0, p1

    return v0

    .line 346
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    add-int/2addr p2, p1

    aget p2, v0, p2

    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    aget p1, v0, p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public blacklist getSpanCount()I
    .registers 2

    .line 788
    iget v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    return v0
.end method

.method public blacklist getSpanSizeLookup()Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;
    .registers 2

    .line 269
    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    return-object v0
.end method

.method blacklist layoutChunk(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;)V
    .registers 21

    .line 523
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    iget-object v3, v0, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v3}, Lcom/android/internal/widget/OrientationHelper;->getModeInOther()I

    move-result v8

    .line 524
    const/4 v9, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    if-eq v8, v11, :cond_17

    move v12, v9

    goto :goto_18

    :cond_17
    const/4 v12, 0x0

    .line 525
    :goto_18
    invoke-virtual {v0}, Lcom/android/internal/widget/GridLayoutManager;->getChildCount()I

    move-result v3

    if-lez v3, :cond_26

    iget-object v3, v0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    iget v4, v0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    aget v3, v3, v4

    move v13, v3

    goto :goto_27

    :cond_26
    const/4 v13, 0x0

    .line 529
    :goto_27
    if-eqz v12, :cond_2c

    .line 530
    invoke-direct {v0}, Lcom/android/internal/widget/GridLayoutManager;->updateMeasurements()V

    .line 532
    :cond_2c
    iget v3, v6, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    if-ne v3, v9, :cond_32

    move v5, v9

    goto :goto_33

    :cond_32
    const/4 v5, 0x0

    .line 534
    :goto_33
    nop

    .line 535
    nop

    .line 536
    iget v3, v0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    .line 537
    if-nez v5, :cond_49

    .line 538
    iget v3, v6, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/GridLayoutManager;->getSpanIndex(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I

    move-result v3

    .line 539
    iget v4, v6, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/widget/GridLayoutManager;->getSpanSize(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I

    move-result v4

    .line 540
    add-int/2addr v3, v4

    const/4 v4, 0x0

    const/4 v14, 0x0

    goto :goto_4b

    .line 537
    :cond_49
    const/4 v4, 0x0

    const/4 v14, 0x0

    .line 542
    :goto_4b
    iget v15, v0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    if-ge v4, v15, :cond_ab

    invoke-virtual {v6, v2}, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->hasMore(Lcom/android/internal/widget/RecyclerView$State;)Z

    move-result v15

    if-eqz v15, :cond_ab

    if-lez v3, :cond_ab

    .line 543
    iget v15, v6, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 544
    invoke-direct {v0, v1, v2, v15}, Lcom/android/internal/widget/GridLayoutManager;->getSpanSize(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I

    move-result v11

    .line 545
    iget v10, v0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    if-gt v11, v10, :cond_76

    .line 550
    sub-int/2addr v3, v11

    .line 551
    if-gez v3, :cond_65

    .line 552
    goto :goto_ab

    .line 554
    :cond_65
    invoke-virtual {v6, v1}, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->next(Lcom/android/internal/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v10

    .line 555
    if-nez v10, :cond_6c

    .line 556
    goto :goto_ab

    .line 558
    :cond_6c
    add-int/2addr v14, v11

    .line 559
    iget-object v11, v0, Lcom/android/internal/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aput-object v10, v11, v4

    .line 560
    add-int/lit8 v4, v4, 0x1

    .line 561
    const/high16 v11, 0x40000000    # 2.0f

    goto :goto_4b

    .line 546
    :cond_76
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Item at position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " requires "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " spans but GridLayoutManager has only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " spans."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 562
    :cond_ab
    :goto_ab
    if-nez v4, :cond_b0

    .line 563
    iput-boolean v9, v7, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 564
    return-void

    .line 566
    :cond_b0
    nop

    .line 567
    nop

    .line 569
    move v3, v4

    move v4, v14

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/GridLayoutManager;->assignSpans(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;IIZ)V

    .line 570
    move v10, v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_bb
    if-ge v2, v10, :cond_108

    .line 571
    iget-object v4, v0, Lcom/android/internal/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v4, v4, v2

    .line 572
    iget-object v11, v6, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v11, :cond_d1

    .line 573
    if-eqz v5, :cond_cc

    .line 574
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/GridLayoutManager;->addView(Landroid/view/View;)V

    const/4 v11, 0x0

    goto :goto_db

    .line 576
    :cond_cc
    const/4 v11, 0x0

    invoke-virtual {v0, v4, v11}, Lcom/android/internal/widget/GridLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_db

    .line 579
    :cond_d1
    const/4 v11, 0x0

    if-eqz v5, :cond_d8

    .line 580
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_db

    .line 582
    :cond_d8
    invoke-virtual {v0, v4, v11}, Lcom/android/internal/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    .line 585
    :goto_db
    iget-object v14, v0, Lcom/android/internal/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v4, v14}, Lcom/android/internal/widget/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 586
    invoke-direct {v0, v4, v8, v11}, Lcom/android/internal/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    .line 587
    iget-object v11, v0, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v11, v4}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v11

    .line 588
    if-le v11, v3, :cond_ec

    .line 589
    move v3, v11

    .line 591
    :cond_ec
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    .line 592
    iget-object v14, v0, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v14, v4}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v4

    int-to-float v4, v4

    const/high16 v14, 0x3f800000    # 1.0f

    mul-float/2addr v4, v14

    iget v11, v11, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    int-to-float v11, v11

    div-float/2addr v4, v11

    .line 594
    cmpl-float v11, v4, v1

    if-lez v11, :cond_105

    .line 595
    move v1, v4

    .line 570
    :cond_105
    add-int/lit8 v2, v2, 0x1

    goto :goto_bb

    .line 598
    :cond_108
    if-eqz v12, :cond_127

    .line 600
    invoke-direct {v0, v1, v13}, Lcom/android/internal/widget/GridLayoutManager;->guessMeasurement(FI)V

    .line 602
    nop

    .line 603
    const/4 v3, 0x0

    const/4 v11, 0x0

    :goto_110
    if-ge v11, v10, :cond_127

    .line 604
    iget-object v1, v0, Lcom/android/internal/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v1, v1, v11

    .line 605
    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2, v9}, Lcom/android/internal/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    .line 606
    iget-object v2, v0, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    .line 607
    if-le v1, v3, :cond_124

    .line 608
    move v3, v1

    .line 603
    :cond_124
    add-int/lit8 v11, v11, 0x1

    goto :goto_110

    .line 614
    :cond_127
    const/4 v11, 0x0

    :goto_128
    if-ge v11, v10, :cond_18a

    .line 615
    iget-object v1, v0, Lcom/android/internal/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v1, v1, v11

    .line 616
    iget-object v2, v0, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    if-eq v2, v3, :cond_184

    .line 617
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    .line 618
    iget-object v4, v2, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 619
    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v8

    iget v8, v2, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v5, v8

    iget v8, v2, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v8

    .line 621
    iget v8, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v4

    iget v4, v2, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v8, v4

    iget v4, v2, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v8, v4

    .line 623
    iget v4, v2, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v12, v2, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    invoke-virtual {v0, v4, v12}, Lcom/android/internal/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v4

    .line 626
    iget v12, v0, Lcom/android/internal/widget/GridLayoutManager;->mOrientation:I

    if-ne v12, v9, :cond_170

    .line 627
    iget v2, v2, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->width:I

    const/4 v12, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v4, v13, v8, v2, v12}, Lcom/android/internal/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v2

    .line 629
    sub-int v4, v3, v5

    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_180

    .line 632
    :cond_170
    const/4 v12, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    sub-int v8, v3, v8

    invoke-static {v8, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 634
    iget v2, v2, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v4, v13, v5, v2, v12}, Lcom/android/internal/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v4

    move v2, v8

    .line 637
    :goto_180
    invoke-direct {v0, v1, v2, v4, v9}, Lcom/android/internal/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_187

    .line 616
    :cond_184
    const/4 v12, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    .line 614
    :goto_187
    add-int/lit8 v11, v11, 0x1

    goto :goto_128

    .line 640
    :cond_18a
    const/4 v12, 0x0

    iput v3, v7, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 641
    nop

    .line 642
    iget v1, v0, Lcom/android/internal/widget/GridLayoutManager;->mOrientation:I

    const/4 v2, -0x1

    if-ne v1, v9, :cond_1a8

    .line 643
    iget v1, v6, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v1, v2, :cond_1a1

    .line 644
    iget v11, v6, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 645
    sub-int v1, v11, v3

    move v2, v11

    move v11, v1

    move v1, v2

    move v2, v12

    move v3, v2

    goto :goto_1bd

    .line 647
    :cond_1a1
    iget v11, v6, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 648
    add-int v1, v11, v3

    move v2, v12

    move v3, v2

    goto :goto_1bd

    .line 651
    :cond_1a8
    iget v1, v6, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v1, v2, :cond_1b5

    .line 652
    iget v11, v6, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 653
    sub-int v1, v11, v3

    move v2, v1

    move v3, v11

    move v1, v12

    move v11, v1

    goto :goto_1bd

    .line 655
    :cond_1b5
    iget v11, v6, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 656
    add-int v1, v11, v3

    move v3, v1

    move v2, v11

    move v1, v12

    move v11, v1

    .line 659
    :goto_1bd
    nop

    :goto_1be
    if-ge v12, v10, :cond_238

    .line 660
    iget-object v4, v0, Lcom/android/internal/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v4, v4, v12

    .line 661
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    .line 662
    iget v5, v0, Lcom/android/internal/widget/GridLayoutManager;->mOrientation:I

    if-ne v5, v9, :cond_201

    .line 663
    invoke-virtual {v0}, Lcom/android/internal/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v2

    if-eqz v2, :cond_1ed

    .line 664
    invoke-virtual {v0}, Lcom/android/internal/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v2

    iget-object v3, v0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    iget v5, v0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    iget v8, v6, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    sub-int/2addr v5, v8

    aget v3, v3, v5

    add-int/2addr v3, v2

    .line 665
    iget-object v2, v0, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    sub-int v2, v3, v2

    move v5, v1

    goto :goto_215

    .line 667
    :cond_1ed
    invoke-virtual {v0}, Lcom/android/internal/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v2

    iget-object v3, v0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    iget v5, v6, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    aget v3, v3, v5

    add-int/2addr v2, v3

    .line 668
    iget-object v3, v0, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v2

    move v5, v1

    goto :goto_215

    .line 671
    :cond_201
    invoke-virtual {v0}, Lcom/android/internal/widget/GridLayoutManager;->getPaddingTop()I

    move-result v1

    iget-object v5, v0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    iget v8, v6, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    aget v5, v5, v8

    add-int v11, v1, v5

    .line 672
    iget-object v1, v0, Lcom/android/internal/widget/GridLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v11

    move v5, v1

    .line 676
    :goto_215
    move-object v1, v4

    move v4, v3

    move v3, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/GridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 684
    invoke-virtual {v6}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v8

    if-nez v8, :cond_227

    invoke-virtual {v6}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v6

    if-eqz v6, :cond_229

    .line 685
    :cond_227
    iput-boolean v9, v7, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 687
    :cond_229
    iget-boolean v6, v7, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    or-int/2addr v1, v6

    iput-boolean v1, v7, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 659
    add-int/lit8 v12, v12, 0x1

    move v11, v3

    move v3, v4

    move v1, v5

    goto :goto_1be

    .line 689
    :cond_238
    iget-object v0, v0, Lcom/android/internal/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 690
    return-void
.end method

.method blacklist onAnchorReady(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;I)V
    .registers 6

    .line 353
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/LinearLayoutManager;->onAnchorReady(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 354
    invoke-direct {p0}, Lcom/android/internal/widget/GridLayoutManager;->updateMeasurements()V

    .line 355
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-lez v0, :cond_15

    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_15

    .line 356
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/GridLayoutManager;->ensureAnchorIsInCorrectSpan(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 358
    :cond_15
    invoke-direct {p0}, Lcom/android/internal/widget/GridLayoutManager;->ensureViewSet()V

    .line 359
    return-void
.end method

.method public blacklist onInitializeAccessibilityNodeInfoForItem(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 12

    .line 146
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 147
    instance-of v1, v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    if-nez v1, :cond_c

    .line 148
    invoke-super {p0, p3, p4}, Lcom/android/internal/widget/LinearLayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 149
    return-void

    .line 151
    :cond_c
    check-cast v0, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;

    .line 152
    invoke-virtual {v0}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/GridLayoutManager;->getSpanGroupIndex(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;I)I

    move-result v1

    .line 153
    iget p1, p0, Lcom/android/internal/widget/GridLayoutManager;->mOrientation:I

    if-nez p1, :cond_2f

    .line 154
    nop

    .line 155
    move v3, v1

    invoke-virtual {v0}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v2

    .line 154
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    goto :goto_42

    .line 158
    :cond_2f
    move v3, v1

    .line 160
    invoke-virtual {v0}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/internal/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v4

    .line 158
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 162
    :goto_42
    return-void
.end method

.method public blacklist onItemsAdded(Lcom/android/internal/widget/RecyclerView;II)V
    .registers 4

    .line 199
    iget-object p1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 200
    return-void
.end method

.method public blacklist onItemsChanged(Lcom/android/internal/widget/RecyclerView;)V
    .registers 2

    .line 204
    iget-object p1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 205
    return-void
.end method

.method public blacklist onItemsMoved(Lcom/android/internal/widget/RecyclerView;III)V
    .registers 5

    .line 220
    iget-object p1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 221
    return-void
.end method

.method public blacklist onItemsRemoved(Lcom/android/internal/widget/RecyclerView;II)V
    .registers 4

    .line 209
    iget-object p1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 210
    return-void
.end method

.method public blacklist onItemsUpdated(Lcom/android/internal/widget/RecyclerView;IILjava/lang/Object;)V
    .registers 5

    .line 215
    iget-object p1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 216
    return-void
.end method

.method public blacklist onLayoutChildren(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)V
    .registers 4

    .line 166
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 167
    invoke-direct {p0}, Lcom/android/internal/widget/GridLayoutManager;->cachePreLayoutSpanMapping()V

    .line 169
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->onLayoutChildren(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)V

    .line 173
    invoke-direct {p0}, Lcom/android/internal/widget/GridLayoutManager;->clearPreLayoutSpanMappingCache()V

    .line 174
    return-void
.end method

.method public blacklist onLayoutCompleted(Lcom/android/internal/widget/RecyclerView$State;)V
    .registers 2

    .line 178
    invoke-super {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->onLayoutCompleted(Lcom/android/internal/widget/RecyclerView$State;)V

    .line 179
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 180
    return-void
.end method

.method public blacklist scrollHorizontallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .registers 4

    .line 370
    invoke-direct {p0}, Lcom/android/internal/widget/GridLayoutManager;->updateMeasurements()V

    .line 371
    invoke-direct {p0}, Lcom/android/internal/widget/GridLayoutManager;->ensureViewSet()V

    .line 372
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/widget/LinearLayoutManager;->scrollHorizontallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public blacklist scrollVerticallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .registers 4

    .line 378
    invoke-direct {p0}, Lcom/android/internal/widget/GridLayoutManager;->updateMeasurements()V

    .line 379
    invoke-direct {p0}, Lcom/android/internal/widget/GridLayoutManager;->ensureViewSet()V

    .line 380
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/widget/LinearLayoutManager;->scrollVerticallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public blacklist setMeasuredDimension(Landroid/graphics/Rect;II)V
    .registers 8

    .line 284
    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    if-nez v0, :cond_7

    .line 285
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/widget/LinearLayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    .line 288
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 289
    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 290
    iget v2, p0, Lcom/android/internal/widget/GridLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3d

    .line 291
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v1

    .line 292
    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getMinimumHeight()I

    move-result v1

    invoke-static {p3, p1, v1}, Lcom/android/internal/widget/GridLayoutManager;->chooseSize(III)I

    move-result p1

    .line 293
    iget-object p3, p0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    iget-object v1, p0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v1, v1

    sub-int/2addr v1, v3

    aget p3, p3, v1

    add-int/2addr p3, v0

    .line 294
    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getMinimumWidth()I

    move-result v0

    .line 293
    invoke-static {p2, p3, v0}, Lcom/android/internal/widget/GridLayoutManager;->chooseSize(III)I

    move-result p2

    .line 295
    goto :goto_5b

    .line 296
    :cond_3d
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v0

    .line 297
    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getMinimumWidth()I

    move-result v0

    invoke-static {p2, p1, v0}, Lcom/android/internal/widget/GridLayoutManager;->chooseSize(III)I

    move-result p2

    .line 298
    iget-object p1, p0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v0, v0

    sub-int/2addr v0, v3

    aget p1, p1, v0

    add-int/2addr p1, v1

    .line 299
    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->getMinimumHeight()I

    move-result v0

    .line 298
    invoke-static {p3, p1, v0}, Lcom/android/internal/widget/GridLayoutManager;->chooseSize(III)I

    move-result p1

    .line 301
    :goto_5b
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/widget/GridLayoutManager;->setMeasuredDimension(II)V

    .line 302
    return-void
.end method

.method public blacklist setSpanCount(I)V
    .registers 5

    .line 801
    iget v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    if-ne p1, v0, :cond_5

    .line 802
    return-void

    .line 804
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 805
    if-lt p1, v0, :cond_15

    .line 809
    iput p1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanCount:I

    .line 810
    iget-object p1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 811
    invoke-virtual {p0}, Lcom/android/internal/widget/GridLayoutManager;->requestLayout()V

    .line 812
    return-void

    .line 806
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Span count should be at least 1. Provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setSpanSizeLookup(Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;)V
    .registers 2

    .line 260
    iput-object p1, p0, Lcom/android/internal/widget/GridLayoutManager;->mSpanSizeLookup:Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;

    .line 261
    return-void
.end method

.method public blacklist setStackFromEnd(Z)V
    .registers 3

    .line 109
    if-nez p1, :cond_7

    .line 114
    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 115
    return-void

    .line 110
    :cond_7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist supportsPredictiveItemAnimations()Z
    .registers 2

    .line 982
    iget-object v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/internal/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
