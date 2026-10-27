.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
.source "StateLayout.java"


# instance fields
.field public blacklist MAX_CACHE_ELEMENTS:I

.field public blacklist cacheListElementsId:[I

.field public blacklist currentLayoutIndex:I

.field public blacklist inTransition:Z

.field private blacklist mIndexId:I

.field public blacklist measuredLayoutIndex:I

.field public blacklist previousLayoutIndex:I

.field public blacklist statePaintedComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFFI)V
    .registers 9

    .line 72
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V

    .line 48
    move-object p1, p0

    const/4 p2, 0x0

    iput p2, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->measuredLayoutIndex:I

    .line 49
    iput p2, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    .line 50
    iput p2, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    .line 51
    iput p2, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mIndexId:I

    .line 56
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->statePaintedComponents:Ljava/util/Map;

    .line 58
    const/16 p3, 0x10

    iput p3, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->MAX_CACHE_ELEMENTS:I

    .line 59
    iget p3, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->MAX_CACHE_ELEMENTS:I

    new-array p3, p3, [I

    iput-object p3, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->cacheListElementsId:[I

    .line 61
    iput-boolean p2, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->inTransition:Z

    .line 76
    iput p8, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mIndexId:I

    .line 77
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIII)V
    .registers 7

    .line 574
    const/16 v0, 0xd9

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 575
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 576
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 577
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 578
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 579
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 580
    return-void
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 589
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 590
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    .line 591
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    .line 592
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    .line 593
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v8

    .line 594
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;

    const/high16 v6, 0x42c80000    # 100.0f

    const/high16 v7, 0x42c80000    # 100.0f

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFFI)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    return-void
.end method


# virtual methods
.method public blacklist checkEndOfTransition()V
    .registers 4

    .line 507
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->measuredLayoutIndex:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object v0

    .line 508
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object v1

    .line 509
    iget-boolean v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->inTransition:Z

    if-eqz v2, :cond_2e

    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    if-nez v2, :cond_2e

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mAnimateMeasure:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimateMeasure;

    if-nez v1, :cond_2e

    .line 512
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->inTransition:Z

    .line 513
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object v2

    .line 514
    if-eq v2, v0, :cond_2e

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->isGone()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 515
    iput v1, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->mVisibility:I

    .line 516
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->needsRepaint()V

    .line 519
    :cond_2e
    return-void
.end method

