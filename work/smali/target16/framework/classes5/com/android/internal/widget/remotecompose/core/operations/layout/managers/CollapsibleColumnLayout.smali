.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;
.source "CollapsibleColumnLayout.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFFIIF)V
    .registers 11

    .line 49
    invoke-direct/range {p0 .. p10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFFIIF)V

    .line 60
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIIIF)V
    .registers 7

    .line 69
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIIIF)V

    .line 76
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V
    .registers 7

    .line 110
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;->id()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 112
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 113
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 114
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 115
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 116
    return-void
.end method

.method private blacklist computeVisibleChildren(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V
    .registers 24

    .line 202
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 203
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v10

    .line 204
    const/16 v2, 0x20

    invoke-virtual {v10, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->addVisibilityOverride(I)V

    .line 205
    nop

    .line 206
    nop

    .line 207
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v12, 0x0

    move v7, v1

    move v13, v12

    move v14, v13

    :goto_1d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v15, 0x1

    if-eqz v2, :cond_9d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 208
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v3

    invoke-virtual {v8, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->contains(I)Z

    move-result v3

    if-nez v3, :cond_57

    .line 210
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;

    if-eqz v3, :cond_46

    .line 211
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    move/from16 v16, v7

    move-object/from16 v8, p5

    goto :goto_59

    .line 213
    :cond_46
    move/from16 v16, v7

    const/4 v6, 0x0

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v4, 0x0

    move-object/from16 v3, p1

    move/from16 v5, p2

    move-object/from16 v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    goto :goto_59

    .line 208
    :cond_57
    move/from16 v16, v7

    .line 217
    :goto_59
    invoke-virtual {v8, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v3

    .line 218
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v4

    if-nez v4, :cond_89

    .line 219
    if-eqz v9, :cond_80

    .line 220
    invoke-virtual {v9}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getWidth()F

    move-result v4

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v9, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setWidth(F)V

    .line 221
    invoke-virtual {v9}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getHeight()F

    move-result v4

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v9, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    .line 223
    :cond_80
    add-int/lit8 v13, v13, 0x1

    .line 224
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v3

    sub-float v7, v16, v3

    goto :goto_8b

    .line 218
    :cond_89
    move/from16 v7, v16

    .line 226
    :goto_8b
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v3, :cond_9c

    .line 227
    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 228
    const-class v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/CollapsiblePriorityModifierOperation;

    .line 229
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->selfOrModifier(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/CollapsiblePriorityModifierOperation;

    .line 230
    if-eqz v2, :cond_9c

    .line 231
    move v14, v15

    .line 234
    :cond_9c
    goto :goto_1d

    .line 235
    :cond_9d
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b5

    if-eqz v9, :cond_b5

    .line 236
    invoke-virtual {v9}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getHeight()F

    move-result v2

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;->mSpacedBy:F

    add-int/lit8 v4, v13, -0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v9, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    .line 239
    :cond_b5
    nop

    .line 240
    nop

    .line 242
    nop

    .line 243
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    .line 244
    if-eqz v14, :cond_c2

    .line 246
    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    .line 247
    invoke-static {v0, v15}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsiblePriority;->sortWithPriorities(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 250
    :cond_c2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v4, v2

    move v5, v4

    move v3, v12

    :goto_ca
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/16 v7, 0x10

    if-eqz v6, :cond_109

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 251
    invoke-virtual {v8, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v6

    .line 252
    if-nez v3, :cond_105

    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v11

    if-eqz v11, :cond_e5

    goto :goto_105

    .line 256
    :cond_e5
    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v11

    .line 257
    add-float/2addr v11, v4

    cmpl-float v14, v11, v1

    if-lez v14, :cond_f0

    move v14, v15

    goto :goto_f1

    :cond_f0
    move v14, v12

    .line 258
    :goto_f1
    if-eqz v14, :cond_f8

    .line 259
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->addVisibilityOverride(I)V

    .line 260
    move v3, v15

    goto :goto_104

    .line 262
    :cond_f8
    nop

    .line 263
    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 264
    add-int/lit8 v13, v13, 0x1

    move v4, v11

    .line 266
    :goto_104
    goto :goto_ca

    .line 253
    :cond_105
    :goto_105
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->addVisibilityOverride(I)V

    .line 254
    goto :goto_ca

    .line 267
    :cond_109
    if-eqz p4, :cond_114

    if-eqz v9, :cond_114

    .line 268
    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    .line 270
    :cond_114
    if-eqz v13, :cond_120

    if-eqz v9, :cond_123

    invoke-virtual {v9}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getHeight()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_123

    .line 271
    :cond_120
    invoke-virtual {v10, v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->addVisibilityOverride(I)V

    .line 273
    :cond_123
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 90
    const/16 v0, 0xe9

    return v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 126
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    .line 127
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v4

    .line 128
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v5

    .line 129
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v6

    .line 130
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIIIF)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    return-void
.end method


# virtual methods
.method public blacklist computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 14

    .line 183
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;->computeVisibleChildren(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V

    .line 184
    return-void
.end method

.method public blacklist computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V
    .registers 8

    .line 172
    move p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;->computeVisibleChildren(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V

    .line 173
    return-void
.end method

.method protected blacklist getSerializedName()Ljava/lang/String;
    .registers 2

    .line 81
    const-string v0, "COLLAPSIBLE_COLUMN"

    return-object v0
.end method

.method public blacklist hasVerticalIntrinsicDimension()Z
    .registers 2

    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist internalLayoutMeasure(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 11

    .line 189
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->internalLayoutMeasure(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 191
    invoke-virtual {p2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v3

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;->computeVisibleChildren(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V

    .line 193
    return-void
.end method

.method public blacklist minIntrinsicHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .registers 5

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;->computeModifierDefinedHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v0

    .line 143
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 144
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->minIntrinsicHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result p1

    add-float/2addr v0, p1

    .line 146
    :cond_1a
    return v0
.end method

.method public blacklist minIntrinsicWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .registers 5

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;->computeModifierDefinedWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v0

    .line 152
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 153
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->minIntrinsicWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result p1

    add-float/2addr v0, p1

    .line 155
    :cond_1a
    return v0
.end method
