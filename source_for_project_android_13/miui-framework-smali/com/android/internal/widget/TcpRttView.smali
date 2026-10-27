.class public Lcom/android/internal/widget/TcpRttView;
.super Landroid/view/View;
.source "TcpRttView.java"


# static fields
.field private static final blacklist NETD_RTT_PROPERY_KEY:Ljava/lang/String; = "sys.netd.rtt"

.field private static final blacklist TAG:Ljava/lang/String; = "TcpRtt"


# instance fields
.field private blacklist mHeaderBottom:I

.field private final blacklist mTextBackgroundPaint:Landroid/graphics/Paint;

.field private final blacklist mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final blacklist mTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "c"    # Landroid/content/Context;

    .line 24
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/TcpRttView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 25
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/TcpRttView;->setFocusableInTouchMode(Z)V

    .line 27
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/TcpRttView;->mTextPaint:Landroid/graphics/Paint;

    .line 28
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 29
    nop

    .line 30
    invoke-virtual {p0}, Lcom/android/internal/widget/TcpRttView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41700000    # 15.0f

    mul-float/2addr v0, v2

    .line 29
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 31
    const/16 v0, 0xff

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 32
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/TcpRttView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    .line 33
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 34
    const/16 v2, 0x80

    invoke-virtual {v1, v2, v0, v0, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 35
    return-void
.end method


# virtual methods
.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 46
    invoke-virtual {p0}, Lcom/android/internal/widget/TcpRttView;->getWidth()I

    move-result v0

    .line 47
    .local v0, "w":I
    div-int/lit8 v1, v0, 0x7

    .line 48
    .local v1, "itemW":I
    iget-object v2, p0, Lcom/android/internal/widget/TcpRttView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v2, v2

    add-int/lit8 v2, v2, 0x1

    .line 49
    .local v2, "base":I
    iget v3, p0, Lcom/android/internal/widget/TcpRttView;->mHeaderBottom:I

    .line 50
    .local v3, "bottom":I
    const-string v4, "sys.netd.rtt"

    const-string v5, "0.0ms"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "rtt":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rtt="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TcpRtt"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    mul-int/lit8 v5, v1, 0x5

    int-to-float v7, v5

    int-to-float v9, v0

    int-to-float v10, v3

    iget-object v11, p0, Lcom/android/internal/widget/TcpRttView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 56
    mul-int/lit8 v5, v1, 0x5

    add-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    int-to-float v6, v2

    iget-object v7, p0, Lcom/android/internal/widget/TcpRttView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 59
    const-wide/16 v5, 0x1388

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/widget/TcpRttView;->postInvalidateDelayed(J)V

    .line 60
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 39
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 40
    iget-object v0, p0, Lcom/android/internal/widget/TcpRttView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/internal/widget/TcpRttView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 41
    iget-object v0, p0, Lcom/android/internal/widget/TcpRttView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/android/internal/widget/TcpRttView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/widget/TcpRttView;->mHeaderBottom:I

    .line 42
    return-void
.end method
