.class Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;
.super Landroid/graphics/drawable/StateListDrawable$StateListState;
.source "AnimatedStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedStateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimatedStateListState"
.end annotation


# static fields
.field private static final greylist-max-o REVERSED_BIT:J = 0x100000000L

.field private static final greylist-max-o REVERSIBLE_FLAG_BIT:J = 0x200000000L


# instance fields
.field greylist-max-o mAnimThemeAttrs:[I

.field greylist-max-r mStateIds:Landroid/util/SparseIntArray;

.field greylist-max-r mTransitions:Landroid/util/LongSparseLongArray;


# direct methods
.method constructor greylist-max-o <init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/graphics/drawable/AnimatedStateListDrawable;Landroid/content/res/Resources;)V
    .registers 4

    .line 571
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/StateListDrawable$StateListState;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V

    .line 573
    if-eqz p1, :cond_12

    .line 575
    iget-object p2, p1, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mAnimThemeAttrs:[I

    iput-object p2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mAnimThemeAttrs:[I

    .line 576
    iget-object p2, p1, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    iput-object p2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    .line 577
    iget-object p1, p1, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    iput-object p1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    goto :goto_20

    .line 579
    :cond_12
    new-instance p1, Landroid/util/LongSparseLongArray;

    invoke-direct {p1}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object p1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    .line 580
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    .line 582
    :goto_20
    return-void
.end method

.method private static greylist-max-o generateTransitionKey(II)J
    .registers 4

    .line 656
    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long p0, p1

    or-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method greylist-max-o addStateSet([ILandroid/graphics/drawable/Drawable;I)I
    .registers 4

    .line 607
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/StateListDrawable$StateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;)I

    move-result p1

    .line 608
    iget-object p2, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 609
    return p1
.end method

.method greylist-max-o addTransition(IILandroid/graphics/drawable/Drawable;Z)I
    .registers 14

    .line 590
    invoke-super {p0, p3}, Landroid/graphics/drawable/StateListDrawable$StateListState;->addChild(Landroid/graphics/drawable/Drawable;)I

    move-result p3

    .line 591
    invoke-static {p1, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->generateTransitionKey(II)J

    move-result-wide v0

    .line 592
    nop

    .line 593
    if-eqz p4, :cond_11

    .line 594
    const-wide v2, 0x200000000L

    goto :goto_13

    .line 593
    :cond_11
    const-wide/16 v2, 0x0

    .line 596
    :goto_13
    iget-object v4, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    int-to-long v5, p3

    or-long v7, v5, v2

    invoke-virtual {v4, v0, v1, v7, v8}, Landroid/util/LongSparseLongArray;->append(JJ)V

    .line 598
    if-eqz p4, :cond_2d

    .line 599
    invoke-static {p2, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->generateTransitionKey(II)J

    move-result-wide p1

    .line 600
    iget-object p4, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    const-wide v0, 0x100000000L

    or-long/2addr v0, v5

    or-long/2addr v0, v2

    invoke-virtual {p4, p1, p2, v0, v1}, Landroid/util/LongSparseLongArray;->append(JJ)V

    .line 603
    :cond_2d
    return p3
.end method

.method public whitelist canApplyTheme()Z
    .registers 2

    .line 642
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mAnimThemeAttrs:[I

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/graphics/drawable/StateListDrawable$StateListState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method greylist-max-o getKeyframeIdAt(I)I
    .registers 4

    .line 622
    const/4 v0, 0x0

    if-gez p1, :cond_4

    goto :goto_a

    :cond_4
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    :goto_a
    return v0
.end method

.method greylist-max-o indexOfKeyframe([I)I
    .registers 2

    .line 613
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    move-result p1

    .line 614
    if-ltz p1, :cond_7

    .line 615
    return p1

    .line 618
    :cond_7
    sget-object p1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    move-result p1

    return p1
.end method

.method greylist-max-o indexOfTransition(II)I
    .registers 6

    .line 626
    invoke-static {p1, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->generateTransitionKey(II)J

    move-result-wide p1

    .line 627
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/util/LongSparseLongArray;->get(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    return p1
.end method

.method greylist-max-o isTransitionReversed(II)Z
    .registers 6

    .line 631
    invoke-static {p1, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->generateTransitionKey(II)J

    move-result-wide p1

    .line 632
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/util/LongSparseLongArray;->get(JJ)J

    move-result-wide p1

    const-wide v0, 0x100000000L

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method

.method greylist-max-o mutate()V
    .registers 2

    .line 585
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    invoke-virtual {v0}, Landroid/util/LongSparseLongArray;->clone()Landroid/util/LongSparseLongArray;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    .line 586
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mStateIds:Landroid/util/SparseIntArray;

    .line 587
    return-void
.end method

.method public whitelist newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 647
    new-instance v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimatedStateListDrawable-IA;)V

    return-object v0
.end method

.method public whitelist newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 652
    new-instance v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimatedStateListDrawable-IA;)V

    return-object v0
.end method

.method greylist-max-o transitionHasReversibleFlag(II)Z
    .registers 6

    .line 636
    invoke-static {p1, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->generateTransitionKey(II)J

    move-result-wide p1

    .line 637
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatedStateListState;->mTransitions:Landroid/util/LongSparseLongArray;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/util/LongSparseLongArray;->get(JJ)J

    move-result-wide p1

    const-wide v0, 0x200000000L

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method
