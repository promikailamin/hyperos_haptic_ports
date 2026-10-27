.class public Landroid/content/res/CompatibilityInfo$Translator;
.super Ljava/lang/Object;
.source "CompatibilityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/CompatibilityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Translator"
.end annotation


# instance fields
.field public final greylist applicationInvertedScale:F

.field public final greylist applicationScale:F

.field private greylist-max-o mContentInsetsBuffer:Landroid/graphics/Rect;

.field private greylist-max-o mTouchableAreaBuffer:Landroid/graphics/Region;

.field private greylist-max-o mVisibleInsetsBuffer:Landroid/graphics/Rect;


# direct methods
.method constructor blacklist <init>(Landroid/content/res/CompatibilityInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 446
    iget v0, p1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v1, p1, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-direct {p0, p1, v0, v1}, Landroid/content/res/CompatibilityInfo$Translator;-><init>(Landroid/content/res/CompatibilityInfo;FF)V

    .line 448
    return-void
.end method

.method constructor blacklist <init>(Landroid/content/res/CompatibilityInfo;FF)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    .line 437
    iput-object p1, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    .line 438
    iput-object p1, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    .line 441
    iput p2, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    .line 442
    iput p3, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    .line 443
    return-void
.end method


# virtual methods
.method public greylist getTranslatedContentInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 3

    .line 585
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    if-nez v0, :cond_b

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    .line 586
    :cond_b
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 587
    iget-object p1, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 588
    iget-object p1, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    return-object p1
.end method

.method public greylist-max-o getTranslatedTouchableArea(Landroid/graphics/Region;)Landroid/graphics/Region;
    .registers 3

    .line 607
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    if-nez v0, :cond_b

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    .line 608
    :cond_b
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 609
    iget-object p1, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->scale(F)V

    .line 610
    iget-object p1, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    return-object p1
.end method

.method public greylist-max-o getTranslatedVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 3

    .line 596
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    if-nez v0, :cond_b

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    .line 597
    :cond_b
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 598
    iget-object p1, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 599
    iget-object p1, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    return-object p1
.end method

.method public greylist translateCanvas(Landroid/graphics/Canvas;)V
    .registers 4

    .line 463
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    const/high16 v1, 0x3fc00000    # 1.5f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_e

    .line 480
    const v0, 0x3b2b5601

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 482
    :cond_e
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    iget v1, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 483
    return-void
.end method

.method public greylist translateEventInScreenToAppWindow(Landroid/view/MotionEvent;)V
    .registers 3

    .line 490
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->scale(F)V

    .line 491
    return-void
.end method

.method public blacklist translateInsetsStateInScreenToAppWindow(Landroid/view/InsetsState;)V
    .registers 3

    .line 532
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/view/InsetsState;->scale(F)V

    .line 533
    return-void
.end method

.method public greylist-max-o translateLayoutParamsInAppWindowToScreen(Landroid/view/WindowManager$LayoutParams;)V
    .registers 3

    .line 576
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->scale(F)V

    .line 577
    return-void
.end method

.method public blacklist translateLengthInAppWindowToScreen(F)F
    .registers 3

    .line 506
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    mul-float/2addr p1, v0

    return p1
.end method

.method public greylist-max-o translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V
    .registers 4

    .line 564
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    .line 565
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_12

    .line 566
    iget v1, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 567
    iget v1, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->y:F

    .line 569
    :cond_12
    return-void
.end method

.method public greylist translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V
    .registers 3

    .line 514
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 515
    return-void
.end method

.method public greylist translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V
    .registers 3

    .line 522
    if-nez p1, :cond_3

    .line 523
    return-void

    .line 525
    :cond_3
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 526
    return-void
.end method

.method public greylist translateRegionInWindowToScreen(Landroid/graphics/Region;)V
    .registers 3

    .line 455
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->scale(F)V

    .line 456
    return-void
.end method

.method public blacklist translateSourceControlsInScreenToAppWindow([Landroid/view/InsetsSourceControl;)V
    .registers 10

    .line 540
    if-nez p1, :cond_3

    .line 541
    return-void

    .line 543
    :cond_3
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    .line 544
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_c

    .line 545
    return-void

    .line 547
    :cond_c
    array-length v1, p1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_33

    aget-object v3, p1, v2

    .line 548
    if-nez v3, :cond_15

    .line 549
    goto :goto_30

    .line 551
    :cond_15
    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    move-result-object v4

    .line 552
    iget v5, v4, Landroid/graphics/Insets;->left:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    iget v6, v4, Landroid/graphics/Insets;->top:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v6, v6

    iget v7, v4, Landroid/graphics/Insets;->right:I

    int-to-float v7, v7

    mul-float/2addr v7, v0

    float-to-int v7, v7

    iget v4, v4, Landroid/graphics/Insets;->bottom:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/view/InsetsSourceControl;->setInsetsHint(IIII)V

    .line 547
    :goto_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 558
    :cond_33
    return-void
.end method

.method public greylist translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V
    .registers 3

    .line 499
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->scale(F)V

    .line 500
    return-void
.end method
