.class public Lcom/miui/autoui/MiuiAutoUICanvas;
.super Lcom/miui/autoui/DefaultAutoUICanvas;
.source "MiuiAutoUICanvas.java"


# instance fields
.field private blacklist mCanvas:Landroid/graphics/Canvas;

.field private blacklist mView:Landroid/view/View;


# direct methods
.method public constructor blacklist <init>(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 29
    invoke-direct {p0, p1}, Lcom/miui/autoui/DefaultAutoUICanvas;-><init>(Landroid/graphics/Canvas;)V

    .line 30
    if-eqz p1, :cond_7

    .line 31
    iput-object p1, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    .line 33
    :cond_7
    return-void
.end method

.method private blacklist drawBitmapInner(Landroid/graphics/Bitmap;Lcom/miui/autoui/AutoUIParams;Landroid/graphics/RectF;Ljava/util/function/BiConsumer;)V
    .registers 11
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "params"    # Lcom/miui/autoui/AutoUIParams;
    .param p3, "src"    # Landroid/graphics/RectF;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/miui/autoui/AutoUIParams;",
            "Landroid/graphics/RectF;",
            "Ljava/util/function/BiConsumer<",
            "Landroid/graphics/Bitmap;",
            "Landroid/util/Pair<",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/RectF;",
            ">;>;)V"
        }
    .end annotation

    .line 115
    .local p4, "consumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/graphics/Bitmap;Landroid/util/Pair<Landroid/graphics/RectF;Landroid/graphics/RectF;>;>;"
    if-nez p4, :cond_3

    .line 116
    return-void

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 119
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v0, v1, v2, p2}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->hookCanvas(Landroid/view/View;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)Lcom/miui/autoui/AutoUIParams;

    move-result-object v0

    .line 120
    .local v0, "autoUIParams":Lcom/miui/autoui/AutoUIParams;
    if-nez v0, :cond_28

    .line 121
    new-instance v1, Landroid/util/Pair;

    invoke-virtual {p2}, Lcom/miui/autoui/AutoUIParams;->getRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-direct {v1, p3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, p1, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    iget-object v1, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_65

    .line 123
    :cond_28
    invoke-virtual {v0}, Lcom/miui/autoui/AutoUIParams;->isSkipDraw()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 124
    iget-object v1, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_65

    .line 126
    :cond_34
    invoke-virtual {v0}, Lcom/miui/autoui/AutoUIParams;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 127
    .local v1, "autoUIBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Lcom/miui/autoui/AutoUIParams;->getRectF()Landroid/graphics/RectF;

    move-result-object v2

    .line 128
    .local v2, "rectF":Landroid/graphics/RectF;
    new-instance v3, Landroid/util/Pair;

    invoke-virtual {p2}, Lcom/miui/autoui/AutoUIParams;->getRectF()Landroid/graphics/RectF;

    move-result-object v4

    invoke-direct {v3, p3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/RectF;Landroid/graphics/RectF;>;"
    if-eqz v2, :cond_57

    invoke-virtual {p2}, Lcom/miui/autoui/AutoUIParams;->getRectF()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_57

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_58

    :cond_57
    move-object v4, v3

    .line 130
    .local v4, "autoUIPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/RectF;Landroid/graphics/RectF;>;"
    :goto_58
    if-nez v1, :cond_5c

    move-object v5, p1

    goto :goto_5d

    :cond_5c
    move-object v5, v1

    :goto_5d
    invoke-interface {p4, v5, v4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    iget-object v5, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    .line 133
    .end local v1    # "autoUIBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "rectF":Landroid/graphics/RectF;
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/RectF;Landroid/graphics/RectF;>;"
    .end local v4    # "autoUIPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/RectF;Landroid/graphics/RectF;>;"
    :goto_65
    return-void
.end method


# virtual methods
.method public blacklist drawArc(FFFFFFZLandroid/graphics/Paint;Ljava/util/function/Consumer;)V
    .registers 14
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

    .line 38
    .local p9, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/RectF;>;"
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_34

    if-eqz p9, :cond_34

    .line 39
    iget-object v0, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 40
    new-instance v0, Lcom/miui/autoui/AutoUIParams;

    invoke-direct {v0}, Lcom/miui/autoui/AutoUIParams;-><init>()V

    .line 41
    .local v0, "params":Lcom/miui/autoui/AutoUIParams;
    const-string v1, "drawArc"

    invoke-virtual {v0, v1}, Lcom/miui/autoui/AutoUIParams;->setName(Ljava/lang/String;)Lcom/miui/autoui/AutoUIParams;

    .line 42
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v1, v2, v3, v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->hookCanvas(Landroid/view/View;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)Lcom/miui/autoui/AutoUIParams;

    .line 43
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {p9, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 44
    iget-object v1, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 45
    return-void

    .line 47
    .end local v0    # "params":Lcom/miui/autoui/AutoUIParams;
    :cond_34
    invoke-super/range {p0 .. p9}, Lcom/miui/autoui/DefaultAutoUICanvas;->drawArc(FFFFFFZLandroid/graphics/Paint;Ljava/util/function/Consumer;)V

    .line 48
    return-void
.end method

.method public blacklist drawBitmap(Landroid/graphics/Bitmap;FFFFLandroid/graphics/RectF;Landroid/graphics/Paint;Ljava/util/function/BiConsumer;)V
    .registers 11
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

    .line 52
    .local p8, "consumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/graphics/Bitmap;Landroid/util/Pair<Landroid/graphics/RectF;Landroid/graphics/RectF;>;>;"
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_27

    if-eqz p8, :cond_27

    .line 53
    new-instance v0, Lcom/miui/autoui/AutoUIParams;

    invoke-direct {v0}, Lcom/miui/autoui/AutoUIParams;-><init>()V

    .line 54
    .local v0, "params":Lcom/miui/autoui/AutoUIParams;
    const-string v1, "drawBitmap"

    invoke-virtual {v0, v1}, Lcom/miui/autoui/AutoUIParams;->setName(Ljava/lang/String;)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/autoui/AutoUIParams;->setBitmap(Landroid/graphics/Bitmap;)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    invoke-virtual {v1, p6}, Lcom/miui/autoui/AutoUIParams;->setRectF(Landroid/graphics/RectF;)Lcom/miui/autoui/AutoUIParams;

    .line 55
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p2, p3, p4, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0, p1, v0, v1, p8}, Lcom/miui/autoui/MiuiAutoUICanvas;->drawBitmapInner(Landroid/graphics/Bitmap;Lcom/miui/autoui/AutoUIParams;Landroid/graphics/RectF;Ljava/util/function/BiConsumer;)V

    .line 56
    return-void

    .line 58
    .end local v0    # "params":Lcom/miui/autoui/AutoUIParams;
    :cond_27
    invoke-super/range {p0 .. p8}, Lcom/miui/autoui/DefaultAutoUICanvas;->drawBitmap(Landroid/graphics/Bitmap;FFFFLandroid/graphics/RectF;Landroid/graphics/Paint;Ljava/util/function/BiConsumer;)V

    .line 59
    return-void
.end method

.method public blacklist drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;Ljava/util/function/Consumer;)V
    .registers 10
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

    .line 63
    .local p5, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/Bitmap;>;"
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_33

    if-eqz p5, :cond_33

    .line 64
    iget-object v0, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 65
    new-instance v0, Lcom/miui/autoui/AutoUIParams;

    invoke-direct {v0}, Lcom/miui/autoui/AutoUIParams;-><init>()V

    .line 66
    .local v0, "params":Lcom/miui/autoui/AutoUIParams;
    const-string v1, "drawBitmap"

    invoke-virtual {v0, v1}, Lcom/miui/autoui/AutoUIParams;->setName(Ljava/lang/String;)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/autoui/AutoUIParams;->setBitmap(Landroid/graphics/Bitmap;)Lcom/miui/autoui/AutoUIParams;

    .line 67
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v1, v2, v3, v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->hookCanvas(Landroid/view/View;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)Lcom/miui/autoui/AutoUIParams;

    .line 68
    invoke-interface {p5, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 69
    iget-object v1, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 70
    return-void

    .line 72
    .end local v0    # "params":Lcom/miui/autoui/AutoUIParams;
    :cond_33
    invoke-super/range {p0 .. p5}, Lcom/miui/autoui/DefaultAutoUICanvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;Ljava/util/function/Consumer;)V

    .line 73
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

    .line 77
    .local p8, "consumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/graphics/Bitmap;Landroid/util/Pair<Landroid/graphics/RectF;Landroid/graphics/RectF;>;>;"
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_30

    if-eqz p8, :cond_30

    .line 78
    new-instance v0, Lcom/miui/autoui/AutoUIParams;

    invoke-direct {v0}, Lcom/miui/autoui/AutoUIParams;-><init>()V

    .line 79
    .local v0, "params":Lcom/miui/autoui/AutoUIParams;
    const-string v1, "drawBitmap"

    invoke-virtual {v0, v1}, Lcom/miui/autoui/AutoUIParams;->setName(Ljava/lang/String;)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/autoui/AutoUIParams;->setBitmap(Landroid/graphics/Bitmap;)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Lcom/miui/autoui/AutoUIParams;->setRectF(Landroid/graphics/RectF;)Lcom/miui/autoui/AutoUIParams;

    .line 80
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    int-to-float v5, p5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0, p1, v0, v1, p8}, Lcom/miui/autoui/MiuiAutoUICanvas;->drawBitmapInner(Landroid/graphics/Bitmap;Lcom/miui/autoui/AutoUIParams;Landroid/graphics/RectF;Ljava/util/function/BiConsumer;)V

    .line 81
    return-void

    .line 83
    .end local v0    # "params":Lcom/miui/autoui/AutoUIParams;
    :cond_30
    invoke-super/range {p0 .. p8}, Lcom/miui/autoui/DefaultAutoUICanvas;->drawBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Rect;Landroid/graphics/Paint;Ljava/util/function/BiConsumer;)V

    .line 84
    return-void
