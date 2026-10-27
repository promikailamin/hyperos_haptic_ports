.class public Lcom/miui/autoui/DefaultAutoUICanvas;
.super Ljava/lang/Object;
.source "DefaultAutoUICanvas.java"

# interfaces
.implements Lcom/miui/autoui/IAutoUICanvas;


# direct methods
.method public constructor blacklist <init>(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public blacklist drawArc(FFFFFFZLandroid/graphics/Paint;Ljava/util/function/Consumer;)V
    .registers 11
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F
    .param p7, "useCenter"    # Z
    .param p8, "paint"    # Landroid/graphics/Paint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFFFZ",
            "Landroid/graphics/Paint;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .line 30
    .local p9, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/RectF;>;"
    if-nez p9, :cond_3

    .line 31
    return-void

    .line 33
    :cond_3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 34
    .local v0, "rect":Landroid/graphics/RectF;
    invoke-interface {p9, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public blacklist drawBitmap(Landroid/graphics/Bitmap;FFFFLandroid/graphics/RectF;Landroid/graphics/Paint;Ljava/util/function/BiConsumer;)V
    .registers 12
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F
    .param p6, "dst"    # Landroid/graphics/RectF;
    .param p7, "paint"    # Landroid/graphics/Paint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "FFFF",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/Paint;",
            "Ljava/util/function/BiConsumer<",
            "Landroid/graphics/Bitmap;",
            "Landroid/util/Pair<",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/RectF;",
            ">;>;)V"
        }
    .end annotation

    .line 39
    .local p8, "consumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/graphics/Bitmap;Landroid/util/Pair<Landroid/graphics/RectF;Landroid/graphics/RectF;>;>;"
    if-nez p8, :cond_3

    .line 40
    return-void

    .line 42
    :cond_3
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p2, p3, p4, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p8, p1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public blacklist drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;Ljava/util/function/Consumer;)V
    .registers 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "FF",
            "Landroid/graphics/Paint;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 47
    .local p5, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/Bitmap;>;"
    if-nez p5, :cond_3

    .line 48
    return-void

    .line 50
    :cond_3
    invoke-interface {p5, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method public blacklist drawBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Rect;Landroid/graphics/Paint;Ljava/util/function/BiConsumer;)V
    .registers 15
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "dst"    # Landroid/graphics/Rect;
    .param p7, "paint"    # Landroid/graphics/Paint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "IIII",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Paint;",
            "Ljava/util/function/BiConsumer<",
            "Landroid/graphics/Bitmap;",
            "Landroid/util/Pair<",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/RectF;",
            ">;>;)V"
        }
    .end annotation

    .line 55
    .local p8, "consumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/graphics/Bitmap;Landroid/util/Pair<Landroid/graphics/RectF;Landroid/graphics/RectF;>;>;"
    if-nez p8, :cond_3

    .line 56
    return-void

    .line 58
    :cond_3
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    int-to-float v5, p5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p8, p1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public blacklist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "paint"    # Landroid/graphics/Paint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Matrix;",
            "Landroid/graphics/Paint;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 63
    .local p4, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/Bitmap;>;"
    if-nez p4, :cond_3

    .line 64
    return-void

    .line 66
    :cond_3
    invoke-interface {p4, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method public blacklist drawBitmap([IIIFFIIZLandroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 11
    .param p1, "colors"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "hasAlpha"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;
    .param p10, "runnable"    # Ljava/lang/Runnable;

    .line 71
    if-nez p10, :cond_3

    .line 72
    return-void

    .line 74
    :cond_3
    invoke-interface {p10}, Ljava/lang/Runnable;->run()V

    .line 75
    return-void
.end method

.method public blacklist drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;Ljava/util/function/Consumer;)V
    .registers 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "meshWidth"    # I
    .param p3, "meshHeight"    # I
    .param p4, "verts"    # [F
    .param p5, "vertOffset"    # I
    .param p6, "colors"    # [I
    .param p7, "colorOffset"    # I
    .param p8, "paint"    # Landroid/graphics/Paint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "II[FI[II",
            "Landroid/graphics/Paint;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 79
    .local p9, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/Bitmap;>;"
    if-nez p9, :cond_3

    .line 80
    return-void

    .line 82
    :cond_3
    invoke-interface {p9, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public blacklist drawCircle(FFFLandroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 6
    .param p1, "cx"    # F
    .param p2, "cy"    # F
    .param p3, "radius"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;
    .param p5, "runnable"    # Ljava/lang/Runnable;

    .line 87
    if-nez p5, :cond_3

    .line 88
    return-void

    .line 90
    :cond_3
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    .line 91
    return-void
.end method

.method public blacklist drawColor(ILandroid/graphics/BlendMode;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/BlendMode;
    .param p3, "runnable"    # Ljava/lang/Runnable;

    .line 95
    if-nez p3, :cond_3

    .line 96
    return-void

    .line 98
    :cond_3
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 99
    return-void
.end method

.method public blacklist drawColor(ILandroid/graphics/PorterDuff$Mode;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;
    .param p3, "runnable"    # Ljava/lang/Runnable;

    .line 103
    if-nez p3, :cond_3

    .line 104
    return-void

    .line 106
    :cond_3
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 107
    return-void
.end method

.method public blacklist drawColor(ILjava/lang/Runnable;)V
    .registers 3
    .param p1, "color"    # I
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .line 111
    if-nez p2, :cond_3

    .line 112
    return-void

    .line 114
    :cond_3
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 115
    return-void
.end method

.method public blacklist drawColor(JLandroid/graphics/BlendMode;Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "color"    # J
    .param p3, "mode"    # Landroid/graphics/BlendMode;
    .param p4, "runnable"    # Ljava/lang/Runnable;

    .line 119
    if-nez p4, :cond_3

    .line 120
    return-void

    .line 122
    :cond_3
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    .line 123
    return-void
.end method

.method public blacklist drawDoubleRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/RectF;FFLandroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 9
    .param p1, "outer"    # Landroid/graphics/RectF;
    .param p2, "outerRx"    # F
    .param p3, "outerRy"    # F
    .param p4, "inner"    # Landroid/graphics/RectF;
    .param p5, "innerRx"    # F
    .param p6, "innerRy"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;
    .param p8, "runnable"    # Ljava/lang/Runnable;

    .line 127
    if-nez p8, :cond_3

    .line 128
    return-void

    .line 130
    :cond_3
    invoke-interface {p8}, Ljava/lang/Runnable;->run()V

    .line 131
    return-void
.end method

.method public blacklist drawDoubleRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/RectF;[FLandroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 7
    .param p1, "outer"    # Landroid/graphics/RectF;
    .param p2, "outerRadii"    # [F
    .param p3, "inner"    # Landroid/graphics/RectF;
    .param p4, "innerRadii"    # [F
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "runnable"    # Ljava/lang/Runnable;

    .line 135
    if-nez p6, :cond_3

    .line 136
    return-void

    .line 138
    :cond_3
    invoke-interface {p6}, Ljava/lang/Runnable;->run()V

    .line 139
    return-void
.end method

.method public blacklist drawLine(FFFFLandroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 7
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "stopX"    # F
    .param p4, "stopY"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "runnable"    # Ljava/lang/Runnable;

    .line 143
    if-nez p6, :cond_3

    .line 144
    return-void

    .line 146
    :cond_3
    invoke-interface {p6}, Ljava/lang/Runnable;->run()V

    .line 147
    return-void
.end method

.method public blacklist drawLines([FIILandroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 6
    .param p1, "pts"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;
    .param p5, "runnable"    # Ljava/lang/Runnable;

    .line 151
    if-nez p5, :cond_3

    .line 152
    return-void

    .line 154
    :cond_3
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    .line 155
    return-void
.end method

.method public blacklist drawOval(FFFFLandroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 7
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "runnable"    # Ljava/lang/Runnable;

    .line 159
    if-nez p6, :cond_3

    .line 160
    return-void

    .line 162
    :cond_3
    invoke-interface {p6}, Ljava/lang/Runnable;->run()V

    .line 163
    return-void
.end method

.method public blacklist drawPaint(Landroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .line 167
    if-nez p2, :cond_3

    .line 168
    return-void

    .line 170
    :cond_3
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 171
    return-void
.end method

.method public blacklist drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "dst"    # Landroid/graphics/Rect;
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "runnable"    # Ljava/lang/Runnable;

    .line 175
    if-nez p4, :cond_3

    .line 176
    return-void

    .line 178
    :cond_3
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    .line 179
    return-void
.end method

.method public blacklist drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "dst"    # Landroid/graphics/RectF;
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "runnable"    # Ljava/lang/Runnable;

    .line 183
    if-nez p4, :cond_3

    .line 184
    return-void

    .line 186
    :cond_3
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    .line 187
    return-void
.end method

.method public blacklist drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;Ljava/util/function/BiConsumer;)V
    .registers 4
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Paint;",
            "Ljava/util/function/BiConsumer<",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Paint;",
            ">;)V"
        }
    .end annotation

    .line 191
    .local p3, "consumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/graphics/Path;Landroid/graphics/Paint;>;"
    if-nez p3, :cond_3

    .line 192
    return-void

    .line 194
    :cond_3
    invoke-interface {p3, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    return-void
.end method

.method public blacklist drawPicture(Landroid/graphics/Picture;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "picture"    # Landroid/graphics/Picture;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .line 199
    if-nez p2, :cond_3

    .line 200
    return-void

    .line 202
    :cond_3
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 203
    return-void
.end method

.method public blacklist drawPoint(FFLandroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "runnable"    # Ljava/lang/Runnable;

    .line 207
    if-nez p4, :cond_3

    .line 208
    return-void

    .line 210
    :cond_3
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    .line 211
    return-void
.end method

.method public blacklist drawPoints([FIILandroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 6
    .param p1, "pts"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;
    .param p5, "runnable"    # Ljava/lang/Runnable;

    .line 215
    if-nez p5, :cond_3

    .line 216
    return-void

    .line 218
    :cond_3
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    .line 219
    return-void
.end method

.method public blacklist drawRect(FFFFLandroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 7
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "runnable"    # Ljava/lang/Runnable;

    .line 223
    if-nez p6, :cond_3

    .line 224
    return-void

    .line 226
    :cond_3
    invoke-interface {p6}, Ljava/lang/Runnable;->run()V

    .line 227
    return-void
.end method

.method public blacklist drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "runnable"    # Ljava/lang/Runnable;

    .line 231
    if-nez p3, :cond_3

    .line 232
    return-void

    .line 234
    :cond_3
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 235
    return-void
.end method

.method public blacklist drawRenderNode(Landroid/graphics/RenderNode;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "renderNode"    # Landroid/graphics/RenderNode;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .line 239
    if-nez p2, :cond_3

    .line 240
    return-void

    .line 242
    :cond_3
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 243
    return-void
.end method

.method public blacklist drawRoundRect(FFFFFFLandroid/graphics/Paint;Ljava/util/function/BiConsumer;)V
    .registers 11
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "rx"    # F
    .param p6, "ry"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFFF",
            "Landroid/graphics/Paint;",
            "Ljava/util/function/BiConsumer<",
            "[F",
            "Landroid/graphics/Paint;",
            ">;)V"
        }
    .end annotation

    .line 247
    .local p8, "consumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<[FLandroid/graphics/Paint;>;"
    if-nez p8, :cond_3

    .line 248
    return-void

    .line 250
    :cond_3
    const/4 v0, 0x6

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    const/4 v1, 0x3

    aput p4, v0, v1

    const/4 v1, 0x4

    aput p5, v0, v1

    const/4 v1, 0x5

    aput p6, v0, v1

    .line 251
    .local v0, "values":[F
    invoke-interface {p8, v0, p7}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 252
    return-void
.end method

.method public blacklist drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;
    .param p7, "runnable"    # Ljava/lang/Runnable;

    .line 256
    if-nez p7, :cond_3

    .line 257
    return-void

    .line 259
    :cond_3
    invoke-interface {p7}, Ljava/lang/Runnable;->run()V

    .line 260
    return-void
.end method

.method public blacklist drawText(Ljava/lang/String;FFLandroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;
    .param p5, "runnable"    # Ljava/lang/Runnable;

    .line 264
    if-nez p5, :cond_3

    .line 265
    return-void

    .line 267
    :cond_3
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    .line 268
    return-void
.end method

.method public blacklist drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;
    .param p7, "runnable"    # Ljava/lang/Runnable;

    .line 272
    if-nez p7, :cond_3

    .line 273
    return-void

    .line 275
    :cond_3
    invoke-interface {p7}, Ljava/lang/Runnable;->run()V

    .line 276
    return-void
.end method

.method public blacklist drawText([CIIFFLandroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 8
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;
    .param p7, "runnable"    # Ljava/lang/Runnable;

    .line 280
    if-nez p7, :cond_3

    .line 281
    return-void

    .line 283
    :cond_3
    invoke-interface {p7}, Ljava/lang/Runnable;->run()V

    .line 284
    return-void
.end method

.method public blacklist drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "path"    # Landroid/graphics/Path;
    .param p3, "hOffset"    # F
    .param p4, "vOffset"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "runnable"    # Ljava/lang/Runnable;

    .line 288
    if-nez p6, :cond_3

    .line 289
    return-void

    .line 291
    :cond_3
    invoke-interface {p6}, Ljava/lang/Runnable;->run()V

    .line 292
    return-void
.end method

.method public blacklist drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 9
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "path"    # Landroid/graphics/Path;
    .param p5, "hOffset"    # F
    .param p6, "vOffset"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;
    .param p8, "runnable"    # Ljava/lang/Runnable;

    .line 296
    if-nez p8, :cond_3

    .line 297
    return-void

    .line 299
    :cond_3
    invoke-interface {p8}, Ljava/lang/Runnable;->run()V

    .line 300
    return-void
.end method

.method public blacklist drawTextRun(Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 11
    .param p1, "measuredText"    # Landroid/graphics/text/MeasuredText;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;
    .param p10, "runnable"    # Ljava/lang/Runnable;

    .line 304
    if-nez p10, :cond_3

    .line 305
    return-void

    .line 307
    :cond_3
    invoke-interface {p10}, Ljava/lang/Runnable;->run()V

    .line 308
    return-void
.end method

.method public blacklist drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 11
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;
    .param p10, "runnable"    # Ljava/lang/Runnable;

    .line 312
    if-nez p10, :cond_3

    .line 313
    return-void

    .line 315
    :cond_3
    invoke-interface {p10}, Ljava/lang/Runnable;->run()V

    .line 316
    return-void
.end method

.method public blacklist drawTextRun([CIIIIFFZLandroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 11
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "contextIndex"    # I
    .param p5, "contextCount"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;
    .param p10, "runnable"    # Ljava/lang/Runnable;

    .line 320
    if-nez p10, :cond_3

    .line 321
    return-void

    .line 323
    :cond_3
    invoke-interface {p10}, Ljava/lang/Runnable;->run()V

    .line 324
    return-void
.end method

.method public blacklist drawTextureLayer(Landroid/graphics/TextureLayer;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "layer"    # Landroid/graphics/TextureLayer;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .line 328
    if-nez p2, :cond_3

    .line 329
    return-void

    .line 331
    :cond_3
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 332
    return-void
.end method

.method public blacklist drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 14
    .param p1, "mode"    # Landroid/graphics/Canvas$VertexMode;
    .param p2, "vertexCount"    # I
    .param p3, "verts"    # [F
    .param p4, "vertOffset"    # I
    .param p5, "texs"    # [F
    .param p6, "texOffset"    # I
    .param p7, "colors"    # [I
    .param p8, "colorOffset"    # I
    .param p9, "indices"    # [S
    .param p10, "indexOffset"    # I
    .param p11, "indexCount"    # I
    .param p12, "paint"    # Landroid/graphics/Paint;
    .param p13, "runnable"    # Ljava/lang/Runnable;

    .line 336
    if-nez p13, :cond_3

    .line 337
    return-void

    .line 339
    :cond_3
    invoke-interface {p13}, Ljava/lang/Runnable;->run()V

    .line 340
    return-void
.end method

.method public blacklist setView(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 345
    return-void
.end method
