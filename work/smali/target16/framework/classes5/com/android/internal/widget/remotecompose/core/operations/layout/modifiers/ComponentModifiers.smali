.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "ComponentModifiers.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/DecoratorComponent;
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickHandler;
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;
.implements Lcom/android/internal/widget/remotecompose/core/SerializableToString;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# instance fields
.field blacklist mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;)V
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method public blacklist addAll(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;",
            ">;)V"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 165
    return-void
.end method

.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 4

    .line 57
    invoke-super {p0, p1}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 58
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 59
    invoke-interface {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 60
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    .line 61
    goto :goto_9

    .line 62
    :cond_1c
    return-void
.end method

.method public blacklist getHorizontalScrollDimension()F
    .registers 4

    .line 313
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 314
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    if-eqz v2, :cond_23

    .line 315
    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    .line 316
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->isHorizontalScroll()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 317
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->getContentDimension()F

    move-result v0

    return v0

    .line 320
    :cond_23
    goto :goto_6

    .line 321
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getVerticalScrollDimension()F
    .registers 4

    .line 330
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 331
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    if-eqz v2, :cond_23

    .line 332
    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    .line 333
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->isVerticalScroll()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 334
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->getContentDimension()F

    move-result v0

    return v0

    .line 337
    :cond_23
    goto :goto_6

    .line 338
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasHorizontalScroll()Z
    .registers 4

    .line 245
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 246
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    if-eqz v2, :cond_20

    .line 247
    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    .line 248
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->isHorizontalScroll()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 249
    const/4 v0, 0x1

    return v0

    .line 252
    :cond_20
    goto :goto_6

    .line 253
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasVerticalScroll()Z
    .registers 4

    .line 262
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 263
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    if-eqz v2, :cond_20

    .line 264
    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    .line 265
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->isVerticalScroll()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 266
    const/4 v0, 0x1

    return v0

    .line 269
    :cond_20
    goto :goto_6

    .line 270
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 12

    .line 142
    nop

    .line 143
    nop

    .line 144
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, p3

    move v2, p4

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 145
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    if-eqz v4, :cond_31

    .line 146
    move-object v4, v3

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    .line 147
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getLeft()F

    move-result v5

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getRight()F

    move-result v6

    add-float/2addr v5, v6

    sub-float/2addr v1, v5

    .line 148
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getTop()F

    move-result v5

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getBottom()F

    move-result v4

    add-float/2addr v5, v4

    sub-float/2addr v2, v5

    .line 150
    :cond_31
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;

    if-eqz v4, :cond_3b

    .line 151
    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/DecoratorComponent;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/DecoratorComponent;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    goto :goto_44

    .line 152
    :cond_3b
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/DecoratorComponent;

    if-eqz v4, :cond_44

    .line 153
    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/DecoratorComponent;

    invoke-interface {v3, p1, p2, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/DecoratorComponent;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    .line 155
    :cond_44
    :goto_44
    goto :goto_a

    .line 156
    :cond_45
    return-void
.end method

.method public blacklist onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 9

    .line 174
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 175
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickHandler;

    if-eqz v2, :cond_1c

    .line 176
    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickHandler;

    move-object p0, v1

    invoke-interface/range {p0 .. p5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickHandler;->onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    .line 178
    :cond_1c
    goto :goto_6

    .line 179
    :cond_1d
    return-void
.end method

.method public blacklist onTouchCancel(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 9

    .line 218
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 219
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    if-eqz v2, :cond_1c

    .line 220
    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    move-object p0, v1

    invoke-interface/range {p0 .. p5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;->onTouchCancel(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    .line 222
    :cond_1c
    goto :goto_6

    .line 223
    :cond_1d
    return-void
.end method

.method public blacklist onTouchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 9

    .line 188
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 189
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    if-eqz v2, :cond_1c

    .line 190
    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    move-object p0, v1

    invoke-interface/range {p0 .. p5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;->onTouchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    .line 192
    :cond_1c
    goto :goto_6

    .line 193
    :cond_1d
    return-void
.end method

.method public blacklist onTouchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V
    .registers 9

    .line 232
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 233
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    if-eqz v2, :cond_1c

    .line 234
    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    move-object p0, v1

    invoke-interface/range {p0 .. p5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;->onTouchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FF)V

    .line 236
    :cond_1c
    goto :goto_6

    .line 237
    :cond_1d
    return-void
.end method

.method public blacklist onTouchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FFFF)V
    .registers 11

    .line 204
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 205
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    if-eqz v2, :cond_1c

    .line 206
    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;

    move-object p0, v1

    invoke-interface/range {p0 .. p7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/TouchHandler;->onTouchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;FFFF)V

    .line 208
    :cond_1c
    goto :goto_6

    .line 209
    :cond_1d
    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 9

    .line 107
    nop

    .line 108
    nop

    .line 109
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 110
    invoke-interface {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;->isDirty()Z

    move-result v4

    if-eqz v4, :cond_2d

    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v4, :cond_2d

    .line 111
    move-object v4, v3

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 112
    invoke-interface {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;->markNotDirty()V

    .line 114
    :cond_2d
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    if-eqz v4, :cond_49

    .line 115
    move-object v4, v3

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;

    .line 116
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getLeft()F

    move-result v5

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getTop()F

    move-result v6

    invoke-virtual {p1, v5, v6}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 117
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getLeft()F

    move-result v5

    add-float/2addr v1, v5

    .line 118
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->getTop()F

    move-result v4

    add-float/2addr v2, v4

    .line 120
    :cond_49
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSave;

    if-nez v4, :cond_a

    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/MatrixRestore;

    if-eqz v4, :cond_52

    .line 121
    goto :goto_a

    .line 123
    :cond_52
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;

    if-eqz v4, :cond_64

    .line 124
    neg-float v4, v1

    neg-float v5, v2

    invoke-virtual {p1, v4, v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 125
    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ClickModifierOperation;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 126
    invoke-virtual {p1, v1, v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    goto :goto_6d

    .line 127
    :cond_64
    instance-of v4, v3, Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    if-eqz v4, :cond_6d

    .line 128
    check-cast v3, Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 130
    :cond_6d
    :goto_6d
    goto :goto_a

    .line 133
    :cond_6e
    neg-float v0, v1

    neg-float v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 134
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5

    .line 343
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->MODIFIER:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    .line 344
    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    .line 345
    const-string v0, "ComponentModifiers"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    .line 346
    const-string v1, "modifiers"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/util/List;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 347
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 6

    .line 81
    const-string v0, "MODIFIERS"

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 83
    add-int/lit8 v2, p1, 0x1

    invoke-interface {v1, v2, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;->serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V

    .line 84
    goto :goto_b

    .line 85
    :cond_1d
    return-void
.end method

.method public blacklist setHorizontalScrollDimension(FF)V
    .registers 6

    .line 280
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 281
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    if-eqz v2, :cond_21

    .line 282
    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    .line 283
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->isHorizontalScroll()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 284
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->setHorizontalScrollDimension(FF)V

    .line 287
    :cond_21
    goto :goto_6

    .line 288
    :cond_22
    return-void
.end method

.method public blacklist setVerticalScrollDimension(FF)V
    .registers 6

    .line 297
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 298
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    if-eqz v2, :cond_21

    .line 299
    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    .line 300
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->isVerticalScroll()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 301
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->setVerticalScrollDimension(FF)V

    .line 304
    :cond_21
    goto :goto_6

    .line 305
    :cond_22
    return-void
.end method

.method public blacklist size()I
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ComponentModifiers \n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 69
    const-string v3, "    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    goto :goto_d

    .line 71
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 2

    .line 77
    return-void
.end method
