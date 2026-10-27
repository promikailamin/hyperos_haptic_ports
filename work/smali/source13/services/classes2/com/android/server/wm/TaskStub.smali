.class public interface abstract Lcom/android/server/wm/TaskStub;
.super Ljava/lang/Object;
.source "TaskStub.java"


# direct methods
.method public static get()Lcom/android/server/wm/TaskStub;
    .registers 1

    .line 10
    const-class v0, Lcom/android/server/wm/TaskStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStub;

    return-object v0
.end method


# virtual methods
.method public clearRootProcess(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/Task;)V
    .registers 3
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 27
    return-void
.end method

.method public getLayoutInDisplayCutoutMode(Landroid/view/WindowManager$LayoutParams;)I
    .registers 3
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 22
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    return v0
.end method

.method public isHierarchyBottom()Z
    .registers 2

    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public isTopInSplitAndNonResizable(Lcom/android/server/wm/Task;)Z
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public notifyActivityPipModeChangedForHoverMode(ZLcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p1, "inPip"    # Z
    .param p2, "ar"    # Lcom/android/server/wm/ActivityRecord;

    .line 32
    return-void
.end method

.method public abstract notifyMovetoFront(IZ)V
.end method

.method public onHoverModeTaskParentChanged(Lcom/android/server/wm/Task;Lcom/android/server/wm/WindowContainer;)V
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "newParent"    # Lcom/android/server/wm/WindowContainer;

    .line 34
    return-void
.end method

.method public onHoverModeTaskPrepareSurfaces(Lcom/android/server/wm/Task;)V
    .registers 2
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 30
    return-void
.end method

.method public onSplitScreenParentChanged(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;)V"
        }
    .end annotation

    .line 19
    .local p1, "oldParent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .local p2, "newParent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    return-void
.end method

.method public onTaskConfigurationChanged(II)V
    .registers 3
    .param p1, "prevWindowingMode"    # I
    .param p2, "overrideWindowingMode"    # I

    .line 36
    return-void
.end method

.method public setHierarchy(Z)V
    .registers 2
    .param p1, "bottom"    # Z

    .line 15
    return-void
.end method
