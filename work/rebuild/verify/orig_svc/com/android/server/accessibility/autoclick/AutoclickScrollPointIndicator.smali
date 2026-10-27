.class public Lcom/android/server/accessibility/autoclick/AutoclickScrollPointIndicator;
.super Landroid/view/View;
.source "AutoclickScrollPointIndicator.java"


# instance fields
.field public mIsVisible:Z

.field public final mPaint:Landroid/graphics/Paint;

.field public final mPointSizePx:F

.field public final mWindowManager:Landroid/view/WindowManager;

.field public mX:F

.field public mY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 53
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPointIndicator;->mIsVisible:Z

    .line 55
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPointIndicator;->mWindowManager:Landroid/view/WindowManager;

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr p1, v0

    .line 59
    iput p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPointIndicator;->mPointSizePx:F

    .line 62
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPointIndicator;->mPaint:Landroid/graphics/Paint;

    const/4 p0, 0x1

    .line 63
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 1

    .line 38
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPointIndicator;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 2

    .line 124
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v0, 0x7e8

    .line 125
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x118

    .line 126
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 129
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v0, 0x3

    .line 130
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v0, -0x3

    .line 131
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 132
    const-class v0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPointIndicator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 133
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    return-object p0
.end method

.method public hide()V
    .registers 2

    .line 113
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPointIndicator;->mIsVisible:Z

    if-eqz v0, :cond_c

    .line 114
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPointIndicator;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPointIndicator;->mIsVisible:Z

    :cond_c
    return-void
.end method

.method public isVisible()Z
    .registers 1

    .line 140
    iget-boolean p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPointIndicator;->mIsVisible:Z

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 78
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 81
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPointIndicator;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPointIndicator;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPointIndicator;->mX:F

    iget v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPointIndicator;->mY:F

    iget v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPointIndicator;->mPointSizePx:F

    iget-object v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPointIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 85
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPointIndicator;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPointIndicator;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 87
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPointIndicator;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPointIndicator;->mX:F

    iget v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPointIndicator;->mY:F

    iget v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPointIndicator;->mPointSizePx:F

    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPointIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 3

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 70
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 71
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 73
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public show(FF)V
    .registers 3

    .line 98
    iput p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPointIndicator;->mX:F

    .line 99
    iput p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPointIndicator;->mY:F

    .line 101
    iget-boolean p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPointIndicator;->mIsVisible:Z

    if-nez p1, :cond_14

    .line 102
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPointIndicator;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPointIndicator;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 103
    iput-boolean p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPointIndicator;->mIsVisible:Z

    .line 106
    :cond_14
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
