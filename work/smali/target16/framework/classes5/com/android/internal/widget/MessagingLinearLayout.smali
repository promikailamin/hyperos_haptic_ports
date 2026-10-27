.class public Lcom/android/internal/widget/MessagingLinearLayout;
.super Landroid/view/ViewGroup;
.source "MessagingLinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;,
        Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    }
.end annotation


# static fields
.field private static final blacklist TRACE_ONMEASURE:Z


# instance fields
.field private blacklist mIgnorePaddingTop:Z

.field private blacklist mMaxDisplayedLines:I

.field private blacklist mSpacing:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 60
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/widget/MessagingLinearLayout;->TRACE_ONMEASURE:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mIgnorePaddingTop:Z

    .line 58
    const v1, 0x7fffffff

    iput v1, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mMaxDisplayedLines:I

    .line 65
    sget-object v1, Lcom/android/internal/R$styleable;->MessagingLinearLayout:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    .line 70
    move v1, v0

    :goto_16
    if-ge v1, p2, :cond_29

    .line 71
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 72
    packed-switch v2, :pswitch_data_2e

    goto :goto_26

    .line 74
    :pswitch_20
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    .line 70
    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 79
    :cond_29
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    return-void

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_20
    .end packed-switch
.end method

.method public static blacklist isGone(Landroid/view/View;)Z
    .registers 4

    .line 350
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-ne v0, v1, :cond_a

    .line 351
    return v2

    .line 353
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 354
    instance-of v0, p0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    if-eqz v0, :cond_19

    check-cast p0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iget-boolean p0, p0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    if-eqz p0, :cond_19

    .line 356
    return v2

    .line 358
    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist maybeRemoveTopPadding(ILcom/android/internal/widget/MessagingLinearLayout$MessagingChild;)I
    .registers 4

    .line 210
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-nez v0, :cond_7

    .line 211
    return p1

    .line 214
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mIgnorePaddingTop:Z

    .line 215
    instance-of v0, p2, Lcom/android/internal/widget/MessagingGroup;

    if-eqz v0, :cond_19

    check-cast p2, Lcom/android/internal/widget/MessagingGroup;

    .line 217
    invoke-virtual {p2}, Lcom/android/internal/widget/MessagingGroup;->hasSenderNameHidden()Z

    move-result p2

    if-eqz p2, :cond_19

    .line 218
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mIgnorePaddingTop:Z

    .line 221
    :cond_19
    iget-boolean p2, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mIgnorePaddingTop:Z

    if-eqz p2, :cond_20

    .line 222
    iget p2, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingTop:I

    sub-int/2addr p1, p2

    .line 224
    :cond_20
    return p1
.end method

.method private blacklist trackMeasureSpecs(II)V
    .registers 8

    .line 289
    sget-boolean v0, Lcom/android/internal/widget/MessagingLinearLayout;->TRACE_ONMEASURE:Z

    if-nez v0, :cond_5

    .line 290
    return-void

    .line 293
    :cond_5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 294
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 295
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 296
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 297
    const-string v2, "MessagingLinearLayout#onMeasure_widthMeasureSpecSize"

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    .line 299
    const-string v0, "MessagingLinearLayout#onMeasure_widthMeasureSpecMode"

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    .line 301
    const-string p1, "MessagingLinearLayout#onMeasure_heightMeasureSpecSize"

    int-to-long v0, v1

    invoke-static {p1, v0, v1}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    .line 303
    const-string p1, "MessagingLinearLayout#onMeasure_heightMeasureSpecMode"

    int-to-long v0, p2

    invoke-static {p1, v0, v1}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    .line 305
    return-void
.end method


