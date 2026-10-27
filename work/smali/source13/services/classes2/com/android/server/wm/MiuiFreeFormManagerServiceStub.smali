.class public interface abstract Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;
.super Ljava/lang/Object;
.source "MiuiFreeFormManagerServiceStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;
    .registers 1

    .line 13
    const-class v0, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    return-object v0
.end method


# virtual methods
.method public abstract addFreeFormActivityStackFromStartSmallFreeform(Lcom/android/server/wm/Task;)V
.end method

.method public adjustedReuseableFreeformTask(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/Task;
    .registers 3
    .param p1, "startActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract avoidedByOthersIfNeeded(Lcom/android/server/wm/Task;)V
.end method

.method public abstract checkMiuiFreeFormStacksNum()V
.end method

.method public disableSplashScreenForWpsInFreeForm(Landroid/content/ComponentName;I)Z
    .registers 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public abstract exitUnsupportedFreeformStack(Lcom/android/server/wm/MiuiFreeFormActivityStackStub;)V
.end method

.method public abstract fullscreenToFreeformAndShowHidden(Lcom/android/server/wm/MiuiFreeFormActivityStackStub;)V
.end method

.method public abstract getFreeformRectDesktop(Landroid/graphics/Rect;[FLcom/android/server/wm/Task;Z)V
.end method

.method public abstract getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
.end method

.method public abstract getSchemeLauncherTask()Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
.end method

.method public abstract getShowGuideDock()I
.end method

.method public abstract getShowGuideFreeform()I
.end method

.method public abstract getShowGuideNotification()I
.end method

.method public abstract getShowGuidePin()I
.end method

.method public abstract getShowGuideSideBar()I
.end method

.method public abstract getStackPackageName(Lcom/android/server/wm/Task;)Ljava/lang/String;
.end method

.method public abstract handleAppDied(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/Task;)Z
.end method

.method public abstract hasTipView()Z
.end method

.method public abstract hasTipViewType(I)Z
.end method

.method public abstract hideCallingTaskIfAddSpecificChild(Lcom/android/server/wm/WindowContainer;)V
.end method

.method public abstract hideOtherFreeform()V
.end method

.method public abstract init(Lcom/android/server/wm/ActivityTaskManagerService;)V
.end method

.method public isInVideoOrGameScene()Z
    .registers 2

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isNormalFreeForm(Lcom/android/server/wm/Task;Ljava/lang/String;)Z
.end method

.method public abstract isSupportPin()Z
.end method

.method public abstract launchFullscreenInDesktopModeIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V
.end method

.method public abstract moveTaskToBack(Lcom/android/server/wm/Task;)V
.end method

.method public abstract moveTaskToFront(Lcom/android/server/wm/Task;)V
.end method

.method public abstract moveToFront(Lcom/android/server/wm/Task;)V
.end method

.method public abstract notifyAppStopped(Lcom/android/server/wm/Task;)V
.end method

.method public abstract notifyHasDrawn(Lcom/android/server/wm/WindowState;)V
.end method

.method public abstract onActivityStackConfigurationChanged(Lcom/android/server/wm/Task;II)V
.end method

.method public abstract onActivityStackFirstActivityRecordAdded(I)V
.end method

.method public abstract onActivityStackWindowModeSet(Lcom/android/server/wm/Task;I)V
.end method

.method public abstract onDisplayChanged(II)V
.end method

.method public abstract onParentChanged(Lcom/android/server/wm/Task;)V
.end method

.method public abstract onShowToastIfNeeded(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;)V
.end method

.method public abstract onStartActivity(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Landroid/content/Intent;)V
.end method

.method public abstract postAtFrontOfQueue(Ljava/lang/Runnable;)V
.end method

.method public abstract removeFreeFormActivityStack(Lcom/android/server/wm/Task;Z)V
.end method

.method public abstract removeFreeFormTipView(I)V
.end method

.method public abstract removeSensorDisableApp(Ljava/lang/String;)V
.end method

.method public abstract setCameraOrientation(I)V
.end method

.method public abstract setSensorDisableApp(Ljava/lang/String;)V
.end method

.method public abstract shouldAddingToTask(Ljava/lang/String;)Z
.end method

.method public shouldRemainFrozen(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public abstract shouldStopStartFreeform(Ljava/lang/String;)Z
.end method

.method public abstract showFreeFormTipView(IIII)V
.end method

.method public abstract showFreeFormTipViewByBounds(IIILandroid/graphics/Rect;I)V
.end method

.method public abstract showFreeFormTipViewByClassName(IIIILjava/lang/String;)V
.end method

.method public abstract showHiddenTaskIfRemoveSpecificChild(Lcom/android/server/wm/WindowContainer;)V
.end method

.method public abstract showOpenMiuiOptimizationToast()V
.end method

.method public abstract startActivityUncheckedBefore(Lcom/android/server/wm/Task;)Z
.end method

.method public abstract startFullscreenFromFreeform(ZLcom/android/server/wm/MiuiFreeFormActivityStackStub;)V
.end method

.method public abstract trackSmallWindowEnterWayEvent(Lcom/android/server/wm/Task;)V
.end method

.method public abstract updateCornerRadius(Lcom/android/server/wm/Task;)V
.end method

.method public abstract updateMiuiFreeformShadow(Lcom/android/server/wm/Task;)V
.end method

.method public abstract updateTaskInfo(III)V
.end method
