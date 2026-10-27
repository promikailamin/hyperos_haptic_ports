.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;
.source "ScrollModifierOperation.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/DecoratorComponent;
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;


# static fields
.field public static final blacklist CLASS_NAME:Ljava/lang/String; = "ScrollModifierOperation"

.field private static final blacklist OP_CODE:I = 0xe2


# instance fields
.field blacklist mContentDimension:F

.field blacklist mDirection:I

.field blacklist mHostDimension:F

.field blacklist mInitialScrollX:F

.field blacklist mInitialScrollY:F

.field private final blacklist mMax:F

.field blacklist mMaxScrollX:F

.field blacklist mMaxScrollY:F

.field private final blacklist mNotchMax:F

.field private final blacklist mPositionExpression:F

.field blacklist mScrollX:F

.field blacklist mScrollY:F

.field blacklist mTouchDownX:F

.field blacklist mTouchDownY:F

.field private blacklist mTouchExpression:Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;


# direct methods
.method public constructor blacklist <init>(IFFF)V
    .registers 6

    .line 81
    const-string v0, "SCROLL_MODIFIER"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;-><init>(Ljava/lang/String;)V

    .line 82
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mDirection:I

    .line 83
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mPositionExpression:F

    .line 84
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mMax:F

    .line 85
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mNotchMax:F

    .line 86
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFF)V
    .registers 6

    .line 218
    const/16 v0, 0xe2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 219
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 220
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 221
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 222
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 223
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4

    .line 245
    const/16 v0, 0xe2

    const-string v1, "ScrollModifierOperation"

    const-string v2, "Modifier Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 246
    const-string v0, "define a Scroll Modifier"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 247
    const/4 v0, 0x0

    const-string v1, "direction"

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 248
    return-void
.end method

.method private blacklist getMaxScrollPosition(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;I)F
    .registers 4

    .line 251
    instance-of v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v0, :cond_28

    .line 252
    check-cast p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 253
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getChildrenComponents()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 254
    if-lez v0, :cond_28

    .line 255
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getChildrenComponents()Ljava/util/ArrayList;

    move-result-object p1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 256
    if-nez p2, :cond_23

    .line 257
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getY()F

    move-result p1

    return p1

    .line 259
    :cond_23
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getX()F

    move-result p1

    return p1

    .line 263
    :cond_28
    const/4 p1, 0x0

    return p1
.end method

