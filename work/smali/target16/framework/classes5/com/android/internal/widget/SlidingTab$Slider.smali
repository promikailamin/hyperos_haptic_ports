.class Lcom/android/internal/widget/SlidingTab$Slider;
.super Ljava/lang/Object;
.source "SlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SlidingTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Slider"
.end annotation


# static fields
.field public static final blacklist ALIGN_BOTTOM:I = 0x3

.field public static final blacklist ALIGN_LEFT:I = 0x0

.field public static final blacklist ALIGN_RIGHT:I = 0x1

.field public static final blacklist ALIGN_TOP:I = 0x2

.field public static final blacklist ALIGN_UNKNOWN:I = 0x4

.field private static final blacklist STATE_ACTIVE:I = 0x2

.field private static final blacklist STATE_NORMAL:I = 0x0

.field private static final blacklist STATE_PRESSED:I = 0x1


# instance fields
.field private blacklist alignment:I

.field private blacklist alignment_value:I

.field private blacklist currentState:I

.field private final greylist tab:Landroid/widget/ImageView;

.field private final blacklist target:Landroid/widget/ImageView;

.field private final greylist text:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgettab(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettext(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/view/ViewGroup;III)V
    .registers 9

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->currentState:I

    .line 188
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    .line 201
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 202
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 203
    iget-object p2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 204
    iget-object p2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    new-instance p2, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    .line 209
    iget-object p2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    iget-object p2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 212
    iget-object p2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    const v1, 0x10303e8

    invoke-virtual {p2, p3, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 216
    new-instance p2, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    .line 217
    iget-object p2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 218
    iget-object p2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    sget-object p3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 219
    iget-object p2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p3, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    iget-object p2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    iget-object p2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 224
    iget-object p2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 225
    iget-object p2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 226
    return-void
.end method


# virtual methods
.method public blacklist getTabHeight()I
    .registers 2

    .line 428
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public blacklist getTabWidth()I
    .registers 2

    .line 420
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method blacklist hide()V
    .registers 6

    .line 245
    iget v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-ne v0, v2, :cond_b

    goto :goto_d

    :cond_b
    move v0, v1

    goto :goto_e

    :cond_d
    :goto_d
    move v0, v2

    .line 246
    :goto_e
    if-eqz v0, :cond_28

    iget v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-nez v3, :cond_1e

    iget v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getRight()I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_29

    .line 247
    :cond_1e
    iget v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_29

    :cond_28
    move v3, v1

    .line 248
    :goto_29
    if-eqz v0, :cond_2c

    goto :goto_46

    :cond_2c
    iget v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3c

    iget v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBottom()I

    move-result v1

    sub-int v1, v0, v1

    goto :goto_46

    .line 249
    :cond_3c
    iget v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    sub-int v1, v0, v1

    .line 251
    :goto_46
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v3, v3

    int-to-float v1, v1

    const/4 v4, 0x0

    invoke-direct {v0, v4, v3, v4, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 252
    const-wide/16 v3, 0xfa

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 253
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 254
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 255
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 256
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    return-void
.end method

.method public blacklist hideTarget()V
    .registers 3

    .line 444
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 445
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 446
    return-void
.end method

.method blacklist layout(IIIII)V
    .registers 27

    .line 345
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    iput v5, v0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    .line 346
    iget-object v6, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 347
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 348
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 349
    iget-object v8, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 350
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 351
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 352
    sub-int v10, v3, v1

    .line 353
    sub-int v11, v4, v2

    .line 355
    int-to-float v12, v10

    const v13, 0x3f2aaaab

    mul-float v14, v12, v13

    float-to-int v14, v14

    sub-int/2addr v14, v9

    div-int/lit8 v15, v7, 0x2

    add-int/2addr v14, v15

    .line 356
    const v16, 0x3eaaaaaa

    mul-float v12, v12, v16

    float-to-int v12, v12

    sub-int/2addr v12, v15

    .line 357
    sub-int v15, v10, v7

    move/from16 v17, v13

    div-int/lit8 v13, v15, 0x2

    .line 358
    move/from16 v18, v8

    add-int v8, v13, v7

    .line 360
    move/from16 v19, v9

    if-eqz v5, :cond_9c

    const/16 v20, 0x2

    const/4 v9, 0x1

    if-ne v5, v9, :cond_54

    goto :goto_9c

    .line 381
    :cond_54
    sub-int v1, v10, v19

    div-int/lit8 v1, v1, 0x2

    .line 382
    add-int v10, v10, v19

    div-int/lit8 v10, v10, 0x2

    .line 383
    int-to-float v3, v11

    mul-float v7, v3, v17

    float-to-int v7, v7

    div-int/lit8 v9, v6, 0x2

    add-int/2addr v7, v9

    sub-int v7, v7, v18

    .line 384
    mul-float v3, v3, v16

    float-to-int v3, v3

    sub-int/2addr v3, v9

    .line 385
    move/from16 v9, v20

    if-ne v5, v9, :cond_84

    .line 386
    iget-object v3, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v13, v4, v8, v6}, Landroid/widget/ImageView;->layout(IIII)V

    .line 387
    iget-object v3, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    rsub-int/lit8 v9, v11, 0x0

    invoke-virtual {v3, v13, v9, v8, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 388
    iget-object v3, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    add-int v8, v7, v18

    invoke-virtual {v3, v1, v7, v10, v8}, Landroid/widget/ImageView;->layout(IIII)V

    .line 389
    iput v2, v0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    goto :goto_e7

    .line 391
    :cond_84
    iget-object v2, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    sub-int v5, v11, v6

    invoke-virtual {v2, v13, v5, v8, v11}, Landroid/widget/ImageView;->layout(IIII)V

    .line 392
    iget-object v2, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    add-int v5, v11, v11

    invoke-virtual {v2, v13, v11, v8, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 393
    iget-object v2, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    add-int v8, v3, v18

    invoke-virtual {v2, v1, v3, v10, v8}, Landroid/widget/ImageView;->layout(IIII)V

    .line 394
    iput v4, v0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    goto :goto_e7

    .line 362
    :cond_9c
    :goto_9c
    sub-int v2, v11, v18

    const/16 v20, 0x2

    div-int/lit8 v2, v2, 0x2

    .line 363
    add-int v8, v2, v18

    .line 364
    sub-int v4, v11, v6

    div-int/lit8 v4, v4, 0x2

    .line 365
    add-int/2addr v11, v6

    div-int/lit8 v11, v11, 0x2

    .line 366
    if-nez v5, :cond_ca

    .line 367
    iget-object v3, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4, v7, v11}, Landroid/widget/ImageView;->layout(IIII)V

    .line 368
    iget-object v3, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    rsub-int/lit8 v9, v10, 0x0

    invoke-virtual {v3, v9, v4, v5, v11}, Landroid/widget/TextView;->layout(IIII)V

    .line 369
    iget-object v3, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 370
    iget-object v3, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    add-int v9, v14, v19

    invoke-virtual {v3, v14, v2, v9, v8}, Landroid/widget/ImageView;->layout(IIII)V

    .line 371
    iput v1, v0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    goto :goto_e6

    .line 373
    :cond_ca
    iget-object v1, v0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v1, v15, v4, v10, v11}, Landroid/widget/ImageView;->layout(IIII)V

    .line 374
    iget-object v1, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    add-int v5, v10, v10

    invoke-virtual {v1, v10, v4, v5, v11}, Landroid/widget/TextView;->layout(IIII)V

    .line 375
    iget-object v1, v0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    add-int v9, v12, v19

    invoke-virtual {v1, v12, v2, v9, v8}, Landroid/widget/ImageView;->layout(IIII)V

    .line 376
    iget-object v1, v0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 377
    iput v3, v0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    .line 379
    :goto_e6
    nop

    .line 397
    :goto_e7
    return-void
.end method

.method public blacklist measure(II)V
    .registers 7

    .line 407
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 408
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 409
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v2

    .line 410
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v3

    .line 409
    invoke-virtual {v0, v2, v3}, Landroid/widget/ImageView;->measure(II)V

    .line 411
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result p1

    .line 412
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result p2

    .line 411
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->measure(II)V

    .line 413
    return-void
.end method

.method blacklist reset(Z)V
    .registers 7

    .line 301
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SlidingTab$Slider;->setState(I)V

    .line 302
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10303e8

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 304
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 305
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    iget v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2d

    iget v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-ne v1, v2, :cond_2c

    goto :goto_2d

    :cond_2c
    move v2, v0

    .line 307
    :cond_2d
    :goto_2d
    if-eqz v2, :cond_47

    iget v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-nez v1, :cond_3d

    iget v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v3

    sub-int/2addr v1, v3

    goto :goto_48

    .line 308
    :cond_3d
    iget v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getRight()I

    move-result v3

    sub-int/2addr v1, v3

    goto :goto_48

    :cond_47
    move v1, v0

    .line 309
    :goto_48
    if-eqz v2, :cond_4c

    move v3, v0

    goto :goto_64

    :cond_4c
    iget v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5b

    iget v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_64

    .line 310
    :cond_5b
    iget v3, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment_value:I

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 311
    :goto_64
    if-eqz p1, :cond_81

    .line 312
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, v1

    int-to-float v2, v3

    const/4 v3, 0x0

    invoke-direct {p1, v3, v1, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 313
    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 314
    invoke-virtual {p1, v0}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 315
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 316
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 317
    goto :goto_a7

    .line 318
    :cond_81
    if-eqz v2, :cond_8e

    .line 319
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->offsetLeftAndRight(I)V

    .line 320
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    goto :goto_98

    .line 322
    :cond_8e
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->offsetTopAndBottom(I)V

    .line 323
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    .line 325
    :goto_98
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->clearAnimation()V

    .line 326
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 327
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 329
    :goto_a7
    return-void
.end method

.method blacklist setBarBackgroundResource(I)V
    .registers 3

    .line 237
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 238
    return-void
.end method

.method blacklist setHintText(I)V
    .registers 3

    .line 241
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 242
    return-void
.end method

.method blacklist setIcon(I)V
    .registers 3

    .line 229
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 230
    return-void
.end method

.method blacklist setState(I)V
    .registers 6

    .line 276
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_8

    move v3, v2

    goto :goto_9

    :cond_8
    move v3, v1

    :goto_9
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setPressed(Z)V

    .line 277
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    if-ne p1, v2, :cond_11

    move v1, v2

    :cond_11
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 278
    const/4 v0, 0x2

    if-ne p1, v0, :cond_57

    .line 279
    const v0, 0x10100a2

    filled-new-array {v0}, [I

    move-result-object v0

    .line 280
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 281
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 283
    :cond_33
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 284
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 286
    :cond_48
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10303e7

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 287
    goto :goto_65

    .line 288
    :cond_57
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10303e8

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 290
    :goto_65
    iput p1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->currentState:I

    .line 291
    return-void
.end method

.method blacklist setTabBackgroundResource(I)V
    .registers 3

    .line 233
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 234
    return-void
.end method

.method blacklist setTarget(I)V
    .registers 3

    .line 332
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 333
    return-void
.end method

.method blacklist show(Z)V
    .registers 5

    .line 260
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    if-eqz p1, :cond_5d

    .line 264
    iget p1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    const/4 v0, 0x1

    if-eqz p1, :cond_18

    iget p1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-ne p1, v0, :cond_17

    goto :goto_18

    :cond_17
    move v0, v1

    .line 265
    :cond_18
    :goto_18
    if-eqz v0, :cond_2d

    iget p1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    if-nez p1, :cond_25

    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result p1

    goto :goto_2e

    :cond_25
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result p1

    neg-int p1, p1

    goto :goto_2e

    :cond_2d
    move p1, v1

    .line 266
    :goto_2e
    if-eqz v0, :cond_31

    goto :goto_44

    :cond_31
    iget v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->alignment:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3d

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    goto :goto_44

    :cond_3d
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    neg-int v1, v0

    .line 268
    :goto_44
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    neg-int p1, p1

    int-to-float p1, p1

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 269
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 270
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 271
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 273
    :cond_5d
    return-void
.end method

.method blacklist showTarget()V
    .registers 4

    .line 294
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 295
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 296
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 297
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    return-void
.end method

.method public blacklist startAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .registers 4

    .line 439
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 440
    iget-object p1, p0, Lcom/android/internal/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 441
    return-void
.end method

.method public blacklist updateDrawableStates()V
    .registers 2

    .line 400
    iget v0, p0, Lcom/android/internal/widget/SlidingTab$Slider;->currentState:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SlidingTab$Slider;->setState(I)V

    .line 401
    return-void
.end method
