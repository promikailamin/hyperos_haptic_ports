.class Lcom/android/server/wm/WallpaperWindowToken;
.super Lcom/android/server/wm/WindowToken;
.source "WallpaperWindowToken.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mVisibleRequested:Z


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;ZLcom/android/server/wm/DisplayContent;Z)V
    .registers 13
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "explicit"    # Z
    .param p4, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p5, "ownerCanManageAppTokens"    # Z

    .line 51
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WallpaperWindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;ZLcom/android/server/wm/DisplayContent;ZLandroid/os/Bundle;)V

    .line 52
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;ZLcom/android/server/wm/DisplayContent;ZLandroid/os/Bundle;)V
    .registers 19
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "explicit"    # Z
    .param p4, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p5, "ownerCanManageAppTokens"    # Z
    .param p6, "options"    # Landroid/os/Bundle;

    .line 56
    move-object v11, p0

    const/16 v3, 0x7dd

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;ZZZZLandroid/os/Bundle;)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, v11, Lcom/android/server/wm/WallpaperWindowToken;->mVisibleRequested:Z

    .line 62
    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WallpaperController;->addWallpaperToken(Lcom/android/server/wm/WallpaperWindowToken;)V

    .line 63
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WallpaperWindowToken;->setWindowingMode(I)V

    .line 64
    return-void
.end method

.method private setVisible(Z)V
    .registers 5
    .param p1, "visible"    # Z

    .line 183
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperWindowToken;->isClientVisible()Z

    move-result v0

    .line 184
    .local v0, "wasClientVisible":Z
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WallpaperWindowToken;->setClientVisible(Z)V

    .line 185
    if-eqz p1, :cond_23

    if-nez v0, :cond_23

    .line 186
    iget-object v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_13
    if-ltz v1, :cond_23

    .line 187
    iget-object v2, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 188
    .local v2, "wallpaper":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->requestUpdateWallpaperIfNeeded()V

    .line 186
    .end local v2    # "wallpaper":Lcom/android/server/wm/WindowState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 191
    .end local v1    # "i":I
    :cond_23
    return-void
.end method


# virtual methods
.method addWindow(Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 274
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->addWindow(Lcom/android/server/wm/WindowState;)V

    .line 275
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperWindowToken;->isClientVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 276
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->sendAppVisibilityToClients()V

    .line 278
    :cond_c
    return-void
.end method

.method asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;
    .registers 1

    .line 92
    return-object p0
.end method

.method commitVisibility(Z)V
    .registers 12
    .param p1, "visible"    # Z

    .line 219
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperWindowToken;->isVisible()Z

    move-result v0

    if-ne p1, v0, :cond_7

    return-void

    .line 221
    :cond_7
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_34

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperWindowToken;->isVisible()Z

    move-result v1

    .local v1, "protoLogParam1":Z
    iget-boolean v2, p0, Lcom/android/server/wm/WallpaperWindowToken;->mVisibleRequested:Z

    .local v2, "protoLogParam2":Z
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x36d3f5

    const/16 v5, 0x3c

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 225
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v1    # "protoLogParam1":Z
    .end local v2    # "protoLogParam2":Z
    :cond_34
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WallpaperWindowToken;->setVisibleRequested(Z)V

    .line 226
    invoke-direct {p0, p1}, Lcom/android/server/wm/WallpaperWindowToken;->setVisible(Z)V

    .line 227
    return-void
.end method

.method fillsParent()Z
    .registers 2

    .line 247
    const/4 v0, 0x1

    return v0
.end method

.method forAllWallpaperWindows(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WallpaperWindowToken;",
            ">;)V"
        }
    .end annotation

    .line 242
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/WallpaperWindowToken;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 243
    return-void
.end method

.method hasVisibleNotDrawnWallpaper()Z
    .registers 6

    .line 230
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperWindowToken;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 231
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .local v0, "j":I
    :goto_10
    if-ltz v0, :cond_2a

    .line 232
    iget-object v3, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 233
    .local v3, "wallpaper":Lcom/android/server/wm/WindowState;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v4

    if-nez v4, :cond_27

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 234
    return v2

    .line 231
    .end local v3    # "wallpaper":Lcom/android/server/wm/WindowState;
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    .line 237
    .end local v0    # "j":I
    :cond_2a
    return v1
.end method

.method isVisible()Z
    .registers 2

    .line 268
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperWindowToken;->isClientVisible()Z

    move-result v0

    return v0
.end method

.method isVisibleRequested()Z
    .registers 2

    .line 263
    iget-boolean v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mVisibleRequested:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 69
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mResolvedTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperWindowToken;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 70
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 71
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mResolvedTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperWindowToken;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 72
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_20
    if-ltz v0, :cond_4a

    .line 73
    iget-object v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    iget-object v2, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    .line 74
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    .line 75
    .local v1, "app":Lcom/android/server/wm/WindowProcessController;
    if-eqz v1, :cond_47

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 76
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperWindowToken;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowProcessController;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 72
    .end local v1    # "app":Lcom/android/server/wm/WindowProcessController;
    :cond_47
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .line 80
    .end local v0    # "i":I
    :cond_4a
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_52
    if-ltz v0, :cond_7c

    .line 81
    iget-object v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    iget-object v2, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    .line 82
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    .line 83
    .restart local v1    # "app":Lcom/android/server/wm/WindowProcessController;
    if-eqz v1, :cond_79

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v2

    if-eqz v2, :cond_79

    .line 84
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperWindowToken;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowProcessController;->onMergedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 80
    .end local v1    # "app":Lcom/android/server/wm/WindowProcessController;
    :cond_79
    add-int/lit8 v0, v0, -0x1

    goto :goto_52

    .line 87
    .end local v0    # "i":I
    :cond_7c
    return-void
.end method

.method sendWindowWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .registers 16
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "sync"    # Z

    .line 103
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "wallpaperNdx":I
    :goto_8
    if-ltz v0, :cond_24

    .line 104
    iget-object v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/server/wm/WindowState;

    .line 106
    .local v8, "wallpaper":Lcom/android/server/wm/WindowState;
    :try_start_13
    iget-object v1, v8, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/view/IWindow;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1e} :catch_20

    .line 108
    const/4 p6, 0x0

    .line 110
    goto :goto_21

    .line 109
    :catch_20
    move-exception v1

    .line 103
    .end local v8    # "wallpaper":Lcom/android/server/wm/WindowState;
    :goto_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 112
    .end local v0    # "wallpaperNdx":I
    :cond_24
    return-void
