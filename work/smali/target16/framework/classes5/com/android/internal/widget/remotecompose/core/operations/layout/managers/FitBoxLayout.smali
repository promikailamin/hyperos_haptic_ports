.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
.source "FitBoxLayout.java"


# static fields
.field public static final blacklist BOTTOM:I = 0x5

.field public static final blacklist CENTER:I = 0x2

.field public static final blacklist END:I = 0x3

.field public static final blacklist START:I = 0x1

.field public static final blacklist TOP:I = 0x4


# instance fields
.field blacklist mHorizontalPositioning:I

.field blacklist mVerticalPositioning:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFFII)V
    .registers 10

    .line 63
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V

    .line 64
    move-object p1, p0

    iput p8, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mHorizontalPositioning:I

    .line 65
    iput p9, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mVerticalPositioning:I

    .line 66
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIII)V
    .registers 16

    .line 74
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v8, p4

    move v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFFII)V

    .line 84
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIII)V
    .registers 6

    .line 279
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->id()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 280
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 281
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 282
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 283
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 284
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 6

    .line 312
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->id()I

    move-result v0

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Layout Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 313
    const-string v0, "FitBox layout implementation.\n\nOnly display the first child component that fits in the available space"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 317
    const/16 v0, 0x96

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->examplesDimension(II)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 318
    const-string v0, "Top"

    const-string v1, "layout-BoxLayout-start-top.png"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 319
    const-string v0, "Center"

    const-string v1, "layout-BoxLayout-center-center.png"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 320
    const-string v0, "Bottom"

    const-string v1, "layout-BoxLayout-end-bottom.png"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 321
    const/4 v0, 0x0

    const-string v1, "COMPONENT_ID"

    const-string/jumbo v2, "unique id for this component"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 322
    const-string v1, "ANIMATION_ID"

    const-string v2, "id used to match components, for animation purposes"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 326
    const-string v1, "HORIZONTAL_POSITIONING"

    const-string v2, "horizontal positioning value"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 327
    const-string v1, "START"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 328
    const-string v1, "CENTER"

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 329
    const-string v3, "END"

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 330
    const-string v3, "VERTICAL_POSITIONING"

    const-string/jumbo v4, "vertical positioning value"

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 331
    const-string v0, "TOP"

    const/4 v3, 0x4

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 332
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 333
    const-string v0, "BOTTOM"

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 334
    return-void
.end method

.method private blacklist getPositioningString(I)Ljava/lang/String;
    .registers 2

    .line 349
    packed-switch p1, :pswitch_data_16

    .line 361
    const-string p1, "NONE"

    return-object p1

    .line 359
    :pswitch_6
    const-string p1, "BOTTOM"

    return-object p1

    .line 357
    :pswitch_9
    const-string p1, "TOP"

    return-object p1

    .line 355
    :pswitch_c
    const-string p1, "END"

    return-object p1

    .line 353
    :pswitch_f
    const-string p1, "CENTER"

    return-object p1

    .line 351
    :pswitch_12
    const-string p1, "START"

    return-object p1

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static blacklist id()I
    .registers 1

    .line 261
    const/16 v0, 0xb0

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 252
    const-string v0, "BoxLayout"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 293
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 294
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    .line 295
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v4

    .line 296
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v5

    .line 297
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIII)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    return-void
.end method


