.class Lcom/android/server/wm/WallpaperController;
.super Ljava/lang/Object;
.source "WallpaperController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final WALLPAPER_DRAW_NORMAL:I = 0x0

.field private static final WALLPAPER_DRAW_PENDING:I = 0x1

.field private static final WALLPAPER_DRAW_PENDING_TIMEOUT_DURATION:J = 0x1f4L

.field private static final WALLPAPER_DRAW_TIMEOUT:I = 0x2

.field private static final WALLPAPER_TIMEOUT:J = 0x96L

.field private static final WALLPAPER_TIMEOUT_RECOVERY:J = 0x2710L


# instance fields
.field private mComputeMaxZoomOutFunction:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

.field private final mFindWallpaperTargetFunction:Lcom/android/internal/util/ToBooleanFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mLastFrozen:Z

.field private mLastWallpaperDisplayOffsetX:I

.field private mLastWallpaperDisplayOffsetY:I

.field private mLastWallpaperTimeoutTime:J

.field private mLastWallpaperX:F

.field private mLastWallpaperXStep:F

.field private mLastWallpaperY:F

.field private mLastWallpaperYStep:F

.field private mLastWallpaperZoomOut:F

.field private final mMaxWallpaperScale:F

.field private mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

.field private mService:Lcom/android/server/wm/WindowManagerService;

.field private mShouldUpdateZoom:Z

.field private mShowWallpaperForUnocclude:Z

.field private mTmpTopWallpaper:Lcom/android/server/wm/WindowState;

.field public mUseTopWallpaperAsTarget:Z

.field private mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

.field private mWallpaperAnimationTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/WallpaperAnimationTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mWallpaperDrawState:I

.field private mWallpaperTarget:Lcom/android/server/wm/WindowState;

