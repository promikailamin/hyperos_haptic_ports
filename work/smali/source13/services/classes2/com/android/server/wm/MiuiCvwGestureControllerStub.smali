.class public interface abstract Lcom/android/server/wm/MiuiCvwGestureControllerStub;
.super Ljava/lang/Object;
.source "MiuiCvwGestureControllerStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/wm/MiuiCvwGestureControllerStub;
    .registers 1

    .line 14
    const-class v0, Lcom/android/server/wm/MiuiCvwGestureControllerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/MiuiCvwGestureControllerStub;

    return-object v0
.end method


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract finishDrawingWindow(Lcom/android/server/wm/WindowState;)V
.end method

.method public abstract init(Lcom/android/server/wm/WindowManagerService;)V
.end method

.method public abstract isFocusAppCvwAnimating()Z
.end method

.method public abstract isFreeformResizingByCvw()Z
.end method

.method public abstract migrateToNewSurfaceControl(Lcom/android/server/wm/Task;Landroid/view/SurfaceControl$Transaction;)V
.end method

.method public abstract needFreezeHomeAppTransitionOnce(Lcom/android/server/wm/WindowContainer;)Z
.end method

.method public abstract onDisplayInfoChanged(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;)V
.end method

.method public abstract onTaskVanished(Lcom/android/server/wm/Task;)V
.end method

.method public abstract resetGestureAnimatorState()V
.end method

.method public abstract setRequestedOrientation(ILcom/android/server/wm/Task;)V
.end method
