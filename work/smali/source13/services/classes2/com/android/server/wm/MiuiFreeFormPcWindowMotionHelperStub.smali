.class public interface abstract Lcom/android/server/wm/MiuiFreeFormPcWindowMotionHelperStub;
.super Ljava/lang/Object;
.source "MiuiFreeFormPcWindowMotionHelperStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MiuiFreeFormPcWindowMotionHelperStub$SingletonHolder;
    }
.end annotation


# direct methods
.method public static getInstance()Lcom/android/server/wm/MiuiFreeFormPcWindowMotionHelperStub;
    .registers 1

    .line 16
    invoke-static {}, Lcom/android/server/wm/MiuiFreeFormPcWindowMotionHelperStub$SingletonHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/wm/MiuiFreeFormPcWindowMotionHelperStub;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract edgeAdsorptionIfNeeded(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;FFLcom/android/server/wm/Task;)V
.end method

.method public abstract init(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
.end method

.method public abstract intOverlayView(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;)V
.end method

.method public abstract notifyDownLocked(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;IILcom/android/server/wm/Task;)V
.end method

.method public abstract notifyMoveLocked(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Landroid/view/MotionEvent;)V
.end method

.method public abstract notifyUpLocked(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Landroid/view/MotionEvent;)V
.end method

.method public abstract performAdsorptionIfNeeded(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;)V
.end method
