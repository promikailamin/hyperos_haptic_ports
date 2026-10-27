.class public interface abstract Lcom/miui/autoui/IAutoUICanvas;
.super Ljava/lang/Object;
.source "IAutoUICanvas.java"


# virtual methods
.method public abstract blacklist drawArc(FFFFFFZLandroid/graphics/Paint;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFFFZ",
            "Landroid/graphics/Paint;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blacklist drawBitmap(Landroid/graphics/Bitmap;FFFFLandroid/graphics/RectF;Landroid/graphics/Paint;Ljava/util/function/BiConsumer;)V
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
.end method

.method public abstract blacklist drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;Ljava/util/function/Consumer;)V
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
.end method

.method public abstract blacklist drawBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Rect;Landroid/graphics/Paint;Ljava/util/function/BiConsumer;)V
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
.end method

.method public abstract blacklist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;Ljava/util/function/Consumer;)V
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
.end method

.method public abstract blacklist drawBitmap([IIIFFIIZLandroid/graphics/Paint;Ljava/lang/Runnable;)V
.end method

.method public abstract blacklist drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;Ljava/util/function/Consumer;)V
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
.end method

.method public abstract blacklist drawCircle(FFFLandroid/graphics/Paint;Ljava/lang/Runnable;)V
.end method

.method public abstract blacklist drawColor(ILandroid/graphics/BlendMode;Ljava/lang/Runnable;)V
.end method

.method public abstract blacklist drawColor(ILandroid/graphics/PorterDuff$Mode;Ljava/lang/Runnable;)V
.end method

.method public abstract blacklist drawColor(ILjava/lang/Runnable;)V
.end method

.method public abstract blacklist drawColor(JLandroid/graphics/BlendMode;Ljava/lang/Runnable;)V
.end method

.method public abstract blacklist drawDoubleRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/RectF;FFLandroid/graphics/Paint;Ljava/lang/Runnable;)V
.end method

.method public abstract blacklist drawDoubleRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/RectF;[FLandroid/graphics/Paint;Ljava/lang/Runnable;)V
.end method

.method public abstract blacklist drawLine(FFFFLandroid/graphics/Paint;Ljava/lang/Runnable;)V
.end method

.method public abstract blacklist drawLines([FIILandroid/graphics/Paint;Ljava/lang/Runnable;)V
.end method

.method public abstract blacklist drawOval(FFFFLandroid/graphics/Paint;Ljava/lang/Runnable;)V
.end method

.method public abstract blacklist drawPaint(Landroid/graphics/Paint;Ljava/lang/Runnable;)V
.end method

.method public abstract blacklist drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;Ljava/lang/Runnable;)V
.end method

.method public abstract blacklist drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;Ljava/lang/Runnable;)V
.end method

.method public abstract blacklist drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;Ljava/util/function/BiConsumer;)V
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
.end method

.method public abstract blacklist drawPicture(Landroid/graphics/Picture;Ljava/lang/Runnable;)V
.end method

.method public abstract blacklist drawPoint(FFLandroid/graphics/Paint;Ljava/lang/Runnable;)V
.end method

.method public abstract blacklist drawPoints([FIILandroid/graphics/Paint;Ljava/lang/Runnable;)V
.end method

.method public abstract blacklist drawRect(FFFFLandroid/graphics/Paint;Ljava/lang/Runnable;)V
.end method

.method public abstract blacklist drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;Ljava/lang/Runnable;)V
.end method

.method public abstract blacklist drawRenderNode(Landroid/graphics/RenderNode;Ljava/lang/Runnable;)V
.end method

.method public abstract blacklist drawRoundRect(FFFFFFLandroid/graphics/Paint;Ljava/util/function/BiConsumer;)V
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
.end method

.method public abstract blacklist drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;Ljava/lang/Runnable;)V
.end method

.method public abstract blacklist drawText(Ljava/lang/String;FFLandroid/graphics/Paint;Ljava/lang/Runnable;)V
.end method

.method public abstract blacklist drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;Ljava/lang/Runnable;)V
.end method

.method public abstract blacklist drawText([CIIFFLandroid/graphics/Paint;Ljava/lang/Runnable;)V
.end method

.method public abstract blacklist drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;Ljava/lang/Runnable;)V
.end method

.method public abstract blacklist drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;Ljava/lang/Runnable;)V
.end method

.method public abstract blacklist drawTextRun(Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;Ljava/lang/Runnable;)V
.end method

.method public abstract blacklist drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;Ljava/lang/Runnable;)V
.end method

.method public abstract blacklist drawTextRun([CIIIIFFZLandroid/graphics/Paint;Ljava/lang/Runnable;)V
.end method

.method public abstract blacklist drawTextureLayer(Landroid/graphics/TextureLayer;Ljava/lang/Runnable;)V
.end method

.method public abstract blacklist drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;Ljava/lang/Runnable;)V
.end method

.method public abstract blacklist setView(Landroid/view/View;)V
.end method
