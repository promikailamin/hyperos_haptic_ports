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

.field final synthetic blacklist this$0:Landroid/content/res/CompatibilityInfo;


# direct methods
.method constructor blacklist <init>(Landroid/content/res/CompatibilityInfo;)V
    .registers 4
    .param p1, "this$0"    # Landroid/content/res/CompatibilityInfo;

    .line 374
    iget v0, p1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v1, p1, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-direct {p0, p1, v0, v1}, Landroid/content/res/CompatibilityInfo$Translator;-><init>(Landroid/content/res/CompatibilityInfo;FF)V

    .line 376
    return-void
.end method

.method constructor blacklist <init>(Landroid/content/res/CompatibilityInfo;FF)V
    .registers 5
    .param p1, "this$0"    # Landroid/content/res/CompatibilityInfo;
    .param p2, "applicationScale"    # F
    .param p3, "applicationInvertedScale"    # F

    .line 368
    iput-object p1, p0, Landroid/content/res/CompatibilityInfo$Translator;->this$0:Landroid/content/res/CompatibilityInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    .line 365
    iput-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    .line 366
    iput-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    .line 369
    iput p2, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    .line 370
    iput p3, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    .line 371
    return-void
.end method


# virtual methods
.method public greylist getTranslatedContentInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 3
    .param p1, "contentInsets"    # Landroid/graphics/Rect;

    .line 510
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    if-nez v0, :cond_b

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    .line 511
    :cond_b
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 512
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 513
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mContentInsetsBuffer:Landroid/graphics/Rect;

    return-object v0
.end method

.method public greylist-max-o getTranslatedTouchableArea(Landroid/graphics/Region;)Landroid/graphics/Region;
    .registers 4
    .param p1, "touchableArea"    # Landroid/graphics/Region;

    .line 532
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    if-nez v0, :cond_b

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    .line 533
    :cond_b
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 534
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    iget v1, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->scale(F)V

    .line 535
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mTouchableAreaBuffer:Landroid/graphics/Region;

    return-object v0
.end method

.method public greylist-max-o getTranslatedVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 3
    .param p1, "visibleInsets"    # Landroid/graphics/Rect;

    .line 521
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    if-nez v0, :cond_b

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    .line 522
    :cond_b
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 523
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 524
    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->mVisibleInsetsBuffer:Landroid/graphics/Rect;

    return-object v0
.end method

.method public greylist translateCanvas(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 391
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    const/high16 v1, 0x3fc00000    # 1.5f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_11

    .line 407
    const v0, 0x3b2b5601

    .line 408
    .local v0, "tinyOffset":F
    const v1, 0x3b2b5601

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 410
    .end local v0    # "tinyOffset":F
    :cond_11
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 411
    return-void
.end method

.method public greylist translateEventInScreenToAppWindow(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 418
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->scale(F)V

    .line 419
    return-void
.end method

.method public blacklist translateInsetsStateInScreenToAppWindow(Landroid/view/InsetsState;)V
    .registers 3
    .param p1, "state"    # Landroid/view/InsetsState;

    .line 457
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/view/InsetsState;->scale(F)V

    .line 458
    return-void
.end method

.method public greylist-max-o translateLayoutParamsInAppWindowToScreen(Landroid/view/WindowManager$LayoutParams;)V
    .registers 3
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 501
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->scale(F)V

    .line 502
    return-void
.end method

.method public blacklist translateLengthInAppWindowToScreen(F)F
    .registers 3
    .param p1, "length"    # F

    .line 434
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    mul-float/2addr v0, p1

    return v0
.end method

.method public greylist-max-o translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V
    .registers 4
    .param p1, "point"    # Landroid/graphics/PointF;

    .line 489
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    .line 490
    .local v0, "scale":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_12

    .line 491
    iget v1, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 492
    iget v1, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->y:F

    .line 494
    :cond_12
    return-void
.end method

.method public greylist translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 442
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 443
    return-void
.end method

.method public greylist translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 450
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 451
    return-void
.end method

.method public greylist translateRegionInWindowToScreen(Landroid/graphics/Region;)V
    .registers 3
    .param p1, "transparentRegion"    # Landroid/graphics/Region;

    .line 383
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->scale(F)V

    .line 384
    return-void
.end method

.method public blacklist translateSourceControlsInScreenToAppWindow([Landroid/view/InsetsSourceControl;)V
    .registers 11
    .param p1, "controls"    # [Landroid/view/InsetsSourceControl;

    .line 465
    if-nez p1, :cond_3

    .line 466
    return-void

    .line 468
    :cond_3
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    .line 469
    .local v0, "scale":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_c

    .line 470
    return-void

    .line 472
    :cond_c
    array-length v1, p1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_33

    aget-object v3, p1, v2

    .line 473
    .local v3, "control":Landroid/view/InsetsSourceControl;
    if-nez v3, :cond_15

    .line 474
    goto :goto_30

    .line 476
    :cond_15
    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    move-result-object v4

    .line 477
    .local v4, "hint":Landroid/graphics/Insets;
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

    iget v8, v4, Landroid/graphics/Insets;->bottom:I

    int-to-float v8, v8

    mul-float/2addr v8, v0

    float-to-int v8, v8

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/view/InsetsSourceControl;->setInsetsHint(IIII)V

    .line 472
    .end local v3    # "control":Landroid/view/InsetsSourceControl;
    .end local v4    # "hint":Landroid/graphics/Insets;
    :goto_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 483
    :cond_33
    return-void
.end method

.method public greylist translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V
    .registers 3
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 427
    iget v0, p0, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->scale(F)V

    .line 428
    return-void
.end method