.method public blacklist collapsePaintedComponents()V
    .registers 9

    .line 115
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 116
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->statePaintedComponents:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 117
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->statePaintedComponents:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 118
    array-length v3, v2

    .line 119
    const/4 v4, 0x1

    if-le v3, v4, :cond_4e

    const/4 v3, 0x0

    aget-object v5, v2, v3

    if-eqz v5, :cond_4e

    .line 120
    aget-object v5, v2, v3

    .line 121
    nop

    .line 122
    move v6, v4

    :goto_31
    array-length v7, v2

    if-ge v6, v7, :cond_44

    .line 123
    aget-object v7, v2, v6

    .line 124
    if-eqz v7, :cond_42

    invoke-virtual {v5, v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->suitableForTransition(Lcom/android/internal/widget/remotecompose/core/Operation;)Z

    move-result v7

    if-nez v7, :cond_3f

    goto :goto_42

    .line 122
    :cond_3f
    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    .line 125
    :cond_42
    :goto_42
    nop

    .line 126
    move v4, v3

    .line 129
    :cond_44
    if-eqz v4, :cond_4e

    .line 131
    nop

    :goto_47
    if-ge v3, v0, :cond_4e

    .line 132
    aput-object v5, v2, v3

    .line 131
    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    .line 136
    :cond_4e
    goto :goto_10

    .line 137
    :cond_4f
    return-void
.end method

.method public blacklist computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 8

    .line 147
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object v0

    .line 148
    move-object p0, v0

    invoke-virtual/range {p0 .. p6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 149
    return-void
.end method

.method public blacklist computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V
    .registers 9

    .line 171
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object v0

    .line 172
    move-object p0, v0

    invoke-virtual/range {p0 .. p7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V

    .line 174
    return-void
.end method

.method public blacklist findAnimatedComponents()V
    .registers 9

    .line 87
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_74

    .line 88
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 89
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v3, :cond_71

    .line 90
    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 91
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->setX(F)V

    .line 92
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->setY(F)V

    .line 93
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getChildrenComponents()Ljava/util/ArrayList;

    move-result-object v2

    .line 94
    move v3, v0

    :goto_24
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_71

    .line 95
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 96
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6e

    .line 97
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->statePaintedComponents:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5c

    .line 98
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->statePaintedComponents:Ljava/util/Map;

    .line 99
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mChildrenComponents:Ljava/util/ArrayList;

    .line 100
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 98
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_5c
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->statePaintedComponents:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    aput-object v4, v5, v1

    .line 94
    :cond_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 87
    :cond_71
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 107
    :cond_74
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->collapsePaintedComponents()V

    .line 108
    return-void
.end method

.method public blacklist getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
    .registers 7

    .line 381
    nop

    .line 382
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 383
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v4, :cond_20

    .line 384
    if-ne v2, p1, :cond_1e

    .line 385
    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    return-object v3

    .line 387
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    .line 389
    :cond_20
    goto :goto_9

    .line 390
    :cond_21
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    return-object p1
.end method

.method protected blacklist getSerializedName()Ljava/lang/String;
    .registers 2

    .line 601
    const-string v0, "STATE_LAYOUT"

    return-object v0
.end method

.method public blacklist hideLayoutsOtherThan(I)V
    .registers 7

    .line 361
    nop

    .line 362
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 363
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v4, :cond_23

    .line 364
    if-eq v2, p1, :cond_1e

    .line 365
    iput v1, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    goto :goto_21

    .line 367
    :cond_1e
    const/4 v4, 0x1

    iput v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    .line 369
    :goto_21
    add-int/lit8 v2, v2, 0x1

    .line 371
    :cond_23
    goto :goto_9

    .line 372
    :cond_24
    return-void
.end method

.method public blacklist inflate()V
    .registers 2

    .line 81
    invoke-super {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->inflate()V

    .line 82
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->hideLayoutsOtherThan(I)V

    .line 83
    return-void
.end method

.method public blacklist internalLayoutMeasure(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 4

    .line 156
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object v0

    .line 158
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->internalLayoutMeasure(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 159
    return-void
.end method

.method public blacklist layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 11

    .line 188
    invoke-virtual {p2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v0

    .line 189
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->selfLayout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 192
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object v1

    .line 196
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getComponentId()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v2

    .line 197
    invoke-virtual {v2, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->copyFrom(Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;)V

    .line 199
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 202
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->inTransition:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_73

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    if-eq v0, v2, :cond_73

    .line 203
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getChildrenComponents()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 205
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v3

    .line 206
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_69

    .line 207
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v3

    .line 208
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->statePaintedComponents:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 209
    array-length v5, v4

    move v6, v1

    :goto_5d
    if-ge v6, v5, :cond_69

    aget-object v7, v4, v6

    .line 210
    if-eqz v7, :cond_66

    .line 211
    invoke-virtual {v7, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 209
    :cond_66
    add-int/lit8 v6, v6, 0x1

    goto :goto_5d

    .line 215
    :cond_69
    invoke-virtual {p2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 216
    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 218
    :cond_72
    goto :goto_34

    .line 221
    :cond_73
    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mFirstLayout:Z

    .line 222
    return-void
.end method

.method public blacklist measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 25

    .line 239
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->statePaintedComponents:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 240
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->findAnimatedComponents()V

    .line 246
    :cond_d
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object v8

    .line 250
    iget-boolean v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->inTransition:Z

    const/4 v9, -0x1

    const/4 v10, 0x0

    if-eqz v1, :cond_ac

    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    if-eq v1, v2, :cond_ac

    .line 251
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object v11

    .line 252
    invoke-virtual {v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getChildrenComponents()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 253
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v2

    .line 254
    if-ne v2, v9, :cond_40

    .line 255
    goto :goto_2d

    .line 257
    :cond_40
    invoke-virtual {v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getChildrenComponents()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_48
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 258
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v4

    if-ne v4, v2, :cond_a3

    .line 259
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->statePaintedComponents:Ljava/util/Map;

    .line 260
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    aget-object v13, v2, v3

    .line 261
    if-eq v1, v13, :cond_a0

    .line 262
    nop

    .line 264
    invoke-virtual {v13}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v3

    .line 265
    invoke-virtual {v13}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v4

    .line 266
    invoke-virtual {v13}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v5

    .line 267
    invoke-virtual {v13}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v6

    .line 262
    move-object/from16 v2, p1

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 269
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 270
    invoke-virtual {v13}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->setX(F)V

    .line 271
    invoke-virtual {v13}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->setY(F)V

    .line 272
    iput v10, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    goto :goto_a8

    .line 261
    :cond_a0
    move-object/from16 v7, p6

    goto :goto_a8

    .line 276
    :cond_a3
    move-object/from16 v7, p6

    goto :goto_48

    .line 257
    :cond_a6
    move-object/from16 v7, p6

    .line 277
    :goto_a8
    goto :goto_2d

    .line 252
    :cond_a9
    move-object/from16 v7, p6

    goto :goto_ae

    .line 250
    :cond_ac
    move-object/from16 v7, p6

    .line 281
    :goto_ae
    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object v1, v8

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 284
    invoke-virtual {v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getChildrenComponents()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_c4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_150

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 285
    invoke-virtual {v7, v12}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v13

    .line 286
    invoke-virtual {v12}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v1

    const/4 v14, 0x1

    if-eq v1, v9, :cond_14b

    .line 289
    invoke-virtual {v12}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v15

    .line 290
    invoke-virtual {v15, v13}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->copyFrom(Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;)V

    .line 292
    invoke-virtual {v15, v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setVisibility(I)V

    .line 295
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->statePaintedComponents:Ljava/util/Map;

    invoke-virtual {v12}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 296
    move v2, v10

    :goto_fb
    array-length v3, v1

    if-ge v2, v3, :cond_14a

    .line 297
    move-object v3, v1

    aget-object v1, v3, v2

    .line 298
    if-eqz v1, :cond_141

    .line 299
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v4

    invoke-virtual {v7, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v4

    .line 302
    if-eq v12, v1, :cond_110

    .line 303
    invoke-virtual {v4, v13}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->copyFrom(Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;)V

    .line 307
    :cond_110
    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    if-ne v2, v5, :cond_118

    .line 308
    invoke-virtual {v4, v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setVisibility(I)V

    goto :goto_11d

    .line 310
    :cond_118
    if-eq v12, v1, :cond_11d

    .line 311
    invoke-virtual {v4, v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setVisibility(I)V

    .line 316
    :cond_11d
    :goto_11d
    if-eq v12, v1, :cond_13c

    .line 317
    move-object v4, v3

    invoke-virtual {v15}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v3

    move-object v5, v4

    invoke-virtual {v15}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v4

    move-object v6, v5

    invoke-virtual {v15}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v5

    move-object/from16 v16, v6

    invoke-virtual {v15}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v6

    move/from16 v17, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    goto :goto_145

    .line 316
    :cond_13c
    move/from16 v17, v2

    move-object/from16 v16, v3

    goto :goto_145

    .line 298
    :cond_141
    move/from16 v17, v2

    move-object/from16 v16, v3

    .line 296
    :goto_145
    add-int/lit8 v2, v17, 0x1

    move-object/from16 v1, v16

    goto :goto_fb

    .line 321
    :cond_14a
    goto :goto_14e

    .line 326
    :cond_14b
    invoke-virtual {v13, v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setVisibility(I)V

    .line 328
    :goto_14e
    goto/16 :goto_c4

    .line 331
    :cond_150
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    if-eq v1, v2, :cond_1ac

    .line 332
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object v1

    .line 333
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getChildrenComponents()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_164
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1ac

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 334
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v3

    .line 335
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v4

    if-eq v4, v9, :cond_17e

    .line 336
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v3

    .line 338
    :cond_17e
    invoke-virtual {v7, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->contains(I)Z

    move-result v3

    if-nez v3, :cond_1ab

    .line 339
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v3

    .line 340
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setX(F)V

    .line 341
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getY()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setY(F)V

    .line 342
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setW(F)V

    .line 343
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setH(F)V

    .line 344
    invoke-virtual {v3, v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setVisibility(I)V

    .line 346
    :cond_1ab
    goto :goto_164

    .line 349
    :cond_1ac
    invoke-virtual {v7, v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v1

    .line 350
    invoke-virtual {v7, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v2

    .line 351
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->copyFrom(Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;)V

    .line 352
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    iput v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->measuredLayoutIndex:I

    .line 353
    return-void
.end method

.method public blacklist onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FF)V
    .registers 6

    .line 179
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_7

    .line 180
    return-void

    .line 182
    :cond_7
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object v0

    .line 183
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FF)V

    .line 184
    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 13

    .line 395
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mIndexId:I

    const/4 v1, 0x1

    if-eqz v0, :cond_20

    .line 396
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mIndexId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getInteger(I)I

    move-result v0

    .line 397
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    if-eq v0, v2, :cond_20

    .line 398
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    .line 399
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    .line 400
    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->inTransition:Z

    .line 403
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->invalidateMeasure()V

    .line 410
    :cond_20
    nop

    .line 411
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 412
    instance-of v5, v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v5, :cond_51

    .line 413
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    if-eq v3, v5, :cond_43

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    if-eq v3, v5, :cond_43

    .line 414
    iput v2, v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    .line 416
    :cond_43
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->currentLayoutIndex:I

    if-ne v3, v5, :cond_4f

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->isVisible()Z

    move-result v5

    if-nez v5, :cond_4f

    .line 417
    iput v1, v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    .line 419
    :cond_4f
    add-int/lit8 v3, v3, 0x1

    .line 421
    :cond_51
    goto :goto_29

    .line 423
    :cond_52
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->measuredLayoutIndex:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object v0

    .line 424
    iget-boolean v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->inTransition:Z

    if-eqz v3, :cond_63

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->measuredLayoutIndex:I

    if-eq v3, v4, :cond_63

    goto :goto_64

    :cond_63
    move v1, v2

    .line 425
    :goto_64
    const/4 v3, -0x1

    if-eqz v1, :cond_115

    .line 430
    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->getLayout(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;

    move-result-object v4

    .line 431
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getChildrenComponents()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 432
    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->MAX_CACHE_ELEMENTS:I

    if-le v5, v6, :cond_85

    .line 433
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->MAX_CACHE_ELEMENTS:I

    mul-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->MAX_CACHE_ELEMENTS:I

    .line 434
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->MAX_CACHE_ELEMENTS:I

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->cacheListElementsId:[I

    .line 437
    :cond_85
    invoke-virtual {v4, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->applyAnimationAsNeeded(Lcom/android/internal/widget/remotecompose/core/PaintContext;)Z

    .line 440
    nop

    .line 441
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getChildrenComponents()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v2

    :goto_92
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 442
    iget-object v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->cacheListElementsId:[I

    invoke-virtual {v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getPaintId()I

    move-result v7

    aput v7, v8, v6

    .line 443
    add-int/lit8 v6, v6, 0x1

    .line 444
    goto :goto_92

    .line 446
    :cond_a9
    nop

    .line 447
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getChildrenComponents()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v7, v6

    :goto_b3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 448
    invoke-virtual {v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getPaintId()I

    move-result v8

    .line 449
    move v9, v2

    :goto_c4
    if-ge v9, v6, :cond_d5

    .line 450
    iget-object v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->cacheListElementsId:[I

    aget v10, v10, v9

    if-ne v10, v8, :cond_d2

    .line 451
    iget-object v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->cacheListElementsId:[I

    aput v3, v10, v9

    .line 452
    add-int/lit8 v7, v7, -0x1

    .line 449
    :cond_d2
    add-int/lit8 v9, v9, 0x1

    goto :goto_c4

    .line 455
    :cond_d5
    goto :goto_b3

    .line 457
    :cond_d6
    if-lez v7, :cond_112

    .line 458
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 459
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getX()F

    move-result v5

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getY()F

    move-result v7

    invoke-virtual {p1, v5, v7}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 460
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getChildrenComponents()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_ee
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 461
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getPaintId()I

    move-result v7

    .line 462
    move v8, v2

    :goto_ff
    if-ge v8, v6, :cond_10e

    .line 463
    iget-object v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->cacheListElementsId:[I

    aget v9, v9, v8

    if-ne v9, v7, :cond_10b

    .line 464
    invoke-virtual {v5, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 465
    goto :goto_10e

    .line 462
    :cond_10b
    add-int/lit8 v8, v8, 0x1

    goto :goto_ff

    .line 468
    :cond_10e
    :goto_10e
    goto :goto_ee

    .line 469
    :cond_10f
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 473
    :cond_112
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->applyAnimationAsNeeded(Lcom/android/internal/widget/remotecompose/core/PaintContext;)Z

    .line 477
    :cond_115
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 478
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getX()F

    move-result v2

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getY()F

    move-result v4

    invoke-virtual {p1, v2, v4}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 479
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_175

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 480
    instance-of v4, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v4, :cond_169

    move-object v4, v2

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v5

    if-eq v5, v3, :cond_169

    .line 481
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->statePaintedComponents:Ljava/util/Map;

    .line 482
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 483
    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->measuredLayoutIndex:I

    aget-object v4, v2, v4

    .line 484
    if-eqz v1, :cond_165

    .line 488
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->previousLayoutIndex:I

    aget-object v2, v2, v5

    .line 489
    if-eqz v2, :cond_165

    if-eq v4, v2, :cond_165

    .line 490
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 493
    :cond_165
    invoke-virtual {v4, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    goto :goto_173

    .line 494
    :cond_169
    instance-of v4, v2, Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    if-eqz v4, :cond_173

    .line 495
    check-cast v2, Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    goto :goto_174

    .line 494
    :cond_173
    :goto_173
    nop

    .line 497
    :goto_174
    goto :goto_12b

    .line 498
    :cond_175
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 500
    if-eqz v1, :cond_17d

    .line 501
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->checkEndOfTransition()V

    .line 503
    :cond_17d
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4

    .line 606
    invoke-super {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V

    .line 607
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->mIndexId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "indexId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 608
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 554
    const-string v0, "STATE_LAYOUT"

    return-object v0
.end method