.field private final mWallpaperTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WallpaperWindowToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 78
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 80
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    .line 81
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    .line 82
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    .line 83
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    .line 84
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    .line 85
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    .line 86
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    .line 89
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WallpaperController;->mLastFrozen:Z

    .line 107
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 112
    iput-boolean v1, p0, Lcom/android/server/wm/WallpaperController;->mUseTopWallpaperAsTarget:Z

    .line 113
    iput-boolean v1, p0, Lcom/android/server/wm/WallpaperController;->mShowWallpaperForUnocclude:Z

    .line 122
    new-instance v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-direct {v1, v0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;-><init>(Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult-IA;)V

    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .line 124
    new-instance v0, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WallpaperController;)V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindWallpaperTargetFunction:Lcom/android/internal/util/ToBooleanFunction;

    .line 234
    new-instance v0, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WallpaperController;)V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mComputeMaxZoomOutFunction:Ljava/util/function/Consumer;

    .line 887
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperAnimationTargets:Ljava/util/ArrayList;

    .line 242
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 243
    iput-object p2, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 244
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 245
    const v1, 0x10500e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mMaxWallpaperScale:F

    .line 248
    invoke-static {}, Lcom/android/server/wm/WallpaperControllerStub;->getInstance()Lcom/android/server/wm/WallpaperControllerStub;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/server/wm/WallpaperControllerStub;->getLastWallpaperX(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    .line 249
    return-void
.end method

.method private canScreenshotWallpaper(Lcom/android/server/wm/WindowState;)Z
    .registers 5
    .param p1, "wallpaperWindowState"    # Lcom/android/server/wm/WindowState;

    .line 826
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    const-string v1, "WindowManager"

    const/4 v2, 0x0

    if-nez v0, :cond_17

    .line 827
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v0, :cond_16

    .line 828
    const-string v0, "Attempted to take screenshot while display was off."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :cond_16
    return v2

    .line 833
    :cond_17
    if-nez p1, :cond_23

    .line 834
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v0, :cond_22

    .line 835
    const-string v0, "No visible wallpaper to screenshot"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_22
    return v2

    .line 839
    :cond_23
    const/4 v0, 0x1

    return v0
.end method

.method private computeLastWallpaperZoomOut()V
    .registers 4

    .line 937
    iget-boolean v0, p0, Lcom/android/server/wm/WallpaperController;->mShouldUpdateZoom:Z

    if-eqz v0, :cond_12

    .line 938
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    .line 939
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mComputeMaxZoomOutFunction:Ljava/util/function/Consumer;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 940
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WallpaperController;->mShouldUpdateZoom:Z

    .line 942
    :cond_12
    return-void
.end method

.method private findWallpaperTarget()V
    .registers 4

    .line 563
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->reset()V

    .line 567
    iget-boolean v0, p0, Lcom/android/server/wm/WallpaperController;->mUseTopWallpaperAsTarget:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    .line 571
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setUseTopWallpaperAsTarget(Z)V

    .line 575
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mFindWallpaperTargetFunction:Lcom/android/internal/util/ToBooleanFunction;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 578
    iget-boolean v0, p0, Lcom/android/server/wm/WallpaperController;->mShowWallpaperForUnocclude:Z

    if-eqz v0, :cond_35

    .line 579
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7f8

    if-ne v0, v2, :cond_30

    .line 581
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WallpaperController;->mShowWallpaperForUnocclude:Z

    goto :goto_35

    .line 583
    :cond_30
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setUseTopWallpaperAsTarget(Z)V

    .line 588
    :cond_35
    :goto_35
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    if-eqz v0, :cond_48

    .line 589
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v1, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    .line 591
    :cond_48
    return-void
.end method

.method private isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 4
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 594
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v0, :cond_13

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v0, :cond_13

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method static synthetic lambda$updateWallpaperWindowsTarget$2(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p0, "prevWallpaperTarget"    # Lcom/android/server/wm/WindowState;
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 645
    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private sendWindowWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .registers 18
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "sync"    # Z

    .line 483
    move-object v0, p0

    move/from16 v1, p6

    .line 484
    .local v1, "doWait":Z
    iget-object v2, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "curTokenNdx":I
    :goto_b
    if-ltz v2, :cond_24

    .line 485
    iget-object v3, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WallpaperWindowToken;

    .line 486
    .local v3, "token":Lcom/android/server/wm/WallpaperWindowToken;
    move-object v4, v3

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/WallpaperWindowToken;->sendWindowWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    .line 484
    .end local v3    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 489
    .end local v2    # "curTokenNdx":I
    :cond_24
    nop

    .line 492
    return-void
.end method

.method private shouldWallpaperBeVisible(Lcom/android/server/wm/WindowState;)Z
    .registers 4
    .param p1, "wallpaperTarget"    # Lcom/android/server/wm/WindowState;

    .line 281
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v0, :cond_28

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wallpaper vis: target "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " prev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_28
    if-nez p1, :cond_31

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_2f

    goto :goto_31

    :cond_2f
    const/4 v0, 0x0

    goto :goto_32

    :cond_31
    :goto_31
    const/4 v0, 0x1

    :goto_32
    return v0
.end method

.method private updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V
    .registers 7
    .param p1, "changingTarget"    # Lcom/android/server/wm/WindowState;
    .param p2, "sync"    # Z

    .line 495
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 496
    .local v0, "target":Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_15

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 497
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 501
    move-object v0, p1

    .line 503
    :cond_15
    if-eqz v0, :cond_93

    .line 504
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_23

    .line 505
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    goto :goto_2d

    .line 506
    :cond_23
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2d

    .line 507
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    .line 509
    :cond_2d
    :goto_2d
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_38

    .line 510
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    goto :goto_42

    .line 511
    :cond_38
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_42

    .line 512
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    .line 514
    :cond_42
    :goto_42
    invoke-direct {p0}, Lcom/android/server/wm/WallpaperController;->computeLastWallpaperZoomOut()V

    .line 515
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_50

    .line 516
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    goto :goto_58

    .line 517
    :cond_50
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-eq v1, v3, :cond_58

    .line 518
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    .line 520
    :cond_58
    :goto_58
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v1, v3, :cond_61

    .line 521
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    goto :goto_69

    .line 522
    :cond_61
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v1, v3, :cond_69

    .line 523
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    .line 525
    :cond_69
    :goto_69
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_74

    .line 526
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    goto :goto_7e

    .line 527
    :cond_74
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_7e

    .line 528
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    .line 530
    :cond_7e
    :goto_7e
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_89

    .line 531
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    goto :goto_93

    .line 532
    :cond_89
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_93

    .line 533
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    .line 537
    :cond_93
    :goto_93
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "curTokenNdx":I
    :goto_9b
    if-ltz v1, :cond_ab

    .line 538
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/WallpaperWindowToken;->updateWallpaperOffset(Z)V

    .line 537
    add-int/lit8 v1, v1, -0x1

    goto :goto_9b

    .line 540
    .end local v1    # "curTokenNdx":I
    :cond_ab
    return-void
.end method

.method private updateWallpaperTokens(Z)V
    .registers 6
    .param p1, "visible"    # Z

    .line 679
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "curTokenNdx":I
    :goto_8
    if-ltz v0, :cond_21

    .line 680
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    .line 681
    .local v1, "token":Lcom/android/server/wm/WallpaperWindowToken;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WallpaperWindowToken;->updateWallpaperWindows(Z)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 682
    iget-object v2, v1, Lcom/android/server/wm/WallpaperWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 679
    .end local v1    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 685
    .end local v0    # "curTokenNdx":I
    :cond_21
    return-void
.end method

.method private updateWallpaperWindowsTarget(Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)V
    .registers 20
    .param p1, "result"    # Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .line 601
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 603
    .local v2, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    iget-object v3, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq v3, v2, :cond_117

    iget-object v3, v0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_14

    if-ne v3, v2, :cond_14

    goto/16 :goto_117

    .line 619
    :cond_14
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WALLPAPER_enabled:Z

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v3, :cond_3e

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    iget-object v9, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .local v9, "protoLogParam1":Ljava/lang/String;
    const/4 v10, 0x5

    invoke-static {v10}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .local v10, "protoLogParam2":Ljava/lang/String;
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, 0x6cc94e7

    new-array v13, v6, [Ljava/lang/Object;

    aput-object v3, v13, v5

    aput-object v9, v13, v8

    aput-object v10, v13, v7

    invoke-static {v11, v12, v5, v4, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 622
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    .end local v9    # "protoLogParam1":Ljava/lang/String;
    .end local v10    # "protoLogParam2":Ljava/lang/String;
    :cond_3e
    iput-object v4, v0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 624
    iget-object v3, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 625
    .local v3, "prevWallpaperTarget":Lcom/android/server/wm/WindowState;
    iput-object v2, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 627
    if-nez v3, :cond_4b

    if-eqz v2, :cond_4b

    .line 628
    invoke-direct {v0, v2, v5}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 630
    :cond_4b
    if-eqz v2, :cond_116

    if-nez v3, :cond_51

    goto/16 :goto_116

    .line 636
    :cond_51
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v9

    .line 637
    .local v9, "oldAnim":Z
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v10

    .line 638
    .local v10, "foundAnim":Z
    sget-boolean v11, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WALLPAPER_enabled:Z

    if-eqz v11, :cond_73

    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    .local v11, "protoLogParam0":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    .local v12, "protoLogParam1":Ljava/lang/String;
    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v14, -0x10655a5b

    new-array v15, v7, [Ljava/lang/Object;

    aput-object v11, v15, v5

    aput-object v12, v15, v8

    invoke-static {v13, v14, v5, v4, v15}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 641
    .end local v11    # "protoLogParam0":Ljava/lang/String;
    .end local v12    # "protoLogParam1":Ljava/lang/String;
    :cond_73
    if-eqz v10, :cond_115

    if-nez v9, :cond_79

    goto/16 :goto_115

    .line 645
    :cond_79
    iget-object v11, v0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v12, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda3;

    invoke-direct {v12, v3}, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/WindowState;)V

    invoke-virtual {v11, v12}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v11

    if-nez v11, :cond_87

    .line 646
    return-void

    .line 649
    :cond_87
    iget-object v11, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v11, :cond_93

    iget-object v11, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v11, v11, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v11, :cond_93

    move v11, v8

    goto :goto_94

    :cond_93
    move v11, v5

    .line 651
    .local v11, "newTargetHidden":Z
    :goto_94
    iget-object v12, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v12, :cond_a0

    iget-object v12, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v12, v12, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v12, :cond_a0

    move v12, v8

    goto :goto_a1

    :cond_a0
    move v12, v5

    .line 654
    .local v12, "oldTargetHidden":Z
    :goto_a1
    sget-boolean v13, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WALLPAPER_enabled:Z

    if-eqz v13, :cond_cf

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .local v13, "protoLogParam0":Ljava/lang/String;
    move v14, v12

    .local v14, "protoLogParam1":Z
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .local v15, "protoLogParam2":Ljava/lang/String;
    move/from16 v16, v11

    .local v16, "protoLogParam3":Z
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v13, v6, v5

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v6, v8

    aput-object v15, v6, v7

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v6, v8

    const/4 v5, 0x0

    const v7, -0x1578579a    # -8.200011E25f

    const/16 v8, 0xcc

    invoke-static {v4, v7, v8, v5, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 658
    .end local v13    # "protoLogParam0":Ljava/lang/String;
    .end local v14    # "protoLogParam1":Z
    .end local v15    # "protoLogParam2":Ljava/lang/String;
    .end local v16    # "protoLogParam3":Z
    :cond_cf
    iput-object v3, v0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 660
    if-eqz v11, :cond_e9

    if-nez v12, :cond_e9

    .line 661
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WALLPAPER_enabled:Z

    if-eqz v4, :cond_e6

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x4640d1fd

    const/4 v6, 0x0

    move-object v7, v6

    check-cast v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4, v5, v7, v6, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 664
    :cond_e6
    iput-object v3, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    goto :goto_111

    .line 665
    :cond_e9
    if-ne v11, v12, :cond_111

    iget-object v4, v0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 666
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_111

    iget-object v4, v0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 667
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10f

    iget-object v4, v0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 668
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_111

    .line 672
    :cond_10f
    iput-object v3, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 675
    :cond_111
    :goto_111
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    .line 676
    return-void

    .line 642
    .end local v11    # "newTargetHidden":Z
    .end local v12    # "oldTargetHidden":Z
    :cond_115
    :goto_115
    return-void

    .line 631
    .end local v9    # "oldAnim":Z
    .end local v10    # "foundAnim":Z
    :cond_116
    :goto_116
    return-void

    .line 606
    .end local v3    # "prevWallpaperTarget":Lcom/android/server/wm/WindowState;
    :cond_117
    :goto_117
    iget-object v3, v0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v3, :cond_11c

    .line 607
    return-void

    .line 611
    :cond_11c
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v3

    if-nez v3, :cond_139

    .line 612
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WALLPAPER_enabled:Z

    if-eqz v3, :cond_134

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x581b2b35

    const/4 v5, 0x0

    move-object v6, v5

    check-cast v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3, v4, v6, v5, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_135

    :cond_134
    const/4 v5, 0x0

    .line 613
    :goto_135
    iput-object v5, v0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 614
    iput-object v2, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 616
    :cond_139
    return-void
.end method

.method private zoomOutToScale(F)F
    .registers 5
    .param p1, "zoom"    # F

    .line 945
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mMaxWallpaperScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, p1

    invoke-static {v1, v0, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method


# virtual methods
.method addWallpaperToken(Lcom/android/server/wm/WallpaperWindowToken;)V
    .registers 3
    .param p1, "token"    # Lcom/android/server/wm/WallpaperWindowToken;

    .line 812
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 813
    return-void
.end method

.method adjustWallpaperWindows()V
    .registers 12

    .line 688
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 692
    invoke-direct {p0}, Lcom/android/server/wm/WallpaperController;->findWallpaperTarget()V

    .line 693
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperWindowsTarget(Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)V

    .line 697
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    move v0, v2

    goto :goto_15

    :cond_14
    move v0, v1

    .line 698
    .local v0, "visible":Z
    :goto_15
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v3, :cond_41

    .line 699
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wallpaper visibility: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 700
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 699
    const-string v4, "WindowManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_41
    if-eqz v0, :cond_89

    .line 704
    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_58

    .line 705
    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v3, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    .line 706
    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v3, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    .line 708
    :cond_58
    invoke-direct {p0}, Lcom/android/server/wm/WallpaperController;->computeLastWallpaperZoomOut()V

    .line 709
    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_6f

    .line 710
    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v3, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    .line 711
    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput v3, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    .line 713
    :cond_6f
    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_7d

    .line 714
    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    iput v3, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    .line 716
    :cond_7d
    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v3, v4, :cond_89

    .line 717
    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    iput v3, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    .line 721
    :cond_89
    invoke-direct {p0, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperTokens(Z)V

    .line 723
    if-eqz v0, :cond_b2

    iget-boolean v3, p0, Lcom/android/server/wm/WallpaperController;->mLastFrozen:Z

    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v4, v4, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->isWallpaperTargetForLetterbox:Z

    if-eq v3, v4, :cond_b2

    .line 724
    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v3, v3, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->isWallpaperTargetForLetterbox:Z

    iput-boolean v3, p0, Lcom/android/server/wm/WallpaperController;->mLastFrozen:Z

    .line 725
    nop

    .line 726
    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v3, v3, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->isWallpaperTargetForLetterbox:Z

    if-eqz v3, :cond_a6

    const-string v3, "android.wallpaper.freeze"

    goto :goto_a8

    :cond_a6
    const-string v3, "android.wallpaper.unfreeze"

    :goto_a8
    move-object v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 725
    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/wm/WallpaperController;->sendWindowWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    .line 730
    :cond_b2
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WALLPAPER_enabled:Z

    if-eqz v3, :cond_d2

    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam1":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x1229c997

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v1

    aput-object v4, v8, v2

    invoke-static {v5, v6, v1, v7, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 732
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    .end local v4    # "protoLogParam1":Ljava/lang/String;
    :cond_d2
    return-void
.end method

.method adjustWallpaperWindowsForAppTransitionIfNeeded(Landroid/util/ArraySet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .line 793
    .local p1, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v0, 0x0

    .line 794
    .local v0, "adjust":Z
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_b

    .line 795
    const/4 v0, 0x1

    goto :goto_24

    .line 797
    :cond_b
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_11
    if-ltz v1, :cond_24

    .line 798
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 799
    .local v2, "activity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->windowsCanBeWallpaperTarget()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 800
    const/4 v0, 0x1

    .line 801
    goto :goto_24

    .line 797
    .end local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 806
    .end local v1    # "i":I
    :cond_24
    :goto_24
    if-eqz v0, :cond_29

    .line 807
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    .line 809
    :cond_29
    return-void
.end method

.method canScreenshotWallpaper()Z
    .registers 2

    .line 822
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/WallpaperController;->canScreenshotWallpaper(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method clearLastWallpaperTimeoutTime()V
    .registers 3

    .line 543
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J

    .line 544
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 949
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "displayId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 950
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWallpaperTarget="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 951
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_31

    .line 952
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPrevWallpaperTarget="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 954
    :cond_31
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastWallpaperX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 955
    const-string v0, " mLastWallpaperY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 956
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_52

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    if-eq v0, v1, :cond_69

    .line 958
    :cond_52
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 959
    const-string v0, "mLastWallpaperDisplayOffsetX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 960
    const-string v0, " mLastWallpaperDisplayOffsetY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 963
    :cond_69
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mShowWallpaperForUnocclude="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WallpaperController;->mShowWallpaperForUnocclude:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 964
    return-void
.end method

.method getAllVisibleWallpaper()V
    .registers 5

    .line 894
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperAnimationTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 896
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "curTokenNdx":I
    :goto_d
    if-ltz v0, :cond_22

    .line 897
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    .line 898
    .local v2, "token":Lcom/android/server/wm/WallpaperWindowToken;
    new-instance v3, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WallpaperController;)V

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/WallpaperWindowToken;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 896
    .end local v2    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 907
    .end local v0    # "curTokenNdx":I
    :cond_22
    return-void
.end method

.method getAllWallpaperSurface()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/WallpaperAnimationTarget;",
            ">;"
        }
    .end annotation

    .line 889
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->getAllVisibleWallpaper()V

    .line 890
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperAnimationTargets:Ljava/util/ArrayList;

    return-object v0
.end method

.method getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;
    .registers 5

    .line 911
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mTmpTopWallpaper:Lcom/android/server/wm/WindowState;

    .line 913
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "curTokenNdx":I
    :goto_b
    if-ltz v0, :cond_20

    .line 914
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    .line 915
    .local v2, "token":Lcom/android/server/wm/WallpaperWindowToken;
    new-instance v3, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/WallpaperController;)V

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/WallpaperWindowToken;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 913
    .end local v2    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 925
    .end local v0    # "curTokenNdx":I
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mTmpTopWallpaper:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getWallpaperSurface()Landroid/view/WallpaperAnimationTarget;
    .registers 4

    .line 881
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 882
    .local v0, "wallpaperWindowState":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_10

    .line 883
    new-instance v1, Landroid/view/WallpaperAnimationTarget;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WallpaperAnimationTarget;-><init>(Landroid/view/SurfaceControl;)V

    goto :goto_11

    .line 884
    :cond_10
    const/4 v1, 0x0

    .line 882
    :goto_11
    return-object v1
.end method

.method getWallpaperTarget()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 252
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method hideDeferredWallpapersIfNeededLegacy()V
    .registers 4

    .line 304
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1f

    .line 305
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    .line 306
    .local v1, "token":Lcom/android/server/wm/WallpaperWindowToken;
    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperWindowToken;->isVisibleRequested()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 307
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WallpaperWindowToken;->commitVisibility(Z)V

    .line 304
    .end local v1    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 310
    .end local v0    # "i":I
    :cond_1f
    return-void
.end method

.method hideWallpapers(Lcom/android/server/wm/WindowState;)V
    .registers 16
    .param p1, "winGoingAway"    # Lcom/android/server/wm/WindowState;

    .line 313
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_b

    if-ne v0, p1, :cond_a

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_b

    .line 315
    :cond_a
    return-void

    .line 320
    :cond_b
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 321
    const-string v0, "WindowManager"

    const-string v1, "Do not hide wallpaper when app transition not done yet."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return-void

    .line 326
    :cond_29
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    if-eqz v0, :cond_30

    .line 329
    return-void

    .line 331
    :cond_30
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_38
    if-ltz v0, :cond_90

    .line 332
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    .line 333
    .local v2, "token":Lcom/android/server/wm/WallpaperWindowToken;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WallpaperWindowToken;->setVisibility(Z)V

    .line 334
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v4}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v4

    if-eqz v4, :cond_8d

    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperWindowToken;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 335
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WALLPAPER_enabled:Z

    if-eqz v4, :cond_8d

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam0":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam1":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam2":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .local v7, "protoLogParam3":Ljava/lang/String;
    const/4 v8, 0x5

    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .local v9, "protoLogParam4":Ljava/lang/String;
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v11, 0x764e4df3

    const/4 v12, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v3

    aput-object v5, v8, v1

    const/4 v13, 0x2

    aput-object v6, v8, v13

    const/4 v13, 0x3

    aput-object v7, v8, v13

    const/4 v13, 0x4

    aput-object v9, v8, v13

    invoke-static {v10, v11, v3, v12, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 331
    .end local v2    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    .end local v4    # "protoLogParam0":Ljava/lang/String;
    .end local v5    # "protoLogParam1":Ljava/lang/String;
    .end local v6    # "protoLogParam2":Ljava/lang/String;
    .end local v7    # "protoLogParam3":Ljava/lang/String;
    .end local v9    # "protoLogParam4":Ljava/lang/String;
    :cond_8d
    add-int/lit8 v0, v0, -0x1

    goto :goto_38

    .line 341
    .end local v0    # "i":I
    :cond_90
    return-void
.end method

.method isBelowWallpaperTarget(Lcom/android/server/wm/WindowState;)Z
    .registers 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 260
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_c

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v1, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 256
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isWallpaperTargetAnimating()Z
    .registers 3

    .line 289
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1d

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->isAnimating(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 291
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isWaitingForTransitionStart()Z

    move-result v0

    if-nez v0, :cond_1d

    :cond_1b
    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    .line 289
    :goto_1e
    return v0
.end method

.method isWallpaperVisible()Z
    .registers 4

    .line 264
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 265
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperWindowToken;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_19

    return v1

    .line 264
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 267
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$getAllVisibleWallpaper$3$com-android-server-wm-WallpaperController(Lcom/android/server/wm/WindowState;)Z
    .registers 6
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 899
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 900
    .local v0, "winAnim":Lcom/android/server/wm/WindowStateAnimator;
    if-eqz v0, :cond_14

    .line 901
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperAnimationTargets:Ljava/util/ArrayList;

    new-instance v2, Landroid/view/WallpaperAnimationTarget;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/WallpaperAnimationTarget;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 902
    const/4 v1, 0x1

    return v1

    .line 904
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method synthetic lambda$getTopVisibleWallpaper$4$com-android-server-wm-WallpaperController(Lcom/android/server/wm/WindowState;)Z
    .registers 5
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 916
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 917
    .local v0, "winAnim":Lcom/android/server/wm/WindowStateAnimator;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v1

    if-eqz v1, :cond_15

    iget v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_15

    .line 918
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mTmpTopWallpaper:Lcom/android/server/wm/WindowState;

    .line 919
    const/4 v1, 0x1

    return v1

    .line 921
    :cond_15
    const/4 v1, 0x0

    return v1
.end method

.method synthetic lambda$new$0$com-android-server-wm-WallpaperController(Lcom/android/server/wm/WindowState;)Z
    .registers 16
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 125
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x0

    const/16 v2, 0x7dd

    if-ne v0, v2, :cond_1f

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->resetTopWallpaper:Z

    if-eqz v0, :cond_1e

    .line 127
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setTopWallpaper(Lcom/android/server/wm/WindowState;)V

    .line 128
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iput-boolean v1, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->resetTopWallpaper:Z

    .line 130
    :cond_1e
    return v1

    .line 133
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->resetTopWallpaper:Z

    .line 134
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    const/4 v3, 0x3

    const-string v4, "WindowManager"

    if-nez v0, :cond_5e

    .line 135
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_71

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-nez v0, :cond_71

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 136
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord;->isAnimating(I)Z

    move-result v0

    if-nez v0, :cond_71

    .line 138
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v0, :cond_5d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping hidden and not animating token: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_5d
    return v1

    .line 142
    :cond_5e
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 143
    .local v0, "ar":Lcom/android/server/wm/ActivityRecord;
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 147
    .local v5, "tc":Lcom/android/server/wm/TransitionController;
    if-eqz v0, :cond_71

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isVisibleRequested()Z

    move-result v6

    if-nez v6, :cond_71

    invoke-virtual {v5, v0}, Lcom/android/server/wm/TransitionController;->inTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v6

    if-nez v6, :cond_71

    .line 149
    return v1

    .line 152
    .end local v0    # "ar":Lcom/android/server/wm/ActivityRecord;
    .end local v5    # "tc":Lcom/android/server/wm/TransitionController;
    :cond_71
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    const-string v5, "Win "

    if-eqz v0, :cond_a7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ": isOnScreen="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " mDrawState="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_a7
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v0, :cond_ba

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_ba

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    if-nez v0, :cond_ba

    .line 160
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setUseTopWallpaperAsTarget(Z)V

    .line 163
    :cond_ba
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_c5

    .line 164
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getAnimatingContainer()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_c6

    :cond_c5
    const/4 v0, 0x0

    .line 165
    .local v0, "animatingContainer":Lcom/android/server/wm/WindowContainer;
    :goto_c6
    if-eqz v0, :cond_de

    .line 166
    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v6

    if-eqz v6, :cond_de

    iget v6, v0, Lcom/android/server/wm/WindowContainer;->mTransit:I

    .line 167
    invoke-static {v6}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransitOld(I)Z

    move-result v6

    if-eqz v6, :cond_de

    iget v6, v0, Lcom/android/server/wm/WindowContainer;->mTransitFlags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_de

    move v6, v2

    goto :goto_df

    :cond_de
    move v6, v1

    .line 172
    .local v6, "keyguardGoingAwayWithWallpaper":Z
    :goto_df
    if-eqz v0, :cond_ec

    .line 173
    iget v7, v0, Lcom/android/server/wm/WindowContainer;->mTransit:I

    const/16 v8, 0x17

    if-ne v7, v8, :cond_e9

    move v7, v2

    goto :goto_ea

    :cond_e9
    move v7, v1

    :goto_ea
    iput-boolean v7, p0, Lcom/android/server/wm/WallpaperController;->mShowWallpaperForUnocclude:Z

    .line 177
    :cond_ec
    const/4 v7, 0x0

    .line 178
    .local v7, "needsShowWhenLockedWallpaper":Z
    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v9, 0x80000

    and-int/2addr v8, v9

    if-eqz v8, :cond_140

    iget-object v8, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v8}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v8

    if-eqz v8, :cond_140

    .line 179
    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 180
    .local v8, "tc":Lcom/android/server/wm/TransitionController;
    invoke-virtual {v8}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v9

    if-eqz v9, :cond_110

    .line 181
    invoke-virtual {v8, p1}, Lcom/android/server/wm/TransitionController;->inTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v9

    if-eqz v9, :cond_110

    move v9, v2

    goto :goto_111

    :cond_110
    move v9, v1

    .line 182
    .local v9, "isInTransition":Z
    :goto_111
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v10}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardOccluded()Z

    move-result v10

    if-nez v10, :cond_127

    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v10}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardUnoccluding()Z

    move-result v10

    if-nez v10, :cond_127

    if-eqz v9, :cond_140

    .line 186
    :cond_127
    iget-object v10, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v10}, Lcom/android/server/wm/WallpaperController;->isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v10

    if-eqz v10, :cond_13e

    iget-object v10, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v10, :cond_13c

    iget-object v10, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 187
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v10

    if-nez v10, :cond_13c

    goto :goto_13e

    :cond_13c
    move v10, v1

    goto :goto_13f

    :cond_13e
    :goto_13e
    move v10, v2

    :goto_13f
    move v7, v10

    .line 191
    .end local v8    # "tc":Lcom/android/server/wm/TransitionController;
    .end local v9    # "isInTransition":Z
    :cond_140
    if-nez v6, :cond_144

    if-eqz v7, :cond_149

    .line 194
    :cond_144
    iget-object v8, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v8, v2}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setUseTopWallpaperAsTarget(Z)V

    .line 197
    :cond_149
    iget-object v8, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 198
    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v8

    .line 199
    .local v8, "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v0, :cond_163

    .line 200
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v9

    if-eqz v9, :cond_163

    .line 201
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/server/wm/AnimationAdapter;->getShowWallpaper()Z

    move-result v9

    if-eqz v9, :cond_163

    move v9, v2

    goto :goto_164

    :cond_163
    move v9, v1

    .line 204
    .local v9, "animationWallpaper":Z
    :goto_164
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    move-result v10

    if-nez v10, :cond_173

    if-nez v9, :cond_173

    iget-boolean v10, p1, Lcom/android/server/wm/WindowState;->mForceShowWallpaper:Z

    if-eqz v10, :cond_171

    goto :goto_173

    :cond_171
    move v10, v1

    goto :goto_174

    :cond_173
    :goto_173
    move v10, v2

    .line 205
    .local v10, "hasWallpaper":Z
    :goto_174
    if-eqz v8, :cond_17e

    .line 206
    invoke-virtual {v8, p1}, Lcom/android/server/wm/RecentsAnimationController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v11

    if-eqz v11, :cond_17e

    move v11, v2

    goto :goto_17f

    :cond_17e
    move v11, v1

    .line 207
    .local v11, "isRecentsTransitionTarget":Z
    :goto_17f
    if-eqz v11, :cond_1a1

    .line 208
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v1, :cond_19b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found recents animation wallpaper target: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_19b
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    .line 210
    return v2

    .line 211
    :cond_1a1
    if-eqz v10, :cond_209

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v12

    if-eqz v12, :cond_209

    iget-object v12, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq v12, p1, :cond_1b3

    .line 212
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawFinishedLw()Z

    move-result v12

    if-eqz v12, :cond_209

    .line 213
    :cond_1b3
    sget-boolean v12, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v12, :cond_1cd

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Found wallpaper target: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_1cd
    iget-object v12, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v12, p1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    .line 215
    iget-object v12, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v12, :cond_1fa

    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowState;->isAnimating(I)Z

    move-result v3

    if-eqz v3, :cond_1fa

    .line 218
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v3, :cond_1fa

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": token animating, looking behind."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_1fa
    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasWallpaperForLetterboxBackground()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setIsWallpaperTargetForLetterbox(Z)V

    .line 226
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_208

    move v1, v2

    :cond_208
    return v1

    .line 228
    :cond_209
    return v1
.end method

.method synthetic lambda$new$1$com-android-server-wm-WallpaperController(Lcom/android/server/wm/WindowState;)V
    .registers 4
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;

    .line 235
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v0, :cond_12

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    iget v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    .line 236
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_12

    .line 237
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    .line 239
    :cond_12
    return-void
.end method

.method mirrorWallpaperSurface()Landroid/view/SurfaceControl;
    .registers 3

    .line 873
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 874
    .local v0, "wallpaperWindowState":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_f

    .line 875
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-static {v1}, Landroid/view/SurfaceControl;->mirrorSurface(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;

    move-result-object v1

    goto :goto_10

    .line 876
    :cond_f
    const/4 v1, 0x0

    .line 874
    :goto_10
    return-object v1
.end method

.method processWallpaperDrawPendingTimeout()Z
    .registers 4

    .line 735
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    .line 736
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 737
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v0, :cond_13

    .line 738
    const-string v0, "WindowManager"

    const-string v2, "*** WALLPAPER DRAW TIMEOUT"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 744
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimationController;->startAnimation()V

    .line 746
    :cond_24
    return v1

    .line 748
    :cond_25
    const/4 v0, 0x0

    return v0
.end method

.method removeWallpaperToken(Lcom/android/server/wm/WallpaperWindowToken;)V
    .registers 3
    .param p1, "token"    # Lcom/android/server/wm/WallpaperWindowToken;

    .line 816
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 817
    return-void
.end method

.method screenshotWallpaperLocked()Landroid/graphics/Bitmap;
    .registers 7

    .line 848
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 849
    .local v0, "wallpaperWindowState":Lcom/android/server/wm/WindowState;
    invoke-direct {p0, v0}, Lcom/android/server/wm/WallpaperController;->canScreenshotWallpaper(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 850
    return-object v2

    .line 853
    :cond_c
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 854
    .local v1, "bounds":Landroid/graphics/Rect;
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 856
    nop

    .line 857
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    .line 856
    invoke-static {v3, v1, v4}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v3

    .line 859
    .local v3, "wallpaperBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    if-nez v3, :cond_29

    .line 860
    const-string v4, "WindowManager"

    const-string v5, "Failed to screenshot wallpaper"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    return-object v2

    .line 863
    :cond_29
    nop

    .line 864
    invoke-virtual {v3}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    invoke-virtual {v3}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v4

    .line 863
    invoke-static {v2, v4}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method sendWindowWallpaperCommand(Lcom/android/server/wm/WindowState;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 15
    .param p1, "window"    # Lcom/android/server/wm/WindowState;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "sync"    # Z

    .line 474
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_14

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const-string v1, "com.miui.aod"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 475
    :cond_14
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WallpaperController;->sendWindowWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    .line 478
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method setShouldZoomOutWallpaper(Lcom/android/server/wm/WindowState;Z)V
    .registers 4
    .param p1, "window"    # Lcom/android/server/wm/WindowState;
    .param p2, "shouldZoom"    # Z

    .line 456
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mShouldScaleWallpaper:Z

    if-eq p2, v0, :cond_a

    .line 457
    iput-boolean p2, p1, Lcom/android/server/wm/WindowState;->mShouldScaleWallpaper:Z

    .line 458
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 460
    :cond_a
    return-void
.end method

.method setWallpaperZoomOut(Lcom/android/server/wm/WindowState;F)V
    .registers 4
    .param p1, "window"    # Lcom/android/server/wm/WindowState;
    .param p2, "zoom"    # F

    .line 448
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_11

    .line 449
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    .line 450
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WallpaperController;->mShouldUpdateZoom:Z

    .line 451
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 453
    :cond_11
    return-void
.end method

.method setWindowWallpaperDisplayOffset(Lcom/android/server/wm/WindowState;II)V
    .registers 5
    .param p1, "window"    # Lcom/android/server/wm/WindowState;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 463
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-ne v0, p2, :cond_8

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v0, p3, :cond_10

    .line 464
    :cond_8
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    .line 465
    iput p3, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    .line 466
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 468
    :cond_10
    return-void
.end method

.method setWindowWallpaperPosition(Lcom/android/server/wm/WindowState;FFFF)V
    .registers 7
    .param p1, "window"    # Lcom/android/server/wm/WindowState;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "xStep"    # F
    .param p5, "yStep"    # F

    .line 438
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_c

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_18

    .line 439
    :cond_c
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 440
    iput p3, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 441
    iput p4, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 442
    iput p5, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 443
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 445
    :cond_18
    return-void
.end method

.method startWallpaperAnimation(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "a"    # Landroid/view/animation/Animation;

    .line 274
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "curTokenNdx":I
    :goto_8
    if-ltz v0, :cond_18

    .line 275
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    .line 276
    .local v1, "token":Lcom/android/server/wm/WallpaperWindowToken;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WallpaperWindowToken;->startAnimation(Landroid/view/animation/Animation;)V

    .line 274
    .end local v1    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 278
    .end local v0    # "curTokenNdx":I
    :cond_18
    return-void
.end method

.method updateWallpaperOffset(Lcom/android/server/wm/WindowState;Z)Z
    .registers 29
    .param p1, "wallpaperWin"    # Lcom/android/server/wm/WindowState;
    .param p2, "sync"    # Z

    .line 344
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getLastReportedBounds()Landroid/graphics/Rect;

    move-result-object v10

    .line 345
    .local v10, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 346
    .local v11, "dw":I
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 348
    .local v12, "dh":I
    const/4 v0, 0x0

    .line 349
    .local v0, "xOffset":I
    const/4 v3, 0x0

    .line 350
    .local v3, "yOffset":I
    const/4 v4, 0x0

    .line 353
    .local v4, "rawChanged":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isRtl()Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_1d

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_1e

    :cond_1d
    move v5, v7

    :goto_1e
    move v13, v5

    .line 354
    .local v13, "defaultWallpaperX":F
    iget v5, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    cmpl-float v8, v5, v7

    if-ltz v8, :cond_26

    goto :goto_27

    :cond_26
    move v5, v13

    :goto_27
    move v14, v5

    .line 355
    .local v14, "wpx":F
    iget v5, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    cmpl-float v8, v5, v7

    if-ltz v8, :cond_2f

    goto :goto_31

    :cond_2f
    const/high16 v5, -0x40800000    # -1.0f

    :goto_31
    move v15, v5

    .line 356
    .local v15, "wpxs":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v8

    sub-int v8, v5, v11

    .line 357
    .local v8, "availw":I
    const/high16 v16, 0x3f000000    # 0.5f

    if-lez v8, :cond_4c

    int-to-float v5, v8

    mul-float/2addr v5, v14

    add-float v5, v5, v16

    float-to-int v5, v5

    neg-int v5, v5

    goto :goto_4d

    :cond_4c
    const/4 v5, 0x0

    .line 358
    .local v5, "offset":I
    :goto_4d
    iget v6, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    const/high16 v9, -0x80000000

    if-eq v6, v9, :cond_54

    .line 359
    add-int/2addr v5, v6

    .line 361
    :cond_54
    move v6, v5

    .line 363
    .end local v0    # "xOffset":I
    .local v6, "xOffset":I
    iget v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v0, v0, v14

    if-nez v0, :cond_61

    iget v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v0, v0, v15

    if-eqz v0, :cond_66

    .line 364
    :cond_61
    iput v14, v2, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 365
    iput v15, v2, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 366
    const/4 v4, 0x1

    .line 369
    :cond_66
    iget v0, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    cmpl-float v20, v0, v7

    if-ltz v20, :cond_6d

    goto :goto_6f

    :cond_6d
    move/from16 v0, v16

    :goto_6f
    move/from16 v20, v0

    .line 370
    .local v20, "wpy":F
    iget v0, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    cmpl-float v7, v0, v7

    if-ltz v7, :cond_78

    goto :goto_7a

    :cond_78
    const/high16 v0, -0x40800000    # -1.0f

    :goto_7a
    move v7, v0

    .line 371
    .local v7, "wpys":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v9

    sub-int v9, v0, v12

    .line 372
    .local v9, "availh":I
    if-lez v9, :cond_97

    int-to-float v0, v9

    move-object/from16 v21, v10

    move/from16 v10, v20

    .end local v20    # "wpy":F
    .local v10, "wpy":F
    .local v21, "bounds":Landroid/graphics/Rect;
    mul-float/2addr v0, v10

    add-float v0, v0, v16

    float-to-int v0, v0

    neg-int v0, v0

    goto :goto_9c

    .end local v21    # "bounds":Landroid/graphics/Rect;
    .local v10, "bounds":Landroid/graphics/Rect;
    .restart local v20    # "wpy":F
    :cond_97
    move-object/from16 v21, v10

    move/from16 v10, v20

    .end local v20    # "wpy":F
    .local v10, "wpy":F
    .restart local v21    # "bounds":Landroid/graphics/Rect;
    const/4 v0, 0x0

    .line 373
    .end local v5    # "offset":I
    .local v0, "offset":I
    :goto_9c
    iget v5, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    move/from16 v16, v3

    const/high16 v3, -0x80000000

    .end local v3    # "yOffset":I
    .local v16, "yOffset":I
    if-eq v5, v3, :cond_a8

    .line 374
    add-int/2addr v0, v5

    move/from16 v17, v0

    goto :goto_aa

    .line 373
    :cond_a8
    move/from16 v17, v0

    .line 376
    .end local v0    # "offset":I
    .local v17, "offset":I
    :goto_aa
    move/from16 v5, v17

    .line 378
    .end local v16    # "yOffset":I
    .local v5, "yOffset":I
    iget v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v0, v0, v10

    if-nez v0, :cond_b8

    iget v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_bd

    .line 379
    :cond_b8
    iput v10, v2, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 380
    iput v7, v2, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 381
    const/4 v4, 0x1

    .line 384
    :cond_bd
    iget v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    iget v3, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_cf

    .line 385
    iget v0, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    iput v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    .line 386
    const/4 v4, 0x1

    move/from16 v16, v4

    goto :goto_d1

    .line 384
    :cond_cf
    move/from16 v16, v4

    .line 389
    .end local v4    # "rawChanged":Z
    .local v16, "rawChanged":Z
    :goto_d1
    nop

    .line 390
    iget-boolean v0, v2, Lcom/android/server/wm/WindowState;->mShouldScaleWallpaper:Z

    if-eqz v0, :cond_dd

    .line 391
    iget v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    invoke-direct {v1, v0}, Lcom/android/server/wm/WallpaperController;->zoomOutToScale(F)F

    move-result v0

    goto :goto_df

    :cond_dd
    const/high16 v0, 0x3f800000    # 1.0f

    .line 389
    :goto_df
    invoke-virtual {v2, v6, v5, v0}, Lcom/android/server/wm/WindowState;->setWallpaperOffset(IIF)Z

    move-result v18

    .line 393
    .local v18, "changed":Z
    if-eqz v16, :cond_1e9

    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1e9

    .line 396
    :try_start_ed
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z
    :try_end_ef
    .catch Landroid/os/RemoteException; {:try_start_ed .. :try_end_ef} :catch_1db

    const-string v4, "WindowManager"

    if-eqz v0, :cond_12d

    :try_start_f3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Report new wp offset "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " x="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v2, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " y="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v2, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " zoom="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v2, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_12d
    if-eqz p2, :cond_141

    .line 401
    iput-object v2, v1, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;
    :try_end_131
    .catch Landroid/os/RemoteException; {:try_start_f3 .. :try_end_131} :catch_132

    goto :goto_141

    .line 429
    :catch_132
    move-exception v0

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v25, v9

    move/from16 v24, v10

    goto/16 :goto_1f5

    .line 403
    :cond_141
    :goto_141
    :try_start_141
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperX:F
    :try_end_145
    .catch Landroid/os/RemoteException; {:try_start_141 .. :try_end_145} :catch_1db

    move/from16 v19, v5

    .end local v5    # "yOffset":I
    .local v19, "yOffset":I
    :try_start_147
    iget v5, v2, Lcom/android/server/wm/WindowState;->mWallpaperY:F
    :try_end_149
    .catch Landroid/os/RemoteException; {:try_start_147 .. :try_end_149} :catch_1cf

    move/from16 v20, v6

    .end local v6    # "xOffset":I
    .local v20, "xOffset":I
    :try_start_14b
    iget v6, v2, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F
    :try_end_14d
    .catch Landroid/os/RemoteException; {:try_start_14b .. :try_end_14d} :catch_1c5

    move/from16 v22, v7

    .end local v7    # "wpys":F
    .local v22, "wpys":F
    :try_start_14f
    iget v7, v2, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F
    :try_end_151
    .catch Landroid/os/RemoteException; {:try_start_14f .. :try_end_151} :catch_1bd

    move/from16 v23, v8

    .end local v8    # "availw":I
    .local v23, "availw":I
    :try_start_153
    iget v8, v2, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F
    :try_end_155
    .catch Landroid/os/RemoteException; {:try_start_153 .. :try_end_155} :catch_1b7

    move/from16 v24, v10

    move-object v10, v4

    .end local v10    # "wpy":F
    .local v24, "wpy":F
    move v4, v0

    move/from16 v25, v9

    .end local v9    # "availh":I
    .local v25, "availh":I
    move/from16 v9, p2

    :try_start_15d
    invoke-interface/range {v3 .. v9}, Landroid/view/IWindow;->dispatchWallpaperOffsets(FFFFFZ)V

    .line 408
    if-eqz p2, :cond_1b4

    .line 409
    iget-object v0, v1, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1b4

    .line 410
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 411
    .local v3, "start":J
    iget-wide v5, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J
    :try_end_16c
    .catch Landroid/os/RemoteException; {:try_start_15d .. :try_end_16c} :catch_1b5

    const-wide/16 v7, 0x2710

    add-long/2addr v5, v7

    cmp-long v0, v5, v3

    if-gez v0, :cond_1b1

    .line 414
    const-wide/16 v5, 0x96

    :try_start_175
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v0, :cond_17e

    const-string v0, "Waiting for offset complete..."

    invoke-static {v10, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_17e
    iget-object v0, v1, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_185
    .catch Ljava/lang/InterruptedException; {:try_start_175 .. :try_end_185} :catch_186
    .catch Landroid/os/RemoteException; {:try_start_175 .. :try_end_185} :catch_1b5

    .line 418
    goto :goto_187

    .line 417
    :catch_186
    move-exception v0

    .line 419
    :goto_187
    :try_start_187
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v0, :cond_190

    const-string v0, "Offset complete!"

    invoke-static {v10, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_190
    add-long/2addr v5, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-gez v0, :cond_1b1

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout waiting for wallpaper to offset: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iput-wide v3, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J

    .line 426
    :cond_1b1
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;
    :try_end_1b4
    .catch Landroid/os/RemoteException; {:try_start_187 .. :try_end_1b4} :catch_1b5

    .line 430
    .end local v3    # "start":J
    :cond_1b4
    goto :goto_1f5

    .line 429
    :catch_1b5
    move-exception v0

    goto :goto_1f5

    .end local v24    # "wpy":F
    .end local v25    # "availh":I
    .restart local v9    # "availh":I
    .restart local v10    # "wpy":F
    :catch_1b7
    move-exception v0

    move/from16 v25, v9

    move/from16 v24, v10

    .end local v9    # "availh":I
    .end local v10    # "wpy":F
    .restart local v24    # "wpy":F
    .restart local v25    # "availh":I
    goto :goto_1f5

    .end local v23    # "availw":I
    .end local v24    # "wpy":F
    .end local v25    # "availh":I
    .restart local v8    # "availw":I
    .restart local v9    # "availh":I
    .restart local v10    # "wpy":F
    :catch_1bd
    move-exception v0

    move/from16 v23, v8

    move/from16 v25, v9

    move/from16 v24, v10

    .end local v8    # "availw":I
    .end local v9    # "availh":I
    .end local v10    # "wpy":F
    .restart local v23    # "availw":I
    .restart local v24    # "wpy":F
    .restart local v25    # "availh":I
    goto :goto_1f5

    .end local v22    # "wpys":F
    .end local v23    # "availw":I
    .end local v24    # "wpy":F
    .end local v25    # "availh":I
    .restart local v7    # "wpys":F
    .restart local v8    # "availw":I
    .restart local v9    # "availh":I
    .restart local v10    # "wpy":F
    :catch_1c5
    move-exception v0

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v25, v9

    move/from16 v24, v10

    .end local v7    # "wpys":F
    .end local v8    # "availw":I
    .end local v9    # "availh":I
    .end local v10    # "wpy":F
    .restart local v22    # "wpys":F
    .restart local v23    # "availw":I
    .restart local v24    # "wpy":F
    .restart local v25    # "availh":I
    goto :goto_1f5

    .end local v20    # "xOffset":I
    .end local v22    # "wpys":F
    .end local v23    # "availw":I
    .end local v24    # "wpy":F
    .end local v25    # "availh":I
    .restart local v6    # "xOffset":I
    .restart local v7    # "wpys":F
    .restart local v8    # "availw":I
    .restart local v9    # "availh":I
    .restart local v10    # "wpy":F
    :catch_1cf
    move-exception v0

    move/from16 v20, v6

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v25, v9

    move/from16 v24, v10

    .end local v6    # "xOffset":I
    .end local v7    # "wpys":F
    .end local v8    # "availw":I
    .end local v9    # "availh":I
    .end local v10    # "wpy":F
    .restart local v20    # "xOffset":I
    .restart local v22    # "wpys":F
    .restart local v23    # "availw":I
    .restart local v24    # "wpy":F
    .restart local v25    # "availh":I
    goto :goto_1f5

    .end local v19    # "yOffset":I
    .end local v20    # "xOffset":I
    .end local v22    # "wpys":F
    .end local v23    # "availw":I
    .end local v24    # "wpy":F
    .end local v25    # "availh":I
    .restart local v5    # "yOffset":I
    .restart local v6    # "xOffset":I
    .restart local v7    # "wpys":F
    .restart local v8    # "availw":I
    .restart local v9    # "availh":I
    .restart local v10    # "wpy":F
    :catch_1db
    move-exception v0

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v25, v9

    move/from16 v24, v10

    .end local v5    # "yOffset":I
    .end local v6    # "xOffset":I
    .end local v7    # "wpys":F
    .end local v8    # "availw":I
    .end local v9    # "availh":I
    .end local v10    # "wpy":F
    .restart local v19    # "yOffset":I
    .restart local v20    # "xOffset":I
    .restart local v22    # "wpys":F
    .restart local v23    # "availw":I
    .restart local v24    # "wpy":F
    .restart local v25    # "availh":I
    goto :goto_1f5

    .line 393
    .end local v19    # "yOffset":I
    .end local v20    # "xOffset":I
    .end local v22    # "wpys":F
    .end local v23    # "availw":I
    .end local v24    # "wpy":F
    .end local v25    # "availh":I
    .restart local v5    # "yOffset":I
    .restart local v6    # "xOffset":I
    .restart local v7    # "wpys":F
    .restart local v8    # "availw":I
    .restart local v9    # "availh":I
    .restart local v10    # "wpy":F
    :cond_1e9
    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v25, v9

    move/from16 v24, v10

    .line 433
    .end local v5    # "yOffset":I
    .end local v6    # "xOffset":I
    .end local v7    # "wpys":F
    .end local v8    # "availw":I
    .end local v9    # "availh":I
    .end local v10    # "wpy":F
    .restart local v19    # "yOffset":I
    .restart local v20    # "xOffset":I
    .restart local v22    # "wpys":F
    .restart local v23    # "availw":I
    .restart local v24    # "wpy":F
    .restart local v25    # "availh":I
    :goto_1f5
    return v18
.end method

.method updateWallpaperVisibility()V
    .registers 4

    .line 295
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WallpaperController;->shouldWallpaperBeVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    .line 297
    .local v0, "visible":Z
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "curTokenNdx":I
    :goto_e
    if-ltz v1, :cond_1e

    .line 298
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    .line 299
    .local v2, "token":Lcom/android/server/wm/WallpaperWindowToken;
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WallpaperWindowToken;->setVisibility(Z)V

    .line 297
    .end local v2    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 301
    .end local v1    # "curTokenNdx":I
    :cond_1e
    return-void
.end method

.method wallpaperCommandComplete(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "window"    # Landroid/os/IBinder;

    .line 547
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 548
    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_16

    .line 549
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 550
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 552
    :cond_16
    return-void
.end method

.method wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "window"    # Landroid/os/IBinder;

    .line 555
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 556
    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_16

    .line 557
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 558
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 560
    :cond_16
    return-void
.end method

.method wallpaperTransitionReady()Z
    .registers 10

    .line 752
    const/4 v0, 0x1

    .line 753
    .local v0, "transitionReady":Z
    const/4 v1, 0x1

    .line 754
    .local v1, "wallpaperReady":Z
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 755
    .local v2, "curTokenIndex":I
    :goto_a
    const/16 v4, 0x27

    if-ltz v2, :cond_63

    if-eqz v1, :cond_63

    .line 756
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WallpaperWindowToken;

    .line 757
    .local v5, "token":Lcom/android/server/wm/WallpaperWindowToken;
    invoke-virtual {v5}, Lcom/android/server/wm/WallpaperWindowToken;->hasVisibleNotDrawnWallpaper()Z

    move-result v6

    if-eqz v6, :cond_60

    .line 759
    const/4 v1, 0x0

    .line 760
    iget v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_25

    .line 762
    const/4 v0, 0x0

    .line 764
    :cond_25
    if-nez v6, :cond_41

    .line 765
    iput v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 766
    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3, v4, p0}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 767
    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 768
    invoke-virtual {v6, v4, p0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x1f4

    .line 767
    invoke-virtual {v3, v6, v7, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 772
    :cond_41
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v3, :cond_63

    .line 773
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wallpaper should be visible but has not been drawn yet. mWallpaperDrawState="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "WindowManager"

    invoke-static {v6, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 755
    .end local v5    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    :cond_60
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 780
    .end local v2    # "curTokenIndex":I
    :cond_63
    :goto_63
    if-eqz v1, :cond_6f

    .line 781
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 782
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2, v4, p0}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 785
    :cond_6f
    return v0
.end method