# virtual methods
.method protected whitelist drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 6

    .line 309
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    .line 310
    iget-boolean v0, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    if-eqz v0, :cond_15

    .line 311
    move-object v0, p2

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    .line 312
    invoke-interface {v0}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->isHidingAnimated()Z

    move-result v0

    if-nez v0, :cond_15

    .line 313
    const/4 p1, 0x1

    return p1

    .line 316
    :cond_15
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 42
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLinearLayout;->generateDefaultLayoutParams()Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist generateDefaultLayoutParams()Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .registers 4

    .line 336
    new-instance v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingLinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingLinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public blacklist generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .registers 4

    .line 331
    new-instance v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected blacklist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .registers 5

    .line 342
    new-instance v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;-><init>(II)V

    .line 343
    instance-of v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_12

    .line 344
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->copyMarginsFrom(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 346
    :cond_12
    return-object v0
.end method

.method public whitelist getBaseline()I
    .registers 4

    .line 389
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v0

    .line 390
    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_28

    .line 391
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 392
    invoke-static {v1}, Lcom/android/internal/widget/MessagingLinearLayout;->isGone(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 393
    nop

    .line 390
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 395
    :cond_16
    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v0

    .line 396
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1e

    .line 397
    return v2

    .line 399
    :cond_1e
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 400
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v0

    return v1

    .line 402
    :cond_28
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0
.end method

.method public blacklist getMessagingLayout()Lcom/android/internal/widget/IMessagingLayout;
    .registers 3

    .line 370
    move-object v0, p0

    .line 372
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 373
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_13

    .line 374
    check-cast v0, Landroid/view/View;

    .line 375
    instance-of v1, v0, Lcom/android/internal/widget/IMessagingLayout;

    if-eqz v1, :cond_12

    .line 376
    check-cast v0, Lcom/android/internal/widget/IMessagingLayout;

    return-object v0

    .line 381
    :cond_12
    goto :goto_1

    .line 379
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 23

    .line 229
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingLeft:I

    .line 234
    sub-int v2, p4, p2

    .line 235
    iget v3, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingRight:I

    sub-int/2addr v2, v3

    .line 237
    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingLinearLayout;->getLayoutDirection()I

    move-result v3

    .line 238
    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v4

    .line 240
    iget-boolean v5, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mIgnorePaddingTop:Z

    if-eqz v5, :cond_17

    const/4 v5, 0x0

    goto :goto_19

    :cond_17
    iget v5, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingTop:I

    .line 242
    :goto_19
    nop

    .line 243
    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingLinearLayout;->isShown()Z

    move-result v7

    .line 244
    const/4 v8, 0x1

    move v10, v8

    const/4 v9, 0x0

    :goto_21
    if-ge v9, v4, :cond_8a

    .line 245
    invoke-virtual {v0, v9}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 246
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_31

    .line 247
    const/4 v6, 0x0

    goto :goto_6b

    .line 249
    :cond_31
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    .line 250
    move-object v13, v11

    check-cast v13, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    .line 252
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 253
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 256
    if-ne v3, v8, :cond_4d

    .line 257
    sub-int v16, v2, v14

    iget v8, v12, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->rightMargin:I

    sub-int v16, v16, v8

    move/from16 v8, v16

    goto :goto_53

    .line 259
    :cond_4d
    iget v8, v12, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->leftMargin:I

    add-int v16, v1, v8

    move/from16 v8, v16

    .line 261
    :goto_53
    iget-boolean v6, v12, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    if-eqz v6, :cond_6d

    .line 262
    if-eqz v7, :cond_67

    iget-boolean v6, v12, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->visibleBefore:Z

    if-eqz v6, :cond_67

    .line 264
    add-int/2addr v14, v8

    iget v6, v12, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->lastVisibleHeight:I

    add-int/2addr v6, v5

    invoke-virtual {v11, v8, v5, v14, v6}, Landroid/view/View;->layout(IIII)V

    .line 266
    invoke-interface {v13}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->hideAnimated()V

    .line 268
    :cond_67
    const/4 v6, 0x0

    iput-boolean v6, v12, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->visibleBefore:Z

    .line 269
    nop

    .line 244
    :goto_6b
    const/4 v13, 0x1

    goto :goto_86

    .line 271
    :cond_6d
    const/4 v6, 0x0

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->visibleBefore:Z

    .line 272
    iput v15, v12, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->lastVisibleHeight:I

    .line 275
    if-nez v10, :cond_78

    .line 276
    iget v10, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    add-int/2addr v5, v10

    .line 279
    :cond_78
    iget v10, v12, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v10

    .line 280
    add-int/2addr v14, v8

    add-int v10, v5, v15

    invoke-virtual {v11, v8, v5, v14, v10}, Landroid/view/View;->layout(IIII)V

    .line 282
    iget v8, v12, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v15, v8

    add-int/2addr v5, v15

    .line 284
    move v10, v6

    .line 244
    :goto_86
    add-int/lit8 v9, v9, 0x1

    move v8, v13

    goto :goto_21

    .line 286
    :cond_8a
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 27

    .line 84
    move-object/from16 v0, p0

    sget-boolean v1, Lcom/android/internal/widget/MessagingLinearLayout;->TRACE_ONMEASURE:Z

    if-eqz v1, :cond_e

    .line 85
    const-string v1, "MessagingLinearLayout#onMeasure"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 86
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/widget/MessagingLinearLayout;->trackMeasureSpecs(II)V

    .line 90
    :cond_e
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 91
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    packed-switch v2, :pswitch_data_1ba

    move v6, v1

    goto :goto_1f

    .line 93
    :pswitch_1b
    const v1, 0x7fffffff

    move v6, v1

    .line 98
    :goto_1f
    iget v1, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingLeft:I

    iget v2, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingRight:I

    add-int/2addr v1, v2

    .line 99
    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v2

    .line 101
    const/4 v7, 0x0

    move v3, v7

    :goto_2a
    const/4 v8, 0x1

    if-ge v3, v2, :cond_48

    .line 102
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 103
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    .line 104
    iput-boolean v8, v5, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    .line 106
    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    .line 107
    instance-of v5, v4, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    if-eqz v5, :cond_45

    .line 108
    check-cast v4, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    .line 110
    invoke-interface {v4, v8}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->setIsFirstInLayout(Z)V

    .line 101
    :cond_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 114
    :cond_48
    iget v3, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingTop:I

    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingBottom:I

    add-int/2addr v3, v4

    .line 115
    nop

    .line 116
    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mMaxDisplayedLines:I

    .line 119
    nop

    .line 120
    nop

    .line 121
    nop

    .line 122
    nop

    .line 123
    nop

    .line 124
    nop

    .line 125
    sub-int/2addr v2, v8

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    move/from16 v16, v7

    move/from16 v17, v16

    move/from16 v18, v17

    move v15, v8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v14, 0x0

    :goto_65
    if-ltz v11, :cond_192

    if-ge v12, v6, :cond_192

    .line 126
    invoke-virtual {v0, v11}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_7a

    .line 127
    move-object/from16 v21, v1

    move v1, v7

    goto/16 :goto_16f

    .line 129
    :cond_7a
    invoke-virtual {v0, v11}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 130
    invoke-virtual {v0, v11}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    .line 131
    nop

    .line 132
    iget v5, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    .line 133
    nop

    .line 134
    instance-of v9, v3, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    if-eqz v9, :cond_d8

    .line 135
    move-object v9, v3

    check-cast v9, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    .line 137
    if-eqz v14, :cond_be

    invoke-interface {v14}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->hasDifferentHeightWhenFirst()Z

    move-result v2

    if-eqz v2, :cond_be

    .line 138
    invoke-interface {v14, v7}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->setIsFirstInLayout(Z)V

    .line 139
    move-object v2, v3

    const/4 v3, 0x0

    move/from16 v19, v5

    sub-int v5, v16, v17

    move-object/from16 v20, v2

    move-object v7, v4

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/MessagingLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 141
    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v1, v17

    .line 142
    invoke-interface {v14}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->getConsumedLines()I

    move-result v2

    sub-int v2, v2, v18

    sub-int/2addr v13, v2

    goto :goto_c6

    .line 137
    :cond_be
    move-object/from16 v21, v1

    move-object/from16 v20, v3

    move-object v7, v4

    move/from16 v19, v5

    .line 144
    const/4 v1, 0x0

    :goto_c6
    nop

    .line 145
    invoke-interface {v9, v13}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->setMaxDisplayedLines(I)V

    .line 146
    invoke-interface {v9}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->getExtraSpacing()I

    move-result v2

    add-int v5, v19, v2

    move-object/from16 v19, v9

    move/from16 v22, v13

    move v9, v1

    move-object/from16 v13, v19

    goto :goto_e5

    .line 134
    :cond_d8
    move-object/from16 v21, v1

    move-object/from16 v20, v3

    move-object v7, v4

    move/from16 v19, v5

    move/from16 v22, v13

    const/4 v9, 0x0

    const/16 v19, 0x0

    move-object v13, v2

    .line 148
    :goto_e5
    if-eqz v15, :cond_ea

    const/16 v23, 0x0

    goto :goto_ec

    :cond_ea
    move/from16 v23, v5

    .line 149
    :goto_ec
    iget v1, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingTop:I

    sub-int v1, v12, v1

    iget v2, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingBottom:I

    sub-int/2addr v1, v2

    add-int v5, v1, v23

    const/4 v3, 0x0

    move/from16 v2, p1

    move/from16 v4, p2

    move-object/from16 v1, v20

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/MessagingLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 152
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 153
    add-int v3, v12, v2

    iget v4, v7, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v7, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int v3, v3, v23

    add-int/2addr v3, v9

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 155
    nop

    .line 156
    if-eqz v19, :cond_11a

    .line 157
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->getMeasuredType()I

    move-result v4

    goto :goto_11b

    .line 156
    :cond_11a
    const/4 v4, 0x0

    .line 161
    :goto_11b
    const/4 v5, 0x2

    if-ne v4, v5, :cond_122

    if-nez v15, :cond_122

    move v9, v8

    goto :goto_123

    :cond_122
    const/4 v9, 0x0

    .line 162
    :goto_123
    if-eq v4, v8, :cond_12c

    if-ne v4, v5, :cond_12a

    if-eqz v15, :cond_12a

    goto :goto_12c

    :cond_12a
    const/4 v4, 0x0

    goto :goto_12d

    :cond_12c
    :goto_12c
    move v4, v8

    .line 164
    :goto_12d
    if-gt v3, v6, :cond_133

    if-nez v9, :cond_133

    move v5, v8

    goto :goto_134

    :cond_133
    const/4 v5, 0x0

    .line 165
    :goto_134
    if-eqz v5, :cond_179

    .line 166
    if-eqz v19, :cond_148

    .line 167
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->getConsumedLines()I

    move-result v18

    .line 168
    sub-int v22, v22, v18

    .line 169
    nop

    .line 170
    nop

    .line 171
    nop

    .line 172
    move-object/from16 v21, v1

    move/from16 v17, v2

    move-object/from16 v14, v19

    goto :goto_14a

    .line 166
    :cond_148
    move/from16 v12, v16

    .line 174
    :goto_14a
    nop

    .line 175
    nop

    .line 176
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v7, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v7, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingLeft:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingRight:I

    add-int/2addr v1, v2

    .line 175
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 178
    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    .line 179
    if-nez v4, :cond_176

    if-gtz v22, :cond_168

    .line 180
    goto :goto_176

    .line 196
    :cond_168
    move v15, v1

    move/from16 v16, v12

    move-object v2, v13

    move/from16 v13, v22

    move v12, v3

    .line 125
    :goto_16f
    add-int/lit8 v11, v11, -0x1

    move v7, v1

    move-object/from16 v1, v21

    goto/16 :goto_65

    .line 199
    :cond_176
    :goto_176
    move v12, v3

    move-object v14, v13

    goto :goto_193

    .line 185
    :cond_179
    nop

    .line 186
    if-eqz v14, :cond_193

    invoke-interface {v14}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->hasDifferentHeightWhenFirst()Z

    move-result v1

    if-eqz v1, :cond_193

    .line 187
    invoke-interface {v14, v8}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->setIsFirstInLayout(Z)V

    .line 189
    const/4 v3, 0x0

    sub-int v5, v16, v17

    move/from16 v2, p1

    move/from16 v4, p2

    move-object/from16 v1, v21

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/MessagingLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_193

    .line 199
    :cond_192
    move-object v14, v2

    :cond_193
    :goto_193
    invoke-direct {v0, v12, v14}, Lcom/android/internal/widget/MessagingLinearLayout;->maybeRemoveTopPadding(ILcom/android/internal/widget/MessagingLinearLayout$MessagingChild;)I

    move-result v1

    .line 200
    nop

    .line 201
    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingLinearLayout;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v3, p1

    invoke-static {v2, v3}, Lcom/android/internal/widget/MessagingLinearLayout;->resolveSize(II)I

    move-result v2

    .line 203
    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingLinearLayout;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 200
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->setMeasuredDimension(II)V

    .line 204
    sget-boolean v0, Lcom/android/internal/widget/MessagingLinearLayout;->TRACE_ONMEASURE:Z

    if-eqz v0, :cond_1b8

    .line 205
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 207
    :cond_1b8
    return-void

    nop

    :pswitch_data_1ba
    .packed-switch 0x0
        :pswitch_1b
    .end packed-switch
.end method

.method public blacklist setMaxDisplayedLines(I)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 366
    iput p1, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mMaxDisplayedLines:I

    .line 367
    return-void
.end method

.method public blacklist setSpacing(I)V
    .registers 3

    .line 323
    iget v0, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    if-eq v0, p1, :cond_9

    .line 324
    iput p1, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    .line 325
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLinearLayout;->requestLayout()V

    .line 327
    :cond_9
    return-void
.end method
