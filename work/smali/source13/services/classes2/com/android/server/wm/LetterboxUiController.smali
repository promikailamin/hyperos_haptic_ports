.class final Lcom/android/server/wm/LetterboxUiController;
.super Ljava/lang/Object;
.source "LetterboxUiController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field private final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field private mExpandedTaskBarHeight:F

.field private mLetterbox:Lcom/android/server/wm/Letterbox;

.field private final mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

.field private mShowWallpaperForLetterboxBackground:Z

.field private final mTmpPoint:Landroid/graphics/Point;


# direct methods
.method public static synthetic $r8$lambda$DIhAijq-KhVjSJ2n6hNPfk5AiZ8(Lcom/android/server/wm/LetterboxUiController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/LetterboxUiController;->handleDoubleTap(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$OsbEBblNbTAD_wdzLWiqz4azxxk(Lcom/android/server/wm/LetterboxUiController;)F
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/LetterboxUiController;->getLetterboxWallpaperDarkScrimAlpha()F

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ZguxgCbWfDKtLBV-5X0ISnY4qAc(Lcom/android/server/wm/LetterboxUiController;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/LetterboxUiController;->getLetterboxWallpaperBlurRadius()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fbXQOb38bMYnfh1EWVA42TFBP0o(Lcom/android/server/wm/LetterboxUiController;)Landroid/graphics/Color;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/LetterboxUiController;->getLetterboxBackgroundColor()Landroid/graphics/Color;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jUi2GqCCynDmaylgZ_7r_wTiw1c(Lcom/android/server/wm/LetterboxUiController;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/LetterboxUiController;->shouldLetterboxHaveRoundedCorners()Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/ActivityRecord;)V
    .registers 5
    .param p1, "wmService"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mTmpPoint:Landroid/graphics/Point;

    .line 81
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    iput-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    .line 85
    iput-object p2, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 86
    nop

    .line 87
    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/wm/LetterboxUiController;->mExpandedTaskBarHeight:F

    .line 88
    return-void
.end method

.method private getInsetsStateCornerRadius(Landroid/view/InsetsState;I)I
    .registers 5
    .param p1, "insetsState"    # Landroid/view/InsetsState;
    .param p2, "position"    # I

    .line 475
    invoke-virtual {p1}, Landroid/view/InsetsState;->getRoundedCorners()Landroid/view/RoundedCorners;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/RoundedCorners;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v0

    .line 476
    .local v0, "corner":Landroid/view/RoundedCorner;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {v0}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v1

    :goto_10
    return v1
.end method

.method private getLetterboxBackgroundColor()Landroid/graphics/Color;
    .registers 7

    .line 372
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 373
    .local v0, "w":Lcom/android/server/wm/WindowState;
    const/high16 v1, -0x1000000

    if-eqz v0, :cond_7a

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isLetterboxedForDisplayCutout()Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_7a

    .line 376
    :cond_11
    iget-object v2, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    .line 377
    invoke-virtual {v2}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxBackgroundType()I

    move-result v2

    .line 378
    .local v2, "letterboxBackgroundType":I
    iget-object v3, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 379
    .local v3, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    packed-switch v2, :pswitch_data_80

    .line 403
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected letterbox background type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 391
    :pswitch_37
    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxUiController;->hasWallpaperBackgroudForLetterbox()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 393
    invoke-static {v1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v1

    return-object v1

    .line 395
    :cond_42
    const-string v1, "ActivityTaskManager"

    const-string v4, "Wallpaper option is selected for letterbox background but blur is not supported by a device or not supported in the current window configuration or both alpha scrim and blur radius aren\'t provided so using solid color background"

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    goto :goto_6c

    .line 381
    :pswitch_4a
    if-eqz v3, :cond_6c

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColorFloating()I

    move-result v1

    if-eqz v1, :cond_6c

    .line 382
    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColorFloating()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v1

    return-object v1

    .line 386
    :pswitch_5b
    if-eqz v3, :cond_6c

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v1

    if-eqz v1, :cond_6c

    .line 387
    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v1

    return-object v1

    .line 408
    :cond_6c
    :goto_6c
    iget-object v1, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {v1}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxBackgroundColor()Landroid/graphics/Color;

    move-result-object v1

    return-object v1

    .line 401
    :pswitch_73
    iget-object v1, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {v1}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxBackgroundColor()Landroid/graphics/Color;

    move-result-object v1

    return-object v1

    .line 374
    .end local v2    # "letterboxBackgroundType":I
    .end local v3    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    :cond_7a
    :goto_7a
    invoke-static {v1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_73
        :pswitch_5b
        :pswitch_4a
        :pswitch_37
    .end packed-switch
.end method

.method private getLetterboxReasonString(Lcom/android/server/wm/WindowState;)Ljava/lang/String;
    .registers 3
    .param p1, "mainWin"    # Lcom/android/server/wm/WindowState;

    .line 571
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->inSizeCompatMode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 572
    const-string v0, "SIZE_COMPAT_MODE"

    return-object v0

    .line 574
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isLetterboxedForFixedOrientationAndAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 575
    const-string v0, "FIXED_ORIENTATION"

    return-object v0

    .line 577
    :cond_16
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isLetterboxedForDisplayCutout()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 578
    const-string v0, "DISPLAY_CUTOUT"

    return-object v0

    .line 582
    :cond_1f
    invoke-static {}, Landroid/util/MiuiAppSizeCompatModeStub;->get()Landroid/util/MiuiAppSizeCompatModeStub;

    move-result-object v0

    invoke-interface {v0}, Landroid/util/MiuiAppSizeCompatModeStub;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mBoundsCompatControllerStub:Lcom/android/server/wm/BoundsCompatControllerStub;

    .line 583
    invoke-virtual {v0}, Lcom/android/server/wm/BoundsCompatControllerStub;->areBoundsLetterboxed()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 584
    const-string v0, "MIUI_SIZE_COMPAT_MODE"

    return-object v0

    .line 588
    :cond_36
    const-string v0, "UNKNOWN_REASON"

    return-object v0
.end method

.method private getLetterboxWallpaperBlurRadius()I
    .registers 3

    .line 504
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxBackgroundWallpaperBlurRadius()I

    move-result v0

    .line 505
    .local v0, "blurRadius":I
    if-gez v0, :cond_a

    const/4 v1, 0x0

    goto :goto_b

    :cond_a
    move v1, v0

    :goto_b
    return v1
.end method

.method private getLetterboxWallpaperDarkScrimAlpha()F
    .registers 4

    .line 509
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxBackgroundWallpaperDarkScrimAlpha()F

    move-result v0

    .line 511
    .local v0, "alpha":F
    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-ltz v2, :cond_13

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_12

    goto :goto_13

    :cond_12
    move v1, v0

    :cond_13
    :goto_13
    return v1
.end method

.method private getRoundedCorners(Landroid/view/InsetsState;)I
    .registers 4
    .param p1, "insetsState"    # Landroid/view/InsetsState;

    .line 465
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxActivityCornersRadius()I

    move-result v0

    if-ltz v0, :cond_f

    .line 466
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxActivityCornersRadius()I

    move-result v0

    return v0

    .line 468
    :cond_f
    const/4 v0, 0x3

    .line 469
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/LetterboxUiController;->getInsetsStateCornerRadius(Landroid/view/InsetsState;I)I

    move-result v0

    const/4 v1, 0x2

    .line 470
    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/LetterboxUiController;->getInsetsStateCornerRadius(Landroid/view/InsetsState;I)I

    move-result v1

    .line 468
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private handleDoubleTap(I)V
    .registers 3
    .param p1, "x"    # I

    .line 284
    invoke-direct {p0}, Lcom/android/server/wm/LetterboxUiController;->isReachabilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isInTransition()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_49

    .line 288
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox;->getInnerFrame()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-gt v0, p1, :cond_24

    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox;->getInnerFrame()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-lt v0, p1, :cond_24

    .line 290
    return-void

    .line 293
    :cond_24
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox;->getInnerFrame()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-le v0, p1, :cond_34

    .line 295
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/LetterboxConfiguration;->movePositionForReachabilityToNextLeftStop()V

    goto :goto_43

    .line 296
    :cond_34
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox;->getInnerFrame()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-ge v0, p1, :cond_43

    .line 298
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/LetterboxConfiguration;->movePositionForReachabilityToNextRightStop()V

    .line 302
    :cond_43
    :goto_43
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->recomputeConfiguration()V

    .line 303
    return-void

    .line 285
    :cond_49
    :goto_49
    return-void
.end method

.method private isLetterboxWallpaperBlurSupported()Z
    .registers 3

    .line 515
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    iget-object v0, v0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 516
    invoke-interface {v0}, Landroid/view/WindowManager;->isCrossWindowBlurEnabled()Z

    move-result v0

    .line 515
    return v0
.end method

.method private isLetterboxedNotForDisplayCutout(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p1, "mainWindow"    # Lcom/android/server/wm/WindowState;

    .line 480
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LetterboxUiController;->shouldShowLetterboxUi(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 481
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isLetterboxedForDisplayCutout()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 480
    :goto_f
    return v0
.end method

.method private isReachabilityEnabled()Z
    .registers 2

    .line 324
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/LetterboxUiController;->isReachabilityEnabled(Landroid/content/res/Configuration;)Z

    move-result v0

    return v0
.end method

.method private isReachabilityEnabled(Landroid/content/res/Configuration;)Z
    .registers 5
    .param p1, "parentConfiguration"    # Landroid/content/res/Configuration;

    .line 316
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/LetterboxConfiguration;->getIsReachabilityEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1f

    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 317
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    if-ne v0, v1, :cond_1f

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1f

    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 320
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation()I

    move-result v0

    if-ne v0, v1, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    .line 316
    :goto_20
    return v1
.end method

.method private shouldLetterboxHaveRoundedCorners()Z
    .registers 2

    .line 237
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/LetterboxConfiguration;->isLetterboxActivityCornersRounded()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 238
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 237
    :goto_13
    return v0
.end method

.method private updateRoundedCorners(Lcom/android/server/wm/WindowState;)V
    .registers 9
    .param p1, "mainWindow"    # Lcom/android/server/wm/WindowState;

    .line 412
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getClientViewRootSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 413
    .local v0, "windowSurface":Landroid/view/SurfaceControl;
    if-eqz v0, :cond_97

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_97

    .line 414
    iget-object v1, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 416
    .local v1, "transaction":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getInsetsState()Landroid/view/InsetsState;

    move-result-object v2

    .line 417
    .local v2, "insetsState":Landroid/view/InsetsState;
    const/16 v3, 0x15

    .line 418
    invoke-virtual {v2, v3}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    .line 420
    .local v3, "taskbarInsetsSource":Landroid/view/InsetsSource;
    invoke-direct {p0, p1}, Lcom/android/server/wm/LetterboxUiController;->isLetterboxedNotForDisplayCutout(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    if-eqz v4, :cond_8d

    iget-object v4, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    .line 421
    invoke-virtual {v4}, Lcom/android/server/wm/LetterboxConfiguration;->isLetterboxActivityCornersRounded()Z

    move-result v4

    if-eqz v4, :cond_8d

    if-nez v3, :cond_2d

    goto :goto_8d

    .line 429
    :cond_2d
    const/4 v4, 0x0

    .line 437
    .local v4, "cropBounds":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/wm/LetterboxUiController;->mExpandedTaskBarHeight:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_7f

    .line 438
    invoke-virtual {v3}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 439
    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v4, v5

    .line 443
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 445
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 446
    invoke-virtual {v3}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 447
    iget-object v5, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->inSizeCompatMode()Z

    move-result v5

    if-eqz v5, :cond_7f

    iget-object v5, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 448
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getSizeCompatScale()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_7f

    .line 449
    iget-object v5, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getSizeCompatScale()F

    move-result v5

    div-float/2addr v6, v5

    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->scale(F)V

    .line 453
    :cond_7f
    nop

    .line 454
    invoke-virtual {v1, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    .line 455
    invoke-direct {p0, v2}, Lcom/android/server/wm/LetterboxUiController;->getRoundedCorners(Landroid/view/InsetsState;)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v0, v6}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_97

    .line 423
    .end local v4    # "cropBounds":Landroid/graphics/Rect;
    :cond_8d
    :goto_8d
    const/4 v4, 0x0

    .line 424
    invoke-virtual {v1, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    const/4 v5, 0x0

    .line 425
    invoke-virtual {v4, v0, v5}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 426
    return-void

    .line 457
    .end local v1    # "transaction":Landroid/view/SurfaceControl$Transaction;
    .end local v2    # "insetsState":Landroid/view/InsetsState;
    .end local v3    # "taskbarInsetsSource":Landroid/view/InsetsSource;
    :cond_97
    :goto_97
    return-void
.end method

.method private updateWallpaperForLetterbox(Lcom/android/server/wm/WindowState;)V
    .registers 5
    .param p1, "mainWindow"    # Lcom/android/server/wm/WindowState;

    .line 485
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    .line 486
    invoke-virtual {v0}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxBackgroundType()I

    move-result v0

    .line 487
    .local v0, "letterboxBackgroundType":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2c

    .line 490
    invoke-direct {p0, p1}, Lcom/android/server/wm/LetterboxUiController;->isLetterboxedNotForDisplayCutout(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 492
    invoke-direct {p0}, Lcom/android/server/wm/LetterboxUiController;->getLetterboxWallpaperBlurRadius()I

    move-result v1

    if-gtz v1, :cond_1e

    .line 493
    invoke-direct {p0}, Lcom/android/server/wm/LetterboxUiController;->getLetterboxWallpaperDarkScrimAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2c

    .line 495
    :cond_1e
    invoke-direct {p0}, Lcom/android/server/wm/LetterboxUiController;->getLetterboxWallpaperBlurRadius()I

    move-result v1

    if-lez v1, :cond_2a

    .line 496
    invoke-direct {p0}, Lcom/android/server/wm/LetterboxUiController;->isLetterboxWallpaperBlurSupported()Z

    move-result v1

    if-eqz v1, :cond_2c

    :cond_2a
    const/4 v1, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    .line 497
    .local v1, "wallpaperShouldBeShown":Z
    :goto_2d
    iget-boolean v2, p0, Lcom/android/server/wm/LetterboxUiController;->mShowWallpaperForLetterboxBackground:Z

    if-eq v2, v1, :cond_38

    .line 498
    iput-boolean v1, p0, Lcom/android/server/wm/LetterboxUiController;->mShowWallpaperForLetterboxBackground:Z

    .line 499
    iget-object v2, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->requestUpdateWallpaperIfNeeded()V

    .line 501
    :cond_38
    return-void
.end method


# virtual methods
.method destroy()V
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v0, :cond_a

    .line 93
    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox;->destroy()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    .line 96
    :cond_a
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 520
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 521
    .local v0, "mainWin":Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_9

    .line 522
    return-void

    .line 525
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->areAppWindowBoundsLetterboxed()Z

    move-result v1

    .line 526
    .local v1, "areBoundsLetterboxed":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "areBoundsLetterboxed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 527
    if-nez v1, :cond_2a

    .line 528
    return-void

    .line 531
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  letterboxReason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/android/server/wm/LetterboxUiController;->getLetterboxReasonString(Lcom/android/server/wm/WindowState;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  activityAspectRatio="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 533
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/ActivityRecord;->computeAspectRatio(Landroid/graphics/Rect;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 532
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 535
    invoke-virtual {p0, v0}, Lcom/android/server/wm/LetterboxUiController;->shouldShowLetterboxUi(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    .line 536
    .local v2, "shouldShowLetterboxUi":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "shouldShowLetterboxUi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 538
    if-nez v2, :cond_8e

    .line 539
    return-void

    .line 541
    :cond_8e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  letterboxBackgroundColor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 542
    invoke-direct {p0}, Lcom/android/server/wm/LetterboxUiController;->getLetterboxBackgroundColor()Landroid/graphics/Color;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Color;->toArgb()I

    move-result v4

    .line 541
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 543
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  letterboxBackgroundType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    .line 545
    invoke-virtual {v4}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxBackgroundType()I

    move-result v4

    .line 544
    invoke-static {v4}, Lcom/android/server/wm/LetterboxConfiguration;->letterboxBackgroundTypeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 543
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 546
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  letterboxCornerRadius="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 547
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getInsetsState()Landroid/view/InsetsState;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wm/LetterboxUiController;->getRoundedCorners(Landroid/view/InsetsState;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 546
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 548
    iget-object v3, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {v3}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxBackgroundType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_15d

    .line 550
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  isLetterboxWallpaperBlurSupported="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 551
    invoke-direct {p0}, Lcom/android/server/wm/LetterboxUiController;->isLetterboxWallpaperBlurSupported()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 550
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 552
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  letterboxBackgroundWallpaperDarkScrimAlpha="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 553
    invoke-direct {p0}, Lcom/android/server/wm/LetterboxUiController;->getLetterboxWallpaperDarkScrimAlpha()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 552
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  letterboxBackgroundWallpaperBlurRadius="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 555
    invoke-direct {p0}, Lcom/android/server/wm/LetterboxUiController;->getLetterboxWallpaperBlurRadius()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 554
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    :cond_15d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  isReachabilityEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/wm/LetterboxUiController;->isReachabilityEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 559
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  letterboxHorizontalPositionMultiplier="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 560
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wm/LetterboxUiController;->getHorizontalPositionMultiplier(Landroid/content/res/Configuration;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 559
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  fixedOrientationLetterboxAspectRatio="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 563
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 562
    invoke-virtual {p0, v4}, Lcom/android/server/wm/LetterboxUiController;->getFixedOrientationLetterboxAspectRatio(Landroid/content/res/Configuration;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 561
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    return-void
.end method

.method getFixedOrientationLetterboxAspectRatio(Landroid/content/res/Configuration;)F
    .registers 8
    .param p1, "parentConfiguration"    # Landroid/content/res/Configuration;

    .line 255
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 256
    invoke-interface {v0, v1}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->getFixedOrientationLetterboxAspectRatio(Lcom/android/server/wm/ActivityRecord;)F

    move-result v0

    .line 257
    .local v0, "ratio":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_10

    .line 258
    return v0

    .line 261
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/server/wm/LetterboxUiController;->isReachabilityEnabled(Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 262
    iget-object v1, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {v1}, Lcom/android/server/wm/LetterboxConfiguration;->getFixedOrientationLetterboxAspectRatio()F

    move-result v1

    return v1

    .line 265
    :cond_1d
    nop

    .line 266
    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105013c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 267
    .local v1, "dividerWindowWidth":I
    nop

    .line 268
    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105013b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 269
    .local v2, "dividerInsets":I
    mul-int/lit8 v3, v2, 0x2

    sub-int v3, v1, v3

    .line 272
    .local v3, "dividerSize":I
    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 273
    .local v4, "bounds":Landroid/graphics/Rect;
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/graphics/Rect;->inset(II)V

    .line 274
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 276
    invoke-static {v4}, Lcom/android/server/wm/ActivityRecord;->computeAspectRatio(Landroid/graphics/Rect;)F

    move-result v5

    return v5
.end method

.method getHorizontalPositionMultiplier(Landroid/content/res/Configuration;)F
    .registers 3
    .param p1, "parentConfiguration"    # Landroid/content/res/Configuration;

    .line 244
    invoke-direct {p0, p1}, Lcom/android/server/wm/LetterboxUiController;->isReachabilityEnabled(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 247
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/LetterboxConfiguration;->getHorizontalMultiplierForReachability()F

    move-result v0

    goto :goto_13

    .line 248
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxHorizontalPositionMultiplier()F

    move-result v0

    .line 244
    :goto_13
    return v0
.end method

.method getLetterboxInnerBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 119
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v0, :cond_c

    .line 120
    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox;->getInnerFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_f

    .line 122
    :cond_c
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 124
    :goto_f
    return-void
.end method

.method getLetterboxInsets()Landroid/graphics/Rect;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v0, :cond_9

    .line 111
    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 113
    :cond_9
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public getOuter()Landroid/graphics/Rect;
    .registers 2

    .line 593
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v0, :cond_9

    .line 594
    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox;->getOuter()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 596
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method getResources()Landroid/content/res/Resources;
    .registers 2

    .line 280
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method hasWallpaperBackgroudForLetterbox()Z
    .registers 2

    .line 105
    iget-boolean v0, p0, Lcom/android/server/wm/LetterboxUiController;->mShowWallpaperForLetterboxBackground:Z

    return v0
.end method

.method isFullyTransparentBarAllowed(Landroid/graphics/Rect;)Z
    .registers 5
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 132
    invoke-static {}, Landroid/util/MiuiAppSizeCompatModeStub;->get()Landroid/util/MiuiAppSizeCompatModeStub;

    move-result-object v0

    invoke-interface {v0}, Landroid/util/MiuiAppSizeCompatModeStub;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->inMiuiSizeCompatMode()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 133
    return v1

    .line 139
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v0, :cond_2a

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Letterbox;->notIntersectsOrFullyContains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 140
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-interface {v0, v2}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->isFullyTransparentBarAllowed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_2a
    const/4 v1, 0x1

    .line 139
    :cond_2b
    return v1
.end method

.method isSurfaceReadyAndVisible(Lcom/android/server/wm/WindowState;)Z
    .registers 6
    .param p1, "mainWindow"    # Lcom/android/server/wm/WindowState;

    .line 360
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_11

    .line 362
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    move v0, v1

    goto :goto_12

    :cond_11
    :goto_11
    move v0, v2

    .line 365
    .local v0, "surfaceReady":Z
    :goto_12
    if-nez v0, :cond_24

    iget-object v3, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->inMiuiSizeCompatMode()Z

    move-result v3

    if-nez v3, :cond_24

    iget-object v3, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    move-result v3

    if-eqz v3, :cond_35

    :cond_24
    iget-object v3, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 366
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v3

    if-nez v3, :cond_36

    iget-object v3, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 368
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isVisibleRequested()Z

    move-result v3

    if-eqz v3, :cond_35

    goto :goto_36

    :cond_35
    goto :goto_37

    :cond_36
    :goto_36
    move v1, v2

    .line 365
    :goto_37
    return v1
.end method

.method synthetic lambda$layoutLetterbox$0$com-android-server-wm-LetterboxUiController()Landroid/view/SurfaceControl$Builder;
    .registers 4

    .line 193
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->inMiuiHoverWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_20

    .line 194
    invoke-static {}, Lcom/android/server/wm/ActivityRecordStub;->get()Lcom/android/server/wm/ActivityRecordStub;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-interface {v0, v2}, Lcom/android/server/wm/ActivityRecordStub;->isAddLetterBoxForEmbedded(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 195
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    goto :goto_26

    .line 196
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 193
    :goto_26
    return-object v0
.end method

.method layoutLetterbox(Lcom/android/server/wm/WindowState;)V
    .registers 15
    .param p1, "winHint"    # Lcom/android/server/wm/WindowState;

    .line 167
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 168
    .local v0, "w":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_ec

    if-eqz p1, :cond_e

    if-eq v0, p1, :cond_e

    goto/16 :goto_ec

    .line 179
    :cond_e
    invoke-direct {p0, v0}, Lcom/android/server/wm/LetterboxUiController;->updateRoundedCorners(Lcom/android/server/wm/WindowState;)V

    .line 182
    iget-object v1, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 184
    .local v1, "nonStartingAppW":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_1f

    if-eq v1, v0, :cond_1f

    .line 185
    invoke-direct {p0, v1}, Lcom/android/server/wm/LetterboxUiController;->updateRoundedCorners(Lcom/android/server/wm/WindowState;)V

    .line 188
    :cond_1f
    invoke-direct {p0, v0}, Lcom/android/server/wm/LetterboxUiController;->updateWallpaperForLetterbox(Lcom/android/server/wm/WindowState;)V

    .line 189
    invoke-virtual {p0, v0}, Lcom/android/server/wm/LetterboxUiController;->shouldShowLetterboxUi(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-eqz v3, :cond_e2

    .line 190
    iget-object v3, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-nez v3, :cond_60

    .line 193
    new-instance v3, Lcom/android/server/wm/Letterbox;

    new-instance v5, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/LetterboxUiController;)V

    iget-object v4, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v4, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    new-instance v7, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0}, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/LetterboxUiController;)V

    new-instance v8, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda2;

    invoke-direct {v8, p0}, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/LetterboxUiController;)V

    new-instance v9, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda3;

    invoke-direct {v9, p0}, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/LetterboxUiController;)V

    new-instance v10, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda4;

    invoke-direct {v10, p0}, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/LetterboxUiController;)V

    new-instance v11, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda5;

    invoke-direct {v11, p0}, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/LetterboxUiController;)V

    new-instance v12, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda6;

    invoke-direct {v12, p0}, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/LetterboxUiController;)V

    move-object v4, v3

    invoke-direct/range {v4 .. v12}, Lcom/android/server/wm/Letterbox;-><init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/IntConsumer;)V

    iput-object v3, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    .line 205
    invoke-virtual {v3, v0}, Lcom/android/server/wm/Letterbox;->attachInput(Lcom/android/server/wm/WindowState;)V

    .line 207
    :cond_60
    iget-object v3, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, p0, Lcom/android/server/wm/LetterboxUiController;->mTmpPoint:Landroid/graphics/Point;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityRecord;->getPosition(Landroid/graphics/Point;)V

    .line 212
    iget-object v3, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getFixedRotationTransformDisplayBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 213
    .local v3, "transformedBounds":Landroid/graphics/Rect;
    if-eqz v3, :cond_71

    .line 214
    move-object v4, v3

    goto :goto_92

    .line 215
    :cond_71
    iget-object v4, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->inMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_84

    .line 216
    iget-object v4, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    goto :goto_92

    .line 217
    :cond_84
    iget-object v4, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    :goto_92
    nop

    .line 219
    .local v4, "spaceToFill":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 220
    .local v5, "windowFrame":Landroid/graphics/Rect;
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-interface {v6, v7, v5}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->getScaleAppsFrame(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)V

    .line 221
    invoke-static {}, Lcom/android/server/wm/ActivityRecordStub;->get()Lcom/android/server/wm/ActivityRecordStub;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->inMiuiHoverWindowingMode()Z

    move-result v7

    if-nez v7, :cond_bf

    .line 222
    invoke-static {}, Lcom/android/server/wm/ActivityRecordStub;->get()Lcom/android/server/wm/ActivityRecordStub;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-interface {v7, v8}, Lcom/android/server/wm/ActivityRecordStub;->isAddLetterBoxForEmbedded(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v7

    if-eqz v7, :cond_bf

    const/4 v2, 0x1

    goto :goto_c0

    :cond_bf
    nop

    .line 221
    :goto_c0
    invoke-interface {v6, v2, v4, v5}, Lcom/android/server/wm/ActivityRecordStub;->updateSpaceToFill(ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 224
    invoke-static {}, Lcom/android/server/wm/ActivityRecordStub;->get()Lcom/android/server/wm/ActivityRecordStub;

    move-result-object v2

    .line 225
    invoke-static {}, Lcom/android/server/wm/ActivityRecordStub;->get()Lcom/android/server/wm/ActivityRecordStub;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-interface {v6, v7}, Lcom/android/server/wm/ActivityRecordStub;->isAddLetterBoxForEmbedded(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v6

    iget-object v7, p0, Lcom/android/server/wm/LetterboxUiController;->mTmpPoint:Landroid/graphics/Point;

    .line 224
    invoke-interface {v2, v6, v7}, Lcom/android/server/wm/ActivityRecordStub;->updateLatterboxParam(ZLandroid/graphics/Point;)V

    .line 228
    iget-object v2, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/LetterboxUiController;->mTmpPoint:Landroid/graphics/Point;

    invoke-virtual {v2, v4, v6, v7}, Lcom/android/server/wm/Letterbox;->layout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    .end local v3    # "transformedBounds":Landroid/graphics/Rect;
    .end local v4    # "spaceToFill":Landroid/graphics/Rect;
    .end local v5    # "windowFrame":Landroid/graphics/Rect;
    goto :goto_ea

    .line 229
    :cond_e2
    iget-object v2, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v2, :cond_ea

    .line 230
    invoke-virtual {v2}, Lcom/android/server/wm/Letterbox;->hide()V

    goto :goto_eb

    .line 229
    :cond_ea
    :goto_ea
    nop

    .line 232
    :goto_eb
    return-void

    .line 170
    .end local v1    # "nonStartingAppW":Lcom/android/server/wm/WindowState;
    :cond_ec
    :goto_ec
    invoke-static {}, Lcom/android/server/wm/ActivityRecordStub;->get()Lcom/android/server/wm/ActivityRecordStub;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-interface {v1, v2}, Lcom/android/server/wm/ActivityRecordStub;->isAddLetterBoxForEmbedded(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-nez v1, :cond_100

    iget-object v1, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->inMiuiSizeCompatMode()Z

    move-result v1

    if-eqz v1, :cond_10f

    :cond_100
    if-eqz v0, :cond_108

    .line 171
    invoke-virtual {p0, v0}, Lcom/android/server/wm/LetterboxUiController;->shouldShowLetterboxUi(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-nez v1, :cond_10f

    .line 172
    :cond_108
    iget-object v1, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v1, :cond_10f

    .line 173
    invoke-virtual {v1}, Lcom/android/server/wm/Letterbox;->hide()V

    .line 177
    :cond_10f
    return-void
.end method

.method onMovedToDisplay(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 99
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v0, :cond_7

    .line 100
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Letterbox;->onMovedToDisplay(I)V

    .line 102
    :cond_7
    return-void
.end method

.method shouldShowLetterboxUi(Lcom/android/server/wm/WindowState;)Z
    .registers 4
    .param p1, "mainWindow"    # Lcom/android/server/wm/WindowState;

    .line 330
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_15

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mEnableHoverMode:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->inMiuiHoverWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 331
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LetterboxUiController;->isSurfaceReadyAndVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0

    .line 335
    :cond_15
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LetterboxUiController;->isSurfaceReadyAndVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->areAppWindowBoundsLetterboxed()Z

    move-result v0

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 339
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v0

    if-nez v0, :cond_51

    .line 340
    invoke-static {}, Landroid/util/MiuiAppSizeCompatModeStub;->get()Landroid/util/MiuiAppSizeCompatModeStub;

    move-result-object v0

    invoke-interface {v0}, Landroid/util/MiuiAppSizeCompatModeStub;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mBoundsCompatControllerStub:Lcom/android/server/wm/BoundsCompatControllerStub;

    .line 341
    invoke-virtual {v0}, Lcom/android/server/wm/BoundsCompatControllerStub;->shouldShowLetterboxUi()Z

    move-result v0

    if-nez v0, :cond_51

    .line 342
    :cond_3d
    invoke-static {}, Lcom/android/server/wm/ActivityRecordStub;->get()Lcom/android/server/wm/ActivityRecordStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-interface {v0, v1}, Lcom/android/server/wm/ActivityRecordStub;->isAddLetterBoxForEmbedded(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 343
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_88

    :cond_51
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-nez v0, :cond_88

    .line 350
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isHoldOn()Z

    move-result v0

    if-nez v0, :cond_88

    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 351
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 352
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 353
    invoke-static {}, Lcom/android/server/wm/ActivityRecordStub;->get()Lcom/android/server/wm/ActivityRecordStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-interface {v0, v1}, Lcom/android/server/wm/ActivityRecordStub;->isAddLetterBoxForEmbedded(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_86

    .line 354
    :cond_80
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isLetterboxedForDisplayCutout()Z

    move-result v0

    if-eqz v0, :cond_88

    :cond_86
    const/4 v0, 0x1

    goto :goto_89

    :cond_88
    const/4 v0, 0x0

    .line 335
    :goto_89
    return v0
.end method

.method updateLetterboxSurface(Lcom/android/server/wm/WindowState;)V
    .registers 5
    .param p1, "winHint"    # Lcom/android/server/wm/WindowState;

    .line 145
    iget-object v0, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 146
    .local v0, "w":Lcom/android/server/wm/WindowState;
    if-eq v0, p1, :cond_d

    if-eqz p1, :cond_d

    if-eqz v0, :cond_d

    .line 147
    return-void

    .line 149
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LetterboxUiController;->layoutLetterbox(Lcom/android/server/wm/WindowState;)V

    .line 150
    iget-object v1, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Lcom/android/server/wm/Letterbox;->needsApplySurfaceChanges()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 151
    iget-object v1, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    iget-object v2, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Letterbox;->applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;)V

    .line 154
    :cond_25
    iget-object v1, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v1, :cond_35

    invoke-virtual {v1}, Lcom/android/server/wm/Letterbox;->darkModeChanged()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 155
    iget-object v1, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Letterbox;->redraw(Z)V

    .line 159
    :cond_35
    iget-object v1, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityRecord;->mIsCastMode:Z

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v1, :cond_4d

    .line 160
    invoke-virtual {v1}, Lcom/android/server/wm/Letterbox;->hide()V

    .line 161
    iget-object v1, p0, Lcom/android/server/wm/LetterboxUiController;->mLetterbox:Lcom/android/server/wm/Letterbox;

    iget-object v2, p0, Lcom/android/server/wm/LetterboxUiController;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Letterbox;->applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;)V

    .line 164
    :cond_4d
    return-void
.end method
