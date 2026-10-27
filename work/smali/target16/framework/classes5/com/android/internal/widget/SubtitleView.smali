.class public Lcom/android/internal/widget/SubtitleView;
.super Landroid/view/View;
.source "SubtitleView.java"


# static fields
.field private static final greylist-max-o COLOR_BEVEL_DARK:I = -0x80000000

.field private static final greylist-max-o COLOR_BEVEL_LIGHT:I = -0x7f000001

.field private static final greylist-max-o INNER_PADDING_RATIO:F = 0.125f


# instance fields
.field private greylist-max-o mAlignment:Landroid/text/Layout$Alignment;

.field private greylist-max-o mBackgroundColor:I

.field private final greylist-max-o mCornerRadius:F

.field private greylist-max-o mEdgeColor:I

.field private greylist-max-o mEdgeType:I

.field private greylist-max-o mForegroundColor:I

.field private greylist-max-o mHasMeasurements:Z

.field private greylist-max-o mInnerPaddingX:I

.field private greylist-max-o mLastMeasuredWidth:I

.field private greylist-max-o mLayout:Landroid/text/StaticLayout;

.field private final greylist-max-o mLineBounds:Landroid/graphics/RectF;

.field private final greylist-max-o mOutlineWidth:F

.field private greylist-max-o mPaint:Landroid/graphics/Paint;

.field private final greylist-max-o mShadowOffsetX:F

.field private final greylist-max-o mShadowOffsetY:F

.field private final greylist-max-o mShadowRadius:F

.field private greylist-max-o mSpacingAdd:F

.field private greylist-max-o mSpacingMult:F

.field private final greylist-max-o mText:Landroid/text/SpannableStringBuilder;

