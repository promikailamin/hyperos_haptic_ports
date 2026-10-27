.class Landroid/media/Cea608CCWidget$CCLineBox;
.super Landroid/widget/TextView;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea608CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CCLineBox"
.end annotation


# static fields
.field private static final greylist-max-o EDGE_OUTLINE_RATIO:F = 0.1f

.field private static final greylist-max-o EDGE_SHADOW_RATIO:F = 0.05f

.field private static final greylist-max-o FONT_PADDING_RATIO:F = 0.75f


# instance fields
.field private greylist-max-o mBgColor:I

.field private greylist-max-o mEdgeColor:I

.field private greylist-max-o mEdgeType:I

.field private greylist-max-o mOutlineWidth:F

.field private greylist-max-o mShadowOffset:F

.field private greylist-max-o mShadowRadius:F

.field private greylist-max-o mTextColor:I


# direct methods
.method constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 4

    .line 1275
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1269
    const/4 p1, -0x1

    iput p1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mTextColor:I

    .line 1270
    const/high16 v0, -0x1000000

    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mBgColor:I

    .line 1271
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    .line 1272
    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    .line 1276
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Landroid/media/Cea608CCWidget$CCLineBox;->setGravity(I)V

    .line 1277
    invoke-virtual {p0, v0}, Landroid/media/Cea608CCWidget$CCLineBox;->setBackgroundColor(I)V

    .line 1278
    invoke-virtual {p0, p1}, Landroid/media/Cea608CCWidget$CCLineBox;->setTextColor(I)V

    .line 1279
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Landroid/media/Cea608CCWidget$CCLineBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1280
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/media/Cea608CCWidget$CCLineBox;->setVisibility(I)V

    .line 1282
    invoke-virtual {p0}, Landroid/media/Cea608CCWidget$CCLineBox;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 1285
    const v0, 0x105038a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mOutlineWidth:F

    .line 1287
    const v0, 0x105038c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    .line 1289
    const v0, 0x105038b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowOffset:F

    .line 1291
    return-void
.end method

.method private greylist-max-o drawEdgeOutline(Landroid/graphics/Canvas;)V
    .registers 7

    .line 1346
    invoke-virtual {p0}, Landroid/media/Cea608CCWidget$CCLineBox;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 1348
    invoke-virtual {v0}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v1

    .line 1349
    invoke-virtual {v0}, Landroid/text/TextPaint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v2

    .line 1350
    invoke-virtual {v0}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v3

    .line 1352
    iget v4, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    invoke-virtual {p0, v4}, Landroid/media/Cea608CCWidget$CCLineBox;->setTextColor(I)V

    .line 1353
    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1354
    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1355
    iget v4, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mOutlineWidth:F

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 1358
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1361
    iget v4, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mTextColor:I

    invoke-virtual {p0, v4}, Landroid/media/Cea608CCWidget$CCLineBox;->setTextColor(I)V

    .line 1362
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1363
    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1364
    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 1367
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/Cea608CCWidget$CCLineBox;->setBackgroundSpans(I)V

    .line 1369
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1371
    iget p1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mBgColor:I

    invoke-direct {p0, p1}, Landroid/media/Cea608CCWidget$CCLineBox;->setBackgroundSpans(I)V

    .line 1372
    return-void
.end method

.method private greylist-max-o drawEdgeRaisedOrDepressed(Landroid/graphics/Canvas;)V
    .registers 10

    .line 1375
    invoke-virtual {p0}, Landroid/media/Cea608CCWidget$CCLineBox;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 1377
    invoke-virtual {v0}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v1

    .line 1378
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1380
    iget v2, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_15

    const/4 v2, 0x1

    goto :goto_16

    :cond_15
    move v2, v4

    .line 1381
    :goto_16
    const/4 v3, -0x1

    if-eqz v2, :cond_1b

    move v5, v3

    goto :goto_1d

    :cond_1b
    iget v5, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    .line 1382
    :goto_1d
    if-eqz v2, :cond_21

    iget v3, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    .line 1383
    :cond_21
    iget v2, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    .line 1386
    iget v6, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    neg-float v7, v2

    invoke-virtual {p0, v6, v7, v7, v5}, Landroid/media/Cea608CCWidget$CCLineBox;->setShadowLayer(FFFI)V

    .line 1387
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1390
    invoke-direct {p0, v4}, Landroid/media/Cea608CCWidget$CCLineBox;->setBackgroundSpans(I)V

    .line 1393
    iget v4, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    invoke-virtual {p0, v4, v2, v2, v3}, Landroid/media/Cea608CCWidget$CCLineBox;->setShadowLayer(FFFI)V

    .line 1394
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1397
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1400
    iget p1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mBgColor:I

    invoke-direct {p0, p1}, Landroid/media/Cea608CCWidget$CCLineBox;->setBackgroundSpans(I)V

    .line 1401
    return-void
