.class public Lcom/android/server/wm/TaskSnapshotControllerInjectorStub;
.super Ljava/lang/Object;
.source "TaskSnapshotControllerInjectorStub.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/android/server/wm/TaskSnapshotControllerInjectorStub;
    .registers 1

    .line 11
    const-class v0, Lcom/android/server/wm/TaskSnapshotControllerInjectorStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskSnapshotControllerInjectorStub;

    return-object v0
.end method


# virtual methods
.method public adaptLetterboxInsets(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "letterboxInsets"    # Landroid/graphics/Rect;

    .line 33
    return-void
.end method

.method public canTakeSnapshot(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public doSnapshotQS(Lcom/android/server/wm/TaskSnapshotController;Lcom/android/server/wm/TaskSnapshotPersister;Landroid/os/Handler;Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 6
    .param p1, "controller"    # Lcom/android/server/wm/TaskSnapshotController;
    .param p2, "persister"    # Lcom/android/server/wm/TaskSnapshotPersister;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p5, "visible"    # Z

    .line 18
    return-void
.end method

.method public doSnapshotQS(Lcom/android/server/wm/TaskSnapshotController;Lcom/android/server/wm/TaskSnapshotPersister;Landroid/os/Handler;Lcom/android/server/wm/ActivityRecord;ZZ)V
    .registers 7
    .param p1, "controller"    # Lcom/android/server/wm/TaskSnapshotController;
    .param p2, "persister"    # Lcom/android/server/wm/TaskSnapshotPersister;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p5, "visible"    # Z
    .param p6, "forceUpdate"    # Z

    .line 25
    return-void
.end method

.method public isTop(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 27
    const/4 v0, 0x0

    return v0
.end method