.field private greylist-max-o mTextPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 88
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    .line 91
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mLineBounds:Landroid/graphics/RectF;

    .line 59
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    .line 61
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    .line 74
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingMult:F

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingAdd:F

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    .line 93
    sget-object v1, Landroid/R$styleable;->TextView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 96
    nop

    .line 97
    nop

    .line 99
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    .line 100
    const-string p3, ""

    const/16 p4, 0xf

    :goto_2f
    if-ge v0, p2, :cond_59

    .line 101
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 103
    sparse-switch v1, :sswitch_data_b6

    goto :goto_56

    .line 111
    :sswitch_39
    iget v2, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingMult:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingMult:F

    .line 112
    goto :goto_56

    .line 108
    :sswitch_42
    iget v2, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingAdd:F

    float-to-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingAdd:F

    .line 109
    goto :goto_56

    .line 105
    :sswitch_4d
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    .line 106
    goto :goto_56

    .line 114
    :sswitch_52
    invoke-virtual {p1, v1, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    .line 100
    :goto_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 118
    :cond_59
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 122
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 123
    const p2, 0x1050389

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/internal/widget/SubtitleView;->mCornerRadius:F

    .line 124
    const p2, 0x105038a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/internal/widget/SubtitleView;->mOutlineWidth:F

    .line 125
    const p2, 0x105038c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    .line 126
    const p2, 0x105038b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetX:F

    .line 127
    iget p1, p0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetX:F

    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetY:F

    .line 129
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    .line 130
    iget-object p1, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 131
    iget-object p1, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    .line 133
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/SubtitleView;->mPaint:Landroid/graphics/Paint;

    .line 134
    iget-object p1, p0, Lcom/android/internal/widget/SubtitleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 136
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    int-to-float p1, p4

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    .line 138
    return-void

    :sswitch_data_b6
    .sparse-switch
        0x0 -> :sswitch_52
        0x12 -> :sswitch_4d
        0x35 -> :sswitch_42
        0x36 -> :sswitch_39
    .end sparse-switch
.end method

.method private greylist-max-o computeMeasurements(I)Z
    .registers 7

    .line 244
    iget-boolean v0, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/internal/widget/SubtitleView;->mLastMeasuredWidth:I

    if-ne p1, v0, :cond_a

    .line 245
    return v1

    .line 249
    :cond_a
    iget v0, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingLeft:I

    iget v2, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingRight:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 250
    sub-int/2addr p1, v0

    .line 251
    const/4 v0, 0x0

    if-gtz p1, :cond_19

    .line 252
    return v0

    .line 258
    :cond_19
    iput-boolean v1, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    .line 259
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mLastMeasuredWidth:I

    .line 260
    iget-object v2, p0, Lcom/android/internal/widget/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/android/internal/widget/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v2, v0, v3, v4, p1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    .line 261
    invoke-virtual {p1, v0}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingAdd:F

    iget v2, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingMult:F

    .line 262
    invoke-virtual {p1, v0, v2}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 263
    invoke-virtual {p1, v1}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 264
    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/widget/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    .line 266
    return v1
.end method


# virtual methods
.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 15

    .line 296
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    .line 297
    if-nez v0, :cond_5

    .line 298
    return-void

    .line 301
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 302
    iget v2, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    .line 303
    iget v3, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingLeft:I

    add-int/2addr v3, v2

    int-to-float v3, v3

    iget v4, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingTop:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 305
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    .line 306
    iget-object v4, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    .line 307
    iget-object v5, p0, Lcom/android/internal/widget/SubtitleView;->mPaint:Landroid/graphics/Paint;

    .line 308
    iget-object v6, p0, Lcom/android/internal/widget/SubtitleView;->mLineBounds:Landroid/graphics/RectF;

    .line 310
    iget v7, p0, Lcom/android/internal/widget/SubtitleView;->mBackgroundColor:I

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    const/4 v8, 0x0

    if-lez v7, :cond_5c

    .line 311
    iget v7, p0, Lcom/android/internal/widget/SubtitleView;->mCornerRadius:F

    .line 312
    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v9

    int-to-float v9, v9

    .line 314
    iget v10, p0, Lcom/android/internal/widget/SubtitleView;->mBackgroundColor:I

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 315
    sget-object v10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 317
    move v10, v8

    :goto_3a
    if-ge v10, v3, :cond_5c

    .line 318
    invoke-virtual {v0, v10}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v11

    int-to-float v12, v2

    sub-float/2addr v11, v12

    iput v11, v6, Landroid/graphics/RectF;->left:F

    .line 319
    invoke-virtual {v0, v10}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v11

    add-float/2addr v11, v12

    iput v11, v6, Landroid/graphics/RectF;->right:F

    .line 320
    iput v9, v6, Landroid/graphics/RectF;->top:F

    .line 321
    invoke-virtual {v0, v10}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v9

    int-to-float v9, v9

    iput v9, v6, Landroid/graphics/RectF;->bottom:F

    .line 322
    iget v9, v6, Landroid/graphics/RectF;->bottom:F

    .line 324
    invoke-virtual {p1, v6, v7, v7, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 317
    add-int/lit8 v10, v10, 0x1

    goto :goto_3a

    .line 328
    :cond_5c
    iget v2, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeType:I

    .line 329
    const/4 v5, 0x1

    if-ne v2, v5, :cond_7e

    .line 330
    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 331
    iget v2, p0, Lcom/android/internal/widget/SubtitleView;->mOutlineWidth:F

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 332
    iget v2, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 333
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 335
    move v2, v8

    :goto_76
    if-ge v2, v3, :cond_c5

    .line 336
    invoke-virtual {v0, p1, v2, v2}, Landroid/text/StaticLayout;->drawText(Landroid/graphics/Canvas;II)V

    .line 335
    add-int/lit8 v2, v2, 0x1

    goto :goto_76

    .line 338
    :cond_7e
    const/4 v6, 0x2

    if-ne v2, v6, :cond_8d

    .line 339
    iget v2, p0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    iget v5, p0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetX:F

    iget v6, p0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetY:F

    iget v7, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    invoke-virtual {v4, v2, v5, v6, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_c5

    .line 340
    :cond_8d
    const/4 v6, 0x3

    if-eq v2, v6, :cond_93

    const/4 v7, 0x4

    if-ne v2, v7, :cond_c5

    .line 342
    :cond_93
    if-ne v2, v6, :cond_96

    goto :goto_97

    :cond_96
    move v5, v8

    .line 343
    :goto_97
    const/4 v2, -0x1

    if-eqz v5, :cond_9c

    move v6, v2

    goto :goto_9e

    :cond_9c
    iget v6, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    .line 344
    :goto_9e
    if-eqz v5, :cond_a2

    iget v2, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    .line 345
    :cond_a2
    iget v5, p0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    .line 347
    iget v7, p0, Lcom/android/internal/widget/SubtitleView;->mForegroundColor:I

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 348
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 349
    iget v7, p0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    neg-float v9, v5

    invoke-virtual {v4, v7, v9, v9, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 351
    move v6, v8

    :goto_b8
    if-ge v6, v3, :cond_c0

    .line 352
    invoke-virtual {v0, p1, v6, v6}, Landroid/text/StaticLayout;->drawText(Landroid/graphics/Canvas;II)V

    .line 351
    add-int/lit8 v6, v6, 0x1

    goto :goto_b8

    .line 355
    :cond_c0
    iget v6, p0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    invoke-virtual {v4, v6, v5, v5, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 358
    :cond_c5
    :goto_c5
    iget v2, p0, Lcom/android/internal/widget/SubtitleView;->mForegroundColor:I

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 359
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 361
    move v2, v8

    :goto_d0
    if-ge v2, v3, :cond_d8

    .line 362
    invoke-virtual {v0, p1, v2, v2}, Landroid/text/StaticLayout;->drawText(Landroid/graphics/Canvas;II)V

    .line 361
    add-int/lit8 v2, v2, 0x1

    goto :goto_d0

    .line 365
    :cond_d8
    const/4 v0, 0x0

    invoke-virtual {v4, v0, v0, v0, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 366
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 367
    return-void
.end method

.method public whitelist onLayout(ZIIII)V
    .registers 6

    .line 238
    sub-int/2addr p4, p2

    .line 240
    invoke-direct {p0, p4}, Lcom/android/internal/widget/SubtitleView;->computeMeasurements(I)Z

    .line 241
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 4

    .line 221
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 223
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SubtitleView;->computeMeasurements(I)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 224
    iget-object p1, p0, Lcom/android/internal/widget/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    .line 227
    iget p2, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingLeft:I

    iget v0, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingRight:I

    add-int/2addr p2, v0

    iget v0, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    .line 228
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    add-int/2addr v0, p2

    .line 229
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result p1

    iget p2, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingTop:I

    add-int/2addr p1, p2

    iget p2, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingBottom:I

    add-int/2addr p1, p2

    .line 230
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/SubtitleView;->setMeasuredDimension(II)V

    .line 231
    goto :goto_2e

    .line 232
    :cond_29
    const/high16 p1, 0x1000000

    invoke-virtual {p0, p1, p1}, Lcom/android/internal/widget/SubtitleView;->setMeasuredDimension(II)V

    .line 234
    :goto_2e
    return-void
.end method

.method public greylist-max-o setAlignment(Landroid/text/Layout$Alignment;)V
    .registers 3

    .line 209
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    if-eq v0, p1, :cond_f

    .line 210
    iput-object p1, p0, Lcom/android/internal/widget/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    .line 212
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    .line 214
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    .line 215
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    .line 217
    :cond_f
    return-void
.end method

.method public whitelist setBackgroundColor(I)V
    .registers 2

    .line 163
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mBackgroundColor:I

    .line 165
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    .line 166
    return-void
.end method

.method public greylist-max-o setEdgeColor(I)V
    .registers 2

    .line 175
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    .line 177
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    .line 178
    return-void
.end method

.method public greylist-max-o setEdgeType(I)V
    .registers 2

    .line 169
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeType:I

    .line 171
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    .line 172
    return-void
.end method

.method public greylist-max-o setForegroundColor(I)V
    .registers 2

    .line 156
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mForegroundColor:I

    .line 158
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    .line 159
    return-void
.end method

.method public greylist-max-o setStyle(I)V
    .registers 4

    .line 270
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mContext:Landroid/content/Context;

    .line 271
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 273
    const/4 v1, -0x1

    if-ne p1, v1, :cond_e

    .line 274
    invoke-static {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object p1

    goto :goto_12

    .line 276
    :cond_e
    sget-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->PRESETS:[Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    aget-object p1, v0, p1

    .line 279
    :goto_12
    sget-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 280
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 281
    iget v1, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    goto :goto_1f

    :cond_1d
    iget v1, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    :goto_1f
    iput v1, p0, Lcom/android/internal/widget/SubtitleView;->mForegroundColor:I

    .line 282
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 283
    iget v1, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    goto :goto_2c

    :cond_2a
    iget v1, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    :goto_2c
    iput v1, p0, Lcom/android/internal/widget/SubtitleView;->mBackgroundColor:I

    .line 284
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeType()Z

    move-result v1

    if-eqz v1, :cond_37

    iget v1, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    goto :goto_39

    :cond_37
    iget v1, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    :goto_39
    iput v1, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeType:I

    .line 285
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeColor()Z

    move-result v1

    if-eqz v1, :cond_44

    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    goto :goto_46

    :cond_44
    iget v0, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    :goto_46
    iput v0, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    .line 288
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    .line 289
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SubtitleView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 291
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    .line 292
    return-void
.end method

.method public greylist-max-o setText(I)V
    .registers 3

    .line 141
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    return-void
.end method

.method public greylist-max-o setText(Ljava/lang/CharSequence;)V
    .registers 3

    .line 146
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 147
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 149
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    .line 151
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    .line 152
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    .line 153
    return-void
.end method

.method public greylist-max-o setTextSize(F)V
    .registers 3

    .line 186
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_21

    .line 187
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 188
    const/high16 v0, 0x3e000000    # 0.125f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    .line 190
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    .line 192
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    .line 193
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    .line 195
    :cond_21
    return-void
.end method

.method public greylist-max-o setTypeface(Landroid/graphics/Typeface;)V
    .registers 3

    .line 198
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_16

    .line 199
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 201
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    .line 203
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    .line 204
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    .line 206
    :cond_16
    return-void
.end method
