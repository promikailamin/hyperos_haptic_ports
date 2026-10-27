.class final Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
.super Ljava/lang/Object;
.source "FullScreenMagnificationController.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayMagnification"
.end annotation


# instance fields
.field private final mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

.field private mDeleteAfterUnregister:Z

.field private final mDisplayId:I

.field private mForceShowMagnifiableBounds:Z

.field private mIdOfLastServiceToMagnify:I

.field private mMagnificationActivated:Z

.field private final mMagnificationBounds:Landroid/graphics/Rect;

.field private final mMagnificationRegion:Landroid/graphics/Region;

.field private mRegistered:Z

.field private final mSpecAnimationBridge:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private mUnregisterPending:Z

.field final synthetic this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;I)V
    .registers 6
    .param p2, "displayId"    # I

    .line 136
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Landroid/view/MagnificationSpec;

    invoke-direct {v0}, Landroid/view/MagnificationSpec;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 116
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    .line 119
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mTempRect:Landroid/graphics/Rect;

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mTempRect1:Landroid/graphics/Rect;

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationActivated:Z

    .line 137
    iput p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    .line 138
    new-instance v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;

    invoke-static {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmControllerCtx(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;Ljava/lang/Object;ILcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge-IA;)V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;

    .line 139
    return-void
.end method

.method private getDisplayMetricsForId()Landroid/util/DisplayMetrics;
    .registers 5

    .line 412
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 413
    .local v0, "outMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmDisplayManagerInternal(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Landroid/hardware/display/DisplayManagerInternal;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v1

    .line 414
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v1, :cond_1a

    .line 415
    sget-object v2, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/DisplayInfo;->getLogicalMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    goto :goto_1d

    .line 418
    :cond_1a
    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 420
    :goto_1d
    return-object v0
.end method


# virtual methods
.method getCenterX()F
    .registers 3

    .line 234
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 235
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getOffsetX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getScale()F

    move-result v1

    div-float/2addr v0, v1

    .line 234
    return v0
.end method

.method getCenterY()F
    .registers 3

    .line 240
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 241
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getOffsetY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getScale()F

    move-result v1

    div-float/2addr v0, v1

    .line 240
    return v0
.end method

.method getIdOfLastServiceToMagnify()I
    .registers 2

    .line 371
    iget v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    return v0
.end method

.method getMagnificationBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 403
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 404
    return-void
.end method

.method getMagnificationRegion(Landroid/graphics/Region;)V
    .registers 3
    .param p1, "outRegion"    # Landroid/graphics/Region;

    .line 408
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 409
    return-void
.end method

.method getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "outFrame"    # Landroid/graphics/Rect;

    .line 474
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getSentScale()F

    move-result v0

    .line 475
    .local v0, "scale":F
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getSentOffsetX()F

    move-result v1

    .line 476
    .local v1, "offsetX":F
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getSentOffsetY()F

    move-result v2

    .line 477
    .local v2, "offsetY":F
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMagnificationBounds(Landroid/graphics/Rect;)V

    .line 478
    neg-float v3, v1

    float-to-int v3, v3

    neg-float v4, v2

    float-to-int v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 479
    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v0

    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->scale(F)V

    .line 480
    return-void
.end method

.method getMaxOffsetXLocked()F
    .registers 4

    .line 663
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method getMaxOffsetYLocked()F
    .registers 4

    .line 675
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method getMinOffsetXLocked()F
    .registers 6

    .line 656
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 657
    .local v0, "viewportWidth":F
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    .line 658
    .local v1, "viewportLeft":F
    add-float v2, v1, v0

    add-float v3, v1, v0

    iget-object v4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v4, v4, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    return v2
.end method

.method getMinOffsetYLocked()F
    .registers 6

    .line 668
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    .line 669
    .local v0, "viewportHeight":F
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    .line 670
    .local v1, "viewportTop":F
    add-float v2, v1, v0

    add-float v3, v1, v0

    iget-object v4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v4, v4, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    return v2
.end method

.method getOffsetX()F
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    return v0
.end method

.method getOffsetY()F
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    return v0
.end method

.method getScale()F
    .registers 2

    .line 221
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    return v0
.end method

.method getSentOffsetX()F
    .registers 2

    .line 263
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->-$$Nest$fgetmSentMagnificationSpec(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    move-result-object v0

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    return v0
.end method

.method getSentOffsetY()F
    .registers 2

    .line 274
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->-$$Nest$fgetmSentMagnificationSpec(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    move-result-object v0

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    return v0
.end method

.method getSentScale()F
    .registers 2

    .line 252
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->-$$Nest$fgetmSentMagnificationSpec(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    move-result-object v0

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    return v0
.end method

.method isForceShowMagnifiableBounds()Z
    .registers 2

    .line 497
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mRegistered:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mForceShowMagnifiableBounds:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method isMagnifying()Z
    .registers 3

    .line 217
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method isRegistered()Z
    .registers 2

    .line 213
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mRegistered:Z

    return v0
.end method

.method magnificationRegionContains(FF)Z
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 398
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->contains(II)Z

    move-result v0

    return v0
.end method

.method offsetMagnifiedRegion(FFI)V
    .registers 8
    .param p1, "offsetX"    # F
    .param p2, "offsetY"    # F
    .param p3, "id"    # I

    .line 618
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mRegistered:Z

    if-nez v0, :cond_5

    .line 619
    return-void

    .line 622
    :cond_5
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float/2addr v0, p1

    .line 623
    .local v0, "nonNormOffsetX":F
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, v1, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float/2addr v1, p2

    .line 624
    .local v1, "nonNormOffsetY":F
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->updateCurrentSpecWithOffsetsLocked(FF)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 625
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->onMagnificationChangedLocked()V

    .line 627
    :cond_18
    const/4 v2, -0x1

    if-eq p3, v2, :cond_1d

    .line 628
    iput p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    .line 630
    :cond_1d
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Landroid/view/accessibility/MagnificationAnimationCallback;)V

    .line 631
    return-void
.end method

.method public onDisplaySizeChanged()V
    .registers 1

    .line 302
    return-void
.end method

.method public onImeWindowVisibilityChanged(Z)V
    .registers 6
    .param p1, "shown"    # Z

    .line 316
    new-instance v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda2;-><init>()V

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iget v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    .line 318
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 316
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 319
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmControllerCtx(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 320
    return-void
.end method

.method onMagnificationChangedLocked()V
    .registers 7

    .line 376
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getScale()F

    move-result v0

    .line 377
    .local v0, "scale":F
    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationActivated:Z

    .line 378
    .local v1, "lastMagnificationActivated":Z
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    const/4 v3, 0x1

    if-lez v2, :cond_f

    move v2, v3

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    iput-boolean v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationActivated:Z

    .line 379
    if-eq v2, v1, :cond_21

    .line 380
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmMagnificationInfoChangedCallback(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;

    move-result-object v2

    iget v4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    iget-boolean v5, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationActivated:Z

    invoke-interface {v2, v4, v5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;->onFullScreenMagnificationActivationState(IZ)V

    .line 384
    :cond_21
    new-instance v2, Landroid/accessibilityservice/MagnificationConfig$Builder;

    invoke-direct {v2}, Landroid/accessibilityservice/MagnificationConfig$Builder;-><init>()V

    .line 385
    invoke-virtual {v2, v3}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setMode(I)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v2

    .line 386
    invoke-virtual {v2, v0}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setScale(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v2

    .line 387
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getCenterX()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterX(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v2

    .line 388
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getCenterY()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterY(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/accessibilityservice/MagnificationConfig$Builder;->build()Landroid/accessibilityservice/MagnificationConfig;

    move-result-object v2

    .line 389
    .local v2, "config":Landroid/accessibilityservice/MagnificationConfig;
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmMagnificationInfoChangedCallback(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;

    move-result-object v3

    iget v4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    iget-object v5, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-interface {v3, v4, v5, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;->onFullScreenMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    .line 391
    iget-boolean v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mUnregisterPending:Z

    if-eqz v3, :cond_5e

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isMagnifying()Z

    move-result v3

    if-nez v3, :cond_5e

    .line 392
    iget-boolean v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDeleteAfterUnregister:Z

    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->unregister(Z)V

    .line 394
    :cond_5e
    return-void
.end method

.method public onMagnificationRegionChanged(Landroid/graphics/Region;)V
    .registers 4
    .param p1, "magnificationRegion"    # Landroid/graphics/Region;

    .line 279
    new-instance v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda3;-><init>()V

    .line 281
    invoke-static {p1}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v1

    .line 279
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 282
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmControllerCtx(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 283
    return-void
.end method

.method public onRectangleOnScreenRequested(IIII)V
    .registers 11
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 287
    new-instance v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda0;-><init>()V

    .line 289
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 287
    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 290
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmControllerCtx(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 291
    return-void
.end method

.method public onUserContextChanged()V
    .registers 1

    .line 312
    return-void
.end method

.method register()Z
    .registers 5

    .line 149
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$mtraceEnabled(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Z

    move-result v0

    const-string v1, "displayID="

    if-eqz v0, :cond_2f

    .line 150
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "setMagnificationCallbacks"

    invoke-static {v0, v3, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$mlogTrace(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_2f
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmControllerCtx(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getWindowManager()Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    iget v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    invoke-virtual {v0, v2, p0}, Lcom/android/server/wm/WindowManagerInternal;->setMagnificationCallbacks(ILcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mRegistered:Z

    .line 155
    if-nez v0, :cond_60

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set magnification callbacks fail, displayId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FullScreenMagnificationController"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v0, 0x0

    return v0

    .line 159
    :cond_60
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->setEnabled(Z)V

    .line 160
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$mtraceEnabled(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 161
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ";region="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "getMagnificationRegion"

    invoke-static {v0, v3, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$mlogTrace(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_94
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmControllerCtx(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getWindowManager()Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v3}, Lcom/android/server/wm/WindowManagerInternal;->getMagnificationRegion(ILandroid/graphics/Region;)V

    .line 167
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 168
    return v2
.end method

.method requestRectangleOnScreen(IIII)V
    .registers 22
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 424
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    iget-object v0, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 425
    :try_start_11
    iget-object v0, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mTempRect:Landroid/graphics/Rect;

    .line 426
    .local v0, "magnifiedFrame":Landroid/graphics/Rect;
    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMagnificationBounds(Landroid/graphics/Rect;)V

    .line 427
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v7

    if-nez v7, :cond_1e

    .line 428
    monitor-exit v6

    return-void

    .line 431
    :cond_1e
    iget-object v7, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mTempRect1:Landroid/graphics/Rect;

    .line 432
    .local v7, "magnifFrameInScreenCoords":Landroid/graphics/Rect;
    invoke-virtual {v1, v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V

    .line 437
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getDisplayMetricsForId()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 438
    .local v8, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40800000    # 4.0f

    div-float/2addr v9, v10

    .line 439
    .local v9, "offsetViewportX":F
    const/4 v10, 0x1

    const/high16 v11, 0x41200000    # 10.0f

    .line 440
    invoke-static {v10, v11, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    .line 442
    .local v10, "offsetViewportY":F
    sub-int v11, v4, v2

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v12

    if-le v11, v12, :cond_54

    .line 444
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v11

    .line 445
    .local v11, "direction":I
    if-nez v11, :cond_4e

    .line 446
    iget v12, v7, Landroid/graphics/Rect;->left:I

    sub-int v12, v2, v12

    int-to-float v12, v12

    .local v12, "scrollX":F
    goto :goto_53

    .line 448
    .end local v12    # "scrollX":F
    :cond_4e
    iget v12, v7, Landroid/graphics/Rect;->right:I

    sub-int v12, v4, v12

    int-to-float v12, v12

    .line 450
    .end local v11    # "direction":I
    .restart local v12    # "scrollX":F
    :goto_53
    goto :goto_6d

    .end local v12    # "scrollX":F
    :cond_54
    iget v11, v7, Landroid/graphics/Rect;->left:I

    if-ge v2, v11, :cond_60

    .line 451
    iget v11, v7, Landroid/graphics/Rect;->left:I

    sub-int v11, v2, v11

    int-to-float v11, v11

    sub-float v12, v11, v9

    .restart local v12    # "scrollX":F
    goto :goto_6d

    .line 452
    .end local v12    # "scrollX":F
    :cond_60
    iget v11, v7, Landroid/graphics/Rect;->right:I

    if-le v4, v11, :cond_6c

    .line 453
    iget v11, v7, Landroid/graphics/Rect;->right:I

    sub-int v11, v4, v11

    int-to-float v11, v11

    add-float v12, v11, v9

    .restart local v12    # "scrollX":F
    goto :goto_6d

    .line 455
    .end local v12    # "scrollX":F
    :cond_6c
    const/4 v12, 0x0

    .line 458
    .restart local v12    # "scrollX":F
    :goto_6d
    sub-int v11, v5, v3

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v11, v13, :cond_7b

    .line 459
    iget v11, v7, Landroid/graphics/Rect;->top:I

    sub-int v11, v3, v11

    int-to-float v11, v11

    .local v11, "scrollY":F
    goto :goto_92

    .line 460
    .end local v11    # "scrollY":F
    :cond_7b
    iget v11, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v11, :cond_86

    .line 461
    iget v11, v7, Landroid/graphics/Rect;->top:I

    sub-int v11, v3, v11

    int-to-float v11, v11

    sub-float/2addr v11, v10

    .restart local v11    # "scrollY":F
    goto :goto_92

    .line 462
    .end local v11    # "scrollY":F
    :cond_86
    iget v11, v7, Landroid/graphics/Rect;->bottom:I

    if-le v5, v11, :cond_91

    .line 463
    iget v11, v7, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v5, v11

    int-to-float v11, v11

    add-float/2addr v11, v10

    .restart local v11    # "scrollY":F
    goto :goto_92

    .line 465
    .end local v11    # "scrollY":F
    :cond_91
    const/4 v11, 0x0

    .line 468
    .restart local v11    # "scrollY":F
    :goto_92
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getScale()F

    move-result v13

    .line 469
    .local v13, "scale":F
    mul-float v14, v12, v13

    mul-float v15, v11, v13

    move-object/from16 v16, v0

    .end local v0    # "magnifiedFrame":Landroid/graphics/Rect;
    .local v16, "magnifiedFrame":Landroid/graphics/Rect;
    const/4 v0, -0x1

    invoke-virtual {v1, v14, v15, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->offsetMagnifiedRegion(FFI)V

    .line 470
    .end local v7    # "magnifFrameInScreenCoords":Landroid/graphics/Rect;
    .end local v8    # "metrics":Landroid/util/DisplayMetrics;
    .end local v9    # "offsetViewportX":F
    .end local v10    # "offsetViewportY":F
    .end local v11    # "scrollY":F
    .end local v12    # "scrollX":F
    .end local v13    # "scale":F
    .end local v16    # "magnifiedFrame":Landroid/graphics/Rect;
    monitor-exit v6

    .line 471
    return-void

    .line 470
    :catchall_a2
    move-exception v0

    monitor-exit v6
    :try_end_a4
    .catchall {:try_start_11 .. :try_end_a4} :catchall_a2

    throw v0
.end method

.method reset(Landroid/view/accessibility/MagnificationAnimationCallback;)Z
    .registers 6
    .param p1, "animationCallback"    # Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 507
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mRegistered:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 508
    return v1

    .line 510
    :cond_6
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 511
    .local v0, "spec":Landroid/view/MagnificationSpec;
    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 512
    .local v2, "changed":Z
    if-eqz v2, :cond_16

    .line 513
    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->clear()V

    .line 514
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->onMagnificationChangedLocked()V

    .line 516
    :cond_16
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    .line 517
    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mForceShowMagnifiableBounds:Z

    .line 518
    invoke-virtual {p0, v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Landroid/view/accessibility/MagnificationAnimationCallback;)V

    .line 519
    return v2
.end method

.method reset(Z)Z
    .registers 3
    .param p1, "animate"    # Z

    .line 502
    invoke-static {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$smtransformToStubCallback(Z)Landroid/view/accessibility/MagnificationAnimationCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->reset(Landroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result v0

    return v0
.end method

.method sendSpecToAnimation(Landroid/view/MagnificationSpec;Landroid/view/accessibility/MagnificationAnimationCallback;)V
    .registers 7
    .param p1, "spec"    # Landroid/view/MagnificationSpec;
    .param p2, "animationCallback"    # Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 355
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmMainThreadId(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    .line 356
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->updateSentSpecMainThread(Landroid/view/MagnificationSpec;Landroid/view/accessibility/MagnificationAnimationCallback;)V

    goto :goto_30

    .line 358
    :cond_18
    new-instance v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda1;-><init>()V

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 361
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmControllerCtx(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 363
    .end local v0    # "m":Landroid/os/Message;
    :goto_30
    return-void
.end method

.method setForceShowMagnifiableBounds(Z)V
    .registers 5
    .param p1, "show"    # Z

    .line 484
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mRegistered:Z

    if-eqz v0, :cond_44

    .line 485
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mForceShowMagnifiableBounds:Z

    .line 486
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$mtraceEnabled(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 487
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";show="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setForceShowMagnifiableBounds"

    invoke-static {v0, v2, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$mlogTrace(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :cond_35
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmControllerCtx(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getWindowManager()Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/WindowManagerInternal;->setForceShowMagnifiableBounds(IZ)V

    .line 493
    :cond_44
    return-void
.end method

.method setScale(FFFZI)Z
    .registers 25
    .param p1, "scale"    # F
    .param p2, "pivotX"    # F
    .param p3, "pivotY"    # F
    .param p4, "animate"    # Z
    .param p5, "id"    # I

    .line 525
    move-object/from16 v6, p0

    iget-boolean v0, v6, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mRegistered:Z

    if-nez v0, :cond_8

    .line 526
    const/4 v0, 0x0

    return v0

    .line 529
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->constrainScale(F)F

    move-result v7

    .line 531
    .end local p1    # "scale":F
    .local v7, "scale":F
    iget-object v8, v6, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mTempRect:Landroid/graphics/Rect;

    .line 532
    .local v8, "viewport":Landroid/graphics/Rect;
    iget-object v0, v6, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v8}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 533
    iget-object v9, v6, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 534
    .local v9, "spec":Landroid/view/MagnificationSpec;
    iget v10, v9, Landroid/view/MagnificationSpec;->scale:F

    .line 535
    .local v10, "oldScale":F
    nop

    .line 536
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, v9, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float/2addr v0, v2

    iget v2, v8, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    div-float v11, v0, v10

    .line 537
    .local v11, "oldCenterX":F
    nop

    .line 538
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget v1, v9, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float/2addr v0, v1

    iget v1, v8, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    div-float v12, v0, v10

    .line 539
    .local v12, "oldCenterY":F
    iget v0, v9, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float v0, p2, v0

    div-float v13, v0, v10

    .line 540
    .local v13, "normPivotX":F
    iget v0, v9, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float v0, p3, v0

    div-float v14, v0, v10

    .line 541
    .local v14, "normPivotY":F
    sub-float v0, v11, v13

    div-float v1, v10, v7

    mul-float v15, v0, v1

    .line 542
    .local v15, "offsetX":F
    sub-float v0, v12, v14

    div-float v1, v10, v7

    mul-float v16, v0, v1

    .line 543
    .local v16, "offsetY":F
    add-float v17, v13, v15

    .line 544
    .local v17, "centerX":F
    add-float v18, v14, v16

    .line 545
    .local v18, "centerY":F
    move/from16 v5, p5

    iput v5, v6, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    .line 546
    invoke-static/range {p4 .. p4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$smtransformToStubCallback(Z)Landroid/view/accessibility/MagnificationAnimationCallback;

    move-result-object v4

    move-object/from16 v0, p0

    move v1, v7

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->setScaleAndCenter(FFFLandroid/view/accessibility/MagnificationAnimationCallback;I)Z

    move-result v0

    return v0
.end method

.method setScaleAndCenter(FFFLandroid/view/accessibility/MagnificationAnimationCallback;I)Z
    .registers 10
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "animationCallback"    # Landroid/view/accessibility/MagnificationAnimationCallback;
    .param p5, "id"    # I

    .line 552
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mRegistered:Z

    if-nez v0, :cond_6

    .line 553
    const/4 v0, 0x0

    return v0

    .line 561
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->updateMagnificationSpecLocked(FFF)Z

    move-result v0

    .line 562
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {p0, v1, p4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Landroid/view/accessibility/MagnificationAnimationCallback;)V

    .line 563
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isMagnifying()Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v1, -0x1

    if-eq p5, v1, :cond_27

    .line 564
    iput p5, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    .line 565
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmMagnificationInfoChangedCallback(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    iget v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;->onRequestMagnificationSpec(II)V

    .line 568
    :cond_27
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayMagnification[mCurrentMagnificationSpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMagnificationRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMagnificationBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIdOfLastServiceToMagnify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUnregisterPending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mUnregisterPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unregister(Z)V
    .registers 6
    .param p1, "delete"    # Z

    .line 182
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mRegistered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_53

    .line 183
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->setEnabled(Z)V

    .line 184
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$mtraceEnabled(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 185
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";callback=null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "setMagnificationCallbacks"

    invoke-static {v0, v3, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$mlogTrace(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_35
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmControllerCtx(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getWindowManager()Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    iget v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->setMagnificationCallbacks(ILcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)Z

    .line 190
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 191
    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mRegistered:Z

    .line 192
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iget v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    invoke-static {v0, v2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$munregisterCallbackLocked(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;IZ)V

    .line 194
    :cond_53
    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mUnregisterPending:Z

    .line 195
    return-void
.end method

.method unregisterPending(Z)V
    .registers 3
    .param p1, "delete"    # Z

    .line 207
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDeleteAfterUnregister:Z

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mUnregisterPending:Z

    .line 209
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->reset(Z)Z

    .line 210
    return-void
.end method

.method updateCurrentSpecWithOffsetsLocked(FF)Z
    .registers 7
    .param p1, "nonNormOffsetX"    # F
    .param p2, "nonNormOffsetY"    # F

    .line 639
    const/4 v0, 0x0

    .line 640
    .local v0, "changed":Z
    nop

    .line 641
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMinOffsetXLocked()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMaxOffsetXLocked()F

    move-result v2

    .line 640
    invoke-static {p1, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    .line 642
    .local v1, "offsetX":F
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_1d

    .line 643
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iput v1, v2, Landroid/view/MagnificationSpec;->offsetX:F

    .line 644
    const/4 v0, 0x1

    .line 646
    :cond_1d
    nop

    .line 647
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMinOffsetYLocked()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMaxOffsetYLocked()F

    move-result v3

    .line 646
    invoke-static {p2, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v2

    .line 648
    .local v2, "offsetY":F
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v3, v3, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-static {v3, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_39

    .line 649
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iput v2, v3, Landroid/view/MagnificationSpec;->offsetY:F

    .line 650
    const/4 v0, 0x1

    .line 652
    :cond_39
    return v0
.end method

.method updateMagnificationRegion(Landroid/graphics/Region;)V
    .registers 5
    .param p1, "magnified"    # Landroid/graphics/Region;

    .line 328
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 329
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mRegistered:Z

    if-nez v1, :cond_d

    .line 331
    monitor-exit v0

    return-void

    .line 333
    :cond_d
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v1, p1}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 334
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v1, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 335
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 338
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, v1, Landroid/view/MagnificationSpec;->offsetX:F

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->updateCurrentSpecWithOffsetsLocked(FF)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 340
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Landroid/view/accessibility/MagnificationAnimationCallback;)V

    .line 342
    :cond_35
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->onMagnificationChangedLocked()V

    .line 344
    :cond_38
    invoke-virtual {p1}, Landroid/graphics/Region;->recycle()V

    .line 345
    monitor-exit v0

    .line 346
    return-void

    .line 345
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_7 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method updateMagnificationSpecLocked(FFF)Z
    .registers 9
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .line 584
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 585
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getCenterX()F

    move-result p2

    .line 587
    :cond_a
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 588
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getCenterY()F

    move-result p3

    .line 590
    :cond_14
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 591
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getScale()F

    move-result p1

    .line 595
    :cond_1e
    const/4 v0, 0x0

    .line 597
    .local v0, "changed":Z
    invoke-static {p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->constrainScale(F)F

    move-result v1

    .line 598
    .local v1, "normScale":F
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->scale:F

    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_32

    .line 599
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iput v1, v2, Landroid/view/MagnificationSpec;->scale:F

    .line 600
    const/4 v0, 0x1

    .line 603
    :cond_32
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    mul-float v4, p2, v1

    sub-float/2addr v2, v4

    .line 605
    .local v2, "nonNormOffsetX":F
    iget-object v4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v4, v3

    mul-float v3, p3, v1

    sub-float/2addr v4, v3

    .line 607
    .local v4, "nonNormOffsetY":F
    invoke-virtual {p0, v2, v4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->updateCurrentSpecWithOffsetsLocked(FF)Z

    move-result v3

    or-int/2addr v0, v3

    .line 609
    if-eqz v0, :cond_60

    .line 610
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->onMagnificationChangedLocked()V

    .line 613
    :cond_60
    return v0
.end method
