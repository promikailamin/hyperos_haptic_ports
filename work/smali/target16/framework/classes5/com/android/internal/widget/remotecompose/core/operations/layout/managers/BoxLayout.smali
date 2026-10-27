.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
.source "BoxLayout.java"


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

    .line 58
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V

    .line 59
    move-object p1, p0

    iput p8, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mHorizontalPositioning:I

    .line 60
    iput p9, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mVerticalPositioning:I

    .line 61
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIII)V
    .registers 16

    .line 69
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

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFFII)V

    .line 79
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIII)V
    .registers 6

    .line 208
    const/16 v0, 0xca

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 209
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 210
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 211
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 212
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 213
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 6

    .line 241
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->id()I

    move-result v0

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Layout Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 242
    const-string v0, "Box layout implementation.\n\nChild components are laid out independently from one another,\n and painted in their hierarchy order (first children drawnbefore the latter). Horizontal and Vertical positioningare supported."

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 248
    const/16 v0, 0x96

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->examplesDimension(II)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 249
    const-string v0, "Top"

    const-string v1, "layout-BoxLayout-start-top.png"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 250
    const-string v0, "Center"

    const-string v1, "layout-BoxLayout-center-center.png"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 251
    const-string v0, "Bottom"

    const-string v1, "layout-BoxLayout-end-bottom.png"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 252
    const/4 v0, 0x0

    const-string v1, "COMPONENT_ID"

    const-string/jumbo v2, "unique id for this component"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 253
    const-string v1, "ANIMATION_ID"

    const-string v2, "id used to match components, for animation purposes"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 257
    const-string v1, "HORIZONTAL_POSITIONING"

    const-string v2, "horizontal positioning value"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 258
    const-string v1, "START"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 259
    const-string v1, "CENTER"

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 260
    const-string v3, "END"

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 261
    const-string v3, "VERTICAL_POSITIONING"

    const-string/jumbo v4, "vertical positioning value"

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 262
    const-string v0, "TOP"

    const/4 v3, 0x4

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 263
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 264
    const-string v0, "BOTTOM"

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 265
    return-void
.end method

.method private blacklist getPositioningString(I)Ljava/lang/String;
    .registers 2

    .line 280
    packed-switch p1, :pswitch_data_16

    .line 292
    const-string p1, "NONE"

    return-object p1

    .line 290
    :pswitch_6
    const-string p1, "BOTTOM"

    return-object p1

    .line 288
    :pswitch_9
    const-string p1, "TOP"

    return-object p1

    .line 286
    :pswitch_c
    const-string p1, "END"

    return-object p1

    .line 284
    :pswitch_f
    const-string p1, "CENTER"

    return-object p1

    .line 282
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

    .line 190
    const/16 v0, 0xca

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 181
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

    .line 222
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 223
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    .line 224
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v4

    .line 225
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v5

    .line 226
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIII)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    return-void
.end method


# virtual methods
.method public blacklist computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 9

    .line 133
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 134
    move-object p0, v1

    invoke-virtual/range {p0 .. p6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 135
    goto :goto_6

    .line 136
    :cond_17
    return-void
.end method

.method public blacklist computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V
    .registers 15

    .line 115
    iget-object p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_6
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_49

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    move-object v0, p5

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 116
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move v3, p2

    move v5, p3

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 117
    invoke-virtual {v6, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result p2

    if-nez p2, :cond_44

    .line 119
    invoke-virtual {p7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getWidth()F

    move-result p2

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-virtual {p7, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setWidth(F)V

    .line 120
    invoke-virtual {p7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getHeight()F

    move-result p2

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p7, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    .line 122
    :cond_44
    move-object p1, v1

    move p2, v3

    move p3, v5

    move-object p6, v6

    goto :goto_6

    .line 123
    :cond_49
    return-void
.end method

.method protected blacklist getSerializedName()Ljava/lang/String;
    .registers 2

    .line 103
    const-string v0, "BOX"

    return-object v0
.end method

.method public blacklist internalLayoutMeasure(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 10

    .line 140
    invoke-virtual {p2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object p1

    .line 141
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mPaddingLeft:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mPaddingRight:F

    sub-float/2addr v0, v1

    .line 142
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result p1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mPaddingTop:F

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mPaddingBottom:F

    sub-float/2addr p1, v1

    .line 143
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 144
    invoke-virtual {p2, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v2

    .line 145
    nop

    .line 146
    nop

    .line 147
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mVerticalPositioning:I

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_6c

    :pswitch_38
    move v3, v5

    goto :goto_4c

    .line 155
    :pswitch_3a
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v3

    sub-float v3, p1, v3

    goto :goto_4c

    .line 149
    :pswitch_41
    nop

    .line 150
    move v3, v5

    goto :goto_4c

    .line 152
    :pswitch_44
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v3

    sub-float v3, p1, v3

    div-float/2addr v3, v4

    .line 153
    nop

    .line 158
    :goto_4c
    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mHorizontalPositioning:I

    packed-switch v6, :pswitch_data_78

    goto :goto_63

    .line 166
    :pswitch_52
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v4

    sub-float v5, v0, v4

    goto :goto_63

    .line 163
    :pswitch_59
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v5

    sub-float v5, v0, v5

    div-float/2addr v5, v4

    .line 164
    goto :goto_63

    .line 160
    :pswitch_61
    nop

    .line 161
    nop

    .line 169
    :goto_63
    invoke-virtual {v2, v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setX(F)V

    .line 170
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setY(F)V

    .line 171
    goto :goto_1e

    .line 172
    :cond_6a
    return-void

    nop

    :pswitch_data_6c
    .packed-switch 0x2
        :pswitch_44
        :pswitch_38
        :pswitch_41
        :pswitch_3a
    .end packed-switch

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_61
        :pswitch_59
        :pswitch_52
    .end packed-switch
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4

    .line 274
    invoke-super {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V

    .line 275
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mVerticalPositioning:I

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->getPositioningString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "verticalPositioning"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 276
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mHorizontalPositioning:I

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->getPositioningString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "horizontalPositioning"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 277
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BOX ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mAnimationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mVisibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 6

    .line 269
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mComponentId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mAnimationId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mHorizontalPositioning:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->mVerticalPositioning:I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIII)V

    .line 270
    return-void
.end method
