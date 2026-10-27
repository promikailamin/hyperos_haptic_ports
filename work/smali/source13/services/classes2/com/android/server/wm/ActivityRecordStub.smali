.class public interface abstract Lcom/android/server/wm/ActivityRecordStub;
.super Ljava/lang/Object;
.source "ActivityRecordStub.java"


# direct methods
.method public static get()Lcom/android/server/wm/ActivityRecordStub;
    .registers 1

    .line 17
    const-class v0, Lcom/android/server/wm/ActivityRecordStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecordStub;

    return-object v0
.end method


# virtual methods
.method public addThemeFlag(Ljava/lang/String;)I
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public abstract allowShowSlpha(Ljava/lang/String;)Z
.end method

.method public allowTaskSnapshot(Ljava/lang/String;ZLandroid/window/TaskSnapshot;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "allowTaskSnapshot"    # Z
    .param p3, "snapshot"    # Landroid/window/TaskSnapshot;
    .param p4, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 29
    return p2
.end method

.method public abstract avoidWhiteScreen(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/wm/Task;ZIILcom/android/server/wm/ActivityRecord;)I
.end method

.method public canShowWhenLocked(Landroid/app/AppOpsManager;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "appOpsManager"    # Landroid/app/AppOpsManager;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "extra"    # Ljava/lang/String;

    .line 21
    const/4 v0, 0x1

    return v0
.end method

.method public abstract checkMiuiDragAndDropMetaData(Lcom/android/server/wm/ActivityRecord;)V
.end method

.method public computeHoverModeBounds(Landroid/content/res/Configuration;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;)V
    .registers 5
    .param p1, "newParentConfiguration"    # Landroid/content/res/Configuration;
    .param p2, "parentBounds"    # Landroid/graphics/Rect;
    .param p3, "mTmpBounds"    # Landroid/graphics/Rect;
    .param p4, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 111
    return-void
.end method

.method public delayRemoveSnapshot(Ljava/lang/String;)J
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 37
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public disableSnapshotForApplock(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public disableSplashScreen(Ljava/lang/String;)Z
    .registers 3
    .param p1, "componentName"    # Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public enterFreeformForHoverMode(Lcom/android/server/wm/Task;Z)V
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "enter"    # Z

    .line 139
    return-void
.end method

.method public inMiuiSizeCompatMode()Z
    .registers 2

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public initSplitMode(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;)Z
    .registers 4
    .param p1, "ar"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public isAddLetterBoxForEmbedded(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5
    .param p1, "ar"    # Lcom/android/server/wm/ActivityRecord;

    .line 79
    const/4 v0, 0x1

    if-eqz p1, :cond_16

    .line 80
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 81
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->isEmbeddingEnabledForPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 82
    return v0

    .line 84
    :cond_16
    if-eqz p1, :cond_23

    .line 85
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v1

    invoke-interface {v1, p1, v0, v0}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->isActivityInFixedOrientation(Lcom/android/server/wm/ActivityRecord;ZZ)Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    .line 84
    :goto_24
    return v0
.end method

.method public abstract isCompatibilityMode()Z
.end method

.method public isMiuiMwAnimationBelowStack(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p1, "ar"    # Lcom/android/server/wm/ActivityRecord;

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public isSecSplit(ZLandroid/content/Intent;)Z
    .registers 4
    .param p1, "isSplitMode"    # Z
    .param p2, "intent"    # Landroid/content/Intent;

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public isWorldCirculate(Lcom/android/server/wm/Task;)Z
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public miuiFullscreen(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public abstract notifyAppResumedFinished(Lcom/android/server/wm/ActivityRecord;)V
.end method

.method public notifyArAnimationFinished(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 122
    return-void
.end method

.method public onArCreated(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 3
    .param p1, "record"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "isUnStandardLaunchMode"    # Z

    .line 108
    return-void
.end method

.method public onArParentChanged(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "oldParent"    # Lcom/android/server/wm/TaskFragment;
    .param p2, "newParent"    # Lcom/android/server/wm/TaskFragment;
    .param p3, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 125
    return-void
.end method

.method public onArStateChanged(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord$State;)V
    .registers 3
    .param p1, "ar"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "state"    # Lcom/android/server/wm/ActivityRecord$State;

    .line 127
    return-void
.end method

.method public onArVisibleChanged(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 3
    .param p1, "record"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "visible"    # Z

    .line 117
    return-void
.end method

.method public onWindowsVisible(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2
    .param p1, "ar"    # Lcom/android/server/wm/ActivityRecord;

    .line 63
    return-void
.end method

.method public resetTaskFragmentWindowModeForHoverMode(Lcom/android/server/wm/TaskFragment;Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "tf"    # Lcom/android/server/wm/TaskFragment;
    .param p2, "newParentConfiguration"    # Landroid/content/res/Configuration;

    .line 132
    return-void
.end method

.method public setRequestedOrientationForHover(Lcom/android/server/wm/ActivityRecord;II)V
    .registers 4
    .param p1, "ar"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "requestOrientation"    # I
    .param p3, "orientation"    # I

    .line 129
    return-void
.end method

.method public setRequestedWindowModeForHoverMode(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "newParentConfiguration"    # Landroid/content/res/Configuration;

    .line 120
    return-void
.end method

.method public shouldClearActivityInfoFlags()I
    .registers 2

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public shouldHookHoverConfig(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4
    .param p1, "newParentConfiguration"    # Landroid/content/res/Configuration;
    .param p2, "record"    # Lcom/android/server/wm/ActivityRecord;

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public abstract shouldNotBeResume(Lcom/android/server/wm/ActivityRecord;)Z
.end method

.method public shouldUseCompatMode(Lcom/android/server/wm/WindowContainer;)Z
    .registers 3
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public updateApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 135
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;)V

    .line 136
    invoke-static {}, Lcom/android/server/wm/MiuiOrientationStub;->get()Lcom/android/server/wm/MiuiOrientationStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/wm/MiuiOrientationStub;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;)V

    .line 137
    return-void
.end method

.method public updateLatterboxParam(ZLandroid/graphics/Point;)V
    .registers 3
    .param p1, "isEmbedded"    # Z
    .param p2, "surfaceOrigin"    # Landroid/graphics/Point;

    .line 76
    return-void
.end method

.method public updateSpaceToFill(ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "isEmbedded"    # Z
    .param p2, "spaceToFill"    # Landroid/graphics/Rect;
    .param p3, "windowFrame"    # Landroid/graphics/Rect;

    .line 77
    return-void
.end method
