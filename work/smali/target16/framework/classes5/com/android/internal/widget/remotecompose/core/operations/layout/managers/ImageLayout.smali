.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
.source "ImageLayout.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;


# instance fields
.field private blacklist mAlpha:F

.field private blacklist mBitmapId:I

.field private blacklist mOutAlpha:F

.field blacklist mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

.field private blacklist mScaleType:I

.field blacklist mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIIFFFFIF)V
    .registers 19

    .line 78
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V

    .line 44
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mBitmapId:I

    .line 46
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mAlpha:F

    .line 49
    new-instance p2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    invoke-direct {p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;-><init>()V

    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    .line 51
    new-instance p2, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-direct {p2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;-><init>()V

    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    .line 79
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mBitmapId:I

    .line 80
    move/from16 p2, p9

    and-int/lit16 p2, p2, 0xff

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mScaleType:I

    .line 81
    move/from16 p2, p10

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mAlpha:F

    .line 82
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    if-eqz p3, :cond_34

    goto :goto_35

    :cond_34
    move p1, p2

    :goto_35
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mOutAlpha:F

    .line 83
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIIIF)V
    .registers 18

    .line 92
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIIFFFFIF)V

    .line 93
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V
    .registers 7

    .line 272
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->id()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 273
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 274
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 275
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 276
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 277
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 278
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 4

    .line 301
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->id()I

    move-result v0

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Layout Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 302
    const-string v0, "Image layout implementation.\n\n"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 303
    const/4 v0, 0x0

    const-string v1, "COMPONENT_ID"

    const-string/jumbo v2, "unique id for this component"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 304
    const-string v1, "ANIMATION_ID"

    const-string v2, "id used to match components, for animation purposes"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 308
    const-string v1, "BITMAP_ID"

    const-string v2, "bitmap id"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 309
    const-string v1, "SCALE_TYPE"

    const-string/jumbo v2, "scale type"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    .line 310
    const/4 v0, 0x1

    const-string v1, "ALPHA"

    const-string v2, "alpha"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 311
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 259
    const/16 v0, 0xea

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 250
    const-string v0, "ImageLayout"

    return-object v0
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

    .line 287
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 288
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    .line 289
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v4

    .line 290
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v5

    .line 291
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v6

    .line 292
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIIIF)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    return-void
.end method


# virtual methods
.method public blacklist computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 7

    .line 120
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->computeModifierDefinedWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result p2

    .line 121
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->computeModifierDefinedHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result p1

    .line 122
    invoke-virtual {p6, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object p3

    .line 123
    invoke-virtual {p3, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setW(F)V

    .line 124
    invoke-virtual {p3, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setH(F)V

    .line 125
    return-void
.end method

.method public blacklist computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V
    .registers 8

    .line 105
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p1

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mBitmapId:I

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    .line 106
    if-eqz p1, :cond_1e

    .line 107
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p7, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setWidth(F)V

    .line 108
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p7, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    .line 110
    :cond_1e
    return-void
.end method

.method protected blacklist getSerializedName()Ljava/lang/String;
    .registers 2

    .line 215
    const-string v0, "IMAGE_LAYOUT"

    return-object v0
.end method

.method public blacklist paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 26

    .line 129
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 130
    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mX:F

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mY:F

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 131
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 132
    iget v11, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mPaddingLeft:F

    .line 133
    iget v12, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mPaddingTop:F

    .line 134
    invoke-virtual {v1, v11, v12}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 135
    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mWidth:F

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mPaddingLeft:F

    sub-float/2addr v2, v3

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mPaddingRight:F

    sub-float/2addr v2, v3

    .line 136
    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mHeight:F

    iget v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mPaddingTop:F

    sub-float/2addr v3, v4

    iget v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mPaddingBottom:F

    sub-float/2addr v3, v4

    .line 137
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->clipRect(FFFF)V

    .line 139
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v5

    iget v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mBitmapId:I

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getObject(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    .line 140
    if-eqz v5, :cond_d2

    .line 141
    iget-object v13, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    .line 144
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->getWidth()I

    move-result v6

    int-to-float v6, v6

    .line 145
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mScaleType:I

    .line 141
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/high16 v23, 0x3f800000    # 1.0f

    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v22, v8

    invoke-virtual/range {v13 .. v23}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->setup(FFFFFFFFIF)V

    .line 153
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->savePaint()V

    .line 154
    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mOutAlpha:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_91

    .line 155
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mBitmapId:I

    .line 159
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->getWidth()I

    move-result v4

    .line 160
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->getHeight()I

    move-result v5

    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    iget v2, v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mFinalDstLeft:F

    float-to-int v6, v2

    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    iget v2, v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mFinalDstTop:F

    float-to-int v7, v2

    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    iget v2, v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mFinalDstRight:F

    float-to-int v8, v2

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mFinalDstBottom:F

    float-to-int v9, v0

    .line 155
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v10, -0x1

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawBitmap(IIIIIIIIII)V

    goto :goto_ce

    .line 167
    :cond_91
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->savePaint()V

    .line 168
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->reset()V

    .line 170
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mOutAlpha:F

    invoke-virtual {v2, v4, v4, v4, v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(FFFF)V

    .line 171
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->applyPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    .line 172
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mBitmapId:I

    .line 176
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->getWidth()I

    move-result v4

    .line 177
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->getHeight()I

    move-result v5

    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    iget v2, v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mFinalDstLeft:F

    float-to-int v6, v2

    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    iget v2, v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mFinalDstTop:F

    float-to-int v7, v2

    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    iget v2, v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mFinalDstRight:F

    float-to-int v8, v2

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mScaling:Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mFinalDstBottom:F

    float-to-int v9, v0

    .line 172
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v10, -0x1

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawBitmap(IIIIIIIIII)V

    .line 183
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restorePaint()V

    .line 185
    :goto_ce
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restorePaint()V

    goto :goto_d3

    .line 140
    :cond_d2
    move-object v0, v1

    .line 189
    :goto_d3
    neg-float v1, v11

    neg-float v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 190
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 191
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 4

    .line 56
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mBitmapId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 57
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mBitmapId:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 59
    :cond_a
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mAlpha:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 60
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 6

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->getSerializedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mAnimationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mWidth:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mVisibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mBitmapId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 241
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMAGE_LAYOUT ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mAnimationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mVisibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3

    .line 64
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mAlpha:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result p1

    goto :goto_15

    :cond_13
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mAlpha:F

    :goto_15
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mOutAlpha:F

    .line 65
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 8

    .line 315
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mComponentId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mAnimationId:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mBitmapId:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mScaleType:I

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->mAlpha:F

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V

    .line 316
    return-void
.end method
