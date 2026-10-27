.class public Lcom/miui/mishare/app/view/CircleProgress;
.super Landroid/view/View;
.source "CircleProgress.java"


# instance fields
.field private blacklist percent:F

.field private blacklist progressColor:I

.field private blacklist progressPaint:Landroid/graphics/Paint;

.field private blacklist radius:F

.field private blacklist rect:Landroid/graphics/RectF;

.field private blacklist ringColor:I

.field private blacklist ringPaint:Landroid/graphics/Paint;

.field private blacklist strokeWidth:F


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/mishare/app/view/CircleProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/mishare/app/view/CircleProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/mishare/app/view/CircleProgress;->ringPaint:Landroid/graphics/Paint;

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/mishare/app/view/CircleProgress;->progressPaint:Landroid/graphics/Paint;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/mishare/app/view/CircleProgress;->percent:F

    .line 25
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/mishare/app/view/CircleProgress;->rect:Landroid/graphics/RectF;

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/miui/mishare/app/view/CircleProgress;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0}, Lcom/miui/mishare/app/view/CircleProgress;->initVariable()V

    .line 39
    return-void
.end method

.method private blacklist calculateRadius()V
    .registers 10

    .line 63
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/CircleProgress;->getWidth()I

    move-result v0

    .line 64
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/CircleProgress;->getHeight()I

    move-result v1

    .line 65
    .local v1, "height":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p0, Lcom/miui/mishare/app/view/CircleProgress;->strokeWidth:F

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    iput v2, p0, Lcom/miui/mishare/app/view/CircleProgress;->radius:F

    .line 66
    iget-object v4, p0, Lcom/miui/mishare/app/view/CircleProgress;->rect:Landroid/graphics/RectF;

    int-to-float v5, v0

    div-float/2addr v5, v3

    sub-float/2addr v5, v2

    int-to-float v6, v1

    div-float/2addr v6, v3

    sub-float/2addr v6, v2

    int-to-float v7, v0

    div-float/2addr v7, v3

    add-float/2addr v7, v2

    int-to-float v8, v1

    div-float/2addr v8, v3

    add-float/2addr v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 67
    return-void
.end method

.method private blacklist initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 42
    sget-object v0, Landroid/miui/R$styleable;->CircleProgress:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 43
    .local v0, "typeArray":Landroid/content/res/TypedArray;
    const/4 v2, 0x2

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/miui/mishare/app/view/CircleProgress;->strokeWidth:F

    .line 44
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/miui/mishare/app/view/CircleProgress;->ringColor:I

    .line 45
    const v2, 0xffffff

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/miui/mishare/app/view/CircleProgress;->progressColor:I

    .line 46
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    return-void
.end method

.method private blacklist initVariable()V
    .registers 4

    .line 50
    iget-object v0, p0, Lcom/miui/mishare/app/view/CircleProgress;->ringPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    iget-object v0, p0, Lcom/miui/mishare/app/view/CircleProgress;->ringPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/miui/mishare/app/view/CircleProgress;->ringColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object v0, p0, Lcom/miui/mishare/app/view/CircleProgress;->ringPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    iget-object v0, p0, Lcom/miui/mishare/app/view/CircleProgress;->ringPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 54
    iget-object v0, p0, Lcom/miui/mishare/app/view/CircleProgress;->ringPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/miui/mishare/app/view/CircleProgress;->strokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    iget-object v0, p0, Lcom/miui/mishare/app/view/CircleProgress;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object v0, p0, Lcom/miui/mishare/app/view/CircleProgress;->progressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/mishare/app/view/CircleProgress;->progressColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v0, p0, Lcom/miui/mishare/app/view/CircleProgress;->progressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    iget-object v0, p0, Lcom/miui/mishare/app/view/CircleProgress;->progressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 59
    iget-object v0, p0, Lcom/miui/mishare/app/view/CircleProgress;->progressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/mishare/app/view/CircleProgress;->strokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 60
    return-void
.end method


# virtual methods
.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 71
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 72
    iget v0, p0, Lcom/miui/mishare/app/view/CircleProgress;->radius:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_d

    .line 73
    invoke-direct {p0}, Lcom/miui/mishare/app/view/CircleProgress;->calculateRadius()V

    .line 75
    :cond_d
    iget v0, p0, Lcom/miui/mishare/app/view/CircleProgress;->ringColor:I

    if-eqz v0, :cond_1d

    .line 76
    iget-object v3, p0, Lcom/miui/mishare/app/view/CircleProgress;->rect:Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/high16 v5, 0x43b40000    # 360.0f

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/miui/mishare/app/view/CircleProgress;->ringPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 78
    :cond_1d
    iget v0, p0, Lcom/miui/mishare/app/view/CircleProgress;->percent:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_32

    .line 79
    iget-object v3, p0, Lcom/miui/mishare/app/view/CircleProgress;->rect:Landroid/graphics/RectF;

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v5, v0, v1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/miui/mishare/app/view/CircleProgress;->progressPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 81
    :cond_32
    return-void
.end method

.method public blacklist setProgressColor(I)V
    .registers 4
    .param p1, "color"    # I

    .line 89
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/CircleProgress;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/mishare/app/view/CircleProgress;->progressColor:I

    .line 90
    iget-object v1, p0, Lcom/miui/mishare/app/view/CircleProgress;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    return-void
.end method

.method public blacklist setProgressPercent(F)V
    .registers 2
    .param p1, "percent"    # F

    .line 84
    iput p1, p0, Lcom/miui/mishare/app/view/CircleProgress;->percent:F

    .line 85
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/CircleProgress;->postInvalidate()V

    .line 86
    return-void
.end method
