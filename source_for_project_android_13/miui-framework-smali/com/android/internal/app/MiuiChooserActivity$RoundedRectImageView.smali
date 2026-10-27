.class public Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;
.super Landroid/widget/ImageView;
.source "MiuiChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MiuiChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RoundedRectImageView"
.end annotation


# instance fields
.field private blacklist mExtraImageCount:Ljava/lang/String;

.field private blacklist mOverlayPaint:Landroid/graphics/Paint;

.field private blacklist mPath:Landroid/graphics/Path;

.field private blacklist mRadius:I

.field private blacklist mRoundRectPaint:Landroid/graphics/Paint;

.field private blacklist mTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 4472
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 4464
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->mRadius:I

    .line 4465
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->mPath:Landroid/graphics/Path;

    .line 4466
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->mOverlayPaint:Landroid/graphics/Paint;

    .line 4467
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->mRoundRectPaint:Landroid/graphics/Paint;

    .line 4468
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->mTextPaint:Landroid/graphics/Paint;

    .line 4469
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->mExtraImageCount:Ljava/lang/String;

    .line 4473
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 4476
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4477
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 4480
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 4481
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 4485
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 4464
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->mRadius:I

    .line 4465
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->mPath:Landroid/graphics/Path;

    .line 4466
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->mOverlayPaint:Landroid/graphics/Paint;

    .line 4467
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->mRoundRectPaint:Landroid/graphics/Paint;

    .line 4468
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->mTextPaint:Landroid/graphics/Paint;

    .line 4469
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->mExtraImageCount:Ljava/lang/String;

    .line 4486
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->mRadius:I

    .line 4488
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->mOverlayPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x67000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4489
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->mOverlayPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4491
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->mRoundRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106017c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4492
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->mRoundRectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4493
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->mRoundRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 4494
    const v2, 0x10500a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 4493
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4496
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4497
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 4498
    const v2, 0x10500a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 4497
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4499
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 4500
    return-void
.end method

.method private blacklist updatePath(II)V
    .registers 14
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 4503
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4505
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->getPaddingRight()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4506
    .local v0, "imageWidth":I
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->getPaddingBottom()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 4507
    .local v1, "imageHeight":I
    iget-object v2, p0, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v0

    int-to-float v6, v1

    iget v7, p0, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->mRadius:I

    int-to-float v8, v7

    int-to-float v9, v7

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v7, v8

    move v8, v9

    move-object v9, v10

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 4509
    return-void
.end method


# virtual methods
.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 4540
    iget v0, p0, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->mRadius:I

    if-eqz v0, :cond_9

    .line 4541
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 4544
    :cond_9
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 4546
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->getPaddingLeft()I

    move-result v8

    .line 4547
    .local v8, "x":I
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->getPaddingRight()I

    move-result v9

    .line 4548
    .local v9, "y":I
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->getPaddingLeft()I

    move-result v1

    sub-int v10, v0, v1

    .line 4549
    .local v10, "width":I
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->getPaddingTop()I

    move-result v1

    sub-int v11, v0, v1

    .line 4550
    .local v11, "height":I
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->mExtraImageCount:Ljava/lang/String;

    if-eqz v0, :cond_67

    .line 4551
    int-to-float v1, v8

    int-to-float v2, v9

    int-to-float v3, v10

    int-to-float v4, v11

    iget-object v5, p0, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->mOverlayPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4553
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 4554
    .local v0, "xPos":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->mTextPaint:Landroid/graphics/Paint;

    .line 4555
    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    float-to-int v1, v1

    .line 4557
    .local v1, "yPos":I
    iget-object v2, p0, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->mExtraImageCount:Ljava/lang/String;

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 4560
    .end local v0    # "xPos":I
    .end local v1    # "yPos":I
    :cond_67
    int-to-float v1, v8

    int-to-float v2, v9

    int-to-float v3, v10

    int-to-float v4, v11

    iget v0, p0, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->mRadius:I

    int-to-float v5, v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->mRoundRectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 4561
    return-void
.end method

.method protected whitelist onSizeChanged(IIII)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldWidth"    # I
    .param p4, "oldHeight"    # I

    .line 4534
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 4535
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->updatePath(II)V

    .line 4536
    return-void
.end method

.method public blacklist setExtraImageCount(I)V
    .registers 4
    .param p1, "count"    # I

    .line 4525
    if-lez p1, :cond_18

    .line 4526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->mExtraImageCount:Ljava/lang/String;

    goto :goto_1b

    .line 4528
    :cond_18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->mExtraImageCount:Ljava/lang/String;

    .line 4530
    :goto_1b
    return-void
.end method

.method public blacklist setRadius(I)V
    .registers 4
    .param p1, "radius"    # I

    .line 4517
    iput p1, p0, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->mRadius:I

    .line 4518
    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/MiuiChooserActivity$RoundedRectImageView;->updatePath(II)V

    .line 4519
    return-void
.end method
