.class public interface abstract Lcom/android/server/wm/DisplayContentStub;
.super Ljava/lang/Object;
.source "DisplayContentStub.java"


# direct methods
.method public static get()Lcom/android/server/wm/DisplayContentStub;
    .registers 1

    .line 15
    const-class v0, Lcom/android/server/wm/DisplayContentStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContentStub;

    return-object v0
.end method


# virtual methods
.method public attachToDisplayCompatMode(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p1, "mImeLayeringTarget"    # Lcom/android/server/wm/WindowState;

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public compare(Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowToken;)I
    .registers 5
    .param p1, "token1"    # Lcom/android/server/wm/WindowToken;
    .param p2, "token2"    # Lcom/android/server/wm/WindowToken;

    .line 19
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getWindowLayerFromType()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/server/wm/WindowToken;->getWindowLayerFromType()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public abstract finishLayoutLw(Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayFrames;)V
.end method

.method public abstract focusChangedLw(ILcom/android/server/wm/WindowState;)V
.end method

.method public initOneTrackRotationHelper()V
    .registers 1

    .line 51
    return-void
.end method

.method public abstract isSubDisplay(I)Z
.end method

.method public abstract isSubDisplayOff(Lcom/android/server/wm/DisplayContent;)Z
.end method

.method public needEnsureVisible(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;)Z
    .registers 4
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public onDisplayOverrideConfigUpdate(Lcom/android/server/wm/DisplayContent;)V
    .registers 2
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 48
    return-void
.end method

.method public reportDisplayRotationChanged(II)V
    .registers 3
    .param p1, "displayId"    # I
    .param p2, "rotation"    # I

    .line 54
    return-void
.end method

.method public shouldInterceptRelaunch(II)Z
    .registers 4
    .param p1, "vendorId"    # I
    .param p2, "productId"    # I

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public skipImeWindowsForMiui(Lcom/android/server/wm/DisplayContent;)Z
    .registers 3
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;

    .line 45
    const/4 v0, 0x1

    return v0
.end method