.end method

.method setExiting(Z)V
    .registers 3
    .param p1, "animateExit"    # Z

    .line 97
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->setExiting(Z)V

    .line 98
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WallpaperController;->removeWallpaperToken(Lcom/android/server/wm/WallpaperWindowToken;)V

    .line 99
    return-void
.end method

.method setVisibility(Z)V
    .registers 3
    .param p1, "visible"    # Z

    .line 198
    iget-boolean v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mVisibleRequested:Z

    if-eq v0, p1, :cond_c

    .line 200
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 202
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WallpaperWindowToken;->setVisibleRequested(Z)V

    .line 206
    :cond_c
    if-nez p1, :cond_23

    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v0

    if-nez v0, :cond_22

    .line 207
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 208
    :cond_22
    return-void

    .line 211
    :cond_23
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WallpaperWindowToken;->commitVisibility(Z)V

    .line 212
    return-void
.end method

.method setVisibleRequested(Z)V
    .registers 3
    .param p1, "visible"    # Z

    .line 256
    iget-boolean v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mVisibleRequested:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 257
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mVisibleRequested:Z

    .line 258
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperWindowToken;->setInsetsFrozen(Z)V

    .line 259
    return-void
.end method

.method showWallpaper()Z
    .registers 2

    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method startAnimation(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .line 129
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "ndx":I
    :goto_8
    if-ltz v0, :cond_18

    .line 130
    iget-object v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 131
    .local v1, "windowState":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/animation/Animation;)V

    .line 129
    .end local v1    # "windowState":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 133
    .end local v0    # "ndx":I
    :cond_18
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 283
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->stringName:Ljava/lang/String;

    if-nez v0, :cond_2e

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "WallpaperWindowToken{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    const-string v1, " token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->stringName:Ljava/lang/String;

    .line 290
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_2e
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->stringName:Ljava/lang/String;

    return-object v0
.end method

.method updateWallpaperOffset(Z)V
    .registers 6
    .param p1, "sync"    # Z

    .line 115
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 116
    .local v0, "wallpaperController":Lcom/android/server/wm/WallpaperController;
    iget-object v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "wallpaperNdx":I
    :goto_c
    if-ltz v1, :cond_20

    .line 117
    iget-object v2, p0, Lcom/android/server/wm/WallpaperWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 118
    .local v2, "wallpaper":Lcom/android/server/wm/WindowState;
    invoke-virtual {v0, v2, p1}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;Z)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 120
    const/4 p1, 0x0

    .line 116
    .end local v2    # "wallpaper":Lcom/android/server/wm/WindowState;
    :cond_1d
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 123
    .end local v1    # "wallpaperNdx":I
    :cond_20
    return-void
.end method

.method updateWallpaperWindows(Z)Z
    .registers 12
    .param p1, "visible"    # Z

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "changed":Z
    iget-boolean v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mVisibleRequested:Z

    if-eq v1, p1, :cond_2c

    .line 139
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WALLPAPER_enabled:Z

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->token:Landroid/os/IBinder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    move v2, p1

    .local v2, "protoLogParam1":Z
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x2bb7cff9

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 141
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v2    # "protoLogParam1":Z
    :cond_28
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WallpaperWindowToken;->setVisibility(Z)V

    .line 142
    const/4 v0, 0x1

    .line 144
    :cond_2c
    iget-object v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 146
    iget-object v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->useShellTransitionsRotation()Z

    move-result v1

    if-nez v1, :cond_57

    if-eqz v0, :cond_57

    if-eqz p1, :cond_57

    .line 147
    iget-object v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 148
    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 149
    .local v1, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_57

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 150
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WallpaperWindowToken;->linkFixedRotationTransform(Lcom/android/server/wm/WindowToken;)V

    .line 153
    .end local v1    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    :cond_57
    return v0

    .line 156
    :cond_58
    iget-object v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 157
    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 159
    .restart local v1    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    if-eqz p1, :cond_91

    if-eqz v1, :cond_91

    .line 160
    iget-object v2, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 161
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v2

    .line 162
    .local v2, "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v2, :cond_7a

    .line 163
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 167
    invoke-virtual {v2, p0}, Lcom/android/server/wm/RecentsAnimationController;->linkFixedRotationTransformIfNeeded(Lcom/android/server/wm/WindowToken;)V

    goto :goto_91

    .line 168
    :cond_7a
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_84

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v3, :cond_91

    :cond_84
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 171
    invoke-virtual {v3}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    move-result v3

    if-eqz v3, :cond_91

    .line 174
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/WallpaperWindowToken;->linkFixedRotationTransform(Lcom/android/server/wm/WindowToken;)V

    .line 178
    .end local v2    # "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    :cond_91
    :goto_91
    invoke-direct {p0, p1}, Lcom/android/server/wm/WallpaperWindowToken;->setVisible(Z)V

    .line 179
    return v0
.end method
