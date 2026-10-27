.class public interface abstract Lcom/android/server/wm/MiuiFreeformGestureControllerStub;
.super Ljava/lang/Object;
.source "MiuiFreeformGestureControllerStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/wm/MiuiFreeformGestureControllerStub;
    .registers 1

    .line 14
    const-class v0, Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    return-object v0
.end method


# virtual methods
.method public abstract applyTransaction()V
.end method

.method public abstract closeLastFreeformTask()V
.end method

.method public abstract deliverResultForFinishActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
.end method

.method public abstract deliverResultForResumeActivityInFreeform(Lcom/android/server/wm/ActivityRecord;)V
.end method

.method public abstract displayConfigurationChange(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;)V
.end method

.method public abstract dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract finishDrawingWindow(Lcom/android/server/wm/WindowState;)V
.end method

.method public abstract finishSeamlessRotation(Lcom/android/server/wm/Task;)V
.end method

.method public abstract getFreeFormWindowMode(I)I
.end method

.method public abstract getFreeformStackBounds(Lcom/android/server/wm/Task;ZIILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
.end method

.method public abstract getMiuiFreeFormPositionX(I)I
.end method

.method public abstract getMiuiFreeFormPositionY(I)I
.end method

.method public abstract getSmallFreeFormWindowBounds(I)Landroid/graphics/Rect;
.end method

.method public abstract hideStack(Lcom/android/server/wm/MiuiFreeFormActivityStackStub;)V
.end method

.method public abstract ignoreDeliverResultForFreeForm(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
.end method

.method public abstract init(Lcom/android/server/wm/WindowManagerService;)V
.end method

.method public abstract isInFreeFormControlRegon(FFI)Z
.end method

.method public abstract isLaunchingSmallFreeFormWindow()Z
.end method

.method public abstract isScreenRotationDisabled()Z
.end method

.method public abstract isScreenRotationDisabledUpadate()Z
.end method

.method public abstract isSwitchingApp()Z
.end method

.method public abstract isSwitchingApp(Lcom/android/server/wm/Task;)Z
.end method

.method public abstract launchFlashBackFromBackGroundAnim(I)V
.end method

.method public abstract launchSmallFreeFormWindow(Lcom/android/server/wm/MiuiFreeFormActivityStackStub;Z)V
.end method

.method public abstract notifyRecentAnimationFinished()V
.end method

.method public abstract onATMSSystemReady()V
.end method

.method public abstract onFirstWindowDrawn(Lcom/android/server/wm/ActivityRecord;)V
.end method

.method public abstract prepareSeamlessRotation(Lcom/android/server/wm/Task;)V
.end method

.method public abstract setDisableScreenRotationUpdate(Z)V
.end method

.method public abstract setFreeformStackBoundsForAddWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/Task;Z)Z
.end method

.method public abstract setMiuiFreeFormTouchExcludeRegion(Landroid/graphics/Region;)V
.end method

.method public abstract setOriginalBounds(Landroid/graphics/Rect;Lcom/android/server/wm/MiuiFreeFormActivityStackStub;)V
.end method

.method public abstract setRequestedOrientation(ILcom/android/server/wm/Task;Z)V
.end method

.method public abstract showScreenSurface(Lcom/android/server/wm/MiuiFreeFormActivityStackStub;)V
.end method

.method public abstract stackOnConfigurationChanged(Lcom/android/server/wm/Task;II)[Z
.end method

.method public abstract startRemoveOverLayViewIfNeeded()V
.end method

.method public abstract traverseTask(Lcom/android/server/wm/Task;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/Task;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateMiniFreeformPosition()V
.end method
