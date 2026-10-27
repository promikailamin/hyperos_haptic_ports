.class public final Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;
.super Ljava/lang/Object;
.source "FullScreenMagnificationController.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;


# instance fields
.field public final mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

.field public mDeleteAfterUnregister:Z

.field public final mDisplayId:I

.field public mIdOfLastServiceToMagnify:I

.field public final mImeRegion:Landroid/graphics/Region;

.field public mMagnificationActivated:Z

.field public final mMagnificationBounds:Landroid/graphics/Rect;

.field public final mMagnificationRegion:Landroid/graphics/Region;

.field public mMagnificationThumbnail:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

.field public mRegistered:Z

.field public final mSpecAnimationBridge:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;

.field public final mTempRect:Landroid/graphics/Rect;

.field public final mTempRect1:Landroid/graphics/Rect;

.field public mUnregisterPending:Z

.field public mZoomedOutFromService:Z

.field public final synthetic this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;


# direct methods
.method public static synthetic $r8$lambda$-qwsSre2CuZ6keMkDR_4ZLIlnAY(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->lambda$setActivated$1(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0tgaD9aUo13QDAnopPEGSYX7ERw(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->lambda$setScaleAndCenter$2(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nc9sJC0AIRwMSzkb-vNNnf00g6A(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;Landroid/accessibilityservice/MagnificationConfig;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->lambda$onMagnificationChangedLocked$0(Landroid/accessibilityservice/MagnificationConfig;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;I)V
    .registers 11

    .line 273
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    new-instance v0, Landroid/view/MagnificationSpec;

    invoke-direct {v0}, Landroid/view/MagnificationSpec;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 250
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    .line 251
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    .line 252
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mImeRegion:Landroid/graphics/Region;

    .line 254
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mTempRect:Landroid/graphics/Rect;

    .line 255
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mTempRect1:Landroid/graphics/Rect;

    const/4 v0, -0x1

    .line 266
    iput v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    const/4 v0, 0x0

    .line 267
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationActivated:Z

    .line 269
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mZoomedOutFromService:Z

    .line 274
    iput p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    .line 275
    new-instance v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;

    invoke-static {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmControllerCtx(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmScrollerSupplier(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Ljava/util/function/Supplier;

    move-result-object v5

    invoke-static {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmTimeAnimatorSupplier(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Ljava/util/function/Supplier;

    move-result-object v6

    const/4 v7, 0x0

    move v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;Ljava/lang/Object;ILjava/util/function/Supplier;Ljava/util/function/Supplier;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController-IA;)V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;

    return-void
.end method


# virtual methods
.method public createThumbnailIfSupported()V
    .registers 2

    .line 902
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationThumbnail:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    if-nez v0, :cond_15

    .line 903
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmThumbnailSupplier(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Ljava/util/function/Supplier;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationThumbnail:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    .line 907
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->refreshThumbnail()V

    :cond_15
    return-void
.end method

.method public destroyThumbnail()V
    .registers 2

    .line 913
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationThumbnail:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    if-eqz v0, :cond_a

    .line 914
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->hideThumbnail()V

    const/4 v0, 0x0

    .line 915
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationThumbnail:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    :cond_a
    return-void
.end method

.method public getCenterX()F
    .registers 3

    .line 407
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

    .line 408
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getOffsetX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getScale()F

    move-result p0

    div-float/2addr v0, p0

    return v0
.end method

.method public getCenterY()F
    .registers 3

    .line 413
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

    .line 414
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getOffsetY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getScale()F

    move-result p0

    div-float/2addr v0, p0

    return v0
.end method

.method public final getDisplayMetricsForId()Landroid/util/DisplayMetrics;
    .registers 4

    .line 678
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 679
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmDisplayManagerInternal(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Landroid/hardware/display/DisplayManagerInternal;

    move-result-object v1

    iget p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    invoke-virtual {v1, p0}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 681
    sget-object v1, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/DisplayInfo;->getLogicalMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    return-object v0

    .line 684
    :cond_1a
    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    return-object v0
.end method

.method public getIdOfLastServiceToMagnify()I
    .registers 1

    .line 607
    iget p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    return p0
.end method

.method public getMagnificationBounds(Landroid/graphics/Rect;)V
    .registers 2

    .line 669
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getMagnificationRegion(Landroid/graphics/Region;)V
    .registers 2

    .line 674
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {p1, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return-void
.end method

.method public getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V
    .registers 5

    .line 740
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getSentScale()F

    move-result v0

    .line 741
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getSentOffsetX()F

    move-result v1

    .line 742
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getSentOffsetY()F

    move-result v2

    .line 743
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMagnificationBounds(Landroid/graphics/Rect;)V

    neg-float p0, v1

    float-to-int p0, p0

    neg-float v1, v2

    float-to-int v1, v1

    .line 744
    invoke-virtual {p1, p0, v1}, Landroid/graphics/Rect;->offset(II)V

    const/high16 p0, 0x3f800000    # 1.0f

    div-float/2addr p0, v0

    .line 745
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->scale(F)V

    return-void
.end method

.method public getMaxOffsetXLocked()F
    .registers 3

    .line 1089
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget p0, p0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v0, p0

    sub-float/2addr v1, v0

    return v1
.end method

.method public getMaxOffsetYLocked()F
    .registers 3

    .line 1101
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget p0, p0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v0, p0

    sub-float/2addr v1, v0

    return v1
.end method

.method public getMinOffsetXLocked()F
    .registers 3

    .line 1082
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 1083
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 1084
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget p0, p0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr p0, v1

    sub-float/2addr v1, p0

    return v1
.end method

.method public getMinOffsetYLocked()F
    .registers 3

    .line 1094
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    .line 1095
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 1096
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget p0, p0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr p0, v1

    sub-float/2addr v1, p0

    return v1
.end method

.method public getOffsetX()F
    .registers 1

    .line 373
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget p0, p0, Landroid/view/MagnificationSpec;->offsetX:F

    return p0
.end method

.method public getOffsetY()F
    .registers 1

    .line 377
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget p0, p0, Landroid/view/MagnificationSpec;->offsetY:F

    return p0
.end method

.method public getScale()F
    .registers 1

    .line 369
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget p0, p0, Landroid/view/MagnificationSpec;->scale:F

    return p0
.end method

.method public getSentOffsetX()F
    .registers 1

    .line 436
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;

    invoke-static {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->-$$Nest$fgetmSentMagnificationSpec(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    move-result-object p0

    iget p0, p0, Landroid/view/MagnificationSpec;->offsetX:F

    return p0
.end method

.method public getSentOffsetY()F
    .registers 1

    .line 447
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;

    invoke-static {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->-$$Nest$fgetmSentMagnificationSpec(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    move-result-object p0

    iget p0, p0, Landroid/view/MagnificationSpec;->offsetY:F

    return p0
.end method

.method public getSentScale()F
    .registers 1

    .line 425
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;

    invoke-static {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->-$$Nest$fgetmSentMagnificationSpec(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    move-result-object p0

    iget p0, p0, Landroid/view/MagnificationSpec;->scale:F

    return p0
.end method

.method public hideThumbnail()V
    .registers 1

    .line 895
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationThumbnail:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    if-eqz p0, :cond_7

    .line 896
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->hideThumbnail()V

    :cond_7
    return-void
.end method

.method public imeRegionContains(FF)Z
    .registers 5

    .line 662
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float/2addr p1, v1

    iget v1, v0, Landroid/view/MagnificationSpec;->scale:F

    div-float/2addr p1, v1

    .line 663
    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float/2addr p2, v0

    div-float/2addr p2, v1

    .line 664
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mImeRegion:Landroid/graphics/Region;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result p0

    return p0
.end method

.method public isActivated()Z
    .registers 1

    .line 365
    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationActivated:Z

    return p0
.end method

.method public isAtBottomEdge(F)Z
    .registers 3

    .line 402
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getOffsetY()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMinOffsetYLocked()F

    move-result p0

    sub-float/2addr v0, p0

    invoke-static {v0}, Landroid/util/MathUtils;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public isAtEdge()Z
    .registers 3

    const/4 v0, 0x0

    .line 382
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isAtLeftEdge(F)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isAtRightEdge(F)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isAtTopEdge(F)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isAtBottomEdge(F)Z

    move-result p0

    if-eqz p0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p0, 0x0

    return p0

    :cond_1c
    :goto_1c
    const/4 p0, 0x1

    return p0
.end method

.method public isAtLeftEdge(F)Z
    .registers 3

    .line 387
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getOffsetX()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMaxOffsetXLocked()F

    move-result p0

    sub-float/2addr v0, p0

    invoke-static {v0}, Landroid/util/MathUtils;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public isAtRightEdge(F)Z
    .registers 3

    .line 392
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getOffsetX()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMinOffsetXLocked()F

    move-result p0

    sub-float/2addr v0, p0

    invoke-static {v0}, Landroid/util/MathUtils;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public isAtTopEdge(F)Z
    .registers 3

    .line 397
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getOffsetY()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMaxOffsetYLocked()F

    move-result p0

    sub-float/2addr v0, p0

    invoke-static {v0}, Landroid/util/MathUtils;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public isRegistered()Z
    .registers 1

    .line 361
    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mRegistered:Z

    return p0
.end method

.method public isZoomedOutFromService()Z
    .registers 1

    .line 785
    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mZoomedOutFromService:Z

    return p0
.end method

.method public final synthetic lambda$onMagnificationChangedLocked$0(Landroid/accessibilityservice/MagnificationConfig;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;)V
    .registers 4

    .line 632
    iget v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-interface {p2, v0, p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;->onFullScreenMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    return-void
.end method

.method public final synthetic lambda$setActivated$1(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;)V
    .registers 3

    .line 759
    iget v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationActivated:Z

    invoke-interface {p1, v0, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;->onFullScreenMagnificationActivationState(IZ)V

    return-void
.end method

.method public final synthetic lambda$setScaleAndCenter$2(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;)V
    .registers 3

    .line 865
    iget v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    iget p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    invoke-interface {p1, v0, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;->onRequestMagnificationSpec(II)V

    return-void
.end method

.method public magnificationRegionContains(FF)Z
    .registers 3

    .line 652
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result p0

    return p0
.end method

.method public offsetMagnifiedRegion(FFI)V
    .registers 6

    .line 979
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mRegistered:Z

    if-nez v0, :cond_5

    return-void

    .line 983
    :cond_5
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float/2addr v1, p1

    iget p1, v0, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float/2addr p1, p2

    invoke-virtual {p0, v1, p1, p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->setOffset(FFI)V

    return-void
.end method

.method public onDisplaySizeChanged()V
    .registers 1

    .line 477
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->onUserContextChanged()V

    return-void
.end method

.method public onImeRegionChanged(Landroid/graphics/Region;)V
    .registers 3

    .line 460
    new-instance v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda8;-><init>()V

    .line 462
    invoke-static {p1}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object p1

    .line 460
    invoke-static {v0, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 463
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmControllerCtx(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onImeWindowVisibilityChanged(Z)V
    .registers 5

    .line 494
    new-instance v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda5;-><init>()V

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iget v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    .line 496
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 494
    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 497
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmControllerCtx(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onMagnificationChangedLocked(Z)V
    .registers 8

    .line 622
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getScale()F

    move-result v0

    .line 623
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getCenterX()F

    move-result v1

    .line 624
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getCenterY()F

    move-result v2

    .line 625
    new-instance v3, Landroid/accessibilityservice/MagnificationConfig$Builder;

    invoke-direct {v3}, Landroid/accessibilityservice/MagnificationConfig$Builder;-><init>()V

    const/4 v4, 0x1

    .line 626
    invoke-virtual {v3, v4}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setMode(I)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationActivated:Z

    .line 627
    invoke-virtual {v3, v4}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setActivated(Z)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v3

    .line 628
    invoke-virtual {v3, v0}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setScale(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v3

    .line 629
    invoke-virtual {v3, v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterX(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v3

    .line 630
    invoke-virtual {v3, v2}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterY(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/accessibilityservice/MagnificationConfig$Builder;->build()Landroid/accessibilityservice/MagnificationConfig;

    move-result-object v3

    .line 631
    iget-object v4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmMagnificationInfoChangedCallbacks(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;Landroid/accessibilityservice/MagnificationConfig;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 635
    iget-boolean v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mUnregisterPending:Z

    if-eqz v3, :cond_49

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isActivated()Z

    move-result v3

    if-nez v3, :cond_49

    .line 636
    iget-boolean v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDeleteAfterUnregister:Z

    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->unregister(Z)V

    .line 639
    :cond_49
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 640
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->updateThumbnail(FFF)V

    goto :goto_56

    .line 642
    :cond_53
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->hideThumbnail()V

    :goto_56
    if-nez p1, :cond_5f

    .line 646
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iget p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    invoke-virtual {p1, p0, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->notifyScaleForInput(IF)V

    :cond_5f
    return-void
.end method

.method public onMagnificationRegionChanged(Landroid/graphics/Region;)V
    .registers 3

    .line 452
    new-instance v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda7;-><init>()V

    .line 454
    invoke-static {p1}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object p1

    .line 452
    invoke-static {v0, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 455
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmControllerCtx(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onRectangleOnScreenRequested(IIII)V
    .registers 11

    .line 468
    new-instance v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda4;-><init>()V

    .line 470
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    .line 468
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 471
    iget-object p1, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmControllerCtx(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onThumbnailFeatureFlagChanged()V
    .registers 2

    .line 920
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 921
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->destroyThumbnail()V

    .line 922
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->createThumbnailIfSupported()V

    .line 923
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public onUserContextChanged()V
    .registers 4

    .line 482
    new-instance v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda6;-><init>()V

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iget v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    .line 484
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 482
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 485
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmControllerCtx(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 487
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 488
    :try_start_25
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->refreshThumbnail()V

    .line 489
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public refreshThumbnail()V
    .registers 5

    .line 883
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationThumbnail:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    if-eqz v0, :cond_15

    .line 884
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    .line 886
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getScale()F

    move-result v2

    .line 887
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getCenterX()F

    move-result v3

    .line 888
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getCenterY()F

    move-result p0

    .line 884
    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->setThumbnailBounds(Landroid/graphics/Rect;FFF)V

    :cond_15
    return-void
.end method

.method public register()Z
    .registers 5

    .line 292
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$mtraceEnabled(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Z

    move-result v0

    const-string v1, "displayID="

    if-eqz v0, :cond_2b

    .line 293
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "setMagnificationCallbacks"

    invoke-static {v0, v3, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$mlogTrace(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_2b
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmControllerCtx(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getWindowManager()Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    iget v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    invoke-virtual {v0, v2, p0}, Lcom/android/server/wm/WindowManagerInternal;->setMagnificationCallbacks(ILcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mRegistered:Z

    if-nez v0, :cond_5a

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set magnification callbacks fail, displayId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FullScreenMagnificationController"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 302
    :cond_5a
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->setEnabled(Z)V

    .line 303
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$mtraceEnabled(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 304
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";region="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "getMagnificationRegion"

    invoke-static {v0, v3, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$mlogTrace(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_8a
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmControllerCtx(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getWindowManager()Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v3}, Lcom/android/server/wm/WindowManagerInternal;->getMagnificationRegion(ILandroid/graphics/Region;)V

    .line 310
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 312
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->createThumbnailIfSupported()V

    return v2
.end method

.method public requestRectangleOnScreen(IIII)V
    .registers 12

    .line 690
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 691
    :try_start_7
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mTempRect:Landroid/graphics/Rect;

    .line 692
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMagnificationBounds(Landroid/graphics/Rect;)V

    .line 693
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v1

    if-nez v1, :cond_17

    .line 694
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    goto/16 :goto_87

    .line 697
    :cond_17
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mTempRect1:Landroid/graphics/Rect;

    .line 698
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V

    .line 703
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getDisplayMetricsForId()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 704
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    const/4 v4, 0x1

    const/high16 v5, 0x41200000    # 10.0f

    .line 706
    invoke-static {v4, v5, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    sub-int v4, p3, p1

    .line 708
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    const/4 v6, 0x0

    if-le v4, v5, :cond_4c

    .line 710
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v3

    if-nez v3, :cond_47

    .line 712
    iget p3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p3

    int-to-float p1, p1

    goto :goto_5d

    .line 714
    :cond_47
    iget p1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, p1

    int-to-float p1, p3

    goto :goto_5d

    .line 716
    :cond_4c
    iget v4, v1, Landroid/graphics/Rect;->left:I

    if-ge p1, v4, :cond_54

    sub-int/2addr p1, v4

    int-to-float p1, p1

    sub-float/2addr p1, v3

    goto :goto_5d

    .line 718
    :cond_54
    iget p1, v1, Landroid/graphics/Rect;->right:I

    if-le p3, p1, :cond_5c

    sub-int/2addr p3, p1

    int-to-float p1, p3

    add-float/2addr p1, v3

    goto :goto_5d

    :cond_5c
    move p1, v6

    :goto_5d
    sub-int p3, p4, p2

    .line 724
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le p3, v3, :cond_6a

    .line 725
    iget p3, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p3

    int-to-float v6, p2

    goto :goto_7b

    .line 726
    :cond_6a
    iget p3, v1, Landroid/graphics/Rect;->top:I

    if-ge p2, p3, :cond_73

    sub-int/2addr p2, p3

    int-to-float p2, p2

    sub-float v6, p2, v2

    goto :goto_7b

    .line 728
    :cond_73
    iget p2, v1, Landroid/graphics/Rect;->bottom:I

    if-le p4, p2, :cond_7b

    sub-int/2addr p4, p2

    int-to-float p2, p4

    add-float v6, p2, v2

    .line 734
    :cond_7b
    :goto_7b
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getScale()F

    move-result p2

    mul-float/2addr p1, p2

    mul-float/2addr v6, p2

    const/4 p2, -0x1

    .line 735
    invoke-virtual {p0, p1, v6, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->offsetMagnifiedRegion(FFI)V

    .line 736
    monitor-exit v0

    return-void

    :goto_87
    monitor-exit v0
    :try_end_88
    .catchall {:try_start_7 .. :try_end_88} :catchall_14

    throw p0
.end method

.method public reset(Landroid/view/accessibility/MagnificationAnimationCallback;)Z
    .registers 5

    .line 795
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mRegistered:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 798
    :cond_6
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 799
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isActivated()Z

    move-result v2

    .line 800
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->setActivated(Z)Z

    if-eqz v2, :cond_17

    .line 802
    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->clear()V

    .line 803
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->onMagnificationChangedLocked(Z)V

    :cond_17
    const/4 v1, -0x1

    .line 805
    iput v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    .line 806
    invoke-virtual {p0, v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Landroid/view/accessibility/MagnificationAnimationCallback;)V

    .line 808
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->hideThumbnail()V

    return v2
.end method

.method public reset(Z)Z
    .registers 2

    .line 790
    invoke-static {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$smtransformToStubCallback(Z)Landroid/view/accessibility/MagnificationAnimationCallback;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->reset(Landroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p0

    return p0
.end method

.method public sendSpecToAnimation(Landroid/view/MagnificationSpec;Landroid/view/accessibility/MagnificationAnimationCallback;)V
    .registers 7

    .line 545
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmMainThreadId(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    .line 546
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->updateSentSpecMainThread(Landroid/view/MagnificationSpec;Landroid/view/accessibility/MagnificationAnimationCallback;)V

    return-void

    .line 548
    :cond_18
    new-instance v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda2;-><init>()V

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 551
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmControllerCtx(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final setActivated(Z)Z
    .registers 5

    .line 754
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationActivated:Z

    if-eq v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_28

    .line 757
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationActivated:Z

    .line 758
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmMagnificationInfoChangedCallbacks(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 762
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmControllerCtx(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getWindowManager()Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v1

    iget p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    invoke-virtual {v1, p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->setFullscreenMagnificationActivated(IZ)V

    :cond_28
    return v0
.end method

.method public setOffset(FFI)V
    .registers 5

    .line 989
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mRegistered:Z

    if-nez v0, :cond_5

    return-void

    .line 993
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->updateCurrentSpecWithOffsetsLocked(FF)Z

    move-result p1

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    .line 994
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->onMagnificationChangedLocked(Z)V

    :cond_f
    const/4 p1, -0x1

    if-eq p3, p1, :cond_14

    .line 997
    iput p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    .line 999
    :cond_14
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Landroid/view/accessibility/MagnificationAnimationCallback;)V

    return-void
.end method

.method public setScale(FFFZZI)Z
    .registers 14

    .line 816
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mRegistered:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 820
    :cond_6
    invoke-static {p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->constrainScale(F)F

    move-result v1

    .line 822
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mTempRect:Landroid/graphics/Rect;

    .line 823
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 824
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 825
    iget v2, v0, Landroid/view/MagnificationSpec;->scale:F

    .line 827
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v5, v0, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float/2addr v3, v5

    iget v5, p1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    add-float/2addr v3, v5

    div-float/2addr v3, v2

    .line 829
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    iget v4, v0, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float/2addr v5, v4

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    add-float/2addr v5, p1

    div-float/2addr v5, v2

    .line 830
    iget p1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float/2addr p2, p1

    div-float/2addr p2, v2

    sub-float/2addr p3, v4

    div-float/2addr p3, v2

    sub-float/2addr v3, p2

    div-float/2addr v2, v1

    mul-float/2addr v3, v2

    sub-float/2addr v5, p3

    mul-float/2addr v5, v2

    add-float v2, p2, v3

    add-float v3, p3, v5

    .line 836
    iput p6, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    .line 838
    invoke-static {p5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$smtransformToStubCallback(Z)Landroid/view/accessibility/MagnificationAnimationCallback;

    move-result-object v5

    move-object v0, p0

    move v4, p4

    move v6, p6

    .line 837
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->setScaleAndCenter(FFFZLandroid/view/accessibility/MagnificationAnimationCallback;I)Z

    move-result p0

    return p0
.end method

.method public setScaleAndCenter(FFFZLandroid/view/accessibility/MagnificationAnimationCallback;I)Z
    .registers 9

    .line 845
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mRegistered:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 850
    :cond_6
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmMagnificationConnectionStateSupplier(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Ljava/util/function/Supplier;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_19

    return v1

    :cond_19
    const/4 v0, 0x1

    .line 859
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->setActivated(Z)Z

    move-result v0

    .line 860
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->updateMagnificationSpecLocked(FFFZ)Z

    move-result p1

    or-int/2addr p1, v0

    .line 861
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {p0, p2, p5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Landroid/view/accessibility/MagnificationAnimationCallback;)V

    .line 862
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->isActivated()Z

    move-result p2

    if-eqz p2, :cond_41

    const/4 p2, -0x1

    if-eq p6, p2, :cond_41

    .line 863
    iput p6, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    .line 864
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmMagnificationInfoChangedCallbacks(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Ljava/util/ArrayList;

    move-result-object p2

    new-instance p3, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 870
    :cond_41
    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mZoomedOutFromService:Z

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayMagnification[mCurrentMagnificationSpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMagnificationRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMagnificationBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIdOfLastServiceToMagnify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mUnregisterPending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mUnregisterPending:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unregister(Z)V
    .registers 6

    .line 328
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mRegistered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_53

    .line 329
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->setEnabled(Z)V

    .line 330
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$mtraceEnabled(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 331
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";callback=null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "setMagnificationCallbacks"

    invoke-static {v0, v3, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$mlogTrace(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_32
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmControllerCtx(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->getWindowManager()Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    iget v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->setMagnificationCallbacks(ILcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)Z

    .line 336
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 337
    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mRegistered:Z

    .line 338
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iget v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    invoke-static {v0, v2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$munregisterCallbackLocked(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;IZ)V

    .line 340
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->destroyThumbnail()V

    .line 342
    :cond_53
    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mUnregisterPending:Z

    return-void
.end method

.method public unregisterPending(Z)V
    .registers 2

    .line 355
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDeleteAfterUnregister:Z

    const/4 p1, 0x1

    .line 356
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mUnregisterPending:Z

    .line 357
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->reset(Z)Z

    return-void
.end method

.method public updateCurrentSpecWithOffsetsLocked(FF)Z
    .registers 6

    .line 1067
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMinOffsetXLocked()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMaxOffsetXLocked()F

    move-result v1

    .line 1066
    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    .line 1068
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    .line 1069
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iput p1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    move p1, v1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    .line 1073
    :goto_1e
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMinOffsetYLocked()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMaxOffsetYLocked()F

    move-result v2

    .line 1072
    invoke-static {p2, v0, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p2

    .line 1074
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_39

    .line 1075
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iput p2, p0, Landroid/view/MagnificationSpec;->offsetY:F

    return v1

    :cond_39
    return p1
.end method

.method public updateImeRegion(Landroid/graphics/Region;)V
    .registers 4

    .line 530
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 531
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mRegistered:Z

    if-nez v1, :cond_f

    .line 532
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    goto :goto_16

    .line 534
    :cond_f
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mImeRegion:Landroid/graphics/Region;

    invoke-virtual {p0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 535
    monitor-exit v0

    return-void

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_d

    throw p0
.end method

.method public updateMagnificationRegion(Landroid/graphics/Region;)V
    .registers 5

    .line 506
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 507
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mRegistered:Z

    if-nez v1, :cond_f

    .line 509
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    goto :goto_41

    .line 511
    :cond_f
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v1, p1}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 512
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v1, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 513
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 515
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->refreshThumbnail()V

    .line 519
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v1, Landroid/view/MagnificationSpec;->offsetX:F

    iget v1, v1, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {p0, v2, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->updateCurrentSpecWithOffsetsLocked(FF)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 521
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Landroid/view/accessibility/MagnificationAnimationCallback;)V

    :cond_38
    const/4 v1, 0x1

    .line 523
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->onMagnificationChangedLocked(Z)V

    .line 525
    :cond_3c
    invoke-virtual {p1}, Landroid/graphics/Region;->recycle()V

    .line 526
    monitor-exit v0

    return-void

    :goto_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_7 .. :try_end_42} :catchall_d

    throw p0
.end method

.method public updateMagnificationSpecLocked(FFFZ)Z
    .registers 10

    .line 945
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 946
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getCenterX()F

    move-result p2

    .line 948
    :cond_a
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 949
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getCenterY()F

    move-result p3

    .line 951
    :cond_14
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 952
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getScale()F

    move-result p1

    .line 958
    :cond_1e
    invoke-static {p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->constrainScale(F)F

    move-result p1

    .line 959
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_32

    .line 960
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iput p1, v0, Landroid/view/MagnificationSpec;->scale:F

    const/4 v0, 0x1

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    .line 964
    :goto_33
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    mul-float/2addr p2, p1

    sub-float/2addr v1, p2

    .line 966
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v2

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr p2, v2

    mul-float/2addr p3, p1

    sub-float/2addr p2, p3

    .line 968
    invoke-virtual {p0, v1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->updateCurrentSpecWithOffsetsLocked(FF)Z

    move-result p1

    or-int/2addr p1, v0

    if-eqz p1, :cond_5d

    .line 971
    invoke-virtual {p0, p4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->onMagnificationChangedLocked(Z)V

    :cond_5d
    return p1
.end method

.method public updateThumbnail(FFF)V
    .registers 4

    .line 876
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationThumbnail:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    if-eqz p0, :cond_7

    .line 877
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->updateThumbnail(FFF)V

    :cond_7
    return-void
.end method

.method public zoomOutFromService()V
    .registers 9

    const/4 v0, 0x1

    .line 776
    invoke-static {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$smtransformToStubCallback(Z)Landroid/view/accessibility/MagnificationAnimationCallback;

    move-result-object v6

    const/4 v7, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/high16 v4, 0x7fc00000    # Float.NaN

    const/4 v5, 0x0

    move-object v1, p0

    .line 775
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->setScaleAndCenter(FFFZLandroid/view/accessibility/MagnificationAnimationCallback;I)Z

    .line 778
    iput-boolean v0, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mZoomedOutFromService:Z

    return-void
.end method
