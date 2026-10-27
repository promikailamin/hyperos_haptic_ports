.class public Lcom/android/server/job/controllers/IdleControllerStub;
.super Ljava/lang/Object;
.source "IdleControllerStub.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/job/controllers/IdleControllerStub;
    .registers 1

    .line 13
    const-class v0, Lcom/android/server/job/controllers/IdleControllerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/IdleControllerStub;

    return-object v0
.end method


# virtual methods
.method public addTaskStatus(Lcom/android/server/job/controllers/JobStatus;Landroid/util/ArraySet;)V
    .registers 3
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/job/controllers/JobStatus;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 17
    .local p2, "mTrackedTasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 18
    return-void
.end method

.method public initDexOptIdleTracking(Landroid/content/Context;Lcom/android/server/job/controllers/idle/IdlenessListener;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/server/job/controllers/idle/IdlenessListener;

    .line 32
    return-void
.end method

.method public removeTaskStatus(Lcom/android/server/job/controllers/JobStatus;Landroid/util/ArraySet;)V
    .registers 3
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/job/controllers/JobStatus;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 21
    .local p2, "mTrackedTasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method

.method public setIdleConstraint(ZJLandroid/util/ArraySet;Z)V
    .registers 8
    .param p1, "isIdle"    # Z
    .param p2, "nowElapsed"    # J
    .param p5, "mIsDexOptIdleReport"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJ",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;Z)V"
        }
    .end annotation

    .line 26
    .local p4, "mTrackedTasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-virtual {p4}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_14

    .line 27
    invoke-virtual {p4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v1, p2, p3, p1}, Lcom/android/server/job/controllers/JobStatus;->setIdleConstraintSatisfied(JZ)Z

    .line 26
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 29
    .end local v0    # "i":I
    :cond_14
    return-void
.end method