.end method

.method public blacklist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;Ljava/util/function/Consumer;)V
    .registers 9
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

    .line 88
    .local p4, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/Bitmap;>;"
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_33

    if-eqz p4, :cond_33

    .line 89
    iget-object v0, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 90
    new-instance v0, Lcom/miui/autoui/AutoUIParams;

    invoke-direct {v0}, Lcom/miui/autoui/AutoUIParams;-><init>()V

    .line 91
    .local v0, "params":Lcom/miui/autoui/AutoUIParams;
    const-string v1, "drawBitmap"

    invoke-virtual {v0, v1}, Lcom/miui/autoui/AutoUIParams;->setName(Ljava/lang/String;)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/autoui/AutoUIParams;->setBitmap(Landroid/graphics/Bitmap;)Lcom/miui/autoui/AutoUIParams;

    .line 92
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v1, v2, v3, v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->hookCanvas(Landroid/view/View;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)Lcom/miui/autoui/AutoUIParams;

    .line 93
    invoke-interface {p4, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 94
    iget-object v1, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 95
    return-void

    .line 97
    .end local v0    # "params":Lcom/miui/autoui/AutoUIParams;
    :cond_33
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/autoui/DefaultAutoUICanvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;Ljava/util/function/Consumer;)V

    .line 98
    return-void
.end method

.method public blacklist drawBitmap([IIIFFIIZLandroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 15
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

    .line 102
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_2f

    if-eqz p10, :cond_2f

    .line 103
    iget-object v0, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 104
    new-instance v0, Lcom/miui/autoui/AutoUIParams;

    invoke-direct {v0}, Lcom/miui/autoui/AutoUIParams;-><init>()V

    .line 105
    .local v0, "params":Lcom/miui/autoui/AutoUIParams;
    const-string v1, "drawBitmap"

    invoke-virtual {v0, v1}, Lcom/miui/autoui/AutoUIParams;->setName(Ljava/lang/String;)Lcom/miui/autoui/AutoUIParams;

    .line 106
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v1, v2, v3, v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->hookCanvas(Landroid/view/View;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)Lcom/miui/autoui/AutoUIParams;

    .line 107
    invoke-interface {p10}, Ljava/lang/Runnable;->run()V

    .line 108
    iget-object v1, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 109
    return-void

    .line 111
    .end local v0    # "params":Lcom/miui/autoui/AutoUIParams;
    :cond_2f
    invoke-super/range {p0 .. p10}, Lcom/miui/autoui/DefaultAutoUICanvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;Ljava/lang/Runnable;)V

    .line 112
    return-void
.end method

.method public blacklist drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;Ljava/util/function/Consumer;)V
    .registers 11
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

    .line 137
    .local p9, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/Bitmap;>;"
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p9, :cond_10

    .line 138
    invoke-interface {p9, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 139
    return-void

    .line 141
    :cond_10
    invoke-super/range {p0 .. p9}, Lcom/miui/autoui/DefaultAutoUICanvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;Ljava/util/function/Consumer;)V

    .line 142
    return-void
.end method

