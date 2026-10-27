.class public Lcom/android/server/wm/WallpaperController;
.super Ljava/lang/Object;
.source "WallpaperController.java"


# instance fields
.field public mComputeMaxZoomOutFunction:Ljava/util/function/Consumer;

.field public mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

.field public mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

.field public final mFindWallpaperTargetFunction:Lcom/android/internal/util/ToBooleanFunction;

.field public mLargestDisplaySize:Landroid/graphics/Point;

.field public mLastFrozen:Z

.field public mLastWallpaperTimeoutTime:J

.field public mLastWallpaperZoomOut:F

.field public mMaxWallpaperScale:F

.field public mMinWallpaperScale:F

.field public mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

.field public mService:Lcom/android/server/wm/WindowManagerService;

.field public mShouldOffsetWallpaperCenter:Z

.field public mWallpaperDrawState:I

.field public mWallpaperTarget:Lcom/android/server/wm/WindowState;

.field public final mWallpaperTokens:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$Foys_2tpRO31MIGZTpXv0yRJ2NM(Lcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WallpaperController;->lambda$new$1(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hx8XkBssStE3IyUBABr4kxamAjk(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 730
    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$mGgSC2tR8xiTbib_tZYb3IIU2Ig(Lcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WallpaperController;->lambda$new$0(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 5

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 81
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    .line 83
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    const/4 v1, 0x0

    .line 86
    iput-boolean v1, p0, Lcom/android/server/wm/WallpaperController;->mLastFrozen:Z

    .line 103
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 105
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mLargestDisplaySize:Landroid/graphics/Point;

    .line 107
    new-instance v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-direct {v1, v0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;-><init>(Lcom/android/server/wm/WallpaperController-IA;)V

    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .line 115
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    .line 118
    new-instance v0, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WallpaperController;)V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindWallpaperTargetFunction:Lcom/android/internal/util/ToBooleanFunction;

    .line 184
    new-instance v0, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WallpaperController;)V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mComputeMaxZoomOutFunction:Ljava/util/function/Consumer;

    .line 192
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 193
    iput-object p2, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 194
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1050134

    .line 196
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p2

    iput p2, p0, Lcom/android/server/wm/WallpaperController;->mMinWallpaperScale:F

    const p2, 0x1050133

    .line 197
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p2

    iput p2, p0, Lcom/android/server/wm/WallpaperController;->mMaxWallpaperScale:F

    const p2, 0x1110225

    .line 198
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/WallpaperController;->mShouldOffsetWallpaperCenter:Z

    return-void
.end method


# virtual methods
.method public addWallpaperToken(Lcom/android/server/wm/WallpaperWindowToken;)V
    .registers 2

    .line 874
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public adjustWallpaperWindows()V
    .registers 10

    .line 773
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->findWallpaperTarget()V

    .line 774
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperWindowsTarget(Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)V

    .line 775
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController;->getTokenForTarget(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    move v3, v1

    goto :goto_15

    :cond_14
    move v3, v2

    :goto_15
    if-eqz v3, :cond_40

    .line 782
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v5, v4, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    const/4 v6, 0x0

    cmpl-float v7, v5, v6

    if-ltz v7, :cond_26

    .line 783
    iput v5, v0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperX:F

    .line 784
    iget v5, v4, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v5, v0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperXStep:F

    .line 786
    :cond_26
    iget v5, v4, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v6, v5, v6

    if-ltz v6, :cond_32

    .line 787
    iput v5, v0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperY:F

    .line 788
    iget v5, v4, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput v5, v0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperYStep:F

    .line 790
    :cond_32
    iget v5, v4, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_3a

    .line 791
    iput v5, v0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetX:I

    .line 793
    :cond_3a
    iget v4, v4, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v4, v6, :cond_40

    .line 794
    iput v4, v0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetY:I

    .line 798
    :cond_40
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_4c

    .line 799
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_4c

    move v0, v1

    goto :goto_4d

    :cond_4c
    move v0, v2

    .line 801
    :goto_4d
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerFlags;->mAodTransition:Z

    if-eqz v4, :cond_5c

    .line 802
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->isKeyguardLockedOrAodShowing()Z

    move-result v4

    goto :goto_62

    .line 803
    :cond_5c
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    move-result v4

    .line 800
    :goto_62
    invoke-virtual {p0, v0, v4}, Lcom/android/server/wm/WallpaperController;->updateWallpaperTokens(ZZ)V

    .line 805
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    int-to-long v4, v0

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerFlags;->mAodTransition:Z

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isKeyguardLockedOrAodShowing()Z

    move-result v0

    goto :goto_87

    :cond_81
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    move-result v0

    :goto_87
    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v4, v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v4, 0x66cfee6d654a358fL    # 1.736699569115551E187

    const/16 v7, 0x3d

    invoke-static {v6, v4, v5, v7, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_a3
    if-eqz v3, :cond_c1

    .line 812
    iget-boolean v0, p0, Lcom/android/server/wm/WallpaperController;->mLastFrozen:Z

    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v3, v3, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->isWallpaperTargetForLetterbox:Z

    if-eq v0, v3, :cond_c1

    .line 813
    iput-boolean v3, p0, Lcom/android/server/wm/WallpaperController;->mLastFrozen:Z

    if-eqz v3, :cond_b5

    .line 815
    const-string v0, "android.wallpaper.freeze"

    :goto_b3
    move-object v4, v0

    goto :goto_b8

    :cond_b5
    const-string v0, "android.wallpaper.unfreeze"

    goto :goto_b3

    :goto_b8
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    .line 814
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/WallpaperController;->sendWindowWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V

    goto :goto_c2

    :cond_c1
    move-object v3, p0

    .line 819
    :goto_c2
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    aget-boolean p0, p0, v1

    if-eqz p0, :cond_e2

    iget-object p0, v3, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iget-object v0, v3, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x775400407b09c9a8L    # -6.783856069054106E-267

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v3, v4, v2, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_e2
    return-void
.end method

.method public canScreenshotWallpaper()Z
    .registers 2

    .line 889
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController;->canScreenshotWallpaper(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public final canScreenshotWallpaper(Lcom/android/server/wm/WindowState;)Z
    .registers 3

    .line 893
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_c

    return v0

    :cond_c
    if-nez p1, :cond_f

    return v0

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method public clearLastWallpaperTimeoutTime()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 623
    iput-wide v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J

    return-void
.end method

.method public collectTopWallpapers(Lcom/android/server/wm/Transition;)V
    .registers 3

    .line 669
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->hasTopShowWhenLockedWallpaper()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 670
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    iget-object v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 673
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->hasTopHideWhenLockedWallpaper()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 674
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object p0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    iget-object p0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    :cond_26
    return-void
.end method

.method public final computeLastWallpaperZoomOut()V
    .registers 3

    const/4 v0, 0x0

    .line 976
    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    .line 977
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mComputeMaxZoomOutFunction:Ljava/util/function/Consumer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    .line 986
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "displayId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 987
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mWallpaperTarget="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 988
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastWallpaperZoomOut="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 989
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_3c

    .line 990
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPrevWallpaperTarget="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 993
    :cond_3c
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_44
    if-ltz v0, :cond_99

    .line 994
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    .line 995
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 996
    const-string v2, "mWallpaperX"

    iget v3, v1, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperX:F

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/android/server/wm/WallpaperController;->dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;F)V

    .line 997
    const-string v2, "mWallpaperY"

    iget v3, v1, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperY:F

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/android/server/wm/WallpaperController;->dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;F)V

    .line 998
    const-string v2, "mWallpaperXStep"

    iget v3, v1, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperXStep:F

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/android/server/wm/WallpaperController;->dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;F)V

    .line 999
    const-string v2, "mWallpaperYStep"

    iget v3, v1, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperYStep:F

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/android/server/wm/WallpaperController;->dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;F)V

    .line 1000
    iget v2, v1, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetX:I

    int-to-float v2, v2

    const-string v3, "mWallpaperDisplayOffsetX"

    invoke-virtual {p0, p1, p2, v3, v2}, Lcom/android/server/wm/WallpaperController;->dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;F)V

    .line 1001
    iget v1, v1, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetY:I

    int-to-float v1, v1

    const-string v2, "mWallpaperDisplayOffsetY"

    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/android/server/wm/WallpaperController;->dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_44

    :cond_99
    return-void
.end method

.method public final dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;F)V
    .registers 5

    .line 1006
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    cmpl-float p0, p4, p0

    if-ltz p0, :cond_26

    .line 1007
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_28

    :cond_26
    const-string p0, "NA"

    :goto_28
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public final findWallpaperTarget()V
    .registers 4

    .line 627
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->reset()V

    .line 637
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->findWallpapers()V

    .line 638
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mFindWallpaperTargetFunction:Lcom/android/internal/util/ToBooleanFunction;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 639
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v1, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mNeedsShowWhenLockedWallpaper:Z

    if-eqz v1, :cond_19

    .line 641
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setUseTopWallpaperAsTarget(Z)V

    .line 644
    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v1, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_3f

    iget-boolean v1, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    if-eqz v1, :cond_3f

    .line 646
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerFlags;->mAodTransition:Z

    if-eqz v1, :cond_32

    .line 647
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isKeyguardLockedOrAodShowing()Z

    move-result p0

    goto :goto_38

    .line 648
    :cond_32
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    move-result p0

    .line 646
    :goto_38
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->getTopWallpaper(Z)Lcom/android/server/wm/WindowState;

    move-result-object p0

    .line 645
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    :cond_3f
    return-void
.end method

.method public final findWallpapers()V
    .registers 7

    .line 653
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_4e

    .line 654
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    .line 655
    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperWindowToken;->canShowWhenLocked()Z

    move-result v2

    .line 656
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1c
    if-ltz v3, :cond_4b

    .line 657
    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 658
    iget-boolean v5, v4, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v5, :cond_29

    goto :goto_48

    :cond_29
    if-eqz v2, :cond_39

    .line 659
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v5}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->hasTopShowWhenLockedWallpaper()Z

    move-result v5

    if-nez v5, :cond_39

    .line 660
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setTopShowWhenLockedWallpaper(Lcom/android/server/wm/WindowState;)V

    goto :goto_48

    :cond_39
    if-nez v2, :cond_48

    .line 661
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v5}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->hasTopHideWhenLockedWallpaper()Z

    move-result v5

    if-nez v5, :cond_48

    .line 662
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setTopHideWhenLockedWallpaper(Lcom/android/server/wm/WindowState;)V

    :cond_48
    :goto_48
    add-int/lit8 v3, v3, -0x1

    goto :goto_1c

    :cond_4b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_4e
    return-void
