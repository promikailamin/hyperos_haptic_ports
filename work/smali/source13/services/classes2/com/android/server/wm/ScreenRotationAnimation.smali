.class Lcom/android/server/wm/ScreenRotationAnimation;
.super Ljava/lang/Object;
.source "ScreenRotationAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;
    }
.end annotation


# static fields
.field private static final SCREEN_RESOLUTION_LAYER:I = 0x7f000000

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mAnimRunning:Z

.field private mBackColorSurface:Landroid/view/SurfaceControl;

.field private mBlackCoverLayer:Landroid/view/SurfaceControl;

.field private final mContext:Landroid/content/Context;

.field private mCurRotation:I

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mEndLuma:F

.field private mEnterBlackFrameLayer:Landroid/view/SurfaceControl;

.field private mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

.field private mFinishAnimReady:Z

.field private mFinishAnimStartTime:J

.field private mHeight:I

.field private mIsPerfLockAcquired:Z

.field private mMiuiScreenRotation:I

.field private mMiuiScreenRotationMode:I

.field private final mOriginalHeight:I

.field private final mOriginalRotation:I

.field private final mOriginalWidth:I

.field private mPerf:Landroid/util/BoostFramework;

.field private mRotateAlphaAnimation:Landroid/view/animation/Animation;

.field private mRotateEnterAnimation:Landroid/view/animation/Animation;

.field private final mRotateEnterTransformation:Landroid/view/animation/Transformation;

.field private mRotateExitAnimation:Landroid/view/animation/Animation;

.field private final mRotateExitTransformation:Landroid/view/animation/Transformation;

.field public mSRAImpl:Lcom/android/server/wm/ScreenRotationAnimationStub;

.field private mScreenshotLayer:Landroid/view/SurfaceControl;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mSnapshotInitialMatrix:Landroid/graphics/Matrix;

.field private mStartLuma:F

.field private mStarted:Z

.field private mSurfaceRotationAnimationController:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

