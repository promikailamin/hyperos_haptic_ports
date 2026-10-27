.class public Lcom/android/internal/widget/NotificationOptimizedLinearLayout;
.super Landroid/widget/LinearLayout;
.source "NotificationOptimizedLinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final blacklist DEBUG_LAYOUT:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "NotifOptimizedLinearLayout"

.field private static final blacklist TRACE_ONMEASURE:Z


# instance fields
.field private blacklist mShouldUseOptimizedLayout:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 62
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->TRACE_ONMEASURE:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 65
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mShouldUseOptimizedLayout:Z

    .line 69
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mShouldUseOptimizedLayout:Z

    .line 73
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mShouldUseOptimizedLayout:Z

    .line 78
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 65
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mShouldUseOptimizedLayout:Z

    .line 83
    return-void
.end method

.method private blacklist getActiveChildren()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 433
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getChildCount()I

    move-result v0

    .line 434
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 435
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_21

    .line 436
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 437
    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1b

    .line 438
    goto :goto_1e

    .line 440
    :cond_1b
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    :cond_1e
    :goto_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 442
    :cond_21
    return-object v1
.end method

.method private blacklist getDividerHeight()I
    .registers 2

    .line 543
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getDividerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 544
    if-nez v0, :cond_8

    .line 545
    const/4 v0, 0x0

    return v0

    .line 547
    :cond_8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method private blacklist getSingleWeightedChild()Landroid/view/View;
    .registers 12

    .line 240
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    .line 241
    :goto_b
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getActiveChildren()Ljava/util/List;

    move-result-object v3

    .line 242
    nop

    .line 243
    const/4 v4, 0x0

    move v5, v1

    move-object v6, v4

    :goto_13
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_50

    .line 244
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 245
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    instance-of v9, v8, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v9, :cond_4d

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 246
    const/4 v9, -0x1

    if-nez v0, :cond_30

    iget v10, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eq v10, v9, :cond_36

    :cond_30
    if-eqz v0, :cond_3c

    iget v10, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-ne v10, v9, :cond_3c

    .line 248
    :cond_36
    const-string v0, "There is a match parent child in the related orientation."

    invoke-direct {p0, v0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->logSkipOptimizedOnMeasure(Ljava/lang/String;)V

    .line 250
    return-object v4

    .line 252
    :cond_3c
    iget v8, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_4d

    .line 253
    if-nez v6, :cond_47

    .line 254
    move-object v6, v7

    goto :goto_4d

    .line 256
    :cond_47
    const-string v0, "There is more than one weighted child."

    invoke-direct {p0, v0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->logSkipOptimizedOnMeasure(Ljava/lang/String;)V

    .line 257
    return-object v4

    .line 243
    :cond_4d
    :goto_4d
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 262
    :cond_50
    if-nez v6, :cond_58

    .line 263
    const-string v0, "There is no weighted child in this layout."

    invoke-direct {p0, v0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->logSkipOptimizedOnMeasure(Ljava/lang/String;)V

    goto :goto_82

    .line 265
    :cond_58
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 266
    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v7, -0x2

    if-eq v5, v7, :cond_6a

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v5, :cond_68

    goto :goto_6a

    :cond_68
    move v5, v1

    goto :goto_6b

    :cond_6a
    :goto_6a
    move v5, v2

    .line 268
    :goto_6b
    iget v8, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eq v8, v7, :cond_73

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v3, :cond_74

    :cond_73
    move v1, v2

    .line 270
    :cond_74
    if-eqz v0, :cond_78

    if-eqz v5, :cond_7c

    :cond_78
    if-nez v0, :cond_82

    if-nez v1, :cond_82

    .line 272
    :cond_7c
    const-string v0, "Single weighted child should be either WRAP_CONTENT or 0 in the related orientation"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->logSkipOptimizedOnMeasure(Ljava/lang/String;)V

    .line 275
    goto :goto_83

    .line 279
    :cond_82
    :goto_82
    move-object v4, v6

    :goto_83
    return-object v4
.end method

.method private blacklist isOptimizationPossible(II)Z
    .registers 5

    .line 112
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getWeightSum()F

    move-result p2

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_d

    move p2, v0

    goto :goto_e

    :cond_d
    move p2, v1

    .line 113
    :goto_e
    if-eqz p2, :cond_16

    .line 114
    const-string p1, "Has weightSum."

    invoke-direct {p0, p1}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->logSkipOptimizedOnMeasure(Ljava/lang/String;)V

    .line 115
    return v1

    .line 118
    :cond_16
    invoke-direct {p0, p1}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->requiresMatchParentRemeasureForVerticalLinearLayout(I)Z

    move-result p2

    if-eqz p2, :cond_22

    .line 119
    const-string p1, "Vertical LinearLayout requires children width MATCH_PARENT remeasure "

    invoke-direct {p0, p1}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->logSkipOptimizedOnMeasure(Ljava/lang/String;)V

    .line 121
    return v1

    .line 124
    :cond_22
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getOrientation()I

    move-result p2

    if-nez p2, :cond_2a

    move p2, v0

    goto :goto_2b

    :cond_2a
    move p2, v1

    .line 125
    :goto_2b
    if-eqz p2, :cond_3b

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    if-eq p1, p2, :cond_3b

    .line 126
    const-string p1, "Horizontal LinearLayout\'s width should be measured EXACTLY"

    invoke-direct {p0, p1}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->logSkipOptimizedOnMeasure(Ljava/lang/String;)V

    .line 128
    return v1

    .line 131
    :cond_3b
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->requiresBaselineAlignmentForHorizontalLinearLayout()Z

    move-result p1

    if-eqz p1, :cond_47

    .line 132
    const-string p1, "Need to apply baseline."

    invoke-direct {p0, p1}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->logSkipOptimizedOnMeasure(Ljava/lang/String;)V

    .line 133
    return v1

    .line 136
    :cond_47
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->requiresNegativeMarginHandlingForHorizontalLinearLayout()Z

    move-result p1

    if-eqz p1, :cond_53

    .line 137
    const-string p1, "Need to handle negative margins."

    invoke-direct {p0, p1}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->logSkipOptimizedOnMeasure(Ljava/lang/String;)V

    .line 138
    return v1

    .line 140
    :cond_53
    return v0
.end method

.method private blacklist layoutVerticalOptimized(IIII)V
    .registers 15

    .line 456
    iget v0, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mPaddingLeft:I

    .line 457
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getMeasuredHeight()I

    move-result v1

    .line 462
    sub-int/2addr p3, p1

    .line 463
    iget p1, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mPaddingRight:I

    sub-int p1, p3, p1

    .line 466
    sub-int/2addr p3, v0

    iget v2, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mPaddingRight:I

    sub-int/2addr p3, v2

    .line 468
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getChildCount()I

    move-result v2

    .line 470
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getGravity()I

    move-result v3

    and-int/lit8 v3, v3, 0x70

    .line 471
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getGravity()I

    move-result v4

    const v5, 0x800007

    and-int/2addr v4, v5

    .line 473
    sparse-switch v3, :sswitch_data_9a

    .line 486
    iget v3, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mPaddingTop:I

    goto :goto_35

    .line 476
    :sswitch_27
    iget v3, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mPaddingTop:I

    add-int/2addr v3, p4

    sub-int/2addr v3, p2

    sub-int/2addr v3, v1

    .line 477
    goto :goto_35

    .line 481
    :sswitch_2d
    iget v3, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mPaddingTop:I

    sub-int/2addr p4, p2

    sub-int/2addr p4, v1

    div-int/lit8 p4, p4, 0x2

    add-int/2addr v3, p4

    .line 482
    nop

    .line 489
    :goto_35
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getDividerHeight()I

    move-result p2

    .line 490
    const/4 p4, 0x0

    :goto_3a
    if-ge p4, v2, :cond_98

    .line 491
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 492
    if-eqz v1, :cond_95

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_95

    .line 493
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 494
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 496
    nop

    .line 497
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 499
    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 500
    if-gez v8, :cond_5e

    .line 501
    move v8, v4

    .line 503
    :cond_5e
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getLayoutDirection()I

    move-result v9

    .line 504
    invoke-static {v8, v9}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v8

    .line 506
    and-int/lit8 v8, v8, 0x7

    sparse-switch v8, :sswitch_data_a4

    .line 519
    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v8, v0

    goto :goto_81

    .line 514
    :sswitch_6f
    sub-int v8, p1, v5

    iget v9, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v8, v9

    .line 515
    goto :goto_81

    .line 508
    :sswitch_75
    sub-int v8, p3, v5

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v0

    iget v9, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v8, v9

    iget v9, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v8, v9

    .line 511
    nop

    .line 523
    :goto_81
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v9

    if-eqz v9, :cond_88

    .line 524
    add-int/2addr v3, p2

    .line 527
    :cond_88
    iget v9, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v9

    .line 528
    add-int/2addr v5, v8

    add-int v9, v3, v6

    invoke-virtual {v1, v8, v3, v5, v9}, Landroid/view/View;->layout(IIII)V

    .line 530
    iget v1, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v1

    add-int/2addr v3, v6

    .line 490
    :cond_95
    add-int/lit8 p4, p4, 0x1

    goto :goto_3a

    .line 534
    :cond_98
    return-void

    nop

    :sswitch_data_9a
    .sparse-switch
        0x10 -> :sswitch_2d
        0x50 -> :sswitch_27
    .end sparse-switch

    :sswitch_data_a4
    .sparse-switch
        0x1 -> :sswitch_75
        0x5 -> :sswitch_6f
    .end sparse-switch
.end method

.method private blacklist logSkipOptimizedOnMeasure(Ljava/lang/String;)V
    .registers 2

    .line 577
    return-void
.end method

.method private blacklist measureVerticalOptimized(Landroid/view/View;II)V
    .registers 18

    .line 354
    nop

    .line 355
    nop

    .line 356
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 357
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 360
    const/4 v9, 0x0

    move v10, v9

    move v11, v10

    move v12, v11

    :goto_e
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getChildCount()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-ge v10, v1, :cond_76

    .line 361
    invoke-virtual {p0, v10}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 362
    if-eqz v1, :cond_71

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_27

    .line 363
    move/from16 v3, p2

    goto :goto_73

    .line 366
    :cond_27
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 368
    if-ne v1, p1, :cond_46

    .line 371
    iget v1, v13, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-nez v1, :cond_43

    if-ne v8, v2, :cond_43

    .line 372
    iget v1, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v11

    iget v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    move/from16 v3, p2

    goto :goto_73

    .line 371
    :cond_43
    move/from16 v3, p2

    goto :goto_73

    .line 378
    :cond_46
    const/4 v4, 0x0

    const/4 v6, 0x0

    move/from16 v3, p2

    move/from16 v5, p3

    move-object v2, v1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 381
    nop

    .line 382
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v11

    iget v5, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v5, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    .line 381
    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 383
    nop

    .line 384
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v4, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    iget v4, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    .line 383
    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_73

    .line 362
    :cond_71
    move/from16 v3, p2

    .line 360
    :goto_73
    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    .line 388
    :cond_76
    move/from16 v3, p2

    iget v4, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mPaddingTop:I

    iget v5, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mPaddingBottom:I

    add-int/2addr v4, v5

    add-int/2addr v11, v4

    .line 391
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 394
    if-ne v8, v2, :cond_88

    move v5, v2

    goto :goto_8a

    :cond_88
    const/high16 v5, -0x80000000

    .line 399
    :goto_8a
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-nez v6, :cond_9a

    if-ne v8, v2, :cond_9a

    .line 400
    sub-int/2addr v7, v11

    .line 401
    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 400
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_a9

    .line 403
    :cond_9a
    iget v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v6

    add-int/2addr v2, v11

    .line 404
    sub-int/2addr v7, v2

    .line 405
    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 404
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 407
    :goto_a9
    iget v5, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mPaddingLeft:I

    iget v6, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mPaddingRight:I

    add-int/2addr v5, v6

    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v3, v5, v6}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getChildMeasureSpec(III)I

    move-result v5

    .line 411
    invoke-virtual {p1, v5, v2}, Landroid/view/View;->measure(II)V

    .line 413
    nop

    .line 414
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v11

    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v5

    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v5

    .line 413
    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 417
    nop

    .line 418
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v5

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v4

    .line 417
    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 421
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 424
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v3, v9}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->resolveSizeAndState(III)I

    move-result v0

    .line 426
    nop

    .line 427
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 426
    move/from16 v5, p3

    invoke-static {v2, v5, v9}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->resolveSizeAndState(III)I

    move-result v2

    .line 428
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->setMeasuredDimension(II)V

    .line 429
    return-void
.end method

.method private blacklist onLayoutOptimized(ZIIII)V
    .registers 7

    .line 336
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getOrientation()I

    move-result v0

    if-nez v0, :cond_a

    .line 337
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    goto :goto_e

    .line 339
    :cond_a
    move-object p1, p0

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->layoutVerticalOptimized(IIII)V

    .line 341
    :goto_e
    return-void
.end method

.method private blacklist onMeasureOptimized(Landroid/view/View;II)V
    .registers 7

    .line 297
    :try_start_0
    sget-boolean v0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->TRACE_ONMEASURE:Z

    if-eqz v0, :cond_9

    .line 298
    const-string v0, "NotifOptimizedLinearLayout#onMeasure"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 301
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getOrientation()I

    move-result v0

    if-nez v0, :cond_28

    .line 302
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 303
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 304
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->isBaselineAligned()Z

    move-result v1

    .line 306
    const/4 v2, 0x0

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 309
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->setBaselineAligned(Z)V

    .line 310
    invoke-super {p0, p2, p3}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 313
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 314
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->setBaselineAligned(Z)V

    .line 315
    goto :goto_2b

    .line 316
    :cond_28
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->measureVerticalOptimized(Landroid/view/View;II)V
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_36

    .line 319
    :goto_2b
    sget-boolean p1, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->TRACE_ONMEASURE:Z

    if-eqz p1, :cond_35

    .line 320
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->trackShouldUseOptimizedLayout()V

    .line 321
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 324
    :cond_35
    return-void

    .line 319
    :catchall_36
    move-exception p1

    sget-boolean p2, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->TRACE_ONMEASURE:Z

    if-eqz p2, :cond_41

    .line 320
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->trackShouldUseOptimizedLayout()V

    .line 321
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 323
    :cond_41
    throw p1
.end method

.method private blacklist requiresBaselineAlignmentForHorizontalLinearLayout()Z
    .registers 10

    .line 194
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    .line 195
    return v1

    .line 198
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->isBaselineAligned()Z

    move-result v0

    if-nez v0, :cond_10

    .line 199
    return v1

    .line 202
    :cond_10
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getActiveChildren()Ljava/util/List;

    move-result-object v0

    .line 203
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getGravity()I

    move-result v3

    and-int/lit8 v3, v3, 0x70

    .line 205
    move v4, v1

    :goto_1b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_53

    .line 206
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 207
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v7, v6, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v7, :cond_50

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 208
    nop

    .line 210
    iget v7, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3c

    .line 211
    invoke-virtual {v5}, Landroid/view/View;->getBaseline()I

    move-result v5

    goto :goto_3d

    .line 210
    :cond_3c
    move v5, v8

    .line 213
    :goto_3d
    if-ne v5, v8, :cond_40

    .line 215
    goto :goto_50

    .line 217
    :cond_40
    iget v5, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 218
    if-gez v5, :cond_45

    .line 219
    move v5, v3

    .line 222
    :cond_45
    and-int/lit8 v5, v5, 0x70

    .line 223
    const/16 v6, 0x30

    if-eq v5, v6, :cond_4f

    const/16 v6, 0x50

    if-ne v5, v6, :cond_50

    .line 224
    :cond_4f
    return v2

    .line 205
    :cond_50
    :goto_50
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 228
    :cond_53
    return v1
.end method

.method private blacklist requiresMatchParentRemeasureForVerticalLinearLayout(I)Z
    .registers 8

    .line 170
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 171
    return v1

    .line 176
    :cond_8
    nop

    .line 177
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v2, 0x1

    if-eq p1, v0, :cond_14

    move p1, v2

    goto :goto_15

    :cond_14
    move p1, v1

    .line 178
    :goto_15
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getActiveChildren()Ljava/util/List;

    move-result-object v0

    .line 179
    move v3, v1

    :goto_1a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_35

    .line 180
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 181
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 182
    if-eqz p1, :cond_32

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_32

    .line 183
    return v2

    .line 179
    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 186
    :cond_35
    return v1
.end method

.method private blacklist requiresNegativeMarginHandlingForHorizontalLinearLayout()Z
    .registers 7

    .line 149
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    .line 150
    return v1

    .line 153
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getActiveChildren()Ljava/util/List;

    move-result-object v0

    .line 154
    move v3, v1

    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2d

    .line 155
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 156
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 157
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ltz v5, :cond_2c

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-gez v4, :cond_29

    goto :goto_2c

    .line 154
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 158
    :cond_2c
    :goto_2c
    return v2

    .line 161
    :cond_2d
    return v1
.end method

.method private blacklist trackShouldUseOptimizedLayout()V
    .registers 4

    .line 554
    sget-boolean v0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->TRACE_ONMEASURE:Z

    if-eqz v0, :cond_13

    .line 555
    nop

    .line 556
    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mShouldUseOptimizedLayout:Z

    if-eqz v0, :cond_c

    const-wide/16 v0, 0x1

    goto :goto_e

    :cond_c
    const-wide/16 v0, 0x0

    .line 555
    :goto_e
    const-string v2, "NotifOptimizedLinearLayout#shouldUseOptimizedLayout"

    invoke-static {v2, v0, v1}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    .line 558
    :cond_13
    return-void
.end method


# virtual methods
.method protected whitelist onLayout(ZIIII)V
    .registers 7

    .line 328
    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mShouldUseOptimizedLayout:Z

    if-eqz v0, :cond_8

    .line 329
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->onLayoutOptimized(ZIIII)V

    goto :goto_b

    .line 331
    :cond_8
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 333
    :goto_b
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 5

    .line 87
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getSingleWeightedChild()Landroid/view/View;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_e

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->isOptimizationPossible(II)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    iput-boolean v1, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mShouldUseOptimizedLayout:Z

    .line 91
    iget-boolean v1, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mShouldUseOptimizedLayout:Z

    if-eqz v1, :cond_19

    .line 92
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->onMeasureOptimized(Landroid/view/View;II)V

    goto :goto_1c

    .line 94
    :cond_19
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 96
    :goto_1c
    return-void
.end method
