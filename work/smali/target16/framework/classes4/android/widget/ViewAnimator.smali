.class public Landroid/widget/ViewAnimator;
.super Landroid/widget/FrameLayout;
.source "ViewAnimator.java"


# instance fields
.field greylist-max-o mAnimateFirstTime:Z

.field greylist mFirstTime:Z

.field greylist-max-o mInAnimation:Landroid/view/animation/Animation;

.field greylist-max-o mOutAnimation:Landroid/view/animation/Animation;

.field greylist mWhichChild:I


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    .line 47
    iput-boolean v0, p0, Landroid/widget/ViewAnimator;->mAnimateFirstTime:Z

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ViewAnimator;->initViewAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 13

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 44
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    .line 47
    iput-boolean v1, p0, Landroid/widget/ViewAnimator;->mAnimateFirstTime:Z

    .line 60
    sget-object v2, Lcom/android/internal/R$styleable;->ViewAnimator:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 61
    sget-object v5, Lcom/android/internal/R$styleable;->ViewAnimator:[I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    invoke-virtual/range {v3 .. v9}, Landroid/widget/ViewAnimator;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 64
    invoke-virtual {v7, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 65
    if-lez p1, :cond_24

    .line 66
    invoke-virtual {p0, v4, p1}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/content/Context;I)V

    .line 69
    :cond_24
    invoke-virtual {v7, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 70
    if-lez p1, :cond_2d

    .line 71
    invoke-virtual {p0, v4, p1}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/content/Context;I)V

    .line 74
    :cond_2d
    const/4 p1, 0x2

    invoke-virtual {v7, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 75
    invoke-virtual {p0, p1}, Landroid/widget/ViewAnimator;->setAnimateFirstView(Z)V

    .line 77
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    invoke-direct {p0, v4, v6}, Landroid/widget/ViewAnimator;->initViewAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method private greylist-max-o initViewAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 12

    .line 87
    const/4 v0, 0x1

    if-nez p2, :cond_6

    .line 89
    iput-boolean v0, p0, Landroid/widget/ViewAnimator;->mMeasureAllChildren:Z

    .line 90
    return-void

    .line 95
    :cond_6
    sget-object v1, Lcom/android/internal/R$styleable;->FrameLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 97
    sget-object v4, Lcom/android/internal/R$styleable;->FrameLayout:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v8}, Landroid/widget/ViewAnimator;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 99
    const/4 p1, 0x0

    invoke-virtual {v6, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 101
    invoke-virtual {p0, p1}, Landroid/widget/ViewAnimator;->setMeasureAllChildren(Z)V

    .line 102
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    return-void
.end method


# virtual methods
.method public whitelist addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .line 194
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 195
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_f

    .line 196
    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_14

    .line 198
    :cond_f
    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 200
    :goto_14
    if-ltz p2, :cond_20

    iget p1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    if-lt p1, p2, :cond_20

    .line 202
    iget p1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 204
    :cond_20
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 375
    const-class v0, Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAnimateFirstView()Z
    .registers 2

    .line 354
    iget-boolean v0, p0, Landroid/widget/ViewAnimator;->mAnimateFirstTime:Z

    return v0
.end method

.method public whitelist getBaseline()I
    .registers 2

    .line 370
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    goto :goto_13

    :cond_f
    invoke-super {p0}, Landroid/widget/FrameLayout;->getBaseline()I

    move-result v0

    :goto_13
    return v0
.end method

.method public whitelist getCurrentView()Landroid/view/View;
    .registers 2

    .line 264
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDisplayedChild()I
    .registers 2

    .line 131
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    return v0
.end method

.method public whitelist getInAnimation()Landroid/view/animation/Animation;
    .registers 2

    .line 277
    iget-object v0, p0, Landroid/widget/ViewAnimator;->mInAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public whitelist getOutAnimation()Landroid/view/animation/Animation;
    .registers 2

    .line 302
    iget-object v0, p0, Landroid/widget/ViewAnimator;->mOutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public whitelist removeAllViews()V
    .registers 2

    .line 208
    invoke-super {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 209
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    .line 211
    return-void
.end method

.method public whitelist removeView(Landroid/view/View;)V
    .registers 2

    .line 215
    invoke-virtual {p0, p1}, Landroid/widget/ViewAnimator;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 216
    if-ltz p1, :cond_9

    .line 217
    invoke-virtual {p0, p1}, Landroid/widget/ViewAnimator;->removeViewAt(I)V

    .line 219
    :cond_9
    return-void
.end method

.method public whitelist removeViewAt(I)V
    .registers 5

    .line 223
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 224
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v0

    .line 225
    const/4 v1, 0x1

    if-nez v0, :cond_10

    .line 226
    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 227
    iput-boolean v1, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    goto :goto_22

    .line 228
    :cond_10
    iget v2, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    if-lt v2, v0, :cond_19

    .line 230
    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    goto :goto_22

    .line 231
    :cond_19
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    if-ne v0, p1, :cond_22

    .line 233
    iget p1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    invoke-virtual {p0, p1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 235
    :cond_22
    :goto_22
    return-void
.end method

.method public whitelist removeViewInLayout(Landroid/view/View;)V
    .registers 2

    .line 238
    invoke-virtual {p0, p1}, Landroid/widget/ViewAnimator;->removeView(Landroid/view/View;)V

    .line 239
    return-void
.end method

.method public whitelist removeViews(II)V
    .registers 4

    .line 242
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->removeViews(II)V

    .line 243
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v0

    if-nez v0, :cond_10

    .line 244
    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 245
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    goto :goto_1e

    .line 246
    :cond_10
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    if-lt v0, p1, :cond_1e

    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    add-int/2addr p1, p2

    if-ge v0, p1, :cond_1e

    .line 248
    iget p1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    invoke-virtual {p0, p1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 250
    :cond_1e
    :goto_1e
    return-void
.end method

.method public whitelist removeViewsInLayout(II)V
    .registers 3

    .line 253
    invoke-virtual {p0, p1, p2}, Landroid/widget/ViewAnimator;->removeViews(II)V

    .line 254
    return-void
.end method

.method public whitelist setAnimateFirstView(Z)V
    .registers 2

    .line 365
    iput-boolean p1, p0, Landroid/widget/ViewAnimator;->mAnimateFirstTime:Z

    .line 366
    return-void
.end method

.method public whitelist setDisplayedChild(I)V
    .registers 5
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 112
    iput p1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 113
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt p1, v0, :cond_d

    .line 114
    iput v2, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    goto :goto_16

    .line 115
    :cond_d
    if-gez p1, :cond_16

    .line 116
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v1

    iput p1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    .line 118
    :cond_16
    :goto_16
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    .line 120
    :goto_1e
    iget p1, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    invoke-virtual {p0, p1}, Landroid/widget/ViewAnimator;->showOnly(I)V

    .line 121
    if-eqz v1, :cond_29

    .line 123
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/widget/ViewAnimator;->requestFocus(I)Z

    .line 125
    :cond_29
    return-void
.end method

.method public whitelist setInAnimation(Landroid/content/Context;I)V
    .registers 3

    .line 327
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 328
    return-void
.end method

.method public whitelist setInAnimation(Landroid/view/animation/Animation;)V
    .registers 2

    .line 289
    iput-object p1, p0, Landroid/widget/ViewAnimator;->mInAnimation:Landroid/view/animation/Animation;

    .line 290
    return-void
.end method

.method public whitelist setOutAnimation(Landroid/content/Context;I)V
    .registers 3

    .line 340
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 341
    return-void
.end method

.method public whitelist setOutAnimation(Landroid/view/animation/Animation;)V
    .registers 2

    .line 314
    iput-object p1, p0, Landroid/widget/ViewAnimator;->mOutAnimation:Landroid/view/animation/Animation;

    .line 315
    return-void
.end method

.method public whitelist showNext()V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 139
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 140
    return-void
.end method

.method greylist-max-o showOnly(I)V
    .registers 3

    .line 188
    iget-boolean v0, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Landroid/widget/ViewAnimator;->mAnimateFirstTime:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    .line 189
    :goto_c
    invoke-virtual {p0, p1, v0}, Landroid/widget/ViewAnimator;->showOnly(IZ)V

    .line 190
    return-void
.end method

.method greylist-max-r showOnly(IZ)V
    .registers 9

    .line 162
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v0

    .line 163
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_44

    .line 164
    invoke-virtual {p0, v2}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 165
    if-ne v2, p1, :cond_1f

    .line 166
    if-eqz p2, :cond_19

    iget-object v4, p0, Landroid/widget/ViewAnimator;->mInAnimation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_19

    .line 167
    iget-object v4, p0, Landroid/widget/ViewAnimator;->mInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 169
    :cond_19
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iput-boolean v1, p0, Landroid/widget/ViewAnimator;->mFirstTime:Z

    goto :goto_41

    .line 172
    :cond_1f
    if-eqz p2, :cond_31

    iget-object v4, p0, Landroid/widget/ViewAnimator;->mOutAnimation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_31

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_31

    .line 173
    iget-object v4, p0, Landroid/widget/ViewAnimator;->mOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3c

    .line 174
    :cond_31
    invoke-virtual {v3}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/ViewAnimator;->mInAnimation:Landroid/view/animation/Animation;

    if-ne v4, v5, :cond_3c

    .line 175
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 176
    :cond_3c
    :goto_3c
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 163
    :goto_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 179
    :cond_44
    return-void
.end method

.method public whitelist showPrevious()V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 147
    iget v0, p0, Landroid/widget/ViewAnimator;->mWhichChild:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 148
    return-void
.end method