.end method

.method public final getDisplayWidthOffset(ILandroid/graphics/Rect;Z)I
    .registers 4

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final getOrCreateDefaultDisplayInfo()Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;
    .registers 4

    .line 463
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    if-eqz v0, :cond_5

    return-object v0

    .line 466
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 467
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 468
    new-instance v2, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    invoke-direct {v2, v0, v1}, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;-><init>(Landroid/view/WindowManager;Landroid/content/res/Resources;)V

    iput-object v2, p0, Lcom/android/server/wm/WallpaperController;->mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    return-object v2
.end method

.method public getPrevWallpaperTarget()Lcom/android/server/wm/WindowState;
    .registers 1

    .line 247
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public final getTokenForTarget(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WallpaperWindowToken;
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 616
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .line 617
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result p1

    if-nez p1, :cond_24

    :cond_14
    iget-object p1, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean p1, p1, Lcom/android/server/wm/WindowManagerFlags;->mAodTransition:Z

    if-eqz p1, :cond_26

    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 618
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isAodShowing()Z

    move-result p0

    if-eqz p0, :cond_26

    :cond_24
    const/4 p0, 0x1

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    .line 616
    :goto_27
    invoke-virtual {v1, p0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->getTopWallpaper(Z)Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-nez p0, :cond_2e

    return-object v0

    .line 619
    :cond_2e
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object p0

    return-object p0
.end method

.method public getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;
    .registers 7

    .line 955
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_38

    .line 956
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    .line 957
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_18
    if-ltz v2, :cond_35

    .line 958
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 959
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v4

    if-eqz v4, :cond_32

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_32

    return-object v3

    :cond_32
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    :cond_35
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_38
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWallpaperTarget()Lcom/android/server/wm/WindowState;
    .registers 1

    .line 243
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public hideWallpapers(Lcom/android/server/wm/WindowState;)V
    .registers 14

    .line 266
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_b

    if-ne v0, p1, :cond_62

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_b

    goto :goto_62

    .line 270
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    if-eqz v0, :cond_12

    goto :goto_62

    .line 275
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_1a
    if-ltz v0, :cond_62

    .line 276
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    .line 277
    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperWindowToken;->isVisible()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5c

    .line 278
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_5c

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v10, -0x48eb40cce662c01dL    # -2.3258049552014316E-43

    filled-new-array {v3, v5, v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v9, v10, v11, v4, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 283
    :cond_5c
    invoke-virtual {v2, v4}, Lcom/android/server/wm/WallpaperWindowToken;->setVisibility(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1a

    :cond_62
    :goto_62
    return-void
.end method

.method public final isBackNavigationTarget(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 178
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackNavigationController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public isBelowWallpaperTarget(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 255
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_c

    iget p0, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    iget p1, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-lt p0, p1, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 3

    .line 679
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez p0, :cond_13

    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez p0, :cond_13

    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_13

    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne p0, v0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 251
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isWallpaperVisible()Z
    .registers 4

    .line 259
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1c

    .line 260
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperWindowToken;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_19

    return v1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$new$0(Lcom/android/server/wm/WindowState;)Z
    .registers 6

    .line 119
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 123
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-nez v0, :cond_12

    return v1

    .line 130
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_70

    .line 131
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 132
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardOccluded()Z

    move-result v0

    if-nez v0, :cond_33

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 134
    :cond_33
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/WallpaperController;->isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_48

    .line 135
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v3

    if-nez v3, :cond_48

    goto :goto_4a

    :cond_48
    move v3, v1

    goto :goto_4b

    :cond_4a
    :goto_4a
    move v3, v2

    :goto_4b
    iput-boolean v3, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mNeedsShowWhenLockedWallpaper:Z

    goto :goto_a0

    .line 137
    :cond_4e
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    move-result v0

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v3}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_a0

    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 138
    invoke-virtual {v0, v3}, Lcom/android/server/wm/TransitionController;->hasTransientLaunch(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 142
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    return v1

    .line 145
    :cond_70
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerFlags;->mAodTransition:Z

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 146
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isKeyguardLockedOrAodShowing()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 147
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v3}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_a0

    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 148
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isInAodAppearTransition()Z

    move-result v0

    if-eqz v0, :cond_a0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 150
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    return v2

    .line 155
    :cond_a0
    :goto_a0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WallpaperController;->isBackNavigationTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 157
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    return v2

    .line 159
    :cond_ac
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    move-result v0

    if-eqz v0, :cond_df

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_bd

    .line 160
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v0

    if-eqz v0, :cond_df

    goto :goto_c3

    :cond_bd
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v0

    if-eqz v0, :cond_df

    .line 162
    :goto_c3
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    .line 163
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasWallpaperForLetterboxBackground()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setIsWallpaperTargetForLetterbox(Z)V

    .line 168
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez p1, :cond_de

    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isKeyguardGoingAway()Z

    move-result p0

    if-eqz p0, :cond_de

    return v1

    :cond_de
    return v2

    :cond_df
    return v1
.end method

.method public final synthetic lambda$new$1(Lcom/android/server/wm/WindowState;)V
    .registers 4

    .line 185
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v0, :cond_12

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    iget v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    .line 186
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_12

    .line 187
    iget p1, p1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    iput p1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    :cond_12
    return-void
.end method

.method public mirrorWallpaperSurface()Landroid/view/SurfaceControl;
    .registers 2

    .line 945
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_e

    .line 947
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    goto :goto_f

    :cond_e
    move-object p0, v0

    :goto_f
    if-eqz p0, :cond_16

    .line 950
    invoke-static {p0}, Landroid/view/SurfaceControl;->mirrorSurface(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0

    :cond_16
    return-object v0
.end method

.method public onWallpaperTokenReordered()V
    .registers 3

    .line 882
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_f

    .line 883
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    :cond_f
    return-void
.end method

.method public processWallpaperDrawPendingTimeout()Z
    .registers 3

    .line 824
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    const/4 v0, 0x2

    .line 825
    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 832
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController;->startAnimation()V

    return v1

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public removeWallpaperToken(Lcom/android/server/wm/WallpaperWindowToken;)V
    .registers 2

    .line 878
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetLargestDisplay(Landroid/view/Display;)V
    .registers 3

    if-eqz p1, :cond_c

    .line 203
    invoke-virtual {p1}, Landroid/view/Display;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    const/4 p1, 0x0

    .line 204
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mLargestDisplaySize:Landroid/graphics/Point;

    :cond_c
    return-void
.end method

.method public screenshotWallpaperLocked()Landroid/graphics/Bitmap;
    .registers 4

    .line 915
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 916
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController;->canScreenshotWallpaper(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_c

    return-object v1

    .line 920
    :cond_c
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    const/4 v2, 0x0

    .line 921
    invoke-virtual {p0, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 925
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 924
    invoke-static {v0, p0, v2}, Landroid/window/ScreenCaptureInternal;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;

    move-result-object p0

    if-nez p0, :cond_28

    .line 928
    const-string p0, "WindowManager"

    const-string v0, "Failed to screenshot wallpaper"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 932
    :cond_28
    invoke-virtual {p0}, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p0

    .line 931
    invoke-static {v0, p0}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final sendWindowWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V
    .registers 14

    .line 562
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1e

    .line 563
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    .line 564
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WallpaperWindowToken;->sendWindowWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1e
    return-void
.end method

.method public sendWindowWallpaperCommandUnchecked(Lcom/android/server/wm/WindowState;Ljava/lang/String;IIILandroid/os/Bundle;)V
    .registers 7

    move-object p1, p2

    move p2, p3

    move p3, p4

    move p4, p5

    move-object p5, p6

    .line 557
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/WallpaperController;->sendWindowWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public setMaxWallpaperScale(F)V
    .registers 2

    .line 215
    iput p1, p0, Lcom/android/server/wm/WallpaperController;->mMaxWallpaperScale:F

    return-void
.end method

.method public setMinWallpaperScale(F)V
    .registers 2

    .line 210
    iput p1, p0, Lcom/android/server/wm/WallpaperController;->mMinWallpaperScale:F

    return-void
.end method

.method public setShouldOffsetWallpaperCenter(Z)V
    .registers 2

    .line 219
    iput-boolean p1, p0, Lcom/android/server/wm/WallpaperController;->mShouldOffsetWallpaperCenter:Z

    return-void
.end method

.method public setShouldZoomOutWallpaper(Lcom/android/server/wm/WindowState;Z)V
    .registers 4

    .line 541
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mShouldScaleWallpaper:Z

    if-eq p2, v0, :cond_9

    .line 542
    iput-boolean p2, p1, Lcom/android/server/wm/WindowState;->mShouldScaleWallpaper:Z

    .line 543
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;)V

    :cond_9
    return-void
.end method

.method public setWallpaperZoomOut(Lcom/android/server/wm/WindowState;F)V
    .registers 4

    .line 530
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_25

    .line 531
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    .line 532
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->computeLastWallpaperZoomOut()V

    .line 533
    iget-object p1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_15
    if-ltz p1, :cond_25

    .line 534
    iget-object p2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/WallpaperWindowToken;

    .line 535
    invoke-virtual {p2}, Lcom/android/server/wm/WallpaperWindowToken;->updateWallpaperOffset()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_15

    :cond_25
    return-void
.end method

.method public setWindowWallpaperDisplayOffset(Lcom/android/server/wm/WindowState;II)V
    .registers 5

    .line 548
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-ne v0, p2, :cond_a

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v0, p3, :cond_9

    goto :goto_a

    :cond_9
    return-void

    .line 549
    :cond_a
    :goto_a
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    .line 550
    iput p3, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    .line 551
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public setWindowWallpaperPosition(Lcom/android/server/wm/WindowState;FFFF)V
    .registers 7

    .line 520
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_e

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    return-void

    .line 521
    :cond_e
    :goto_e
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 522
    iput p3, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 523
    iput p4, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 524
    iput p5, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 525
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public updateWallpaperOffset(Lcom/android/server/wm/WindowState;)Z
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 289
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getParentFrame()Landroid/graphics/Rect;

    move-result-object v2

    .line 290
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 291
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v5, v3

    int-to-float v6, v4

    div-float v7, v5, v6

    .line 293
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 295
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v3

    .line 335
    new-instance v4, Landroid/graphics/Point;

    iget v9, v1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iget v10, v1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-direct {v4, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    .line 337
    invoke-virtual {v3}, Lcom/android/server/wm/WallpaperWindowToken;->getCropHints()Landroid/util/SparseArray;

    move-result-object v9

    .line 338
    iget v10, v4, Landroid/graphics/Point;->x:I

    if-lez v10, :cond_42

    iget v10, v4, Landroid/graphics/Point;->y:I

    if-gtz v10, :cond_35

    goto :goto_42

    .line 339
    :cond_35
    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->getOrCreateDefaultDisplayInfo()Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    move-result-object v10

    .line 340
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isRtl()Z

    move-result v11

    .line 339
    invoke-static {v8, v10, v4, v9, v11}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object v4

    goto :goto_46

    .line 338
    :cond_42
    :goto_42
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v4

    .line 341
    :goto_46
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 342
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v8, v8

    int-to-float v9, v9

    div-float v10, v8, v9

    cmpl-float v10, v10, v7

    const/4 v12, 0x1

    if-ltz v10, :cond_59

    move v10, v12

    goto :goto_5a

    :cond_59
    const/4 v10, 0x0

    .line 349
    :goto_5a
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v13

    const/high16 v14, 0x3f800000    # 1.0f

    if-eqz v13, :cond_64

    move v6, v14

    goto :goto_70

    :cond_64
    if-eqz v10, :cond_6b

    div-float/2addr v6, v9

    .line 350
    iget v5, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    div-float/2addr v6, v5

    goto :goto_70

    :cond_6b
    div-float/2addr v5, v8

    .line 351
    iget v6, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    div-float v6, v5, v6

    :goto_70
    if-eqz v10, :cond_75

    mul-float v5, v9, v7

    goto :goto_76

    :cond_75
    move v5, v8

    :goto_76
    if-eqz v10, :cond_7a

    move v7, v9

    goto :goto_7c

    :cond_7a
    div-float v7, v8, v7

    .line 358
    :goto_7c
    iget v10, v4, Landroid/graphics/Rect;->left:I

    neg-int v10, v10

    sub-float v13, v6, v14

    mul-float v15, v13, v5

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    float-to-int v15, v15

    add-int/2addr v10, v15

    .line 359
    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    mul-float/2addr v13, v7

    div-float v13, v13, v16

    float-to-int v13, v13

    add-int/2addr v4, v13

    sub-float/2addr v8, v5

    .line 362
    iget v5, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v8, v5

    float-to-int v5, v8

    sub-float/2addr v9, v7

    .line 363
    iget v7, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v9, v7

    float-to-int v7, v9

    .line 387
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isRtl()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_a4

    move v8, v14

    goto :goto_a5

    :cond_a4
    move v8, v9

    .line 392
    :goto_a5
    iget v13, v3, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperX:F

    cmpl-float v15, v13, v9

    if-ltz v15, :cond_ac

    move v8, v13

    .line 395
    :cond_ac
    iget v13, v3, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperXStep:F

    cmpl-float v15, v13, v9

    const/high16 v16, -0x40800000    # -1.0f

    if-ltz v15, :cond_b5

    goto :goto_b7

    :cond_b5
    move/from16 v13, v16

    .line 401
    :goto_b7
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isRtl()Z

    move-result v15

    .line 400
    invoke-virtual {v0, v5, v2, v15}, Lcom/android/server/wm/WallpaperController;->getDisplayWidthOffset(ILandroid/graphics/Rect;Z)I

    move-result v2

    sub-int/2addr v5, v2

    const/high16 v15, 0x3f000000    # 0.5f

    if-lez v5, :cond_cc

    int-to-float v5, v5

    mul-float/2addr v5, v8

    add-float/2addr v5, v15

    float-to-int v5, v5

    neg-int v5, v5

    :goto_c9
    move/from16 v17, v9

    goto :goto_ce

    :cond_cc
    const/4 v5, 0x0

    goto :goto_c9

    .line 404
    :goto_ce
    iget v9, v3, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetX:I

    const/high16 v11, -0x80000000

    if-eq v9, v11, :cond_d6

    add-int/2addr v5, v9

    goto :goto_dd

    .line 408
    :cond_d6
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isRtl()Z

    move-result v9

    if-nez v9, :cond_dd

    sub-int/2addr v5, v2

    :cond_dd
    :goto_dd
    int-to-float v2, v5

    int-to-float v5, v10

    .line 413
    iget v9, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v5, v9

    add-float/2addr v2, v5

    float-to-int v2, v2

    .line 415
    iget v5, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_f3

    iget v5, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v5, v5, v13

    if-eqz v5, :cond_f1

    goto :goto_f3

    :cond_f1
    const/4 v5, 0x0

    goto :goto_f8

    .line 416
    :cond_f3
    :goto_f3
    iput v8, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 417
    iput v13, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    move v5, v12

    .line 421
    :goto_f8
    iget v8, v3, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperY:F

    cmpl-float v9, v8, v17

    if-ltz v9, :cond_ff

    goto :goto_100

    :cond_ff
    move v8, v15

    .line 422
    :goto_100
    iget v9, v3, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperYStep:F

    cmpl-float v10, v9, v17

    if-ltz v10, :cond_107

    goto :goto_109

    :cond_107
    move/from16 v9, v16

    :goto_109
    if-lez v7, :cond_113

    int-to-float v7, v7

    mul-float/2addr v7, v8

    add-float/2addr v7, v15

    float-to-int v7, v7

    neg-int v7, v7

    move/from16 v18, v7

    goto :goto_115

    :cond_113
    const/16 v18, 0x0

    .line 424
    :goto_115
    iget v3, v3, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetY:I

    if-eq v3, v11, :cond_11b

    add-int v18, v18, v3

    :cond_11b
    move/from16 v3, v18

    int-to-float v3, v3

    int-to-float v4, v4

    .line 427
    iget v7, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v4, v7

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 429
    iget v4, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_130

    iget v4, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v4, v4, v9

    if-eqz v4, :cond_135

    .line 430
    :cond_130
    iput v8, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 431
    iput v9, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    move v5, v12

    .line 435
    :cond_135
    iget v4, v1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    iget v7, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    invoke-static {v4, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_144

    .line 436
    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    iput v4, v1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    goto :goto_145

    :cond_144
    move v12, v5

    .line 439
    :goto_145
    iget-boolean v4, v1, Lcom/android/server/wm/WindowState;->mShouldScaleWallpaper:Z

    if-eqz v4, :cond_14f

    .line 440
    iget v4, v1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WallpaperController;->zoomOutToScale(F)F

    move-result v14

    :cond_14f
    mul-float/2addr v14, v6

    .line 442
    invoke-virtual {v1, v2, v3, v14}, Lcom/android/server/wm/WindowState;->setWallpaperOffset(IIF)Z

    move-result v0

    if-eqz v12, :cond_16d

    .line 444
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_16d

    .line 451
    :try_start_15e
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget v4, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iget v5, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iget v6, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iget v7, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iget v8, v1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    invoke-interface/range {v3 .. v8}, Landroid/view/IWindow;->dispatchWallpaperOffsets(FFFFF)V
    :try_end_16d
    .catch Landroid/os/RemoteException; {:try_start_15e .. :try_end_16d} :catch_16d

    :catch_16d
    :cond_16d
    return v0
.end method

.method public final updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;)V
    .registers 6

    .line 569
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_15

    .line 570
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 571
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_15

    move-object v0, p1

    .line 578
    :cond_15
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController;->getTokenForTarget(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object p0

    if-nez p0, :cond_1c

    return-void

    .line 581
    :cond_1c
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_26

    .line 582
    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperX:F

    goto :goto_2e

    .line 583
    :cond_26
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_2e

    .line 584
    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperX:F

    .line 586
    :cond_2e
    :goto_2e
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_37

    .line 587
    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperY:F

    goto :goto_3f

    .line 588
    :cond_37
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_3f

    .line 589
    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperY:F

    .line 591
    :cond_3f
    :goto_3f
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_48

    .line 592
    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetX:I

    goto :goto_4e

    .line 593
    :cond_48
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-eq v1, v3, :cond_4e

    .line 594
    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetX:I

    .line 596
    :cond_4e
    :goto_4e
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v1, v3, :cond_55

    .line 597
    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetY:I

    goto :goto_5b

    .line 598
    :cond_55
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v1, v3, :cond_5b

    .line 599
    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetY:I

    .line 601
    :cond_5b
    :goto_5b
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_64

    .line 602
    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperXStep:F

    goto :goto_6c

    .line 603
    :cond_64
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_6c

    .line 604
    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperXStep:F

    .line 606
    :cond_6c
    :goto_6c
    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v1, v0, v2

    if-ltz v1, :cond_75

    .line 607
    iput v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperYStep:F

    goto :goto_7d

    .line 608
    :cond_75
    iget p1, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v0, p1, v2

    if-ltz v0, :cond_7d

    .line 609
    iput p1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperYStep:F

    .line 611
    :cond_7d
    :goto_7d
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperWindowToken;->updateWallpaperOffset()V

    return-void
.end method

.method public final updateWallpaperTokens(ZZ)V
    .registers 9

    .line 759
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v3, 0x39249a0d81e31e2L

    const/16 v5, 0xf

    invoke-static {v0, v3, v4, v5, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 761
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->getTopWallpaper(Z)Lcom/android/server/wm/WindowState;

    move-result-object p2

    if-nez p2, :cond_29

    const/4 p2, 0x0

    goto :goto_2f

    .line 763
    :cond_29
    iget-object p2, p2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object p2

    .line 764
    :goto_2f
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_37
    if-ltz v0, :cond_4e

    .line 765
    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WallpaperWindowToken;

    if-eqz p1, :cond_47

    if-ne v3, p2, :cond_47

    move v4, v2

    goto :goto_48

    :cond_47
    move v4, v1

    .line 766
    :goto_48
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WallpaperWindowToken;->updateWallpaperWindows(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_37

    :cond_4e
    return-void
.end method

.method public final updateWallpaperWindowsTarget(Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)V
    .registers 13

    .line 686
    iget-object v0, p1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 688
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v1, v0, :cond_df

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_10

    if-ne v1, v0, :cond_10

    goto/16 :goto_df

    .line 704
    :cond_10
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_37

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v7, -0x340f41839ad4cc1aL    # -6.569020556411756E57

    filled-new-array {v1, v4, v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v7, v8, v3, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 707
    :cond_37
    iput-object v2, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 709
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 710
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_44

    if-eqz v0, :cond_44

    .line 713
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;)V

    :cond_44
    if-eqz v0, :cond_fe

    if-nez v1, :cond_4a

    goto/16 :goto_fe

    .line 721
    :cond_4a
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v4

    .line 722
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v5

    .line 723
    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    aget-boolean v6, v6, v3

    if-eqz v6, :cond_6e

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v9, 0x4e10cf5a90ab34e7L    # 1.132990118440253E68

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v8, v9, v10, v3, v6}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_6e
    if-eqz v5, :cond_fe

    if-nez v4, :cond_74

    goto/16 :goto_fe

    .line 730
    :cond_74
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v5, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda2;

    invoke-direct {v5, v1}, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WindowState;)V

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-nez v4, :cond_83

    goto/16 :goto_fe

    .line 734
    :cond_83
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v5, 0x1

    if-eqz v4, :cond_90

    .line 735
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    if-nez v4, :cond_90

    move v4, v5

    goto :goto_91

    :cond_90
    move v4, v3

    .line 736
    :goto_91
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_9c

    .line 737
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v6

    if-nez v6, :cond_9c

    goto :goto_9d

    :cond_9c
    move v5, v3

    .line 739
    :goto_9d
    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    aget-boolean v6, v6, v3

    if-eqz v6, :cond_c3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    filled-new-array {v6, v9, v7, v10}, [Ljava/lang/Object;

    move-result-object v6

    const-wide v9, 0x69f347bd77e2314cL    # 2.3612905130085716E202

    const/16 v7, 0xcc

    invoke-static {v8, v9, v10, v7, v6}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 743
    :cond_c3
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_db

    if-nez v5, :cond_db

    .line 746
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_d9

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, -0x3c4cd0cffd3dc73cL    # -1.3823763990325996E18

    invoke-static {v4, v5, v6, v3, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 749
    :cond_d9
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 752
    :cond_db
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    return-void

    .line 691
    :cond_df
    :goto_df
    iget-object p1, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez p1, :cond_e4

    goto :goto_fe

    .line 696
    :cond_e4
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result p1

    if-nez p1, :cond_fe

    .line 697
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    aget-boolean p1, p1, v3

    if-eqz p1, :cond_fa

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x304118fe7ad8c55bL    # -1.3977537621012356E76

    invoke-static {p1, v4, v5, v3, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 698
    :cond_fa
    iput-object v2, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 699
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    :cond_fe
    :goto_fe
    return-void
.end method

.method public wallpaperTransitionReady()Z
    .registers 9

    .line 841
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    const/16 v2, 0x27

    const/4 v3, 0x0

    if-ltz v0, :cond_5b

    .line 843
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WallpaperWindowToken;

    .line 844
    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperWindowToken;->hasVisibleNotDrawnWallpaper()Z

    move-result v4

    if-eqz v4, :cond_58

    .line 847
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    const/4 v4, 0x2

    if-eq v0, v4, :cond_22

    move v4, v3

    goto :goto_23

    :cond_22
    move v4, v1

    :goto_23
    if-nez v0, :cond_3b

    .line 852
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 853
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 854
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 855
    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x1f4

    .line 854
    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 859
    :cond_3b
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_56

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    int-to-long v5, v0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v6, -0x4af7cbdd60b2c42bL    # -3.158724139617855E-53

    invoke-static {v0, v6, v7, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_56
    move v1, v3

    goto :goto_5c

    :cond_58
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_5b
    move v4, v1

    :goto_5c
    if-eqz v1, :cond_67

    .line 866
    iput v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 867
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_67
    return v4
.end method

.method public final zoomOutToScale(F)F
    .registers 4

    .line 982
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mMinWallpaperScale:F

    iget p0, p0, Lcom/android/server/wm/WallpaperController;->mMaxWallpaperScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-static {v0, p0, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    return p0
.end method