.method public static blacklist id()I
    .registers 1

    .line 204
    const/16 v0, 0xe2

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 195
    const-string v0, "ScrollModifierOperation"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 232
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 233
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v1

    .line 234
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v2

    .line 235
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result p0

    .line 236
    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;-><init>(IFFF)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 4

    .line 134
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getRootLayoutComponent()Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_e

    .line 136
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->setHasTouchListeners(Z)V

    .line 138
    :cond_e
    invoke-super {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ListActionsOperation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 139
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_8

    goto :goto_a

    :cond_8
    const-string p1, ""

    :goto_a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getContentDimension()F
    .registers 2

    .line 378
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mContentDimension:F

    return v0
.end method

.method public blacklist getScrollAxisRange()Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;
    .registers 5

    .line 484
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->handlesVerticalScroll()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    .line 485
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollY:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mMaxScrollY:F

    invoke-direct {v0, v2, v3, v1, v1}, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;-><init>(FFZZ)V

    return-object v0

    .line 487
    :cond_11
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollX:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mMaxScrollX:F

    invoke-direct {v0, v2, v3, v1, v1}, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;-><init>(FFZZ)V

    return-object v0
.end method

.method public blacklist getScrollX()F
    .registers 2

    .line 125
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollX:F

    return v0
.end method

.method public blacklist getScrollX(F)F
    .registers 3

    .line 383
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mDirection:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 384
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollX:F

    return p1

    .line 386
    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist getScrollY()F
    .registers 2

    .line 129
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollY:F

    return v0
.end method

.method public blacklist getScrollY(F)F
    .registers 2

    .line 391
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mDirection:I

    if-nez p1, :cond_7

    .line 392
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollY:F

    return p1

    .line 394
    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist handlesHorizontalScroll()Z
    .registers 3

    .line 399
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public blacklist handlesVerticalScroll()Z
    .registers 2

    .line 404
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mDirection:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist inflate(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V
    .registers 5

    .line 94
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 95
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    if-eqz v2, :cond_1f

    .line 96
    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchExpression:Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    .line 97
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchExpression:Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->setComponent(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V

    .line 99
    :cond_1f
    goto :goto_6

    .line 100
    :cond_20
    return-void
.end method

.method public blacklist isHorizontalScroll()Z
    .registers 2

    .line 121
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mDirection:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist isVerticalScroll()Z
    .registers 2

    .line 117
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mDirection:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 5

    .line 272
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mWidth:F

    .line 273
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mHeight:F

    .line 274
    iget p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mMaxScrollY:F

    .line 275
    iget p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mDirection:I

    if-eqz p4, :cond_c

    .line 276
    iget p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mMaxScrollX:F

    .line 278
    :cond_c
    iget-object p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchExpression:Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    if-eqz p4, :cond_1c

    .line 279
    iget p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mDirection:I

    invoke-direct {p0, p2, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->getMaxScrollPosition(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;I)F

    move-result p2

    .line 280
    const/4 p4, 0x0

    cmpl-float p4, p2, p4

    if-lez p4, :cond_1c

    .line 281
    move p3, p2

    .line 284
    :cond_1c
    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mMax:F

    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result p2

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 285
    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mNotchMax:F

    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result p2

    iget p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mContentDimension:F

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 286
    return-void
.end method

.method public blacklist onTouchCancel(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 6

    .line 351
    return-void
.end method

.method public blacklist onTouchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 8

    .line 295
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchDownX:F

    .line 296
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchDownY:F

    .line 297
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollX:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mInitialScrollX:F

    .line 298
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollY:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mInitialScrollY:F

    .line 299
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchExpression:Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    if-eqz v0, :cond_20

    .line 300
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchExpression:Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 301
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchExpression:Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollX:F

    add-float/2addr p4, v1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollY:F

    add-float/2addr p5, v1

    invoke-virtual {v0, p1, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->touchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V

    .line 303
    :cond_20
    invoke-virtual {p2, p3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->appliedTouchOperation(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V

    .line 304
    return-void
.end method

.method public blacklist onTouchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 7

    .line 329
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchExpression:Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    if-eqz p2, :cond_14

    .line 330
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchExpression:Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 331
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchExpression:Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    iget p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollX:F

    add-float/2addr p3, p4

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollY:F

    add-float/2addr v0, p5

    invoke-virtual {p2, p1, p3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->touchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V

    .line 333
    :cond_14
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchDownX:F

    sub-float/2addr p4, p1

    .line 334
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchDownY:F

    sub-float/2addr p5, p1

    .line 336
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mPositionExpression:F

    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->isVariable(F)Z

    move-result p1

    if-nez p1, :cond_48

    .line 337
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mDirection:I

    const/4 p2, 0x0

    if-nez p1, :cond_38

    .line 338
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mMaxScrollY:F

    neg-float p1, p1

    iget p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mInitialScrollY:F

    add-float/2addr p3, p5

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollY:F

    goto :goto_48

    .line 340
    :cond_38
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mMaxScrollX:F

    neg-float p1, p1

    iget p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mInitialScrollX:F

    add-float/2addr p3, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollX:F

    .line 343
    :cond_48
    :goto_48
    return-void
.end method

.method public blacklist onTouchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FFFF)V
    .registers 14

    .line 315
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchExpression:Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    if-eqz p2, :cond_19

    .line 316
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchExpression:Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 317
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchExpression:Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollX:F

    add-float v2, p4, p2

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollY:F

    add-float v3, p5, p2

    move-object v1, p1

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->touchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FFFF)V

    .line 320
    :cond_19
    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 5

    .line 165
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 166
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 167
    goto :goto_6

    .line 168
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchExpression:Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    if-nez v0, :cond_1f

    .line 169
    return-void

    .line 171
    :cond_1f
    nop

    .line 172
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mPositionExpression:F

    .line 174
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFloat(I)F

    move-result p1

    .line 176
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mDirection:I

    if-nez v0, :cond_38

    .line 177
    neg-float p1, p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollY:F

    goto :goto_3b

    .line 179
    :cond_38
    neg-float p1, p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollX:F

    .line 181
    :goto_3b
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchExpression:Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    if-eqz v0, :cond_9

    .line 105
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchExpression:Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 107
    :cond_9
    return-void
.end method

.method public blacklist reset()V
    .registers 1

    .line 410
    return-void
.end method

.method public blacklist scrollByOffset(Lcom/android/internal/widget/remotecompose/core/RemoteContext;I)I
    .registers 6

    .line 438
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchExpression:Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    .line 440
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->handlesVerticalScroll()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1c

    .line 441
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mMaxScrollY:F

    neg-float p1, p1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollY:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollY:F

    goto :goto_2d

    .line 443
    :cond_1c
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mMaxScrollX:F

    neg-float p1, p1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollX:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollX:F

    .line 445
    :goto_2d
    return p2
.end method

.method public blacklist scrollDirection()I
    .registers 2

    .line 428
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->handlesVerticalScroll()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 429
    const/4 v0, 0x2

    return v0

    .line 431
    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist scrollDirection(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;)Z
    .registers 5

    .line 451
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mHostDimension:F

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    .line 453
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;->FORWARD:Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

    if-eq p2, v1, :cond_12

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;->DOWN:Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

    if-eq p2, v1, :cond_12

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;->RIGHT:Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

    if-ne p2, v1, :cond_15

    .line 456
    :cond_12
    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr v0, p2

    .line 459
    :cond_15
    float-to-int p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->scrollByOffset(Lcom/android/internal/widget/remotecompose/core/RemoteContext;I)I

    move-result p1

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    return p1
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5

    .line 414
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->MODIFIER:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    .line 415
    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    .line 416
    const-string v0, "ScrollModifierOperation"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mDirection:I

    .line 417
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "direction"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mMax:F

    .line 418
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "max"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mNotchMax:F

    .line 419
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "notchMax"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    .line 420
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->isVerticalScroll()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollY:F

    goto :goto_41

    :cond_3f
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mScrollX:F

    :goto_41
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "scrollValue"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    .line 421
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->isVerticalScroll()Z

    move-result v0

    if-eqz v0, :cond_55

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mMaxScrollY:F

    goto :goto_57

    :cond_55
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mMaxScrollX:F

    :goto_57
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "maxScrollValue"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mContentDimension:F

    .line 422
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "contentDimension"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mHostDimension:F

    .line 423
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "hostDimension"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 424
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 5

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SCROLL = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 155
    return-void
.end method

.method public blacklist setHorizontalScrollDimension(FF)V
    .registers 3

    .line 360
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mHostDimension:F

    .line 361
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mContentDimension:F

    .line 362
    sub-float/2addr p2, p1

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mMaxScrollX:F

    .line 363
    return-void
.end method

.method public blacklist setVerticalScrollDimension(FF)V
    .registers 3

    .line 372
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mHostDimension:F

    .line 373
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mContentDimension:F

    .line 374
    sub-float/2addr p2, p1

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mMaxScrollY:F

    .line 375
    return-void
.end method

.method public blacklist showOnScreen(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z
    .registers 6

    .line 464
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 465
    invoke-virtual {p2, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getLocationInWindow([F)V

    .line 467
    nop

    .line 468
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->handlesVerticalScroll()Z

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_14

    .line 469
    aget p2, v0, v2

    neg-float p2, p2

    float-to-int p2, p2

    goto :goto_18

    .line 471
    :cond_14
    aget p2, v0, v1

    neg-float p2, p2

    float-to-int p2, p2

    .line 474
    :goto_18
    if-nez p2, :cond_1b

    .line 475
    return v2

    .line 477
    :cond_1b
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->scrollByOffset(Lcom/android/internal/widget/remotecompose/core/RemoteContext;I)I

    move-result p1

    if-eqz p1, :cond_22

    move v1, v2

    :cond_22
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScrollModifierOperation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3

    .line 111
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchExpression:Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    if-eqz v0, :cond_9

    .line 112
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mTouchExpression:Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 114
    :cond_9
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 6

    .line 143
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mDirection:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mPositionExpression:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mMax:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->mNotchMax:F

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFF)V

    .line 144
    return-void
.end method
