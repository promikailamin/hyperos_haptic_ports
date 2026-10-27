.class public interface abstract Lcom/android/server/wm/PreloadStateManagerStub;
.super Ljava/lang/Object;
.source "PreloadStateManagerStub.java"


# static fields
.field public static final DELAY_STOP_PRELOAD_ACTIVITIES_MSG:I = 0xc7


# direct methods
.method public static get()Lcom/android/server/wm/PreloadStateManagerStub;
    .registers 1

    .line 17
    const-class v0, Lcom/android/server/wm/PreloadStateManagerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PreloadStateManagerStub;

    return-object v0
.end method


# virtual methods
.method public adjustDisplayId(Lcom/android/server/wm/Session;I)I
    .registers 3
    .param p1, "session"    # Lcom/android/server/wm/Session;
    .param p2, "displayId"    # I

    .line 63
    return p2
.end method

.method public abstract alreadyPreload(I)Z
.end method

.method public abstract checkEnableAudio()V
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract hidePreloadActivity(Lcom/android/server/wm/ActivityRecord;Z)Z
.end method

.method public abstract init(Lcom/android/server/wm/ActivityTaskManagerService;)V
.end method

.method public abstract isPreloadDisplayContent(Lcom/android/server/wm/DisplayContent;)Z
.end method

.method public abstract isPreloadDisplayId(I)Z
.end method

.method public abstract needNotRelaunch(ILjava/lang/String;)Z
.end method

.method public abstract notReplaceDisplayContent(ILcom/android/server/wm/WindowToken;)Z
.end method

.method public abstract onAttachApplication(Lcom/android/server/wm/WindowProcessController;)V
.end method

.method public abstract onMoveStackToDefaultDisplay(ILcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;ZLandroid/app/ActivityOptions;)V
.end method

.method public abstract removePreloadTask(ILcom/android/server/wm/ActivityRecord;)V
.end method

.method public abstract reparentPreloadStack(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;ZLandroid/app/ActivityOptions;)V
.end method

.method public repositionDisplayContent(ILjava/lang/Object;)I
    .registers 3
    .param p1, "position"    # I
    .param p2, "displayContent"    # Ljava/lang/Object;

    .line 51
    return p1
.end method

.method public abstract resumeTopActivityInjector(Lcom/android/server/wm/ActivityRecord;Landroid/os/Handler;)V
.end method

.method public abstract stackOnParentChanged(Lcom/android/server/wm/DisplayContent;Z)Z
.end method

.method public startActivityInjector(Lcom/android/server/wm/ActivityStarter$Request;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;)Landroid/app/ActivityOptions;
    .registers 6
    .param p1, "request"    # Lcom/android/server/wm/ActivityStarter$Request;
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "options"    # Landroid/app/ActivityOptions;
    .param p5, "inTask"    # Lcom/android/server/wm/Task;

    .line 33
    return-object p4
.end method

.method public abstract stopPreloadActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z
.end method
