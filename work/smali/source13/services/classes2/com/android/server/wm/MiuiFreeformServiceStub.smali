.class public interface abstract Lcom/android/server/wm/MiuiFreeformServiceStub;
.super Ljava/lang/Object;
.source "MiuiFreeformServiceStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/wm/MiuiFreeformServiceStub;
    .registers 1

    .line 23
    const-class v0, Lcom/android/server/wm/MiuiFreeformServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/MiuiFreeformServiceStub;

    return-object v0
.end method


# virtual methods
.method public abstract adjuestFrameForChild(Lcom/android/server/wm/WindowState;)V
.end method

.method public abstract adjuestFreeFormTouchRegion(Lcom/android/server/wm/WindowState;Landroid/graphics/Region;)V
.end method

.method public abstract adjuestScaleAndFrame(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/Task;)V
.end method

.method public abstract checkFreeformSupport(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/app/ActivityOptions;)V
.end method

.method public abstract getAbnormalFreeformBlackList(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAbnormalFreeformWhiteList(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZZZIZ)Landroid/app/ActivityOptions;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "freeformPkg"    # Ljava/lang/String;
    .param p3, "noCheck"    # Z
    .param p4, "isMiniFreeformMode"    # Z
    .param p5, "isDesktopModeActive"    # Z
    .param p6, "newTaskId"    # I
    .param p7, "isNormalFreeform"    # Z

    .line 207
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getAdditionalFreeformAspectRatio1Apps()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAdditionalFreeformAspectRatio2Apps()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getApplicationLockActivityList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAudioForegroundPinAppList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAuthorisedFreeformList(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCanStartActivityFromFullscreenToFreefromList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCvwUnsupportedFreeformWhiteList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDesktopFreeformWhiteList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDesktopModeLaunchFreeformIgnoreTranslucentAppList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDesktopModeLaunchFullscreenAppList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDesktopModeLaunchFullscreenNotHideOtherAppList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEnableAbnormalFreeFormDebug(Z)I
.end method

.method public abstract getEnableKeepFreeformState()Z
.end method

.method public abstract getFixedRotationAppList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getForceLandscapeApplication()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getForegroundPinAppBlackList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getForegroundPinAppWhiteList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFreeFormAccessibleArea(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;)Landroid/graphics/Rect;
.end method

.method public abstract getFreeformBlackList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFreeformBlackList(Landroid/content/Context;Ljava/util/HashMap;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;>;Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFreeformCaptionInsetsHeightToZeroList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFreeformDisableOverlayList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFreeformIgnoreRequestOrientationList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFreeformNeedRelunchList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFreeformRecommendMapApplicationList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFreeformRecommendWaitingApplicationList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFreeformRect(Landroid/content/Context;ZZZZLandroid/graphics/Rect;)Landroid/graphics/Rect;
.end method

.method public abstract getFreeformResizeableWhiteList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFreeformRoundCorner()F
.end method

.method public abstract getFreeformScale(Landroid/app/ActivityOptions;)F
.end method

.method public abstract getFreeformVideoWhiteList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHideSelfIfNewFreeformTaskWhiteList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHomeUid()I
.end method

.method public abstract getHotSpaceOffsite()F
.end method

.method public abstract getHotSpaceResizeOffsetPad()I
.end method

.method public abstract getHotSpaceTopCaptionUpwardsOffset()I
.end method

.method public abstract getLaunchInTaskList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMiuiMultiWindowUtilsScale()F
.end method

.method public abstract getRotationFromDisplayApp()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSensorDisableList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSensorDisableWhiteList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getShadowRadius()F
.end method

.method public abstract getShowHiddenTaskIfFinishedWhiteList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStartFromFreeformBlackList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTopDecorCaptionViewHeight()I
.end method

.method public abstract getTopGameList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTopVideoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUnsupportedAppsInDesktop()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUseDefaultCameraPipelineApp()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract handleFreeformModeRequst(Landroid/os/IBinder;ILandroid/content/Context;)I
.end method

.method public ignoreClearTaskFlagInFreeForm(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4
    .param p1, "reusedActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "startActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public inFreeformWhiteList(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public isAppLockActivity(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "cls"    # Landroid/content/ComponentName;

    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public isDisableSplashScreenInFreeFormTaskSwitch(Ljava/lang/String;)Z
    .registers 3
    .param p1, "componentName"    # Ljava/lang/String;

    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isEnableAbnormalFreeform(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;Ljava/util/List;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation
.end method

.method public isEnteringDesktop()Z
    .registers 2

    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isForceResizeable()Z
.end method

.method public abstract isFreeFormOverlayWindow(Landroid/view/WindowManager$LayoutParams;)Z
.end method

.method public isFullScreenStrategyNeededInDesktopMode(Lcom/android/server/wm/ActivityRecord;I)Z
    .registers 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "windowingMode"    # I

    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public isFullscreenNotHideOtherApp(Lcom/android/server/wm/ActivityRecord;I)Z
    .registers 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "windowingMode"    # I

    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isFullscreenNotHideOtherAppInDesktopMode(Lcom/android/server/wm/ActivityRecord;)Z
.end method

.method public abstract isLandscapeGameApp(Ljava/lang/String;Landroid/content/Context;)Z
.end method

.method public isLaunchNotesInKeyGuard(Landroid/content/Intent;)Z
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isMIUIProduct()Z
.end method

.method public abstract isMiuiBuild()Z
.end method

.method public abstract isMiuiChooserActivity(Ljava/lang/String;)Z
.end method

.method public abstract isMiuiCvwFeatureEnable()Z
.end method

.method public isMiuiDesktopModeActive()Z
    .registers 2

    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public isMiuiDesktopModeEnabled()Z
    .registers 2

    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isOrientationLandscape(I)Z
.end method

.method public abstract isPadScreen(Landroid/content/Context;)Z
.end method

.method public isSkipUpdateFreeFormShadow(Lcom/android/server/wm/Task;)Z
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportFreeFormInDesktopMode(Lcom/android/server/wm/Task;)Z
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportFreeFormMultiTask(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isSupportMiuiShadow()Z
.end method

.method public abstract isUseFreeFormAnimation(I)Z
.end method

.method public isWpsPreStartActivity(Ljava/lang/String;)Z
    .registers 3
    .param p1, "shortComponentName"    # Ljava/lang/String;

    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public isWpsSameActivity(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "otherComponentName"    # Landroid/content/ComponentName;

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public abstract loadFreeFormAnimation(Lcom/android/server/wm/WindowManagerService;IZLandroid/graphics/Rect;Lcom/android/server/wm/WindowContainer;)Landroid/view/animation/Animation;
.end method

.method public abstract modifyLaunchActivityOptionIfNeed(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/RootWindowContainer;Ljava/lang/String;Landroid/app/ActivityOptions;Lcom/android/server/wm/WindowProcessController;Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityRecord;)Landroid/app/ActivityOptions;
.end method

.method public abstract modifySupportFreeform(Lcom/android/server/wm/ActivityTaskManagerService;)V
.end method

.method public abstract multiFreeFormSupported(Landroid/content/Context;)Z
.end method

.method public abstract needRelunchFreeform(Ljava/lang/String;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
.end method

.method public abstract notNeedRelunchFreeform(Ljava/lang/String;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
.end method

.method public abstract onForegroundWindowChanged(Lcom/android/server/wm/WindowProcessController;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord$State;)V
.end method

.method public abstract reviewFreeFormBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)F
.end method

.method public abstract setAbnormalFreeformBlackList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setAbnormalFreeformWhiteList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setAdditionalFreeformAspectRatio1Apps(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setAdditionalFreeformAspectRatio2Apps(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setApplicationLockActivityList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setAudioForegroundPinAppList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setAuthorisedFreeformList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setCanStartActivityFromFullscreenToFreefromList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setCvwUnsupportedFreeformWhiteList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setDesktopFreeformWhiteList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setDesktopModeLaunchFreeformIgnoreTranslucentAppList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setDesktopModeLaunchFullscreenAppList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setDesktopModeLaunchFullscreenNotHideOtherAppList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setEnableAbnormalFreeFormDebug(I)V
.end method

.method public abstract setEnableForegroundPin(Z)V
.end method

.method public abstract setFixedRotationAppList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setForceLandscapeApplication(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setForegroundPinAppBlackList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setForegroundPinAppWhiteList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setFreeformBlackList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setFreeformCaptionInsetsHeightToZeroList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setFreeformDisableOverlayList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setFreeformIgnoreRequestOrientationList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setFreeformNeedRelunchList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setFreeformRecommendMapApplicationList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setFreeformRecommendWaitingApplicationList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setFreeformResizeableWhiteList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setFreeformScale(FLandroid/app/ActivityOptions;)Z
.end method

.method public abstract setFreeformVideoWhiteList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setHideSelfIfNewFreeformTaskWhiteList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setLaunchInTaskList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setMiuiMultiWindowUtilsScale(F)V
.end method

.method public abstract setRotationFromDisplayApp(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setSensorDisableList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setSensorDisableWhiteList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setShowHiddenTaskIfFinishedWhiteList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setStartFromFreeformBlackList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setTopGameList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setTopVideoList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setUnsupportedAppsInDesktop(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setUseDefaultCameraPipelineApp(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract supportsFreeform()Z
.end method

.method public abstract updateApplicationConfiguration(Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/content/res/Configuration;Ljava/lang/String;)V
.end method