.end method

.method private greylist-max-o setBackgroundSpans(I)V
    .registers 6

    .line 1404
    invoke-virtual {p0}, Landroid/media/Cea608CCWidget$CCLineBox;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1405
    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_24

    .line 1406
    check-cast v0, Landroid/text/Spannable;

    .line 1407
    nop

    .line 1408
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;

    .line 1407
    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;

    .line 1409
    nop

    :goto_19
    array-length v1, v0

    if-ge v3, v1, :cond_24

    .line 1410
    aget-object v1, v0, v3

    invoke-virtual {v1, p1}, Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;->setBackgroundColor(I)V

    .line 1409
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 1413
    :cond_24
    return-void
.end method


# virtual methods
.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 1329
    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    if-eqz v0, :cond_1c

    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    goto :goto_1c

    .line 1337
    :cond_f
    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 1338
    invoke-direct {p0, p1}, Landroid/media/Cea608CCWidget$CCLineBox;->drawEdgeOutline(Landroid/graphics/Canvas;)V

    goto :goto_1b

    .line 1341
    :cond_18
    invoke-direct {p0, p1}, Landroid/media/Cea608CCWidget$CCLineBox;->drawEdgeRaisedOrDepressed(Landroid/graphics/Canvas;)V

    .line 1343
    :goto_1b
    return-void

    .line 1333
    :cond_1c
    :goto_1c
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1334
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 8

    .line 1310
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    .line 1311
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/media/Cea608CCWidget$CCLineBox;->setTextSize(IF)V

    .line 1313
    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    iput v2, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mOutlineWidth:F

    .line 1314
    const v2, 0x3d4ccccd    # 0.05f

    mul-float/2addr v0, v2

    add-float/2addr v0, v3

    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    .line 1315
    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowOffset:F

    .line 1318
    invoke-virtual {p0, v3}, Landroid/media/Cea608CCWidget$CCLineBox;->setScaleX(F)V

    .line 1319
    invoke-virtual {p0}, Landroid/media/Cea608CCWidget$CCLineBox;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const-string v2, "1234567890123456789012345678901234"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {}, Landroid/media/Cea608CCWidget;->-$$Nest$sfgetmTextBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1320
    invoke-static {}, Landroid/media/Cea608CCWidget;->-$$Nest$sfgetmTextBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 1321
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 1322
    div-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/media/Cea608CCWidget$CCLineBox;->setScaleX(F)V

    .line 1324
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 1325
    return-void
.end method

.method greylist-max-o setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .registers 5

    .line 1294
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mTextColor:I

    .line 1295
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mBgColor:I

    .line 1296
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    iput v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    .line 1297
    iget p1, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    iput p1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    .line 1299
    iget p1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mTextColor:I

    invoke-virtual {p0, p1}, Landroid/media/Cea608CCWidget$CCLineBox;->setTextColor(I)V

    .line 1300
    iget p1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeType:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_26

    .line 1301
    iget p1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowRadius:F

    iget v0, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowOffset:F

    iget v1, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mShadowOffset:F

    iget v2, p0, Landroid/media/Cea608CCWidget$CCLineBox;->mEdgeColor:I

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/media/Cea608CCWidget$CCLineBox;->setShadowLayer(FFFI)V

    goto :goto_2b

    .line 1303
    :cond_26
    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Landroid/media/Cea608CCWidget$CCLineBox;->setShadowLayer(FFFI)V

    .line 1305
    :goto_2b
    invoke-virtual {p0}, Landroid/media/Cea608CCWidget$CCLineBox;->invalidate()V

    .line 1306
    return-void
.end method