.method public blacklist drawCircle(FFFLandroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 10
    .param p1, "cx"    # F
    .param p2, "cy"    # F
    .param p3, "radius"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;
    .param p5, "runnable"    # Ljava/lang/Runnable;

    .line 146
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_33

    if-eqz p5, :cond_33

    .line 147
    iget-object v0, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 148
    new-instance v0, Lcom/miui/autoui/AutoUIParams;

    invoke-direct {v0}, Lcom/miui/autoui/AutoUIParams;-><init>()V

    .line 149
    .local v0, "params":Lcom/miui/autoui/AutoUIParams;
    const-string v1, "drawCircle"

    invoke-virtual {v0, v1}, Lcom/miui/autoui/AutoUIParams;->setName(Ljava/lang/String;)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/autoui/AutoUIParams;->setCx(F)Lcom/miui/autoui/AutoUIParams;

    .line 150
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v1, v2, v3, v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->hookCanvas(Landroid/view/View;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)Lcom/miui/autoui/AutoUIParams;

    .line 151
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    .line 152
    iget-object v1, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 153
    return-void

    .line 155
    .end local v0    # "params":Lcom/miui/autoui/AutoUIParams;
    :cond_33
    invoke-super/range {p0 .. p5}, Lcom/miui/autoui/DefaultAutoUICanvas;->drawCircle(FFFLandroid/graphics/Paint;Ljava/lang/Runnable;)V

    .line 156
    return-void
.end method

.method public blacklist drawColor(ILandroid/graphics/BlendMode;Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/BlendMode;
    .param p3, "runnable"    # Ljava/lang/Runnable;

    .line 160
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p3, :cond_10

    .line 161
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 162
    return-void

    .line 164
    :cond_10
    invoke-super {p0, p1, p2, p3}, Lcom/miui/autoui/DefaultAutoUICanvas;->drawColor(ILandroid/graphics/BlendMode;Ljava/lang/Runnable;)V

    .line 165
    return-void
.end method

.method public blacklist drawColor(ILandroid/graphics/PorterDuff$Mode;Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;
    .param p3, "runnable"    # Ljava/lang/Runnable;

    .line 169
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p3, :cond_10

    .line 170
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 171
    return-void

    .line 173
    :cond_10
    invoke-super {p0, p1, p2, p3}, Lcom/miui/autoui/DefaultAutoUICanvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;Ljava/lang/Runnable;)V

    .line 174
    return-void
.end method

.method public blacklist drawColor(ILjava/lang/Runnable;)V
    .registers 4
    .param p1, "color"    # I
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .line 178
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p2, :cond_10

    .line 179
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 180
    return-void

    .line 182
    :cond_10
    invoke-super {p0, p1, p2}, Lcom/miui/autoui/DefaultAutoUICanvas;->drawColor(ILjava/lang/Runnable;)V

    .line 183
    return-void
.end method

.method public blacklist drawColor(JLandroid/graphics/BlendMode;Ljava/lang/Runnable;)V
    .registers 6
    .param p1, "color"    # J
    .param p3, "mode"    # Landroid/graphics/BlendMode;
    .param p4, "runnable"    # Ljava/lang/Runnable;

    .line 187
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p4, :cond_10

    .line 188
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    .line 189
    return-void

    .line 191
    :cond_10
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/autoui/DefaultAutoUICanvas;->drawColor(JLandroid/graphics/BlendMode;Ljava/lang/Runnable;)V

    .line 192
    return-void
.end method

.method public blacklist drawDoubleRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/RectF;FFLandroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 10
    .param p1, "outer"    # Landroid/graphics/RectF;
    .param p2, "outerRx"    # F
    .param p3, "outerRy"    # F
    .param p4, "inner"    # Landroid/graphics/RectF;
    .param p5, "innerRx"    # F
    .param p6, "innerRy"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;
    .param p8, "runnable"    # Ljava/lang/Runnable;

    .line 196
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p8, :cond_10

    .line 197
    invoke-interface {p8}, Ljava/lang/Runnable;->run()V

    .line 198
    return-void

    .line 200
    :cond_10
    invoke-super/range {p0 .. p8}, Lcom/miui/autoui/DefaultAutoUICanvas;->drawDoubleRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/RectF;FFLandroid/graphics/Paint;Ljava/lang/Runnable;)V

    .line 201
    return-void
.end method

.method public blacklist drawDoubleRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/RectF;[FLandroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 8
    .param p1, "outer"    # Landroid/graphics/RectF;
    .param p2, "outerRadii"    # [F
    .param p3, "inner"    # Landroid/graphics/RectF;
    .param p4, "innerRadii"    # [F
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "runnable"    # Ljava/lang/Runnable;

    .line 205
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p6, :cond_10

    .line 206
    invoke-interface {p6}, Ljava/lang/Runnable;->run()V

    .line 207
    return-void

    .line 209
    :cond_10
    invoke-super/range {p0 .. p6}, Lcom/miui/autoui/DefaultAutoUICanvas;->drawDoubleRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/RectF;[FLandroid/graphics/Paint;Ljava/lang/Runnable;)V

    .line 210
    return-void
.end method

.method public blacklist drawLine(FFFFLandroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 8
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "stopX"    # F
    .param p4, "stopY"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "runnable"    # Ljava/lang/Runnable;

    .line 214
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p6, :cond_10

    .line 215
    invoke-interface {p6}, Ljava/lang/Runnable;->run()V

    .line 216
    return-void

    .line 218
    :cond_10
    invoke-super/range {p0 .. p6}, Lcom/miui/autoui/DefaultAutoUICanvas;->drawLine(FFFFLandroid/graphics/Paint;Ljava/lang/Runnable;)V

    .line 219
    return-void
.end method

.method public blacklist drawLines([FIILandroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 7
    .param p1, "pts"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;
    .param p5, "runnable"    # Ljava/lang/Runnable;

    .line 223
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p5, :cond_10

    .line 224
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    .line 225
    return-void

    .line 227
    :cond_10
    invoke-super/range {p0 .. p5}, Lcom/miui/autoui/DefaultAutoUICanvas;->drawLines([FIILandroid/graphics/Paint;Ljava/lang/Runnable;)V

    .line 228
    return-void
.end method

.method public blacklist drawOval(FFFFLandroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 11
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "runnable"    # Ljava/lang/Runnable;

    .line 232
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_37

    if-eqz p6, :cond_37

    .line 233
    iget-object v0, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 234
    new-instance v0, Lcom/miui/autoui/AutoUIParams;

    invoke-direct {v0}, Lcom/miui/autoui/AutoUIParams;-><init>()V

    .line 235
    .local v0, "params":Lcom/miui/autoui/AutoUIParams;
    const-string v1, "drawOval"

    invoke-virtual {v0, v1}, Lcom/miui/autoui/AutoUIParams;->setName(Ljava/lang/String;)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/autoui/AutoUIParams;->setLeft(F)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/miui/autoui/AutoUIParams;->setRight(F)Lcom/miui/autoui/AutoUIParams;

    .line 236
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v1, v2, v3, v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->hookCanvas(Landroid/view/View;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)Lcom/miui/autoui/AutoUIParams;

    .line 237
    invoke-interface {p6}, Ljava/lang/Runnable;->run()V

    .line 238
    iget-object v1, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 239
    return-void

    .line 241
    .end local v0    # "params":Lcom/miui/autoui/AutoUIParams;
    :cond_37
    invoke-super/range {p0 .. p6}, Lcom/miui/autoui/DefaultAutoUICanvas;->drawOval(FFFFLandroid/graphics/Paint;Ljava/lang/Runnable;)V

    .line 242
    return-void
.end method

.method public blacklist drawPaint(Landroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .line 246
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p2, :cond_10

    .line 247
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 248
    return-void

    .line 250
    :cond_10
    invoke-super {p0, p1, p2}, Lcom/miui/autoui/DefaultAutoUICanvas;->drawPaint(Landroid/graphics/Paint;Ljava/lang/Runnable;)V

    .line 251
    return-void
.end method

.method public blacklist drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 6
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "dst"    # Landroid/graphics/Rect;
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "runnable"    # Ljava/lang/Runnable;

    .line 255
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p4, :cond_10

    .line 256
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    .line 257
    return-void

    .line 259
    :cond_10
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/autoui/DefaultAutoUICanvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;Ljava/lang/Runnable;)V

    .line 260
    return-void
.end method

.method public blacklist drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 6
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "dst"    # Landroid/graphics/RectF;
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "runnable"    # Ljava/lang/Runnable;

    .line 264
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p4, :cond_10

    .line 265
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    .line 266
    return-void

    .line 268
    :cond_10
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/autoui/DefaultAutoUICanvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;Ljava/lang/Runnable;)V

    .line 269
    return-void
.end method

.method public blacklist drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;Ljava/util/function/BiConsumer;)V
    .registers 10
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

    .line 273
    .local p3, "consumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/graphics/Path;Landroid/graphics/Paint;>;"
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_61

    if-eqz p3, :cond_61

    .line 274
    iget-object v0, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 275
    new-instance v0, Lcom/miui/autoui/AutoUIParams;

    invoke-direct {v0}, Lcom/miui/autoui/AutoUIParams;-><init>()V

    .line 276
    .local v0, "params":Lcom/miui/autoui/AutoUIParams;
    const-string v1, "drawPath"

    invoke-virtual {v0, v1}, Lcom/miui/autoui/AutoUIParams;->setName(Ljava/lang/String;)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/autoui/AutoUIParams;->setPath(Landroid/graphics/Path;)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/miui/autoui/AutoUIParams;->setPaint(Landroid/graphics/Paint;)Lcom/miui/autoui/AutoUIParams;

    .line 277
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v1, v2, v3, v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->hookCanvas(Landroid/view/View;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    .line 278
    .local v1, "autoUIParams":Lcom/miui/autoui/AutoUIParams;
    if-nez v1, :cond_3a

    .line 279
    invoke-interface {p3, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 280
    iget-object v2, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    goto :goto_60

    .line 281
    :cond_3a
    invoke-virtual {v1}, Lcom/miui/autoui/AutoUIParams;->isSkipDraw()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 282
    iget-object v2, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    goto :goto_60

    .line 284
    :cond_46
    invoke-virtual {v1}, Lcom/miui/autoui/AutoUIParams;->getPath()Landroid/graphics/Path;

    move-result-object v2

    .line 285
    .local v2, "autoUIPath":Landroid/graphics/Path;
    invoke-virtual {v1}, Lcom/miui/autoui/AutoUIParams;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    .line 286
    .local v3, "autoUIPaint":Landroid/graphics/Paint;
    if-nez v2, :cond_52

    move-object v4, p1

    goto :goto_53

    :cond_52
    move-object v4, v2

    :goto_53
    if-nez v3, :cond_57

    move-object v5, p2

    goto :goto_58

    :cond_57
    move-object v5, v3

    :goto_58
    invoke-interface {p3, v4, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 287
    iget-object v4, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 289
    .end local v2    # "autoUIPath":Landroid/graphics/Path;
    .end local v3    # "autoUIPaint":Landroid/graphics/Paint;
    :goto_60
    return-void

    .line 291
    .end local v0    # "params":Lcom/miui/autoui/AutoUIParams;
    .end local v1    # "autoUIParams":Lcom/miui/autoui/AutoUIParams;
    :cond_61
    invoke-super {p0, p1, p2, p3}, Lcom/miui/autoui/DefaultAutoUICanvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;Ljava/util/function/BiConsumer;)V

    .line 292
    return-void
.end method

.method public blacklist drawPicture(Landroid/graphics/Picture;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "picture"    # Landroid/graphics/Picture;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .line 296
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p2, :cond_10

    .line 297
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 298
    return-void

    .line 300
    :cond_10
    invoke-super {p0, p1, p2}, Lcom/miui/autoui/DefaultAutoUICanvas;->drawPicture(Landroid/graphics/Picture;Ljava/lang/Runnable;)V

    .line 301
    return-void
.end method

.method public blacklist drawPoint(FFLandroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "runnable"    # Ljava/lang/Runnable;

    .line 305
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p4, :cond_10

    .line 306
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    .line 307
    return-void

    .line 309
    :cond_10
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/autoui/DefaultAutoUICanvas;->drawPoint(FFLandroid/graphics/Paint;Ljava/lang/Runnable;)V

    .line 310
    return-void
.end method

.method public blacklist drawPoints([FIILandroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 7
    .param p1, "pts"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;
    .param p5, "runnable"    # Ljava/lang/Runnable;

    .line 314
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p5, :cond_10

    .line 315
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    .line 316
    return-void

    .line 318
    :cond_10
    invoke-super/range {p0 .. p5}, Lcom/miui/autoui/DefaultAutoUICanvas;->drawPoints([FIILandroid/graphics/Paint;Ljava/lang/Runnable;)V

    .line 319
    return-void
.end method

.method public blacklist drawRect(FFFFLandroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 11
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "runnable"    # Ljava/lang/Runnable;

    .line 323
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_2e

    if-eqz p6, :cond_2e

    .line 324
    new-instance v0, Lcom/miui/autoui/AutoUIParams;

    invoke-direct {v0}, Lcom/miui/autoui/AutoUIParams;-><init>()V

    .line 325
    .local v0, "params":Lcom/miui/autoui/AutoUIParams;
    const-string v1, "drawRect"

    invoke-virtual {v0, v1}, Lcom/miui/autoui/AutoUIParams;->setName(Ljava/lang/String;)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Lcom/miui/autoui/AutoUIParams;->setRectF(Landroid/graphics/RectF;)Lcom/miui/autoui/AutoUIParams;

    .line 326
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v1, v2, v3, v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->hookCanvas(Landroid/view/View;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)Lcom/miui/autoui/AutoUIParams;

    .line 327
    invoke-interface {p6}, Ljava/lang/Runnable;->run()V

    .line 328
    return-void

    .line 330
    .end local v0    # "params":Lcom/miui/autoui/AutoUIParams;
    :cond_2e
    invoke-super/range {p0 .. p6}, Lcom/miui/autoui/DefaultAutoUICanvas;->drawRect(FFFFLandroid/graphics/Paint;Ljava/lang/Runnable;)V

    .line 331
    return-void
.end method

.method public blacklist drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 8
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "runnable"    # Ljava/lang/Runnable;

    .line 335
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_33

    if-eqz p3, :cond_33

    .line 336
    iget-object v0, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 337
    new-instance v0, Lcom/miui/autoui/AutoUIParams;

    invoke-direct {v0}, Lcom/miui/autoui/AutoUIParams;-><init>()V

    .line 338
    .local v0, "params":Lcom/miui/autoui/AutoUIParams;
    const-string v1, "drawRect"

    invoke-virtual {v0, v1}, Lcom/miui/autoui/AutoUIParams;->setName(Ljava/lang/String;)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/autoui/AutoUIParams;->setRectF(Landroid/graphics/RectF;)Lcom/miui/autoui/AutoUIParams;

    .line 339
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v1, v2, v3, v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->hookCanvas(Landroid/view/View;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)Lcom/miui/autoui/AutoUIParams;

    .line 340
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 341
    iget-object v1, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 342
    return-void

    .line 344
    .end local v0    # "params":Lcom/miui/autoui/AutoUIParams;
    :cond_33
    invoke-super {p0, p1, p2, p3}, Lcom/miui/autoui/DefaultAutoUICanvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;Ljava/lang/Runnable;)V

    .line 345
    return-void
.end method

.method public blacklist drawRenderNode(Landroid/graphics/RenderNode;Ljava/lang/Runnable;)V
    .registers 7
    .param p1, "renderNode"    # Landroid/graphics/RenderNode;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .line 349
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_2f

    if-eqz p2, :cond_2f

    .line 350
    iget-object v0, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 351
    new-instance v0, Lcom/miui/autoui/AutoUIParams;

    invoke-direct {v0}, Lcom/miui/autoui/AutoUIParams;-><init>()V

    .line 352
    .local v0, "params":Lcom/miui/autoui/AutoUIParams;
    const-string v1, "drawRenderNode"

    invoke-virtual {v0, v1}, Lcom/miui/autoui/AutoUIParams;->setName(Ljava/lang/String;)Lcom/miui/autoui/AutoUIParams;

    .line 353
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v1, v2, v3, v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->hookCanvas(Landroid/view/View;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)Lcom/miui/autoui/AutoUIParams;

    .line 354
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 355
    iget-object v1, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 356
    return-void

    .line 358
    .end local v0    # "params":Lcom/miui/autoui/AutoUIParams;
    :cond_2f
    invoke-super {p0, p1, p2}, Lcom/miui/autoui/DefaultAutoUICanvas;->drawRenderNode(Landroid/graphics/RenderNode;Ljava/lang/Runnable;)V

    .line 359
    return-void
.end method

.method public blacklist drawRoundRect(FFFFFFLandroid/graphics/Paint;Ljava/util/function/BiConsumer;)V
    .registers 26
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

    .line 363
    .local p8, "consumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<[FLandroid/graphics/Paint;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v7

    invoke-interface {v7}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v7

    if-eqz v7, :cond_a7

    if-eqz v6, :cond_a7

    .line 364
    iget-object v7, v0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    .line 365
    new-instance v7, Lcom/miui/autoui/AutoUIParams;

    invoke-direct {v7}, Lcom/miui/autoui/AutoUIParams;-><init>()V

    .line 366
    .local v7, "params":Lcom/miui/autoui/AutoUIParams;
    const-string v8, "drawRoundRect"

    invoke-virtual {v7, v8}, Lcom/miui/autoui/AutoUIParams;->setName(Ljava/lang/String;)Lcom/miui/autoui/AutoUIParams;

    move-result-object v8

    .line 367
    invoke-virtual {v8, v1}, Lcom/miui/autoui/AutoUIParams;->setLeft(F)Lcom/miui/autoui/AutoUIParams;

    move-result-object v8

    .line 368
    invoke-virtual {v8, v2}, Lcom/miui/autoui/AutoUIParams;->setRight(F)Lcom/miui/autoui/AutoUIParams;

    move-result-object v8

    .line 369
    invoke-virtual {v8, v3}, Lcom/miui/autoui/AutoUIParams;->setRx(F)Lcom/miui/autoui/AutoUIParams;

    move-result-object v8

    .line 370
    invoke-virtual {v8, v4}, Lcom/miui/autoui/AutoUIParams;->setRy(F)Lcom/miui/autoui/AutoUIParams;

    move-result-object v8

    .line 371
    invoke-virtual {v8, v5}, Lcom/miui/autoui/AutoUIParams;->setPaint(Landroid/graphics/Paint;)Lcom/miui/autoui/AutoUIParams;

    .line 372
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v8

    iget-object v9, v0, Lcom/miui/autoui/MiuiAutoUICanvas;->mView:Landroid/view/View;

    iget-object v10, v0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v8, v9, v10, v7}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->hookCanvas(Landroid/view/View;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)Lcom/miui/autoui/AutoUIParams;

    move-result-object v8

    .line 373
    .local v8, "autoUIParams":Lcom/miui/autoui/AutoUIParams;
    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x6

    if-nez v8, :cond_6a

    .line 374
    new-array v15, v15, [F

    aput v1, v15, v14

    aput p2, v15, v13

    aput v2, v15, v12

    aput p4, v15, v11

    aput v3, v15, v10

    aput v4, v15, v9

    move-object v9, v15

    .line 375
    .local v9, "values":[F
    invoke-interface {v6, v9, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 376
    iget-object v10, v0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v10}, Landroid/graphics/Canvas;->restore()V

    .line 377
    .end local v9    # "values":[F
    goto :goto_a6

    :cond_6a
    invoke-virtual {v8}, Lcom/miui/autoui/AutoUIParams;->isSkipDraw()Z

    move-result v16

    if-eqz v16, :cond_76

    .line 378
    iget-object v9, v0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    goto :goto_a6

    .line 380
    :cond_76
    new-array v15, v15, [F

    invoke-virtual {v8}, Lcom/miui/autoui/AutoUIParams;->getLeft()F

    move-result v16

    aput v16, v15, v14

    aput p2, v15, v13

    .line 382
    invoke-virtual {v8}, Lcom/miui/autoui/AutoUIParams;->getRight()F

    move-result v13

    aput v13, v15, v12

    aput p4, v15, v11

    .line 384
    invoke-virtual {v8}, Lcom/miui/autoui/AutoUIParams;->getRx()F

    move-result v11

    aput v11, v15, v10

    .line 385
    invoke-virtual {v8}, Lcom/miui/autoui/AutoUIParams;->getRy()F

    move-result v10

    aput v10, v15, v9

    move-object v9, v15

    .line 386
    .restart local v9    # "values":[F
    invoke-virtual {v8}, Lcom/miui/autoui/AutoUIParams;->getPaint()Landroid/graphics/Paint;

    move-result-object v10

    .line 387
    .local v10, "autoUIPaint":Landroid/graphics/Paint;
    if-nez v10, :cond_9d

    move-object v11, v5

    goto :goto_9e

    :cond_9d
    move-object v11, v10

    :goto_9e
    invoke-interface {v6, v9, v11}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 388
    iget-object v11, v0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v11}, Landroid/graphics/Canvas;->restore()V

    .line 390
    .end local v9    # "values":[F
    .end local v10    # "autoUIPaint":Landroid/graphics/Paint;
    :goto_a6
    return-void

    .line 392
    .end local v7    # "params":Lcom/miui/autoui/AutoUIParams;
    .end local v8    # "autoUIParams":Lcom/miui/autoui/AutoUIParams;
    :cond_a7
    invoke-super/range {p0 .. p8}, Lcom/miui/autoui/DefaultAutoUICanvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;Ljava/util/function/BiConsumer;)V

    .line 393
    return-void
.end method

.method public blacklist drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 12
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;
    .param p7, "runnable"    # Ljava/lang/Runnable;

    .line 397
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_43

    if-eqz p7, :cond_43

    .line 398
    iget-object v0, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 399
    new-instance v0, Lcom/miui/autoui/AutoUIParams;

    invoke-direct {v0}, Lcom/miui/autoui/AutoUIParams;-><init>()V

    .line 400
    .local v0, "params":Lcom/miui/autoui/AutoUIParams;
    const-string v1, "drawText"

    invoke-virtual {v0, v1}, Lcom/miui/autoui/AutoUIParams;->setName(Ljava/lang/String;)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    .line 401
    invoke-virtual {v1, p1}, Lcom/miui/autoui/AutoUIParams;->setText(Ljava/lang/CharSequence;)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    .line 402
    invoke-virtual {v1, p2, p3}, Lcom/miui/autoui/AutoUIParams;->setTextIndex(II)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    .line 403
    invoke-virtual {v1, p6}, Lcom/miui/autoui/AutoUIParams;->setPaint(Landroid/graphics/Paint;)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    .line 404
    invoke-virtual {v1, p4}, Lcom/miui/autoui/AutoUIParams;->setX(F)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    .line 405
    invoke-virtual {v1, p5}, Lcom/miui/autoui/AutoUIParams;->setY(F)Lcom/miui/autoui/AutoUIParams;

    .line 406
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v1, v2, v3, v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->hookCanvas(Landroid/view/View;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)Lcom/miui/autoui/AutoUIParams;

    .line 407
    invoke-interface {p7}, Ljava/lang/Runnable;->run()V

    .line 408
    iget-object v1, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 409
    return-void

    .line 411
    .end local v0    # "params":Lcom/miui/autoui/AutoUIParams;
    :cond_43
    invoke-super/range {p0 .. p7}, Lcom/miui/autoui/DefaultAutoUICanvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;Ljava/lang/Runnable;)V

    .line 412
    return-void
.end method

.method public blacklist drawText(Ljava/lang/String;FFLandroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;
    .param p5, "runnable"    # Ljava/lang/Runnable;

    .line 416
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_48

    if-eqz p5, :cond_48

    .line 417
    iget-object v0, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 418
    new-instance v0, Lcom/miui/autoui/AutoUIParams;

    invoke-direct {v0}, Lcom/miui/autoui/AutoUIParams;-><init>()V

    .line 419
    .local v0, "params":Lcom/miui/autoui/AutoUIParams;
    const-string v1, "drawText"

    invoke-virtual {v0, v1}, Lcom/miui/autoui/AutoUIParams;->setName(Ljava/lang/String;)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    .line 420
    invoke-virtual {v1, p1}, Lcom/miui/autoui/AutoUIParams;->setText(Ljava/lang/CharSequence;)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    const/4 v2, 0x0

    .line 421
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/autoui/AutoUIParams;->setTextIndex(II)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    .line 422
    invoke-virtual {v1, p4}, Lcom/miui/autoui/AutoUIParams;->setPaint(Landroid/graphics/Paint;)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    .line 423
    invoke-virtual {v1, p2}, Lcom/miui/autoui/AutoUIParams;->setX(F)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    .line 424
    invoke-virtual {v1, p3}, Lcom/miui/autoui/AutoUIParams;->setY(F)Lcom/miui/autoui/AutoUIParams;

    .line 425
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v1, v2, v3, v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->hookCanvas(Landroid/view/View;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)Lcom/miui/autoui/AutoUIParams;

    .line 426
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    .line 427
    iget-object v1, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 428
    return-void

    .line 430
    .end local v0    # "params":Lcom/miui/autoui/AutoUIParams;
    :cond_48
    invoke-super/range {p0 .. p5}, Lcom/miui/autoui/DefaultAutoUICanvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;Ljava/lang/Runnable;)V

    .line 431
    return-void
.end method

.method public blacklist drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;
    .param p7, "runnable"    # Ljava/lang/Runnable;

    .line 435
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_43

    if-eqz p7, :cond_43

    .line 436
    iget-object v0, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 437
    new-instance v0, Lcom/miui/autoui/AutoUIParams;

    invoke-direct {v0}, Lcom/miui/autoui/AutoUIParams;-><init>()V

    .line 438
    .local v0, "params":Lcom/miui/autoui/AutoUIParams;
    const-string v1, "drawText"

    invoke-virtual {v0, v1}, Lcom/miui/autoui/AutoUIParams;->setName(Ljava/lang/String;)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    .line 439
    invoke-virtual {v1, p1}, Lcom/miui/autoui/AutoUIParams;->setText(Ljava/lang/CharSequence;)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    .line 440
    invoke-virtual {v1, p2, p3}, Lcom/miui/autoui/AutoUIParams;->setTextIndex(II)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    .line 441
    invoke-virtual {v1, p6}, Lcom/miui/autoui/AutoUIParams;->setPaint(Landroid/graphics/Paint;)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    .line 442
    invoke-virtual {v1, p4}, Lcom/miui/autoui/AutoUIParams;->setX(F)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    .line 443
    invoke-virtual {v1, p5}, Lcom/miui/autoui/AutoUIParams;->setY(F)Lcom/miui/autoui/AutoUIParams;

    .line 444
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v1, v2, v3, v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->hookCanvas(Landroid/view/View;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)Lcom/miui/autoui/AutoUIParams;

    .line 445
    invoke-interface {p7}, Ljava/lang/Runnable;->run()V

    .line 446
    iget-object v1, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 447
    return-void

    .line 449
    .end local v0    # "params":Lcom/miui/autoui/AutoUIParams;
    :cond_43
    invoke-super/range {p0 .. p7}, Lcom/miui/autoui/DefaultAutoUICanvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;Ljava/lang/Runnable;)V

    .line 450
    return-void
.end method

.method public blacklist drawText([CIIFFLandroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 12
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;
    .param p7, "runnable"    # Ljava/lang/Runnable;

    .line 454
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_4a

    if-eqz p7, :cond_4a

    .line 455
    iget-object v0, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 456
    new-instance v0, Lcom/miui/autoui/AutoUIParams;

    invoke-direct {v0}, Lcom/miui/autoui/AutoUIParams;-><init>()V

    .line 457
    .local v0, "params":Lcom/miui/autoui/AutoUIParams;
    const-string v1, "drawText"

    invoke-virtual {v0, v1}, Lcom/miui/autoui/AutoUIParams;->setName(Ljava/lang/String;)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([C)V

    .line 458
    invoke-virtual {v1, v2}, Lcom/miui/autoui/AutoUIParams;->setText(Ljava/lang/CharSequence;)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    add-int v2, p2, p3

    .line 459
    invoke-virtual {v1, p2, v2}, Lcom/miui/autoui/AutoUIParams;->setTextIndex(II)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    .line 460
    invoke-virtual {v1, p6}, Lcom/miui/autoui/AutoUIParams;->setPaint(Landroid/graphics/Paint;)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    .line 461
    invoke-virtual {v1, p4}, Lcom/miui/autoui/AutoUIParams;->setX(F)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    .line 462
    invoke-virtual {v1, p5}, Lcom/miui/autoui/AutoUIParams;->setY(F)Lcom/miui/autoui/AutoUIParams;

    .line 463
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v1, v2, v3, v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->hookCanvas(Landroid/view/View;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)Lcom/miui/autoui/AutoUIParams;

    .line 464
    invoke-interface {p7}, Ljava/lang/Runnable;->run()V

    .line 465
    iget-object v1, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 466
    return-void

    .line 468
    .end local v0    # "params":Lcom/miui/autoui/AutoUIParams;
    :cond_4a
    invoke-super/range {p0 .. p7}, Lcom/miui/autoui/DefaultAutoUICanvas;->drawText([CIIFFLandroid/graphics/Paint;Ljava/lang/Runnable;)V

    .line 469
    return-void
.end method

.method public blacklist drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "path"    # Landroid/graphics/Path;
    .param p3, "hOffset"    # F
    .param p4, "vOffset"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "runnable"    # Ljava/lang/Runnable;

    .line 473
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_37

    if-eqz p6, :cond_37

    .line 474
    iget-object v0, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 475
    new-instance v0, Lcom/miui/autoui/AutoUIParams;

    invoke-direct {v0}, Lcom/miui/autoui/AutoUIParams;-><init>()V

    .line 476
    .local v0, "params":Lcom/miui/autoui/AutoUIParams;
    const-string v1, "drawTextOnPath"

    invoke-virtual {v0, v1}, Lcom/miui/autoui/AutoUIParams;->setName(Ljava/lang/String;)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/miui/autoui/AutoUIParams;->setX(F)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/miui/autoui/AutoUIParams;->setY(F)Lcom/miui/autoui/AutoUIParams;

    .line 477
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v1, v2, v3, v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->hookCanvas(Landroid/view/View;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)Lcom/miui/autoui/AutoUIParams;

    .line 478
    invoke-interface {p6}, Ljava/lang/Runnable;->run()V

    .line 479
    iget-object v1, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 480
    return-void

    .line 482
    .end local v0    # "params":Lcom/miui/autoui/AutoUIParams;
    :cond_37
    invoke-super/range {p0 .. p6}, Lcom/miui/autoui/DefaultAutoUICanvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;Ljava/lang/Runnable;)V

    .line 483
    return-void
.end method

.method public blacklist drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 13
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "path"    # Landroid/graphics/Path;
    .param p5, "hOffset"    # F
    .param p6, "vOffset"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;
    .param p8, "runnable"    # Ljava/lang/Runnable;

    .line 487
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_37

    if-eqz p8, :cond_37

    .line 488
    iget-object v0, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 489
    new-instance v0, Lcom/miui/autoui/AutoUIParams;

    invoke-direct {v0}, Lcom/miui/autoui/AutoUIParams;-><init>()V

    .line 490
    .local v0, "params":Lcom/miui/autoui/AutoUIParams;
    const-string v1, "drawTextOnPath"

    invoke-virtual {v0, v1}, Lcom/miui/autoui/AutoUIParams;->setName(Ljava/lang/String;)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/miui/autoui/AutoUIParams;->setX(F)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    invoke-virtual {v1, p6}, Lcom/miui/autoui/AutoUIParams;->setY(F)Lcom/miui/autoui/AutoUIParams;

    .line 491
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v1, v2, v3, v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->hookCanvas(Landroid/view/View;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)Lcom/miui/autoui/AutoUIParams;

    .line 492
    invoke-interface {p8}, Ljava/lang/Runnable;->run()V

    .line 493
    iget-object v1, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 494
    return-void

    .line 496
    .end local v0    # "params":Lcom/miui/autoui/AutoUIParams;
    :cond_37
    invoke-super/range {p0 .. p8}, Lcom/miui/autoui/DefaultAutoUICanvas;->drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;Ljava/lang/Runnable;)V

    .line 497
    return-void
.end method

.method public blacklist drawTextRun(Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 15
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

    .line 501
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_3b

    if-eqz p10, :cond_3b

    .line 502
    iget-object v0, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 503
    new-instance v0, Lcom/miui/autoui/AutoUIParams;

    invoke-direct {v0}, Lcom/miui/autoui/AutoUIParams;-><init>()V

    .line 504
    .local v0, "params":Lcom/miui/autoui/AutoUIParams;
    const-string v1, "drawTextOnPath"

    invoke-virtual {v0, v1}, Lcom/miui/autoui/AutoUIParams;->setName(Ljava/lang/String;)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    invoke-virtual {v1, p6}, Lcom/miui/autoui/AutoUIParams;->setX(F)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    invoke-virtual {v1, p7}, Lcom/miui/autoui/AutoUIParams;->setY(F)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    invoke-virtual {v1, p8}, Lcom/miui/autoui/AutoUIParams;->setRtl(Z)Lcom/miui/autoui/AutoUIParams;

    .line 505
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v1, v2, v3, v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->hookCanvas(Landroid/view/View;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)Lcom/miui/autoui/AutoUIParams;

    .line 506
    invoke-interface {p10}, Ljava/lang/Runnable;->run()V

    .line 507
    iget-object v1, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 508
    return-void

    .line 510
    .end local v0    # "params":Lcom/miui/autoui/AutoUIParams;
    :cond_3b
    invoke-super/range {p0 .. p10}, Lcom/miui/autoui/DefaultAutoUICanvas;->drawTextRun(Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;Ljava/lang/Runnable;)V

    .line 511
    return-void
.end method

.method public blacklist drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 15
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

    .line 515
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_3b

    if-eqz p10, :cond_3b

    .line 516
    iget-object v0, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 517
    new-instance v0, Lcom/miui/autoui/AutoUIParams;

    invoke-direct {v0}, Lcom/miui/autoui/AutoUIParams;-><init>()V

    .line 518
    .local v0, "params":Lcom/miui/autoui/AutoUIParams;
    const-string v1, "drawTextOnPath"

    invoke-virtual {v0, v1}, Lcom/miui/autoui/AutoUIParams;->setName(Ljava/lang/String;)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    invoke-virtual {v1, p6}, Lcom/miui/autoui/AutoUIParams;->setX(F)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    invoke-virtual {v1, p7}, Lcom/miui/autoui/AutoUIParams;->setY(F)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    invoke-virtual {v1, p8}, Lcom/miui/autoui/AutoUIParams;->setRtl(Z)Lcom/miui/autoui/AutoUIParams;

    .line 519
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v1, v2, v3, v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->hookCanvas(Landroid/view/View;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)Lcom/miui/autoui/AutoUIParams;

    .line 520
    invoke-interface {p10}, Ljava/lang/Runnable;->run()V

    .line 521
    iget-object v1, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 522
    return-void

    .line 524
    .end local v0    # "params":Lcom/miui/autoui/AutoUIParams;
    :cond_3b
    invoke-super/range {p0 .. p10}, Lcom/miui/autoui/DefaultAutoUICanvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;Ljava/lang/Runnable;)V

    .line 525
    return-void
.end method

.method public blacklist drawTextRun([CIIIIFFZLandroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 15
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

    .line 529
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_3b

    if-eqz p10, :cond_3b

    .line 530
    iget-object v0, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 531
    new-instance v0, Lcom/miui/autoui/AutoUIParams;

    invoke-direct {v0}, Lcom/miui/autoui/AutoUIParams;-><init>()V

    .line 532
    .local v0, "params":Lcom/miui/autoui/AutoUIParams;
    const-string v1, "drawTextOnPath"

    invoke-virtual {v0, v1}, Lcom/miui/autoui/AutoUIParams;->setName(Ljava/lang/String;)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    invoke-virtual {v1, p6}, Lcom/miui/autoui/AutoUIParams;->setX(F)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    invoke-virtual {v1, p7}, Lcom/miui/autoui/AutoUIParams;->setY(F)Lcom/miui/autoui/AutoUIParams;

    move-result-object v1

    invoke-virtual {v1, p8}, Lcom/miui/autoui/AutoUIParams;->setRtl(Z)Lcom/miui/autoui/AutoUIParams;

    .line 533
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v1, v2, v3, v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->hookCanvas(Landroid/view/View;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)Lcom/miui/autoui/AutoUIParams;

    .line 534
    invoke-interface {p10}, Ljava/lang/Runnable;->run()V

    .line 535
    iget-object v1, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 536
    return-void

    .line 538
    .end local v0    # "params":Lcom/miui/autoui/AutoUIParams;
    :cond_3b
    invoke-super/range {p0 .. p10}, Lcom/miui/autoui/DefaultAutoUICanvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;Ljava/lang/Runnable;)V

    .line 539
    return-void
.end method

.method public blacklist drawTextureLayer(Landroid/graphics/TextureLayer;Ljava/lang/Runnable;)V
    .registers 7
    .param p1, "layer"    # Landroid/graphics/TextureLayer;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .line 543
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_2f

    if-eqz p2, :cond_2f

    .line 544
    iget-object v0, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 545
    new-instance v0, Lcom/miui/autoui/AutoUIParams;

    invoke-direct {v0}, Lcom/miui/autoui/AutoUIParams;-><init>()V

    .line 546
    .local v0, "params":Lcom/miui/autoui/AutoUIParams;
    const-string v1, "drawTextureLayer"

    invoke-virtual {v0, v1}, Lcom/miui/autoui/AutoUIParams;->setName(Ljava/lang/String;)Lcom/miui/autoui/AutoUIParams;

    .line 547
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v1, v2, v3, v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->hookCanvas(Landroid/view/View;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)Lcom/miui/autoui/AutoUIParams;

    .line 548
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 549
    iget-object v1, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 550
    return-void

    .line 552
    .end local v0    # "params":Lcom/miui/autoui/AutoUIParams;
    :cond_2f
    invoke-super {p0, p1, p2}, Lcom/miui/autoui/DefaultAutoUICanvas;->drawTextureLayer(Landroid/graphics/TextureLayer;Ljava/lang/Runnable;)V

    .line 553
    return-void
.end method

.method public blacklist drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;Ljava/lang/Runnable;)V
    .registers 15
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

    .line 557
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/MIUIAutoUIManagerStub;->isAppAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p13, :cond_10

    .line 558
    invoke-interface {p13}, Ljava/lang/Runnable;->run()V

    .line 559
    return-void

    .line 561
    :cond_10
    invoke-super/range {p0 .. p13}, Lcom/miui/autoui/DefaultAutoUICanvas;->drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;Ljava/lang/Runnable;)V

    .line 562
    return-void
.end method

.method public blacklist setView(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 566
    iput-object p1, p0, Lcom/miui/autoui/MiuiAutoUICanvas;->mView:Landroid/view/View;

    .line 567
    return-void
.end method