# virtual methods
.method public blacklist computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 14

    .line 169
    nop

    .line 170
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 171
    nop

    .line 172
    nop

    .line 173
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    const/4 v4, 0x0

    if-eqz v3, :cond_4e

    .line 174
    move-object v3, v2

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 175
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getWidthModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    move-result-object v5

    .line 176
    if-eqz v5, :cond_33

    .line 177
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getWidthModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->getWidthIn()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;

    move-result-object v5

    .line 178
    if-eqz v5, :cond_33

    .line 179
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;->getMin()F

    move-result v5

    goto :goto_34

    .line 182
    :cond_33
    move v5, v4

    :goto_34
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getHeightModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    move-result-object v6

    .line 183
    if-eqz v6, :cond_4b

    .line 184
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getHeightModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->getHeightIn()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;

    move-result-object v3

    .line 185
    if-eqz v3, :cond_4b

    .line 186
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;->getMin()F

    move-result v4

    move v3, v4

    move v4, v5

    goto :goto_4f

    .line 190
    :cond_4b
    move v3, v4

    move v4, v5

    goto :goto_4f

    .line 173
    :cond_4e
    move v3, v4

    .line 190
    :goto_4f
    move-object p0, v2

    invoke-virtual/range {p0 .. p6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 194
    invoke-virtual {p6, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v2

    .line 198
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->clearVisibilityOverride()V

    .line 199
    if-nez v1, :cond_6c

    cmpg-float v4, v4, p3

    if-gtz v4, :cond_6c

    cmpg-float v3, v3, p5

    if-gtz v3, :cond_6c

    .line 200
    nop

    .line 201
    const/16 v1, 0x20

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->addVisibilityOverride(I)V

    const/4 v1, 0x1

    goto :goto_71

    .line 203
    :cond_6c
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->addVisibilityOverride(I)V

    .line 205
    :goto_71
    goto :goto_8

    .line 206
    :cond_72
    return-void
.end method

.method public blacklist computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V
    .registers 23

    .line 121
    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 122
    invoke-virtual {v6, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v8

    .line 123
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    move v11, v10

    :goto_10
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v12, 0x1

    if-eqz v0, :cond_8e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 124
    nop

    .line 125
    nop

    .line 126
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    const/4 v2, 0x0

    if-eqz v1, :cond_57

    .line 127
    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 128
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getWidthModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    move-result-object v3

    .line 129
    if-eqz v3, :cond_3c

    .line 130
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getWidthModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->getWidthIn()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;

    move-result-object v3

    .line 131
    if-eqz v3, :cond_3c

    .line 132
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;->getMin()F

    move-result v3

    goto :goto_3d

    .line 135
    :cond_3c
    move v3, v2

    :goto_3d
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getHeightModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    move-result-object v4

    .line 136
    if-eqz v4, :cond_54

    .line 137
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getHeightModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->getHeightIn()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;

    move-result-object v1

    .line 138
    if-eqz v1, :cond_54

    .line 139
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;->getMin()F

    move-result v2

    move v14, v2

    move v13, v3

    goto :goto_59

    .line 143
    :cond_54
    move v14, v2

    move v13, v3

    goto :goto_59

    .line 126
    :cond_57
    move v13, v2

    move v14, v13

    .line 143
    :goto_59
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move/from16 v3, p2

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 144
    invoke-virtual {v6, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v0

    .line 145
    if-nez v11, :cond_88

    cmpg-float v1, v13, p2

    if-gtz v1, :cond_88

    cmpg-float v1, v14, p3

    if-gtz v1, :cond_88

    .line 146
    nop

    .line 147
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->addVisibilityOverride(I)V

    .line 148
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v1

    invoke-virtual {v7, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setWidth(F)V

    .line 149
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    move v11, v12

    goto :goto_8d

    .line 151
    :cond_88
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->addVisibilityOverride(I)V

    .line 153
    :goto_8d
    goto :goto_10

    .line 154
    :cond_8e
    if-nez v11, :cond_94

    .line 155
    invoke-virtual {v8, v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setVisibility(I)V

    goto :goto_97

    .line 157
    :cond_94
    invoke-virtual {v8, v12}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setVisibility(I)V

    .line 159
    :goto_97
    return-void
.end method

.method protected blacklist getSerializedName()Ljava/lang/String;
    .registers 2

    .line 108
    const-string v0, "FITBOX"

    return-object v0
.end method

.method public blacklist internalLayoutMeasure(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 10

    .line 210
    invoke-virtual {p2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object p1

    .line 211
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mPaddingLeft:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mPaddingRight:F

    sub-float/2addr v0, v1

    .line 212
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result p1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mPaddingTop:F

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mPaddingBottom:F

    sub-float/2addr p1, v1

    .line 213
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->applyVisibility(FFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)Z

    .line 214
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 215
    invoke-virtual {p2, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v2

    .line 216
    nop

    .line 217
    nop

    .line 218
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mVerticalPositioning:I

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_6e

    :pswitch_3b
    move v3, v5

    goto :goto_4f

    .line 226
    :pswitch_3d
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v3

    sub-float v3, p1, v3

    goto :goto_4f

    .line 220
    :pswitch_44
    nop

    .line 221
    move v3, v5

    goto :goto_4f

    .line 223
    :pswitch_47
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v3

    sub-float v3, p1, v3

    div-float/2addr v3, v4

    .line 224
    nop

    .line 229
    :goto_4f
    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mHorizontalPositioning:I

    packed-switch v6, :pswitch_data_7a

    goto :goto_66

    .line 237
    :pswitch_55
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v4

    sub-float v5, v0, v4

    goto :goto_66

    .line 234
    :pswitch_5c
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v5

    sub-float v5, v0, v5

    div-float/2addr v5, v4

    .line 235
    goto :goto_66

    .line 231
    :pswitch_64
    nop

    .line 232
    nop

    .line 240
    :goto_66
    invoke-virtual {v2, v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setX(F)V

    .line 241
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setY(F)V

    .line 242
    goto :goto_21

    .line 243
    :cond_6d
    return-void

    :pswitch_data_6e
    .packed-switch 0x2
        :pswitch_47
        :pswitch_3b
        :pswitch_44
        :pswitch_3d
    .end packed-switch

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_64
        :pswitch_5c
        :pswitch_55
    .end packed-switch
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4

    .line 343
    invoke-super {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V

    .line 344
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mVerticalPositioning:I

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->getPositioningString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "verticalPositioning"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 345
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mHorizontalPositioning:I

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->getPositioningString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "horizontalPositioning"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 346
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BOX ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mAnimationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mVisibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 6

    .line 338
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mComponentId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mAnimationId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mHorizontalPositioning:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->mVerticalPositioning:I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIII)V

    .line 339
    return-void
.end method
