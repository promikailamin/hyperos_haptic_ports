.class public Lcom/android/server/wm/RefreshRatePolicy;
.super Ljava/lang/Object;
.source "RefreshRatePolicy.java"


# instance fields
.field public final mDisplayInfo:Landroid/view/DisplayInfo;

.field public final mHighRefreshRateDenylist:Lcom/android/server/wm/HighRefreshRateDenylist;

.field public final mLowRefreshRateMode:Landroid/view/Display$Mode;

.field public mMaxSupportedRefreshRate:F

.field public mMinSupportedRefreshRate:F

.field public final mNonHighRefreshRatePackages:Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

.field public final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmMaxSupportedRefreshRate(Lcom/android/server/wm/RefreshRatePolicy;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMaxSupportedRefreshRate:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMinSupportedRefreshRate(Lcom/android/server/wm/RefreshRatePolicy;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMinSupportedRefreshRate:F

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/DisplayInfo;Lcom/android/server/wm/HighRefreshRateDenylist;)V
    .registers 5

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;-><init>(Lcom/android/server/wm/RefreshRatePolicy;)V

    iput-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

    .line 91
    iput-object p2, p0, Lcom/android/server/wm/RefreshRatePolicy;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 92
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RefreshRatePolicy;->findLowRefreshRateMode(Landroid/view/DisplayInfo;)Landroid/view/Display$Mode;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateMode:Landroid/view/Display$Mode;

    .line 93
    iput-object p3, p0, Lcom/android/server/wm/RefreshRatePolicy;->mHighRefreshRateDenylist:Lcom/android/server/wm/HighRefreshRateDenylist;

    .line 94
    iput-object p1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method


# virtual methods
.method public addRefreshRateRangeForPackage(Ljava/lang/String;FF)V
    .registers 5

    .line 120
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->add(Ljava/lang/String;FF)V

    .line 121
    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    return-void
.end method

.method public calculatePriority(Lcom/android/server/wm/WindowState;)I
    .registers 3

    .line 147
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v0

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RefreshRatePolicy;->getPreferredModeId(Lcom/android/server/wm/WindowState;)I

    move-result p0

    if-nez v0, :cond_e

    if-lez p0, :cond_e

    const/4 p0, 0x2

    return p0

    :cond_e
    if-eqz v0, :cond_14

    if-nez p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    if-eqz v0, :cond_1a

    if-lez p0, :cond_1a

    const/4 p0, 0x0

    return p0

    :cond_1a
    const/4 p0, -0x1

    return p0
.end method

.method public final findLowRefreshRateMode(Landroid/view/DisplayInfo;)Landroid/view/Display$Mode;
    .registers 7

    .line 102
    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v0

    .line 103
    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getDefaultRefreshRates()[F

    move-result-object v1

    .line 104
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    .line 105
    iput v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMinSupportedRefreshRate:F

    .line 106
    iput v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMaxSupportedRefreshRate:F

    .line 107
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    :goto_13
    if-ltz v2, :cond_39

    .line 108
    iget v3, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMinSupportedRefreshRate:F

    aget v4, v1, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMinSupportedRefreshRate:F

    .line 109
    iget v3, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMaxSupportedRefreshRate:F

    aget v4, v1, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMaxSupportedRefreshRate:F

    .line 111
    aget v3, v1, v2

    const/high16 v4, 0x42700000    # 60.0f

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_36

    cmpg-float v4, v3, v0

    if-gez v4, :cond_36

    move v0, v3

    :cond_36
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    .line 115
    :cond_39
    invoke-virtual {p1, v0}, Landroid/view/DisplayInfo;->findDefaultModeByRefreshRate(F)Landroid/view/Display$Mode;

    move-result-object p0

    return-object p0
.end method

.method public getPreferredMaxRefreshRate(Lcom/android/server/wm/WindowState;)F
    .registers 5

    .line 304
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isAnimationRunningSelfOrParent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_26

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInsetsAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_26

    .line 308
    :cond_e
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_17

    return v0

    .line 312
    :cond_17
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object p1

    .line 314
    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->get(Ljava/lang/String;)Landroid/view/SurfaceControl$RefreshRateRange;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 316
    iget p0, p0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    return p0

    :cond_26
    :goto_26
    return v1
.end method

.method public getPreferredMinRefreshRate(Lcom/android/server/wm/WindowState;)F
    .registers 5

    .line 281
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isAnimationRunningSelfOrParent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_26

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInsetsAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_26

    .line 285
    :cond_e
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_17

    return v0

    .line 289
    :cond_17
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object p1

    .line 293
    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->get(Ljava/lang/String;)Landroid/view/SurfaceControl$RefreshRateRange;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 295
    iget p0, p0, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    return p0

    :cond_26
    :goto_26
    return v1
.end method

.method public getPreferredModeId(Lcom/android/server/wm/WindowState;)I
    .registers 2

    .line 130
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    if-gtz p0, :cond_7

    const/4 p0, 0x0

    :cond_7
    return p0
.end method

.method public removeRefreshRateRangeForPackage(Ljava/lang/String;)V
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->remove(Ljava/lang/String;)V

    .line 126
    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    return-void
.end method

.method public updateFrameRateVote(Lcom/android/server/wm/WindowState;)Z
    .registers 13

    .line 227
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 228
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->getRefreshRateSwitchingType()I

    move-result v0

    if-nez v0, :cond_11

    .line 234
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mFrameRateVote:Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;

    invoke-virtual {p0}, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->reset()Z

    move-result p0

    return p0

    .line 239
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInsetsAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 240
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mFrameRateVote:Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;

    invoke-virtual {p0}, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->reset()Z

    move-result p0

    return p0

    :cond_1e
    const/16 v1, 0x64

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v0, v3, :cond_49

    .line 246
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    if-lez v5, :cond_49

    .line 248
    iget-object v6, p0, Lcom/android/server/wm/RefreshRatePolicy;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v6, v6, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    array-length v7, v6

    move v8, v2

    :goto_31
    if-ge v8, v7, :cond_49

    aget-object v9, v6, v8

    .line 249
    invoke-virtual {v9}, Landroid/view/Display$Mode;->getModeId()I

    move-result v10

    if-ne v5, v10, :cond_46

    .line 250
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mFrameRateVote:Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;

    invoke-virtual {v9}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p1

    invoke-virtual {p0, p1, v1, v4}, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->update(FII)Z

    move-result p0

    return p0

    :cond_46
    add-int/lit8 v8, v8, 0x1

    goto :goto_31

    .line 258
    :cond_49
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-lez v6, :cond_59

    .line 259
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mFrameRateVote:Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;

    invoke-virtual {p0, v5, v2, v4}, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->update(FII)Z

    move-result p0

    return p0

    :cond_59
    if-eq v0, v3, :cond_74

    .line 267
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    .line 268
    iget-object v2, p0, Lcom/android/server/wm/RefreshRatePolicy;->mHighRefreshRateDenylist:Lcom/android/server/wm/HighRefreshRateDenylist;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/HighRefreshRateDenylist;->isDenylisted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 269
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mFrameRateVote:Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;

    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateMode:Landroid/view/Display$Mode;

    invoke-virtual {p0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p0

    invoke-virtual {p1, p0, v1, v4}, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->update(FII)Z

    move-result p0

    return p0

    .line 275
    :cond_74
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mFrameRateVote:Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;

    invoke-virtual {p0}, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->reset()Z

    move-result p0

    return p0
.end method
