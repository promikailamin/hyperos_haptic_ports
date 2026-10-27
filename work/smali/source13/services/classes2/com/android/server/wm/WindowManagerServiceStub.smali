.class public interface abstract Lcom/android/server/wm/WindowManagerServiceStub;
.super Ljava/lang/Object;
.source "WindowManagerServiceStub.java"


# direct methods
.method public static get()Lcom/android/server/wm/WindowManagerServiceStub;
    .registers 1

    .line 20
    const-class v0, Lcom/android/server/wm/WindowManagerServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerServiceStub;

    return-object v0
.end method


# virtual methods
.method public addNfcBlackList(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 80
    return-void
.end method

.method public abstract addSecureChangedListener(Landroid/app/IWindowSecureChangeListener;)V
.end method

.method public abstract adjustWindowParams(Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;I)V
.end method

.method public calcHoverAnimatingColor([F)V
    .registers 2
    .param p1, "startColor"    # [F

    .line 143
    return-void
.end method

.method public clearOverrideBrightnessRecord(I)V
    .registers 2
    .param p1, "taskId"    # I

    .line 117
    return-void
.end method

.method public abstract enableWmsDebugConfig(Ljava/lang/String;Z)V
.end method

.method public executeShellCommand(Ljava/io/PrintWriter;[Ljava/lang/String;ILjava/lang/String;)Z
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "opti"    # I
    .param p4, "opt"    # Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public abstract finishSwitchResolution()V
.end method

.method public getBlurWallpaperAppearance(Landroid/graphics/Rect;Landroid/graphics/Rect;[I)V
    .registers 4
    .param p1, "leftBounds"    # Landroid/graphics/Rect;
    .param p2, "rightBounds"    # Landroid/graphics/Rect;
    .param p3, "outAppearance"    # [I

    .line 153
    return-void
.end method

.method public getBlurWallpaperBmp()Landroid/graphics/Bitmap;
    .registers 2

    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getCompatScale(Ljava/lang/String;I)F
.end method

.method public getDefaultDensity()I
    .registers 2

    .line 42
    const/4 v0, -0x1

    return v0
.end method

.method public getScreenShareProjectAndPrivateCastFlag(Lcom/android/server/wm/WindowStateAnimator;)I
    .registers 3
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getUserActivityTime(Ljava/lang/String;)I
.end method

.method public getUserSetResolution()[I
    .registers 2

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWallpaperAsTarget()Z
    .registers 2

    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public abstract init(Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;)V
.end method

.method public initAfterBoot()V
    .registers 1

    .line 96
    return-void
.end method

.method public abstract initializeMiuiResolutionLocked()V
.end method

.method public abstract isAdjustScreenOff(Ljava/lang/CharSequence;)Z
.end method

.method public isAllowedDisableKeyguard(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public abstract isAssistResson(Ljava/lang/CharSequence;)Z
.end method

.method public abstract isCameraOpen()Z
.end method

.method public isInNfcBlackList(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public isKeyGuardShowing()Z
    .registers 2

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isPendingSwitchResolution()Z
.end method

.method public isScreenResolutionChanged(Lcom/android/server/wm/DisplayContent;)Z
    .registers 3
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportSetActiveModeSwitchResolution()Z
    .registers 2

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public abstract linkWallpaperWindowTokenDeathMonitor(Landroid/os/IBinder;I)V
.end method

.method public abstract notifyFloatWindowScene(Ljava/lang/String;IZ)V
.end method

.method public notifySystemBrightnessChange()V
    .registers 1

    .line 114
    return-void
.end method

.method public abstract notifyTouchFromNative(Z)V
.end method

.method public abstract onAnimationFinished()V
.end method

.method public onHoverModeRecentAnimStart()V
    .registers 1

    .line 135
    return-void
.end method

.method public onRecentAnimationEnd()V
    .registers 1

    .line 137
    return-void
.end method

.method public onRemoteAnimationEnd()V
    .registers 1

    .line 139
    return-void
.end method

.method public onScreenRotationAnimationEnd()V
    .registers 1

    .line 145
    return-void
.end method

.method public abstract onSecureChangedListener(Lcom/android/server/wm/WindowState;Z)V
.end method

.method public abstract onSettingsObserverChange(ZLandroid/net/Uri;)Z
.end method

.method public onStopFreezingDisplayLocked()V
    .registers 1

    .line 141
    return-void
.end method

.method public onSystemReady()V
    .registers 1

    .line 133
    return-void
.end method

.method public abstract onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.end method

.method public onWindowRequestSize(IIILjava/lang/CharSequence;)V
    .registers 5
    .param p1, "ownerUid"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "tag"    # Ljava/lang/CharSequence;

    .line 148
    return-void
.end method

.method public abstract positionContrastSurface(II)V
.end method

.method public abstract registerSettingsObserver(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService$SettingsObserver;)V
.end method

.method public abstract registerUiModeAnimFinishedCallback(Landroid/view/IWindowAnimationFinishedCallback;)V
.end method

.method public removeNfcBlackList(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 82
    return-void
.end method

.method public abstract removeSecureChangedListener(Landroid/app/IWindowSecureChangeListener;)V
.end method

.method public setRunningRecentsAnimation(Z)V
    .registers 2
    .param p1, "running"    # Z

    .line 126
    return-void
.end method

.method public setWallpaperAsTarget(Z)V
    .registers 2
    .param p1, "asTarget"    # Z

    .line 151
    return-void
.end method

.method public shouldApplyOverrideBrightness(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public showPinnedTaskIfNeeded(Lcom/android/server/wm/Task;)V
    .registers 2
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 128
    return-void
.end method

.method public updateBlurWallpaperBmp()V
    .registers 1

    .line 89
    return-void
.end method

.method public updateScreenShareProjectFlag()V
    .registers 1

    .line 105
    return-void
.end method

.method public updateSurfaceParentIfNeed(Lcom/android/server/wm/WindowState;)V
    .registers 2
    .param p1, "ws"    # Lcom/android/server/wm/WindowState;

    .line 124
    return-void
.end method