.field private final mTmpFloats:[F

.field private mWidth:I

.field mWithinApp:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmBackColorSurface(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBlackCoverLayer(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackCoverLayer:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayContent(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEndLuma(Lcom/android/server/wm/ScreenRotationAnimation;)F
    .registers 1

    iget p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEndLuma:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnterBlackFrameLayer(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterBlackFrameLayer:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnteringBlackFrame(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/BlackFrame;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMiuiScreenRotation(Lcom/android/server/wm/ScreenRotationAnimation;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMiuiScreenRotation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOriginalHeight(Lcom/android/server/wm/ScreenRotationAnimation;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOriginalWidth(Lcom/android/server/wm/ScreenRotationAnimation;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRotateAlphaAnimation(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/animation/Animation;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRotateEnterAnimation(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/animation/Animation;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRotateExitAnimation(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/animation/Animation;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenshotLayer(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartLuma(Lcom/android/server/wm/ScreenRotationAnimation;)F
    .registers 1

    iget p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartLuma:F

    return p0
.end method

.method constructor <init>(Lcom/android/server/wm/DisplayContent;I)V
    .registers 29
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "originalRotation"    # I

    .line 162
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mPerf:Landroid/util/BoostFramework;

    .line 109
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mIsPerfLockAcquired:Z

    .line 113
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    .line 114
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    .line 115
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    .line 117
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    .line 163
    iget-object v0, v2, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 164
    iget-object v6, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    .line 165
    iput-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 166
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 167
    .local v7, "currentBounds":Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 168
    .local v8, "width":I
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 170
    .local v9, "height":I
    new-instance v10, Landroid/util/BoostFramework;

    invoke-direct {v10}, Landroid/util/BoostFramework;-><init>()V

    iput-object v10, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mPerf:Landroid/util/BoostFramework;

    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v10

    .line 174
    .local v10, "displayInfo":Landroid/view/DisplayInfo;
    iget v11, v10, Landroid/view/DisplayInfo;->rotation:I

    .line 176
    .local v11, "realOriginalRotation":I
    iput v8, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    .line 177
    iput v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    .line 179
    iput v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    .line 184
    invoke-static {v3, v11}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v12

    .line 185
    .local v12, "delta":I
    const/4 v13, 0x3

    const/4 v14, 0x1

    if-eq v12, v14, :cond_60

    if-ne v12, v13, :cond_5e

    goto :goto_60

    :cond_5e
    move v15, v5

    goto :goto_61

    :cond_60
    :goto_60
    move v15, v14

    .line 186
    .local v15, "flipped":Z
    :goto_61
    if-eqz v15, :cond_65

    move v13, v9

    goto :goto_66

    :cond_65
    move v13, v8

    :goto_66
    iput v13, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    .line 187
    if-eqz v15, :cond_6c

    move v13, v8

    goto :goto_6d

    :cond_6c
    move v13, v9

    :goto_6d
    iput v13, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    .line 189
    iget-boolean v13, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    const-string v4, "WindowManager"

    if-nez v13, :cond_81

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->okToAnimate()Z

    move-result v13

    if-nez v13, :cond_81

    .line 190
    const-string v0, "Screen is unfrozen, cancel this animation "

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void

    .line 194
    :cond_81
    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiFreeFormGestureController:Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    if-eqz v13, :cond_93

    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiFreeFormGestureController:Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    .line 195
    invoke-interface {v13}, Lcom/android/server/wm/MiuiFreeformGestureControllerStub;->isScreenRotationDisabled()Z

    move-result v13

    if-eqz v13, :cond_93

    .line 196
    const-string v0, "MiuiFreeFormGestureController.isScreenRotationDisabled, cancel screenshot of display "

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void

    .line 200
    :cond_93
    iget-boolean v13, v0, Lcom/android/server/wm/WindowManagerService;->mUpdatingOrientationForSleep:Z

    if-eqz v13, :cond_9d

    .line 201
    const-string v0, "Updating orientation for sleep, cancel screenshot of display "

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void

    .line 205
    :cond_9d
    invoke-static {}, Lcom/android/server/wm/DisplayRotationStub;->get()Lcom/android/server/wm/DisplayRotationStub;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/server/wm/DisplayRotationStub;->hasBootBlackCoverLayer()Z

    move-result v13

    if-eqz v13, :cond_ad

    .line 206
    const-string v0, "BootBlackCoverLayer is not removed, cancel this animation "

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void

    .line 210
    :cond_ad
    new-instance v13, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    invoke-direct {v13, v1}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;-><init>(Lcom/android/server/wm/ScreenRotationAnimation;)V

    iput-object v13, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceRotationAnimationController:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    .line 213
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->hasSecureWindowOnScreen()Z

    move-result v13

    .line 214
    .local v13, "isSecure":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v14

    .line 215
    .local v14, "displayId":I
    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/SurfaceControl$Transaction;

    .line 313
    .local v5, "t":Landroid/view/SurfaceControl$Transaction;
    move-object/from16 v17, v7

    .end local v7    # "currentBounds":Landroid/graphics/Rect;
    .local v17, "currentBounds":Landroid/graphics/Rect;
    invoke-static {}, Lcom/android/server/wm/ScreenRotationAnimationStub;->get()Lcom/android/server/wm/ScreenRotationAnimationStub;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSRAImpl:Lcom/android/server/wm/ScreenRotationAnimationStub;

    .line 314
    invoke-interface {v7, v6, v0}, Lcom/android/server/wm/ScreenRotationAnimationStub;->init(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    .line 315
    iget-object v6, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_e1

    iget-object v6, v2, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_e1

    const/4 v6, 0x1

    goto :goto_e2

    :cond_e1
    const/4 v6, 0x0

    :goto_e2
    iput-boolean v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mWithinApp:Z

    .line 316
    iget-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSRAImpl:Lcom/android/server/wm/ScreenRotationAnimationStub;

    invoke-interface {v6}, Lcom/android/server/wm/ScreenRotationAnimationStub;->getScreenRotationAnimationMode()I

    move-result v6

    iput v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mMiuiScreenRotationMode:I

    .line 317
    const/4 v6, 0x0

    iput v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mMiuiScreenRotation:I

    .line 320
    iget-object v6, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v6}, Landroid/hardware/display/DisplayManagerInternal;->isDisplayTransitionInProgress()Z

    move-result v6

    const-string v7, "ScreenRotationAnimation"

    if-nez v6, :cond_380

    iget-boolean v6, v2, Lcom/android/server/wm/DisplayContent;->mDisplaySwappedInProgress:Z

    if-eqz v6, :cond_109

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v18, v12

    move/from16 v19, v13

    move/from16 v20, v15

    goto/16 :goto_38a

    .line 333
    :cond_109
    :try_start_109
    invoke-static {}, Landroid/view/SurfaceControl;->getCastLayer()Ljava/util/ArrayList;

    move-result-object v6
    :try_end_10d
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_109 .. :try_end_10d} :catch_33f

    .line 334
    .local v6, "excludeLayersArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/SurfaceControl;>;"
    move/from16 v18, v12

    .end local v12    # "delta":I
    .local v18, "delta":I
    :try_start_10f
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Landroid/view/SurfaceControl;
    :try_end_115
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_10f .. :try_end_115} :catch_335

    .line 336
    .local v12, "excludeLayers":[Landroid/view/SurfaceControl;
    move/from16 v19, v13

    .end local v13    # "isSecure":Z
    .local v19, "isSecure":Z
    :try_start_117
    new-instance v13, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;
    :try_end_119
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_117 .. :try_end_119} :catch_32b

    .line 337
    move/from16 v20, v15

    .end local v15    # "flipped":Z
    .local v20, "flipped":Z
    :try_start_11b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v15

    invoke-direct {v13, v15}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 338
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Landroid/view/SurfaceControl;

    invoke-virtual {v13, v15}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setExcludeLayers([Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    move-result-object v13

    .line 339
    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v13

    check-cast v13, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    .line 340
    invoke-virtual {v13, v15}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setAllowProtected(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v13

    check-cast v13, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    new-instance v15, Landroid/graphics/Rect;

    move-object/from16 v21, v6

    const/4 v6, 0x0

    .end local v6    # "excludeLayersArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/SurfaceControl;>;"
    .local v21, "excludeLayersArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/SurfaceControl;>;"
    invoke-direct {v15, v6, v6, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 341
    invoke-virtual {v13, v15}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v6

    check-cast v6, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    .line 343
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setCalledByRotationLayers(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v6

    check-cast v6, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    .line 344
    invoke-virtual {v6}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->build()Landroid/view/SurfaceControl$LayerCaptureArgs;

    move-result-object v6

    .line 348
    .local v6, "args":Landroid/view/SurfaceControl$LayerCaptureArgs;
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/server/wm/WindowManagerServiceStub;->isPendingSwitchResolution()Z

    move-result v13
    :try_end_15a
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_11b .. :try_end_15a} :catch_323

    if-eqz v13, :cond_18f

    .line 349
    const/4 v13, 0x1

    :try_start_15d
    invoke-virtual {v2, v13}, Lcom/android/server/wm/DisplayContent;->setRoundedCornerOverlaysCanScreenShot(Z)V

    .line 350
    new-instance v13, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    .line 351
    invoke-static {}, Landroid/view/SurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object v15

    invoke-direct {v13, v15}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;-><init>(Landroid/os/IBinder;)V

    .line 352
    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v13

    check-cast v13, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    .line 353
    invoke-virtual {v13, v15}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->setAllowProtected(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v13

    check-cast v13, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    .line 355
    invoke-virtual {v13, v15}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->setCalledByRotationLayers(Z)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v13

    check-cast v13, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    .line 356
    invoke-virtual {v13}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->build()Landroid/view/SurfaceControl$DisplayCaptureArgs;

    move-result-object v13

    .line 357
    .local v13, "captureArgs":Landroid/view/SurfaceControl$DisplayCaptureArgs;
    invoke-static {v13}, Landroid/view/SurfaceControl;->captureDisplay(Landroid/view/SurfaceControl$DisplayCaptureArgs;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v15
    :try_end_184
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_15d .. :try_end_184} :catch_186

    move-object v13, v15

    .line 358
    .local v13, "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    goto :goto_193

    .line 456
    .end local v6    # "args":Landroid/view/SurfaceControl$LayerCaptureArgs;
    .end local v12    # "excludeLayers":[Landroid/view/SurfaceControl;
    .end local v13    # "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .end local v21    # "excludeLayersArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/SurfaceControl;>;"
    :catch_186
    move-exception v0

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v13, v19

    goto/16 :goto_34a

    .line 359
    .restart local v6    # "args":Landroid/view/SurfaceControl$LayerCaptureArgs;
    .restart local v12    # "excludeLayers":[Landroid/view/SurfaceControl;
    .restart local v21    # "excludeLayersArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/SurfaceControl;>;"
    :cond_18f
    :try_start_18f
    invoke-static {v6}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl$LayerCaptureArgs;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v13
    :try_end_193
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_18f .. :try_end_193} :catch_323

    .line 361
    .restart local v13    # "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    :goto_193
    if-nez v13, :cond_1ac

    .line 362
    :try_start_195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to take screenshot of display "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ab
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_195 .. :try_end_1ab} :catch_186

    .line 363
    return-void

    .line 369
    :cond_1ac
    :try_start_1ac
    invoke-virtual {v13}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    move-result v15
    :try_end_1b0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1ac .. :try_end_1b0} :catch_323

    if-eqz v15, :cond_1b4

    .line 370
    const/4 v15, 0x1

    .end local v19    # "isSecure":Z
    .local v15, "isSecure":Z
    goto :goto_1b6

    .line 369
    .end local v15    # "isSecure":Z
    .restart local v19    # "isSecure":Z
    :cond_1b4
    move/from16 v15, v19

    .line 373
    .end local v19    # "isSecure":Z
    .restart local v15    # "isSecure":Z
    :goto_1b6
    move-object/from16 v22, v6

    move/from16 v23, v8

    const/4 v6, 0x0

    .end local v6    # "args":Landroid/view/SurfaceControl$LayerCaptureArgs;
    .end local v8    # "width":I
    .local v22, "args":Landroid/view/SurfaceControl$LayerCaptureArgs;
    .local v23, "width":I
    :try_start_1bb
    invoke-virtual {v2, v6}, Lcom/android/server/wm/DisplayContent;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v8

    const-string v6, "BackColorSurface"

    .line 374
    invoke-virtual {v8, v6}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    .line 375
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    .line 376
    invoke-virtual {v6, v7}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    .line 377
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    .line 379
    const-string v6, "RotationLayer"

    .line 380
    .local v6, "name":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/ScreenRotationAnimationStub;->get()Lcom/android/server/wm/ScreenRotationAnimationStub;

    move-result-object v8

    invoke-interface {v8, v2}, Lcom/android/server/wm/ScreenRotationAnimationStub;->isOpaqueHasVideo(Lcom/android/server/wm/DisplayContent;)Z

    move-result v8
    :try_end_1dd
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1bb .. :try_end_1dd} :catch_31e

    .line 383
    .local v8, "isOpaque":Z
    if-nez v8, :cond_1f4

    move/from16 v19, v8

    .end local v8    # "isOpaque":Z
    .local v19, "isOpaque":Z
    :try_start_1e1
    invoke-static {}, Lcom/android/server/wm/ScreenRotationAnimationStub;->get()Lcom/android/server/wm/ScreenRotationAnimationStub;

    move-result-object v8

    invoke-interface {v8, v2}, Lcom/android/server/wm/ScreenRotationAnimationStub;->isEmbeddingAndNeedOpaque(Lcom/android/server/wm/DisplayContent;)Z

    move-result v8
    :try_end_1e9
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1e1 .. :try_end_1e9} :catch_1ee

    if-eqz v8, :cond_1ec

    goto :goto_1f6

    :cond_1ec
    const/4 v8, 0x0

    goto :goto_1f7

    .line 456
    .end local v6    # "name":Ljava/lang/String;
    .end local v12    # "excludeLayers":[Landroid/view/SurfaceControl;
    .end local v13    # "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .end local v19    # "isOpaque":Z
    .end local v21    # "excludeLayersArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/SurfaceControl;>;"
    .end local v22    # "args":Landroid/view/SurfaceControl$LayerCaptureArgs;
    :catch_1ee
    move-exception v0

    move/from16 v24, v9

    move v13, v15

    goto/16 :goto_34a

    .line 383
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v8    # "isOpaque":Z
    .restart local v12    # "excludeLayers":[Landroid/view/SurfaceControl;
    .restart local v13    # "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .restart local v21    # "excludeLayersArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/SurfaceControl;>;"
    .restart local v22    # "args":Landroid/view/SurfaceControl$LayerCaptureArgs;
    :cond_1f4
    move/from16 v19, v8

    .end local v8    # "isOpaque":Z
    .restart local v19    # "isOpaque":Z
    :goto_1f6
    const/4 v8, 0x1

    .line 386
    .end local v19    # "isOpaque":Z
    .restart local v8    # "isOpaque":Z
    :goto_1f7
    move/from16 v24, v9

    .end local v9    # "height":I
    .local v24, "height":I
    :try_start_1f9
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object v9

    .line 387
    invoke-virtual {v9, v6}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v9

    .line 388
    invoke-virtual {v9, v8}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v9

    .line 389
    invoke-virtual {v9, v15}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v9

    .line 390
    invoke-virtual {v9, v7}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v9

    .line 391
    invoke-virtual {v9}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v9

    .line 392
    .local v9, "builder":Landroid/view/SurfaceControl$Builder;
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/android/server/wm/WindowManagerServiceStub;->isPendingSwitchResolution()Z

    move-result v19

    if-eqz v19, :cond_233

    .line 393
    move/from16 v19, v8

    const/4 v8, 0x0

    .end local v8    # "isOpaque":Z
    .restart local v19    # "isOpaque":Z
    invoke-virtual {v2, v8}, Lcom/android/server/wm/DisplayContent;->setRoundedCornerOverlaysCanScreenShot(Z)V

    .line 394
    const/4 v8, 0x0

    invoke-virtual {v9, v8}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const-string v8, "ScreenResolutionLayer"

    .line 395
    invoke-virtual {v2, v8}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 396
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    goto :goto_23b

    .line 398
    .end local v19    # "isOpaque":Z
    .restart local v8    # "isOpaque":Z
    :cond_233
    move/from16 v19, v8

    .end local v8    # "isOpaque":Z
    .restart local v19    # "isOpaque":Z
    invoke-virtual {v9}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    .line 403
    :goto_23b
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-static {v2, v5, v14, v6}, Lcom/android/server/wm/InputMonitor;->setTrustedOverlayInputInfo(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILjava/lang/String;)V

    .line 405
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const-string v8, "EnterBlackFrameLayer"

    .line 406
    invoke-virtual {v2, v8}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 407
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 408
    invoke-virtual {v2, v7}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 409
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterBlackFrameLayer:Landroid/view/SurfaceControl;

    .line 411
    invoke-virtual {v13}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    .line 413
    .local v2, "hardwareBuffer":Landroid/hardware/HardwareBuffer;
    invoke-static {}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getInstance()Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;

    move-result-object v7

    .line 414
    .local v7, "imp":Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mIsInScreenProjection:Z

    if-eqz v0, :cond_26f

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_26f

    .line 415
    invoke-interface {v7}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getExtraScreenProjectFlag()I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/view/SurfaceControl;->setScreenProjection(I)V

    .line 417
    :cond_26f
    const-string v0, "ScreenRotationAnimation#getMedianBorderLuma"

    move-object v8, v6

    move-object/from16 v25, v7

    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "imp":Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
    .local v8, "name":Ljava/lang/String;
    .local v25, "imp":Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
    const-wide/16 v6, 0x20

    invoke-static {v6, v7, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 419
    nop

    .line 420
    invoke-virtual {v13}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 419
    invoke-static {v2, v0}, Lcom/android/server/wm/utils/RotationAnimationUtils;->getMedianBorderLuma(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)F

    move-result v0

    iput v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mStartLuma:F

    .line 421
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 423
    nop

    .line 424
    invoke-virtual {v13}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    .line 423
    invoke-static {v0}, Landroid/graphics/GraphicBuffer;->createFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/graphics/GraphicBuffer;

    move-result-object v0

    .line 428
    .local v0, "buffer":Landroid/graphics/GraphicBuffer;
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/wm/WindowManagerServiceStub;->isPendingSwitchResolution()Z

    move-result v6

    if-eqz v6, :cond_2a2

    .line 429
    iget-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    const/high16 v7, 0x7f000000

    invoke-virtual {v5, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_2aa

    .line 431
    :cond_2a2
    iget-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    const v7, 0x1eab90

    invoke-virtual {v5, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 433
    :goto_2aa
    iget-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 434
    iget-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 438
    const/4 v6, 0x3

    new-array v6, v6, [F

    iget v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mStartLuma:F

    const/16 v16, 0x0

    aput v7, v6, v16

    const/16 v16, 0x1

    aput v7, v6, v16

    const/16 v16, 0x2

    aput v7, v6, v16

    .line 439
    .local v6, "startColor":[F
    invoke-static {}, Landroid/hovermode/MiuiHoverModeStub;->get()Landroid/hovermode/MiuiHoverModeStub;

    move-result-object v7

    invoke-interface {v7}, Landroid/hovermode/MiuiHoverModeStub;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_2db

    .line 440
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/android/server/wm/WindowManagerServiceStub;->calcHoverAnimatingColor([F)V

    .line 442
    :cond_2db
    iget-object v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v5, v7, v6}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 445
    iget-object v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    move-object/from16 v16, v2

    const/high16 v2, 0x3f800000    # 1.0f

    .end local v2    # "hardwareBuffer":Landroid/hardware/HardwareBuffer;
    .local v16, "hardwareBuffer":Landroid/hardware/HardwareBuffer;
    invoke-virtual {v5, v7, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 446
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v5, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/graphics/GraphicBuffer;)Landroid/view/SurfaceControl$Transaction;

    .line 447
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v13}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v7

    invoke-virtual {v5, v2, v7}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    .line 451
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v13}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->containsHdrLayers()Z

    move-result v7

    if-nez v7, :cond_301

    const/4 v7, 0x1

    goto :goto_302

    :cond_301
    const/4 v7, 0x0

    :goto_302
    invoke-virtual {v5, v2, v7}, Landroid/view/SurfaceControl$Transaction;->setDimmingEnabled(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 452
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v5, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 453
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/wm/WindowManagerServiceStub;->isPendingSwitchResolution()Z

    move-result v2

    if-nez v2, :cond_319

    .line 454
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v5, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    :try_end_319
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1f9 .. :try_end_319} :catch_31b

    .line 458
    .end local v0    # "buffer":Landroid/graphics/GraphicBuffer;
    .end local v6    # "startColor":[F
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "builder":Landroid/view/SurfaceControl$Builder;
    .end local v12    # "excludeLayers":[Landroid/view/SurfaceControl;
    .end local v13    # "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .end local v16    # "hardwareBuffer":Landroid/hardware/HardwareBuffer;
    .end local v19    # "isOpaque":Z
    .end local v21    # "excludeLayersArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/SurfaceControl;>;"
    .end local v22    # "args":Landroid/view/SurfaceControl$LayerCaptureArgs;
    .end local v25    # "imp":Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
    :cond_319
    move v13, v15

    goto :goto_34f

    .line 456
    :catch_31b
    move-exception v0

    move v13, v15

    goto :goto_34a

    .end local v24    # "height":I
    .local v9, "height":I
    :catch_31e
    move-exception v0

    move/from16 v24, v9

    move v13, v15

    .end local v9    # "height":I
    .restart local v24    # "height":I
    goto :goto_34a

    .end local v15    # "isSecure":Z
    .end local v23    # "width":I
    .end local v24    # "height":I
    .local v8, "width":I
    .restart local v9    # "height":I
    .local v19, "isSecure":Z
    :catch_323
    move-exception v0

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v13, v19

    .end local v8    # "width":I
    .end local v9    # "height":I
    .restart local v23    # "width":I
    .restart local v24    # "height":I
    goto :goto_34a

    .end local v20    # "flipped":Z
    .end local v23    # "width":I
    .end local v24    # "height":I
    .restart local v8    # "width":I
    .restart local v9    # "height":I
    .local v15, "flipped":Z
    :catch_32b
    move-exception v0

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v20, v15

    move/from16 v13, v19

    .end local v8    # "width":I
    .end local v9    # "height":I
    .end local v15    # "flipped":Z
    .restart local v20    # "flipped":Z
    .restart local v23    # "width":I
    .restart local v24    # "height":I
    goto :goto_34a

    .end local v19    # "isSecure":Z
    .end local v20    # "flipped":Z
    .end local v23    # "width":I
    .end local v24    # "height":I
    .restart local v8    # "width":I
    .restart local v9    # "height":I
    .local v13, "isSecure":Z
    .restart local v15    # "flipped":Z
    :catch_335
    move-exception v0

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v19, v13

    move/from16 v20, v15

    .end local v8    # "width":I
    .end local v9    # "height":I
    .end local v13    # "isSecure":Z
    .end local v15    # "flipped":Z
    .restart local v19    # "isSecure":Z
    .restart local v20    # "flipped":Z
    .restart local v23    # "width":I
    .restart local v24    # "height":I
    goto :goto_34a

    .end local v18    # "delta":I
    .end local v19    # "isSecure":Z
    .end local v20    # "flipped":Z
    .end local v23    # "width":I
    .end local v24    # "height":I
    .restart local v8    # "width":I
    .restart local v9    # "height":I
    .local v12, "delta":I
    .restart local v13    # "isSecure":Z
    .restart local v15    # "flipped":Z
    :catch_33f
    move-exception v0

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v18, v12

    move/from16 v19, v13

    move/from16 v20, v15

    .line 457
    .end local v8    # "width":I
    .end local v9    # "height":I
    .end local v12    # "delta":I
    .end local v15    # "flipped":Z
    .local v0, "e":Landroid/view/Surface$OutOfResourcesException;
    .restart local v18    # "delta":I
    .restart local v20    # "flipped":Z
    .restart local v23    # "width":I
    .restart local v24    # "height":I
    :goto_34a
    const-string v2, "Unable to allocate freeze surface"

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 464
    .end local v0    # "e":Landroid/view/Surface$OutOfResourcesException;
    :goto_34f
    iget v0, v10, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 465
    .local v0, "logicalWidth":I
    iget v2, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 466
    .local v2, "logicalHeight":I
    iget v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    if-le v0, v4, :cond_359

    const/4 v6, 0x1

    goto :goto_35a

    :cond_359
    const/4 v6, 0x0

    :goto_35a
    iget v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    if-le v2, v7, :cond_360

    const/4 v8, 0x1

    goto :goto_361

    :cond_360
    const/4 v8, 0x0

    :goto_361
    if-ne v6, v8, :cond_3b6

    if-ne v0, v4, :cond_367

    if-eq v2, v7, :cond_3b6

    .line 468
    :cond_367
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    iget-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    new-instance v7, Landroid/graphics/Rect;

    iget v8, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    const/4 v12, 0x0

    invoke-direct {v7, v12, v12, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v12, v12, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v6, v7, v8, v12}, Landroid/view/SurfaceControl$Transaction;->setGeometry(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_3b6

    .line 320
    .end local v0    # "logicalWidth":I
    .end local v2    # "logicalHeight":I
    .end local v18    # "delta":I
    .end local v20    # "flipped":Z
    .end local v23    # "width":I
    .end local v24    # "height":I
    .restart local v8    # "width":I
    .restart local v9    # "height":I
    .restart local v12    # "delta":I
    .restart local v15    # "flipped":Z
    :cond_380
    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v18, v12

    move/from16 v19, v13

    move/from16 v20, v15

    .line 322
    .end local v8    # "width":I
    .end local v9    # "height":I
    .end local v12    # "delta":I
    .end local v13    # "isSecure":Z
    .end local v15    # "flipped":Z
    .restart local v18    # "delta":I
    .restart local v19    # "isSecure":Z
    .restart local v20    # "flipped":Z
    .restart local v23    # "width":I
    .restart local v24    # "height":I
    :goto_38a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 323
    const-string v2, "BlackCoverLayerSurface"

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 325
    invoke-virtual {v0, v7}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackCoverLayer:Landroid/view/SurfaceControl;

    .line 327
    const v2, 0x1eab91

    invoke-virtual {v5, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 328
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackCoverLayer:Landroid/view/SurfaceControl;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 329
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackCoverLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v5, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move/from16 v13, v19

    .line 475
    .end local v19    # "isSecure":Z
    .restart local v13    # "isSecure":Z
    :cond_3b6
    :goto_3b6
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_SURFACE_ALLOC_enabled:Z

    if-eqz v0, :cond_3cf

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0xa1e0f4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v8, 0x0

    invoke-static {v2, v4, v7, v8, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 477
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_3cf
    if-ne v3, v11, :cond_3df

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiFreeFormGestureController:Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    .line 479
    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformGestureControllerStub;->isScreenRotationDisabled()Z

    move-result v0

    if-nez v0, :cond_3df

    .line 480
    invoke-virtual {v1, v5, v11}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotation(Landroid/view/SurfaceControl$Transaction;I)V

    goto :goto_3eb

    .line 485
    :cond_3df
    iput v11, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    .line 486
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 487
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-direct {v1, v5, v0}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotationTransform(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;)V

    .line 489
    :goto_3eb
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 490
    return-void
.end method

.method private setRotationTransform(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;)V
    .registers 12
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .line 510
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 511
    return-void

    .line 513
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 514
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v1, 0x2

    aget v1, v0, v1

    .line 515
    .local v1, "x":F
    const/4 v2, 0x5

    aget v0, v0, v2

    .line 516
    .local v0, "y":F
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 517
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v3, 0x0

    aget v5, v2, v3

    const/4 v3, 0x3

    aget v6, v2, v3

    const/4 v3, 0x1

    aget v7, v2, v3

    const/4 v3, 0x4

    aget v8, v2, v3

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 521
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 522
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 523
    return-void
.end method

.method private startAnimation(Landroid/view/SurfaceControl$Transaction;JFIIII)Z
    .registers 42
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "maxAnimationDuration"    # J
    .param p4, "animationScale"    # F
    .param p5, "finalWidth"    # I
    .param p6, "finalHeight"    # I
    .param p7, "exitAnim"    # I
    .param p8, "enterAnim"    # I

    .line 568
    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    const/4 v9, 0x0

    if-nez v0, :cond_18

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackCoverLayer:Landroid/view/SurfaceControl;

    if-nez v0, :cond_18

    .line 570
    return v9

    .line 573
    :cond_18
    iget-boolean v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    const/4 v10, 0x1

    if-nez v0, :cond_222

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiFreeFormGestureController:Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformGestureControllerStub;->isScreenRotationDisabled()Z

    move-result v0

    if-eqz v0, :cond_2c

    move v7, v10

    move-object/from16 v10, p1

    goto/16 :goto_225

    .line 577
    :cond_2c
    iput-boolean v10, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    .line 580
    iget v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    iget v11, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    invoke-static {v0, v11}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v11

    .line 584
    .local v11, "delta":I
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackCoverLayer:Landroid/view/SurfaceControl;

    const/4 v12, 0x3

    const v13, 0x10a0092

    const/4 v14, 0x2

    if-eqz v0, :cond_63

    .line 585
    const/4 v0, 0x0

    .line 586
    .local v0, "customAnim":Z
    iget-object v15, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v9, 0x10a0075

    invoke-static {v15, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 588
    iget-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v15, 0x10a0074

    invoke-static {v9, v15}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 590
    iget-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    invoke-static {v9, v13}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    move-object/from16 v10, p1

    move v9, v0

    goto/16 :goto_157

    .line 592
    .end local v0    # "customAnim":Z
    :cond_63
    if-eqz v7, :cond_85

    if-eqz v8, :cond_85

    .line 593
    const/4 v0, 0x1

    .line 594
    .restart local v0    # "customAnim":Z
    iget-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    invoke-static {v9, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 595
    iget-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    invoke-static {v9, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 596
    iget-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    invoke-static {v9, v13}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    move-object/from16 v10, p1

    move v9, v0

    goto/16 :goto_157

    .line 599
    .end local v0    # "customAnim":Z
    :cond_85
    const/4 v0, 0x0

    .line 600
    .restart local v0    # "customAnim":Z
    iget v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mMiuiScreenRotationMode:I

    if-eqz v9, :cond_d0

    if-eq v11, v10, :cond_8e

    if-ne v11, v12, :cond_d0

    :cond_8e
    iget-boolean v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mWithinApp:Z

    if-eqz v9, :cond_d0

    .line 603
    iget v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    iget v13, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 604
    .local v9, "logicalHeight":I
    iget v13, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    iget v15, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 605
    .local v13, "logicalWidth":I
    iput v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mMiuiScreenRotation:I

    .line 606
    iget-object v15, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSRAImpl:Lcom/android/server/wm/ScreenRotationAnimationStub;

    iget v10, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    iget v12, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    invoke-interface {v15, v13, v9, v10, v12}, Lcom/android/server/wm/ScreenRotationAnimationStub;->loadExitAnimation(IIII)Landroid/view/animation/Animation;

    move-result-object v10

    iput-object v10, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 608
    iget-object v10, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSRAImpl:Lcom/android/server/wm/ScreenRotationAnimationStub;

    iget v12, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    iget v15, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    iget-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    move-object/from16 v17, v10

    move/from16 v18, v13

    move/from16 v19, v9

    move/from16 v20, v12

    move/from16 v21, v15

    move-object/from16 v22, v14

    move-object/from16 v23, p1

    invoke-interface/range {v17 .. v23}, Lcom/android/server/wm/ScreenRotationAnimationStub;->loadEnterAnimation(IIIILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)Landroid/view/animation/Animation;

    move-result-object v10

    iput-object v10, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 610
    .end local v9    # "logicalHeight":I
    .end local v13    # "logicalWidth":I
    move-object/from16 v10, p1

    goto/16 :goto_156

    :cond_d0
    const/4 v9, 0x2

    if-ne v11, v9, :cond_f1

    .line 611
    const/4 v9, 0x4

    iput v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mMiuiScreenRotation:I

    .line 612
    iget-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSRAImpl:Lcom/android/server/wm/ScreenRotationAnimationStub;

    invoke-interface {v9}, Lcom/android/server/wm/ScreenRotationAnimationStub;->loadRotation180Exit()Landroid/view/animation/Animation;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 613
    iget-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSRAImpl:Lcom/android/server/wm/ScreenRotationAnimationStub;

    invoke-interface {v9}, Lcom/android/server/wm/ScreenRotationAnimationStub;->loadRotation180Enter()Landroid/view/animation/Animation;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 614
    iget-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    move-object/from16 v10, p1

    invoke-virtual {v10, v9}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 615
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mWithinApp:Z

    goto :goto_156

    .line 617
    :cond_f1
    move-object/from16 v10, p1

    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mWithinApp:Z

    .line 619
    packed-switch v11, :pswitch_data_226

    goto :goto_156

    .line 639
    :pswitch_fa
    iget-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v12, 0x10a0097

    invoke-static {v9, v12}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 641
    iget-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v12, 0x10a0096

    invoke-static {v9, v12}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    goto :goto_156

    .line 633
    :pswitch_111
    iget-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v12, 0x10a0090

    invoke-static {v9, v12}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 635
    iget-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v12, 0x10a008f

    invoke-static {v9, v12}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 637
    goto :goto_156

    .line 627
    :pswitch_128
    iget-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v12, 0x10a0099

    invoke-static {v9, v12}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 629
    iget-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v12, 0x10a0098

    invoke-static {v9, v12}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 631
    goto :goto_156

    .line 621
    :pswitch_13f
    iget-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v12, 0x10a008e

    invoke-static {v9, v12}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 623
    iget-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v12, 0x10a008a

    invoke-static {v9, v12}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 625
    nop

    .line 648
    :goto_156
    move v9, v0

    .end local v0    # "customAnim":Z
    .local v9, "customAnim":Z
    :goto_157
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v0, :cond_18c

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    iget v12, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    invoke-static {v12}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .local v12, "protoLogParam1":Ljava/lang/String;
    iget v13, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    invoke-static {v13}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .local v13, "protoLogParam2":Ljava/lang/String;
    sget-object v14, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v15, v7

    const/16 v16, 0x1

    aput-object v12, v15, v16

    const/16 v16, 0x2

    aput-object v13, v15, v16

    move-object/from16 v19, v0

    const v0, -0xa8d6d15

    const/4 v8, 0x0

    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .local v19, "protoLogParam0":Ljava/lang/String;
    invoke-static {v14, v0, v7, v8, v15}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 653
    .end local v12    # "protoLogParam1":Ljava/lang/String;
    .end local v13    # "protoLogParam2":Ljava/lang/String;
    .end local v19    # "protoLogParam0":Ljava/lang/String;
    :cond_18c
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v8, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 654
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 655
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 656
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    iget v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v8, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 657
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 658
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 660
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    .line 661
    iput-boolean v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    .line 662
    const-wide/16 v7, -0x1

    iput-wide v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    .line 664
    if-eqz v9, :cond_1c7

    .line 665
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 666
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 669
    :cond_1c7
    if-eqz v9, :cond_209

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-nez v0, :cond_209

    .line 671
    :try_start_1cd
    new-instance v0, Landroid/graphics/Rect;

    neg-int v7, v5

    neg-int v8, v6

    mul-int/lit8 v12, v5, 0x2

    mul-int/lit8 v13, v6, 0x2

    invoke-direct {v0, v7, v8, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v27, v0

    .line 673
    .local v27, "outer":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-direct {v0, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v28, v0

    .line 674
    .local v28, "inner":Landroid/graphics/Rect;
    new-instance v0, Lcom/android/server/wm/BlackFrame;

    iget-object v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    const v29, 0x1eab90

    iget-object v8, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v31, 0x0

    iget-object v12, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterBlackFrameLayer:Landroid/view/SurfaceControl;

    move-object/from16 v24, v0

    move-object/from16 v25, v7

    move-object/from16 v26, p1

    move-object/from16 v30, v8

    move-object/from16 v32, v12

    invoke-direct/range {v24 .. v32}, Lcom/android/server/wm/BlackFrame;-><init>(Ljava/util/function/Supplier;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;ILcom/android/server/wm/DisplayContent;ZLandroid/view/SurfaceControl;)V

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;
    :try_end_200
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1cd .. :try_end_200} :catch_201

    .line 678
    .end local v27    # "outer":Landroid/graphics/Rect;
    .end local v28    # "inner":Landroid/graphics/Rect;
    goto :goto_209

    .line 676
    :catch_201
    move-exception v0

    .line 677
    .local v0, "e":Landroid/view/Surface$OutOfResourcesException;
    const-string v7, "WindowManager"

    const-string v8, "Unable to allocate black surface"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 683
    .end local v0    # "e":Landroid/view/Surface$OutOfResourcesException;
    :cond_209
    :goto_209
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackCoverLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_213

    .line 684
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceRotationAnimationController:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startBlackCoverAnimation()V

    goto :goto_220

    .line 685
    :cond_213
    if-eqz v9, :cond_21b

    .line 686
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceRotationAnimationController:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startCustomAnimation()V

    goto :goto_220

    .line 689
    :cond_21b
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceRotationAnimationController:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startScreenRotationAnimation()V

    .line 692
    :goto_220
    const/4 v7, 0x1

    return v7

    .line 573
    .end local v9    # "customAnim":Z
    .end local v11    # "delta":I
    :cond_222
    move v7, v10

    move-object/from16 v10, p1

    .line 574
    :goto_225
    return v7

    :pswitch_data_226
    .packed-switch 0x0
        :pswitch_13f
        :pswitch_128
        :pswitch_111
        :pswitch_fa
    .end packed-switch
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 814
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceRotationAnimationController:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    if-eqz v0, :cond_a

    .line 815
    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->cancel()V

    .line 816
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceRotationAnimationController:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    .line 818
    :cond_a
    return-void
.end method

.method public dismiss(Landroid/view/SurfaceControl$Transaction;JFIIII)Z
    .registers 14
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "maxAnimationDuration"    # J
    .param p4, "animationScale"    # F
    .param p5, "finalWidth"    # I
    .param p6, "finalHeight"    # I
    .param p7, "exitAnim"    # I
    .param p8, "enterAnim"    # I

    .line 702
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackCoverLayer:Landroid/view/SurfaceControl;

    if-nez v0, :cond_a

    .line 704
    return v1

    .line 706
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    const/4 v2, 0x1

    if-nez v0, :cond_34

    .line 707
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 708
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getWindowingLayer()Landroid/view/SurfaceControl;

    move-result-object v3

    .line 707
    invoke-static {v0, v3}, Lcom/android/server/wm/utils/RotationAnimationUtils;->getLumaOfSurfaceControl(Landroid/view/Display;Landroid/view/SurfaceControl;)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEndLuma:F

    .line 709
    invoke-direct/range {p0 .. p8}, Lcom/android/server/wm/ScreenRotationAnimation;->startAnimation(Landroid/view/SurfaceControl$Transaction;JFIIII)Z

    .line 711
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_34

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mIsPerfLockAcquired:Z

    if-nez v3, :cond_34

    .line 712
    const/16 v3, 0x1090

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;)I

    .line 713
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mIsPerfLockAcquired:Z

    .line 716
    :cond_34
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    if-nez v0, :cond_39

    .line 717
    return v1

    .line 719
    :cond_39
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    .line 720
    return v2
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 493
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 494
    .local v0, "token":J
    iget-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 495
    iget-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    const-wide v3, 0x10800000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 496
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 497
    return-void
.end method

.method hasBlackCoverLayer()Z
    .registers 2

    .line 505
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackCoverLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method hasScreenshot()Z
    .registers 2

    .line 500
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isAnimating()Z
    .registers 2

    .line 808
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceRotationAnimationController:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    if-eqz v0, :cond_c

    .line 809
    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 808
    :goto_d
    return v0
.end method

.method public isRotating()Z
    .registers 3

    .line 822
    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    iget v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public kill()V
    .registers 7

    .line 724
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceRotationAnimationController:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 725
    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->cancel()V

    .line 726
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceRotationAnimationController:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    .line 731
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackCoverLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_8e

    .line 732
    :cond_13
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_SURFACE_ALLOC_enabled:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x40f3b7ee

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v3, v4, v2, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 733
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_2a
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 739
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_45

    .line 740
    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 741
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 743
    :cond_43
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    .line 745
    :cond_45
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackCoverLayer:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_64

    .line 746
    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 747
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackCoverLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 749
    :cond_54
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    new-instance v4, Lcom/android/server/wm/ScreenRotationAnimation$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/server/wm/ScreenRotationAnimation$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ScreenRotationAnimation;)V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 750
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBlackCoverLayer:Landroid/view/SurfaceControl;

    .line 754
    :cond_64
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterBlackFrameLayer:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_75

    .line 755
    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_73

    .line 756
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterBlackFrameLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 758
    :cond_73
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterBlackFrameLayer:Landroid/view/SurfaceControl;

    .line 760
    :cond_75
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_86

    .line 761
    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_84

    .line 762
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 764
    :cond_84
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    .line 767
    :cond_86
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSRAImpl:Lcom/android/server/wm/ScreenRotationAnimationStub;

    invoke-interface {v3, v0}, Lcom/android/server/wm/ScreenRotationAnimationStub;->kill(Landroid/view/SurfaceControl$Transaction;)V

    .line 769
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 772
    .end local v0    # "t":Landroid/view/SurfaceControl$Transaction;
    :cond_8e
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_97

    .line 773
    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 774
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 776
    :cond_97
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_a0

    .line 777
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 778
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 780
    :cond_a0
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_a9

    .line 781
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 782
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 784
    :cond_a9
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_b2

    .line 785
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 786
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    .line 789
    :cond_b2
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_bf

    iget-boolean v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mIsPerfLockAcquired:Z

    if-eqz v1, :cond_bf

    .line 790
    invoke-virtual {v0}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 791
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mIsPerfLockAcquired:Z

    .line 797
    :cond_bf
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerServiceStub;->isPendingSwitchResolution()Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 798
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerServiceStub;->finishSwitchResolution()V

    .line 801
    :cond_d0
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiFreeFormGestureController:Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    if-eqz v0, :cond_dd

    .line 802
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiFreeFormGestureController:Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformGestureControllerStub;->updateMiniFreeformPosition()V

    .line 805
    :cond_dd
    return-void
.end method

.method synthetic lambda$kill$0$com-android-server-wm-ScreenRotationAnimation()V
    .registers 2

    .line 749
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->finishDisplaySwap()V

    return-void
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 526
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSurface="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 527
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 528
    const-string v0, "mEnteringBlackFrame="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 530
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_35

    .line 531
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/BlackFrame;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 533
    :cond_35
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCurRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 534
    const-string v0, " mOriginalRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 535
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mOriginalWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 536
    const-string v0, " mOriginalHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 537
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStarted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 538
    const-string v0, " mAnimRunning="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 539
    const-string v0, " mFinishAnimReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 540
    const-string v0, " mFinishAnimStartTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 541
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRotateExitAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 542
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 543
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mRotateEnterAnimation="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 544
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 545
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSnapshotInitialMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 547
    return-void
.end method

.method public setRotation(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 7
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "rotation"    # I

    .line 550
    iput p2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    .line 555
    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    invoke-static {p2, v0}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v0

    .line 556
    .local v0, "delta":I
    iget v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/utils/RotationAnimationUtils;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 558
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotationTransform(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;)V

    .line 559
    return-void
.end method
