.class public interface abstract Lcom/android/server/wm/DragDropControllerStub;
.super Ljava/lang/Object;
.source "DragDropControllerStub.java"


# direct methods
.method public static get()Lcom/android/server/wm/DragDropControllerStub;
    .registers 1

    .line 9
    const-class v0, Lcom/android/server/wm/DragDropControllerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DragDropControllerStub;

    return-object v0
.end method


# virtual methods
.method public cancelCurrentDrag()Z
    .registers 2

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getDragNotAllowPackages()Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public initDragDropController(Lcom/android/server/wm/DragDropController;)V
    .registers 2
    .param p1, "dragDropController"    # Lcom/android/server/wm/DragDropController;

    .line 20
    return-void
.end method

.method public notifyDragDropResultToOneTrack(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;ZLandroid/content/ClipData;)V
    .registers 5
    .param p1, "dragWindow"    # Lcom/android/server/wm/WindowState;
    .param p2, "dropWindow"    # Lcom/android/server/wm/WindowState;
    .param p3, "result"    # Z
    .param p4, "clipData"    # Landroid/content/ClipData;

    .line 14
    return-void
.end method

.method public notifyDragFinish(Z)V
    .registers 2
    .param p1, "dragResult"    # Z

    .line 26
    return-void
.end method

.method public notifyDragStart(Landroid/content/ClipData;III)V
    .registers 5
    .param p1, "data"    # Landroid/content/ClipData;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "flag"    # I

    .line 23
    return-void
.end method

.method public setDragSurfaceVisible(Z)Z
    .registers 3
    .param p1, "visible"    # Z

    .line 29
    const/4 v0, 0x0

    return v0
.end method
