.class public Lcom/android/server/wm/ResetTargetTaskHelper;
.super Ljava/lang/Object;
.source "ResetTargetTaskHelper.java"

# interfaces
.implements Ljava/util/function/Consumer;
.implements Ljava/util/function/Predicate;


# instance fields
.field public mActivityReparentPosition:I

.field public mAllActivities:Ljava/util/ArrayList;

.field public mCanMoveOptions:Z

.field public mForceReset:Z

.field public mIsTargetTask:Z

.field public mPendingReparentActivities:Ljava/util/ArrayList;

.field public mResultActivities:Ljava/util/ArrayList;

.field public mRoot:Lcom/android/server/wm/ActivityRecord;

.field public mTargetRootTask:Lcom/android/server/wm/Task;

.field public mTargetTask:Lcom/android/server/wm/Task;

.field public mTargetTaskFound:Z

.field public mTask:Lcom/android/server/wm/Task;

.field public mTopOptions:Landroid/app/ActivityOptions;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mAllActivities:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mPendingReparentActivities:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/wm/Task;)V
    .registers 4

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ResetTargetTaskHelper;->reset(Lcom/android/server/wm/Task;)V

    const/4 v0, 0x1

    .line 75
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->getRootActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    if-nez v1, :cond_d

    return-void

    .line 78
    :cond_d
    iget-object v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTask:Lcom/android/server/wm/Task;

    if-ne p1, v1, :cond_13

    move v1, v0

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    iput-boolean v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mIsTargetTask:Z

    if-eqz v1, :cond_1a

    .line 79
    iput-boolean v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTaskFound:Z

    .line 81
    :cond_1a
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 34
    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ResetTargetTaskHelper;->accept(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public final finishActivities(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 10

    .line 190
    iget-boolean v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mCanMoveOptions:Z

    .line 192
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_35

    const/4 v1, 0x0

    .line 193
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 194
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_14

    goto :goto_2

    .line 196
    :cond_14
    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/ResetTargetTaskHelper;->takeOption(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v0

    .line 198
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TASKS_enabled:[Z

    const/4 v4, 0x3

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_31

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, -0x40149f418781c9c0L    # -0.855559573495789

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v5, v6, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 200
    :cond_31
    invoke-virtual {v2, p2, v1}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    goto :goto_2

    :cond_35
    return-void
.end method

.method public process(Lcom/android/server/wm/Task;Z)Landroid/app/ActivityOptions;
    .registers 3

    .line 59
    iput-boolean p2, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mForceReset:Z

    .line 60
    iput-object p1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTask:Lcom/android/server/wm/Task;

    const/4 p2, 0x0

    .line 61
    iput-boolean p2, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTaskFound:Z

    .line 62
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetRootTask:Lcom/android/server/wm/Task;

    const/4 p2, -0x1

    .line 63
    iput p2, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mActivityReparentPosition:I

    .line 65
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 67
    invoke-virtual {p0}, Lcom/android/server/wm/ResetTargetTaskHelper;->processPendingReparentActivities()V

    const/4 p1, 0x0

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ResetTargetTaskHelper;->reset(Lcom/android/server/wm/Task;)V

    .line 69
    iget-object p0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTopOptions:Landroid/app/ActivityOptions;

    return-object p0
.end method

.method public final processPendingReparentActivities()V
    .registers 15

    .line 224
    iget-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mPendingReparentActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_8f

    .line 228
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v1, v0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 229
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 231
    iget-object v2, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    .line 232
    iget-object v3, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v3

    .line 234
    :goto_1e
    iget-object v4, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mPendingReparentActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8f

    .line 235
    iget-object v4, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mPendingReparentActivities:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 236
    invoke-static {v2, v3}, Lcom/android/server/wm/DisplayContent;->alwaysCreateRootTask(II)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 239
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getBottomMostTask()Lcom/android/server/wm/Task;

    move-result-object v7

    goto :goto_40

    :cond_3a
    iget-object v7, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getBottomMostTask()Lcom/android/server/wm/Task;

    move-result-object v7

    :goto_40
    const/4 v8, 0x0

    if-eqz v7, :cond_6a

    .line 241
    iget-object v9, v4, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v10, v7, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6a

    .line 245
    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TASKS_enabled:[Z

    aget-boolean v9, v9, v5

    if-eqz v9, :cond_6b

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v12, 0x180503976d603b36L    # 5.757343247738582E-193

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v11, v12, v13, v5, v9}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_6b

    :cond_6a
    move-object v7, v8

    :cond_6b
    :goto_6b
    if-nez v7, :cond_82

    if-eqz v6, :cond_75

    .line 250
    invoke-virtual {v0, v2, v3, v5}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootTask(IIZ)Lcom/android/server/wm/Task;

    move-result-object v6

    :goto_73
    move-object v7, v6

    goto :goto_7e

    .line 253
    :cond_75
    iget-object v6, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v7, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6, v7, v8, v5}, Lcom/android/server/wm/Task;->reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Lcom/android/server/wm/Task;

    move-result-object v6

    goto :goto_73

    .line 256
    :goto_7e
    iget-object v6, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v6, v7, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    .line 258
    :cond_82
    const-string v6, "resetTargetTaskIfNeeded"

    invoke-virtual {v4, v7, v5, v6}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskFragment;ILjava/lang/String;)V

    .line 259
    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v4, v7}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    goto :goto_1e

    :cond_8f
    :goto_8f
    return-void
.end method

.method public final processResultActivities(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;IZZ)V
    .registers 16

    .line 206
    iget-boolean v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mCanMoveOptions:Z

    .line 208
    :goto_2
    iget-object v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6e

    .line 209
    iget-object v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    if-eqz p4, :cond_1a

    .line 210
    iget-boolean v3, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_1a

    goto :goto_2

    :cond_1a
    if-eqz p5, :cond_20

    .line 213
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/ResetTargetTaskHelper;->takeOption(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v0

    .line 215
    :cond_20
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    const/4 v4, 0x2

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_4c

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTask:Lcom/android/server/wm/Task;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v8, 0x2ea7b7ceb4ed3e96L    # 6.104487990603187E-84

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v7, v8, v9, v2, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 217
    :cond_4c
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TASKS_enabled:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_68

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v6, 0x36f0960f1392336dL    # 4.648434222911383E-44

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v5, v6, v7, v2, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 219
    :cond_68
    const-string v2, "resetTargetTaskIfNeeded"

    invoke-virtual {v1, p2, p3, v2}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskFragment;ILjava/lang/String;)V

    goto :goto_2

    :cond_6e
    return-void
.end method

.method public final reset(Lcom/android/server/wm/Task;)V
    .registers 3

    .line 50
    iput-object p1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTask:Lcom/android/server/wm/Task;

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mCanMoveOptions:Z

    .line 53
    iput-object p1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTopOptions:Landroid/app/ActivityOptions;

    .line 54
    iget-object p1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 55
    iget-object p0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mAllActivities:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final takeOption(Lcom/android/server/wm/ActivityRecord;Z)Z
    .registers 5

    const/4 v0, 0x0

    .line 264
    iput-boolean v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mCanMoveOptions:Z

    if-eqz p2, :cond_15

    .line 265
    iget-object v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTopOptions:Landroid/app/ActivityOptions;

    if-nez v1, :cond_15

    .line 266
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getOptions()Landroid/app/ActivityOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTopOptions:Landroid/app/ActivityOptions;

    if-eqz v1, :cond_15

    .line 268
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->clearOptionsAnimation()V

    return v0

    :cond_15
    return p2
.end method

.method public test(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 12

    .line 87
    iget-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_6

    return v1

    .line 89
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mAllActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_16

    move v2, v1

    goto :goto_17

    :cond_16
    move v2, v3

    :goto_17
    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1d

    move v0, v1

    goto :goto_1e

    :cond_1d
    move v0, v3

    .line 95
    :goto_1e
    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 96
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x80000

    and-int/2addr v4, v5

    if-eqz v4, :cond_2b

    move v4, v1

    goto :goto_2c

    :cond_2b
    move v4, v3

    .line 98
    :goto_2c
    iget-boolean v5, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mIsTargetTask:Z

    if-eqz v5, :cond_7f

    if-nez v2, :cond_54

    if-nez v4, :cond_54

    .line 100
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_3e

    .line 105
    iget-object p0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v3

    :cond_3e
    if-eqz v0, :cond_54

    .line 108
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v0, :cond_54

    iget-object v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, v1, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 116
    iget-object p0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mPendingReparentActivities:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v3

    .line 120
    :cond_54
    iget-boolean v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mForceReset:Z

    if-nez v0, :cond_63

    if-nez v2, :cond_63

    if-eqz v4, :cond_5d

    goto :goto_63

    .line 138
    :cond_5d
    iget-object p0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return v3

    :cond_63
    :goto_63
    if-eqz v4, :cond_6d

    .line 127
    iget-object p1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mAllActivities:Ljava/util/ArrayList;

    const-string v0, "clearWhenTaskReset"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ResetTargetTaskHelper;->finishActivities(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_79

    .line 129
    :cond_6d
    iget-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object p1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    const-string v0, "reset-task"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ResetTargetTaskHelper;->finishActivities(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 133
    :goto_79
    iget-object p0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return v3

    .line 144
    :cond_7f
    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_89

    .line 149
    iget-object p0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v3

    .line 151
    :cond_89
    iget-boolean v4, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTaskFound:Z

    if-eqz v4, :cond_ef

    if-eqz v0, :cond_ef

    iget-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-eqz v0, :cond_ef

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    .line 152
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 153
    iget-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    iget-boolean v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mForceReset:Z

    if-nez v0, :cond_a8

    if-eqz v2, :cond_aa

    :cond_a8
    move-object v4, p0

    goto :goto_e8

    .line 166
    :cond_aa
    iget v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mActivityReparentPosition:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_b7

    .line 167
    iget-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mActivityReparentPosition:I

    .line 170
    :cond_b7
    iget-object v6, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTask:Lcom/android/server/wm/Task;

    iget v7, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mActivityReparentPosition:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/ResetTargetTaskHelper;->processResultActivities(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;IZZ)V

    .line 176
    iget-object p0, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget p0, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-ne p0, v1, :cond_ef

    .line 177
    iget-object p0, v4, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTask:Lcom/android/server/wm/Task;

    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_ef

    .line 179
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ef

    .line 180
    const-string p1, "replace"

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    goto :goto_ef

    .line 163
    :goto_e8
    iget-object p0, v4, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    const-string p1, "move-affinity"

    invoke-virtual {v4, p0, p1}, Lcom/android/server/wm/ResetTargetTaskHelper;->finishActivities(Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_ef
    :goto_ef
    return v3
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .registers 2

    .line 34
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ResetTargetTaskHelper;->test(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method
