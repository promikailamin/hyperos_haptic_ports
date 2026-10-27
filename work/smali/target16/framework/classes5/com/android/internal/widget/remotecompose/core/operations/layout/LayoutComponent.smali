.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
.source "LayoutComponent.java"


# static fields
.field private static final blacklist USE_IMAGE_TEMP_FIX:Z = true


# instance fields
.field protected final blacklist mCachedAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mChildrenComponents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mChildrenHaveZIndex:Z

.field protected blacklist mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

.field protected blacklist mContent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

.field private blacklist mDrawContentOperations:Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;

.field protected blacklist mGraphicsLayerModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

.field protected blacklist mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

.field protected blacklist mHorizontalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

.field protected blacklist mPaddingBottom:F

.field protected blacklist mPaddingLeft:F

.field protected blacklist mPaddingRight:F

.field protected blacklist mPaddingTop:F

.field blacklist mScrollX:F

.field blacklist mScrollY:F

.field protected blacklist mVerticalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

.field protected blacklist mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

.field protected blacklist mZIndexModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ZIndexModifierOperation;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V
    .registers 8

    .line 86
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V

    .line 54
    move-object p1, p0

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    .line 55
    iput-object p2, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    .line 56
    iput-object p2, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mZIndexModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ZIndexModifierOperation;

    .line 57
    iput-object p2, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mGraphicsLayerModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

    .line 59
    const/4 p3, 0x0

    iput p3, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingLeft:F

    .line 60
    iput p3, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingRight:F

    .line 61
    iput p3, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingTop:F

    .line 62
    iput p3, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingBottom:F

    .line 64
    iput p3, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mScrollX:F

    .line 65
    iput p3, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mScrollY:F

    .line 67
    iput-object p2, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mHorizontalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    .line 68
    iput-object p2, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mVerticalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    .line 70
    new-instance p3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-direct {p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;-><init>()V

    iput-object p3, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    .line 72
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenComponents:Ljava/util/ArrayList;

    .line 75
    const/4 p3, 0x0

    iput-boolean p3, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenHaveZIndex:Z

    .line 123
    iput-object p2, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mContent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    .line 346
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mCachedAttributes:Ljava/util/HashMap;

    .line 87
    return-void
.end method

.method static synthetic blacklist lambda$paintingComponent$0(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)I
    .registers 2

    .line 372
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getZIndex()F

    move-result p0

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getZIndex()F

    move-result p1

    sub-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public blacklist computeModifierDefinedHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .registers 8

    .line 449
    nop

    .line 450
    nop

    .line 451
    nop

    .line 452
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/OperationInterface;

    .line 453
    if-eqz p1, :cond_31

    invoke-interface {v4}, Lcom/android/internal/widget/remotecompose/core/OperationInterface;->isDirty()Z

    move-result v5

    if-eqz v5, :cond_31

    instance-of v5, v4, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v5, :cond_31

    .line 454
    move-object v5, v4

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-interface {v5, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 455
    invoke-interface {v4}, Lcom/android/internal/widget/remotecompose/core/OperationInterface;->markNotDirty()V

    .line 457
    :cond_31
    instance-of v5, v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    if-eqz v5, :cond_4c

    .line 458
    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    .line 459
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->getType()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    move-result-object p1

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->EXACT:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    if-eq p1, v0, :cond_47

    .line 460
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->getType()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    move-result-object p1

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->EXACT_DP:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    if-ne p1, v0, :cond_5d

    .line 461
    :cond_47
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->getValue()F

    move-result v1

    goto :goto_5d

    .line 465
    :cond_4c
    instance-of v5, v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    if-eqz v5, :cond_5c

    .line 466
    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    .line 467
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getTop()F

    move-result v5

    add-float/2addr v2, v5

    .line 468
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getBottom()F

    move-result v4

    add-float/2addr v3, v4

    .line 470
    :cond_5c
    goto :goto_10

    .line 471
    :cond_5d
    :goto_5d
    add-float/2addr v2, v1

    add-float/2addr v2, v3

    return v2
.end method

.method public blacklist computeModifierDefinedPaddingHeight([F)F
    .registers 7

    .line 481
    nop

    .line 482
    nop

    .line 483
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/OperationInterface;

    .line 484
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    if-eqz v4, :cond_2a

    .line 485
    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    .line 486
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getTop()F

    move-result v4

    add-float/2addr v1, v4

    .line 487
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getBottom()F

    move-result v3

    add-float/2addr v2, v3

    .line 489
    :cond_2a
    goto :goto_e

    .line 490
    :cond_2b
    const/4 v0, 0x0

    aput v1, p1, v0

    .line 491
    const/4 v0, 0x1

    aput v2, p1, v0

    .line 492
    add-float/2addr v1, v2

    return v1
.end method

.method public blacklist computeModifierDefinedPaddingWidth([F)F
    .registers 7

    .line 433
    nop

    .line 434
    nop

    .line 435
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/OperationInterface;

    .line 436
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    if-eqz v4, :cond_2a

    .line 437
    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    .line 438
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getLeft()F

    move-result v4

    add-float/2addr v1, v4

    .line 439
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getRight()F

    move-result v3

    add-float/2addr v2, v3

    .line 441
    :cond_2a
    goto :goto_e

    .line 442
    :cond_2b
    const/4 v0, 0x0

    aput v1, p1, v0

    .line 443
    const/4 v0, 0x1

    aput v2, p1, v0

    .line 444
    add-float/2addr v1, v2

    return v1
.end method

.method public blacklist computeModifierDefinedWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .registers 8

    .line 401
    nop

    .line 402
    nop

    .line 403
    nop

    .line 404
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/OperationInterface;

    .line 405
    if-eqz p1, :cond_31

    invoke-interface {v4}, Lcom/android/internal/widget/remotecompose/core/OperationInterface;->isDirty()Z

    move-result v5

    if-eqz v5, :cond_31

    instance-of v5, v4, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v5, :cond_31

    .line 406
    move-object v5, v4

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-interface {v5, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 407
    invoke-interface {v4}, Lcom/android/internal/widget/remotecompose/core/OperationInterface;->markNotDirty()V

    .line 409
    :cond_31
    instance-of v5, v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    if-eqz v5, :cond_4c

    .line 410
    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    .line 411
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->getType()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    move-result-object p1

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->EXACT:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    if-eq p1, v0, :cond_47

    .line 412
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->getType()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    move-result-object p1

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->EXACT_DP:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    if-ne p1, v0, :cond_5d

    .line 413
    :cond_47
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->getValue()F

    move-result v1

    goto :goto_5d

    .line 417
    :cond_4c
    instance-of v5, v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    if-eqz v5, :cond_5c

    .line 418
    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    .line 419
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getLeft()F

    move-result v5

    add-float/2addr v2, v5

    .line 420
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getRight()F

    move-result v4

    add-float/2addr v3, v4

    .line 422
    :cond_5c
    goto :goto_10

    .line 423
    :cond_5d
    :goto_5d
    add-float/2addr v2, v1

    add-float/2addr v2, v3

    return v2
.end method

.method public blacklist drawContent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 4

    .line 340
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 341
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mX:F

    neg-float v0, v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mY:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 342
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 343
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 344
    return-void
.end method

.method public blacklist getChildrenComponents()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ">;"
        }
    .end annotation

    .line 502
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenComponents:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getComponentModifiers()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;
    .registers 2

    .line 497
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    return-object v0
.end method

.method public blacklist getHeightModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    return-object v0
.end method

.method public blacklist getLocationInWindow([FZ)V
    .registers 7

    .line 290
    const/4 p2, 0x0

    aget v0, p1, p2

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mX:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingLeft:F

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p1, p2

    .line 291
    const/4 v0, 0x1

    aget v1, p1, v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mY:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingTop:F

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    .line 292
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v0, :cond_1f

    .line 293
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getLocationInWindow([FZ)V

    .line 295
    :cond_1f
    return-void
.end method

.method public blacklist getPaddingBottom()F
    .registers 2

    .line 102
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingBottom:F

    return v0
.end method

.method public blacklist getPaddingLeft()F
    .registers 2

    .line 90
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingLeft:F

    return v0
.end method

.method public blacklist getPaddingRight()F
    .registers 2

    .line 98
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingRight:F

    return v0
.end method

.method public blacklist getPaddingTop()F
    .registers 2

    .line 94
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingTop:F

    return v0
.end method

.method public blacklist getScrollX()F
    .registers 3

    .line 299
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mHorizontalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    if-eqz v0, :cond_d

    .line 300
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mHorizontalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mScrollX:F

    invoke-interface {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;->getScrollX(F)F

    move-result v0

    return v0

    .line 302
    :cond_d
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mScrollX:F

    return v0
.end method

.method public blacklist getScrollY()F
    .registers 3

    .line 311
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mVerticalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    if-eqz v0, :cond_d

    .line 312
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mVerticalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mScrollY:F

    invoke-interface {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;->getScrollY(F)F

    move-result v0

    return v0

    .line 314
    :cond_d
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mScrollY:F

    return v0
.end method

.method public blacklist getWidthModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    return-object v0
.end method

.method public blacklist getZIndex()F
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mZIndexModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ZIndexModifierOperation;

    if-eqz v0, :cond_b

    .line 118
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mZIndexModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ZIndexModifierOperation;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ZIndexModifierOperation;->getValue()F

    move-result v0

    return v0

    .line 120
    :cond_b
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mZIndex:F

    return v0
.end method

.method public blacklist inflate()V
    .registers 14

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 142
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 143
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    if-eqz v4, :cond_b0

    .line 144
    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    iput-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mContent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    .line 145
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mContent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    iput-object p0, v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 146
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 147
    nop

    .line 148
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;->getComponents(Ljava/util/ArrayList;)V

    .line 150
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_ab

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mContent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    iget-object v4, v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_ab

    .line 151
    new-instance v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasContent;

    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v11, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasContent;-><init>(IFFFFLcom/android/internal/widget/remotecompose/core/operations/layout/Component;I)V

    .line 153
    iget-object v3, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mContent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    iget-object v3, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_59
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_93

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 154
    instance-of v6, v4, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    if-eqz v6, :cond_81

    .line 155
    iget-object v6, v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasContent;->mList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->getWidth()I

    move-result v6

    .line 157
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->getHeight()I

    move-result v4

    .line 158
    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasContent;->setWidth(F)V

    .line 159
    int-to-float v4, v4

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasContent;->setHeight(F)V

    .line 160
    goto :goto_92

    .line 161
    :cond_81
    instance-of v6, v4, Lcom/android/internal/widget/remotecompose/core/operations/MatrixTranslate;

    if-nez v6, :cond_92

    instance-of v6, v4, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSave;

    if-nez v6, :cond_92

    instance-of v6, v4, Lcom/android/internal/widget/remotecompose/core/operations/MatrixRestore;

    if-nez v6, :cond_92

    .line 164
    iget-object v6, v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasContent;->mList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_92
    :goto_92
    goto :goto_59

    .line 168
    :cond_93
    iget-object v3, v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasContent;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_aa

    .line 169
    iget-object v3, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mContent:Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;

    iget-object v3, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 170
    iget-object v3, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasContent;->inflate()V

    .line 173
    :cond_aa
    goto :goto_af

    .line 150
    :cond_ab
    move-object v11, p0

    .line 174
    invoke-virtual {v3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;->getData(Ljava/util/ArrayList;)V

    .line 179
    :goto_af
    goto :goto_e1

    :cond_b0
    move-object v11, p0

    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    if-eqz v4, :cond_d1

    .line 180
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;

    if-eqz v4, :cond_bf

    .line 181
    move-object v4, v3

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;

    invoke-virtual {v4, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentVisibilityOperation;->setParent(Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;)V

    .line 183
    :cond_bf
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    if-eqz v4, :cond_c9

    .line 184
    move-object v4, v3

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    invoke-virtual {v4, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->inflate(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V

    .line 186
    :cond_c9
    iget-object v4, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->add(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;)V

    goto :goto_e1

    .line 187
    :cond_d1
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/ComponentData;

    if-eqz v4, :cond_e1

    .line 188
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/TouchListener;

    if-eqz v4, :cond_e1

    .line 190
    check-cast v3, Lcom/android/internal/widget/remotecompose/core/TouchListener;

    invoke-interface {v3, p0}, Lcom/android/internal/widget/remotecompose/core/TouchListener;->setComponent(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V

    .line 195
    :cond_e1
    :goto_e1
    goto/16 :goto_10

    .line 197
    :cond_e3
    move-object v11, p0

    iget-object v2, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 198
    iget-object v2, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 199
    iget-object v0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 200
    iget-object v0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mList:Ljava/util/ArrayList;

    iget-object v1, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_100
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_121

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 202
    iput-object v11, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mParent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 203
    iget-object v2, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v2, :cond_120

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mZIndexModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ZIndexModifierOperation;

    if-eqz v1, :cond_120

    .line 205
    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenHaveZIndex:Z

    .line 207
    :cond_120
    goto :goto_100

    .line 209
    :cond_121
    const/4 v0, 0x0

    iput v0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mX:F

    .line 210
    iput v0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mY:F

    .line 211
    iput v0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingLeft:F

    .line 212
    iput v0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingTop:F

    .line 213
    iput v0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingRight:F

    .line 214
    iput v0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingBottom:F

    .line 216
    nop

    .line 217
    nop

    .line 219
    iget-object v0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :goto_13d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/OperationInterface;

    .line 220
    instance-of v5, v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    if-eqz v5, :cond_174

    .line 224
    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getLeft()F

    move-result v5

    .line 225
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getRight()F

    move-result v6

    .line 226
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getTop()F

    move-result v7

    .line 227
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getBottom()F

    move-result v4

    .line 228
    iget v8, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingLeft:F

    add-float/2addr v8, v5

    iput v8, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingLeft:F

    .line 229
    iget v5, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingTop:F

    add-float/2addr v5, v7

    iput v5, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingTop:F

    .line 230
    iget v5, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingRight:F

    add-float/2addr v5, v6

    iput v5, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingRight:F

    .line 231
    iget v5, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingBottom:F

    add-float/2addr v5, v4

    iput v5, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingBottom:F

    .line 232
    goto :goto_1cf

    :cond_174
    instance-of v5, v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    if-eqz v5, :cond_181

    iget-object v5, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    if-nez v5, :cond_181

    .line 233
    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    iput-object v4, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    goto :goto_1cf

    .line 234
    :cond_181
    instance-of v5, v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    if-eqz v5, :cond_18e

    iget-object v5, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    if-nez v5, :cond_18e

    .line 235
    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    iput-object v4, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    goto :goto_1cf

    .line 236
    :cond_18e
    instance-of v5, v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;

    if-eqz v5, :cond_196

    .line 237
    move-object v2, v4

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;

    goto :goto_1cf

    .line 238
    :cond_196
    instance-of v5, v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;

    if-eqz v5, :cond_19e

    .line 239
    move-object v3, v4

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;

    goto :goto_1cf

    .line 240
    :cond_19e
    instance-of v5, v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ZIndexModifierOperation;

    if-eqz v5, :cond_1a7

    .line 241
    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ZIndexModifierOperation;

    iput-object v4, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mZIndexModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ZIndexModifierOperation;

    goto :goto_1cf

    .line 242
    :cond_1a7
    instance-of v5, v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

    if-eqz v5, :cond_1b0

    .line 243
    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

    iput-object v4, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mGraphicsLayerModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

    goto :goto_1cf

    .line 244
    :cond_1b0
    instance-of v5, v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    if-eqz v5, :cond_1b9

    .line 245
    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    iput-object v4, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    goto :goto_1cf

    .line 246
    :cond_1b9
    instance-of v5, v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    if-eqz v5, :cond_1cf

    .line 247
    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    .line 248
    invoke-interface {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;->handlesHorizontalScroll()Z

    move-result v5

    if-eqz v5, :cond_1c7

    .line 249
    iput-object v4, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mHorizontalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    .line 251
    :cond_1c7
    invoke-interface {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;->handlesVerticalScroll()Z

    move-result v5

    if-eqz v5, :cond_1cf

    .line 252
    iput-object v4, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mVerticalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    .line 255
    :cond_1cf
    :goto_1cf
    goto/16 :goto_13d

    .line 256
    :cond_1d1
    iget-object v0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    if-nez v0, :cond_1de

    .line 257
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    sget-object v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->WRAP:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    invoke-direct {v0, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;)V

    iput-object v0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    .line 259
    :cond_1de
    iget-object v0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    if-nez v0, :cond_1eb

    .line 260
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    sget-object v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;->WRAP:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;

    invoke-direct {v0, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/DimensionModifierOperation$Type;)V

    iput-object v0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    .line 262
    :cond_1eb
    if-eqz v2, :cond_1f2

    .line 263
    iget-object v0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mWidthModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->setWidthIn(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;)V

    .line 265
    :cond_1f2
    if-eqz v3, :cond_1f9

    .line 266
    iget-object v0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mHeightModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->setHeightIn(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;)V

    .line 269
    :cond_1f9
    iget-object v0, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->DEFAULT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    if-eq v0, v2, :cond_222

    .line 270
    const/4 v0, 0x0

    :goto_200
    iget-object v2, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_222

    .line 271
    iget-object v2, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 272
    if-eqz v2, :cond_21f

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getAnimationSpec()Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    move-result-object v3

    sget-object v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->DEFAULT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    if-ne v3, v4, :cond_21f

    .line 273
    iget-object v3, v11, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mAnimationSpec:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->setAnimationSpec(Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;)V

    .line 270
    :cond_21f
    add-int/lit8 v0, v0, 0x1

    goto :goto_200

    .line 278
    :cond_222
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->computeModifierDefinedWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->setWidth(F)V

    .line 279
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->computeModifierDefinedHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->setHeight(F)V

    .line 280
    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 4

    .line 323
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mDrawContentOperations:Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;

    if-eqz v0, :cond_17

    .line 324
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 325
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mX:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mY:F

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 326
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mDrawContentOperations:Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 327
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 328
    return-void

    .line 330
    :cond_17
    invoke-super {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 331
    return-void
.end method

.method public blacklist paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 9

    .line 350
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 351
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    .line 353
    iput-object p0, v1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 354
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 355
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mX:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mY:F

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 356
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->isVisualDebug()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 357
    invoke-virtual {p0, p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->debugBox(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 359
    :cond_1f
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mGraphicsLayerModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

    if-eqz v2, :cond_41

    .line 360
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getWidth()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getHeight()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->startGraphicsLayer(II)V

    .line 361
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mCachedAttributes:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 362
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mGraphicsLayerModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mCachedAttributes:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->fillInAttributes(Ljava/util/HashMap;)V

    .line 363
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mCachedAttributes:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->setGraphicsLayer(Ljava/util/HashMap;)V

    .line 365
    :cond_41
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 366
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingLeft:F

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getScrollX()F

    move-result v3

    add-float/2addr v2, v3

    .line 367
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingTop:F

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getScrollY()F

    move-result v4

    add-float/2addr v3, v4

    .line 368
    invoke-virtual {p1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 369
    iget-boolean v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenHaveZIndex:Z

    if-eqz v4, :cond_96

    .line 371
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 372
    new-instance v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 373
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_95

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 374
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->isDirty()Z

    move-result v6

    if-eqz v6, :cond_8e

    instance-of v6, v5, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v6, :cond_8e

    .line 375
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 376
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->markNotDirty()V

    .line 378
    :cond_8e
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    .line 379
    invoke-virtual {v5, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 380
    goto :goto_6e

    .line 381
    :cond_95
    goto :goto_c3

    .line 382
    :cond_96
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 383
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->isDirty()Z

    move-result v6

    if-eqz v6, :cond_bc

    instance-of v6, v5, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v6, :cond_bc

    .line 384
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 385
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->markNotDirty()V

    .line 387
    :cond_bc
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    .line 388
    invoke-virtual {v5, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 389
    goto :goto_9c

    .line 391
    :cond_c3
    :goto_c3
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mGraphicsLayerModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

    if-eqz v1, :cond_ca

    .line 392
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->endGraphicsLayer()V

    .line 394
    :cond_ca
    neg-float v1, v2

    neg-float v2, v3

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 395
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 396
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p1

    iput-object v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 397
    return-void
.end method

.method public blacklist registerVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3

    .line 533
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mDrawContentOperations:Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;

    if-eqz v0, :cond_9

    .line 534
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mDrawContentOperations:Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;->registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 536
    :cond_9
    return-void
.end method

.method public blacklist selfOrModifier(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 518
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 519
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 522
    :cond_b
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 523
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 524
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 526
    :cond_2c
    goto :goto_15

    .line 528
    :cond_2d
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5

    .line 507
    invoke-super {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V

    .line 508
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->LAYOUT_COMPONENT:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    .line 509
    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingLeft:F

    .line 510
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "paddingLeft"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingRight:F

    .line 511
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "paddingRight"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingTop:F

    .line 512
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "paddingTop"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mPaddingBottom:F

    .line 513
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "paddingBottom"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 514
    return-void
.end method

.method public blacklist setCanvasOperations(Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;)V
    .registers 2

    .line 134
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mDrawContentOperations:Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;

    .line 135
    return-void
.end method

.method public blacklist setScrollX(F)V
    .registers 2

    .line 306
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mScrollX:F

    .line 307
    return-void
.end method

.method public blacklist setScrollY(F)V
    .registers 2

    .line 318
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->mScrollY:F

    .line 319
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 285
    const-string v0, "UNKNOWN LAYOUT_COMPONENT"

    return-object v0
.end method
