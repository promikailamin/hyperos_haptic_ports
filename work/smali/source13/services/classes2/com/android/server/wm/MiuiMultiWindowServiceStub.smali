.class public interface abstract Lcom/android/server/wm/MiuiMultiWindowServiceStub;
.super Ljava/lang/Object;
.source "MiuiMultiWindowServiceStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/wm/MiuiMultiWindowServiceStub;
    .registers 1

    .line 17
    const-class v0, Lcom/android/server/wm/MiuiMultiWindowServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/MiuiMultiWindowServiceStub;

    return-object v0
.end method


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
.end method

.method public abstract getSplitScreenDragBarWidth(Landroid/content/res/Resources;)F
.end method

.method public abstract init(Lcom/android/server/wm/ActivityTaskManagerService;)V
.end method

.method public abstract isCtsModeEnabled()Z
.end method

.method public abstract isEventXInSplitDragBarRegion(Lcom/android/server/wm/DisplayContent;Landroid/content/Context;FF)Z
.end method

.method public abstract isMiuiMultiWinChangeSupport()Z
.end method

.method public abstract isProcessingDrag()Z
.end method

.method public abstract moveActivityTaskToBackEx(Landroid/os/IBinder;)V
.end method
