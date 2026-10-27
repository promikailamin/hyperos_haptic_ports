.class Lcom/android/server/wm/ResetTargetTaskHelper;
.super Ljava/lang/Object;
.source "ResetTargetTaskHelper.java"

# interfaces
.implements Ljava/util/function/Consumer;
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/server/wm/Task;",
        ">;",
        "Ljava/util/function/Predicate<",
        "Lcom/android/server/wm/ActivityRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivityReparentPosition:I

.field private mAllActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mCanMoveOptions:Z

.field private mForceReset:Z

.field private mIsTargetTask:Z

.field private mPendingReparentActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mResultActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mRoot:Lcom/android/server/wm/ActivityRecord;

.field private mTargetRootTask:Lcom/android/server/wm/Task;

.field private mTargetTask:Lcom/android/server/wm/Task;

.field private mTargetTaskFound:Z

.field private mTask:Lcom/android/server/wm/Task;

.field private mTopOptions:Landroid/app/ActivityOptions;


# direct methods
.method constructor <init>()V
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

.method private finishActivities(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 11
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 190
    .local p1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    iget-boolean v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mCanMoveOptions:Z

    .line 192
    .local v0, "noOptions":Z
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32

    .line 193
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 194
    .local v2, "p":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_14

    goto :goto_2

    .line 196
    :cond_14
    invoke-direct {p0, v2, v0}, Lcom/android/server/wm/ResetTargetTaskHelper;->takeOption(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v0

    .line 198
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v3, :cond_2e

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x65971dc2

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v1

    invoke-static {v4, v5, v1, v6, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 200
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    :cond_2e
    invoke-virtual {v2, p2, v1}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 201
    .end local v2    # "p":Lcom/android/server/wm/ActivityRecord;
    goto :goto_2

    .line 202
    :cond_32
    return-void
.end method

.method private processPendingReparentActivities()V
    .registers 18

    .line 224
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mPendingReparentActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 225
    return-void

    .line 228
    :cond_b
    iget-object v1, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v1, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 229
    .local v1, "atmService":Lcom/android/server/wm/ActivityTaskManagerService;
    iget-object v2, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 231
    .local v2, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    iget-object v3, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v3

    .line 232
    .local v3, "windowingMode":I
    iget-object v4, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v4

    .line 234
    .local v4, "activityType":I
    :goto_21
    iget-object v5, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mPendingReparentActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_92

    .line 235
    iget-object v5, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mPendingReparentActivities:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 236
    .local v5, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-static {v3, v4}, Lcom/android/server/wm/DisplayContent;->alwaysCreateRootTask(II)Z

    move-result v7

    .line 238
    .local v7, "alwaysCreateTask":Z
    if-eqz v7, :cond_3d

    .line 239
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getBottomMostTask()Lcom/android/server/wm/Task;

    move-result-object v8

    goto :goto_43

    :cond_3d
    iget-object v8, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getBottomMostTask()Lcom/android/server/wm/Task;

    move-result-object v8

    .line 240
    .local v8, "task":Lcom/android/server/wm/Task;
    :goto_43
    const/4 v9, 0x0

    .line 241
    .local v9, "targetTask":Lcom/android/server/wm/Task;
    const/4 v10, 0x0

    if-eqz v8, :cond_6f

    iget-object v11, v5, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v12, v8, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6f

    .line 244
    move-object v9, v8

    .line 245
    sget-boolean v11, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v11, :cond_6f

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .local v11, "protoLogParam0":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .local v12, "protoLogParam1":Ljava/lang/String;
    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v14, -0x344d81fd    # -2.3395334E7f

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v11, v15, v6

    const/16 v16, 0x1

    aput-object v12, v15, v16

    invoke-static {v13, v14, v6, v10, v15}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 248
    .end local v11    # "protoLogParam0":Ljava/lang/String;
    .end local v12    # "protoLogParam1":Ljava/lang/String;
    :cond_6f
    if-nez v9, :cond_84

    .line 249
    if-eqz v7, :cond_78

    .line 250
    invoke-virtual {v2, v3, v4, v6}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootTask(IIZ)Lcom/android/server/wm/Task;

    move-result-object v9

    goto :goto_80

    .line 253
    :cond_78
    iget-object v11, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v12, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v11, v12, v10, v6}, Lcom/android/server/wm/Task;->reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Lcom/android/server/wm/Task;

    move-result-object v9

    .line 256
    :goto_80
    iget-object v10, v5, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v10, v9, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    .line 258
    :cond_84
    const-string/jumbo v10, "resetTargetTaskIfNeeded"

    invoke-virtual {v5, v9, v6, v10}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskFragment;ILjava/lang/String;)V

    .line 259
    iget-object v6, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v6, v9}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 260
    .end local v5    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v7    # "alwaysCreateTask":Z
    .end local v8    # "task":Lcom/android/server/wm/Task;
    .end local v9    # "targetTask":Lcom/android/server/wm/Task;
    goto :goto_21

    .line 261
    :cond_92
    return-void
.end method

.method private processResultActivities(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;IZZ)V
    .registers 21
    .param p1, "target"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "targetTask"    # Lcom/android/server/wm/Task;
    .param p3, "position"    # I
    .param p4, "ignoreFinishing"    # Z
    .param p5, "takeOptions"    # Z

    .line 206
    move-object v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mCanMoveOptions:Z

    .line 208
    .local v1, "noOptions":Z
    :goto_3
    iget-object v2, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_77

    .line 209
    iget-object v2, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 210
    .local v2, "p":Lcom/android/server/wm/ActivityRecord;
    if-eqz p4, :cond_1b

    iget-boolean v4, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_1b

    goto :goto_3

    .line 212
    :cond_1b
    if-eqz p5, :cond_21

    .line 213
    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/ResetTargetTaskHelper;->takeOption(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v1

    .line 215
    :cond_21
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_52

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam0":Ljava/lang/String;
    iget-object v8, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTask:Lcom/android/server/wm/Task;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .local v8, "protoLogParam1":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .local v9, "protoLogParam2":Ljava/lang/String;
    const/4 v10, 0x4

    invoke-static {v10}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .local v11, "protoLogParam3":Ljava/lang/String;
    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v13, -0x61b08442

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v4, v10, v3

    aput-object v8, v10, v6

    aput-object v9, v10, v5

    const/4 v14, 0x3

    aput-object v11, v10, v14

    invoke-static {v12, v13, v3, v7, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 217
    .end local v4    # "protoLogParam0":Ljava/lang/String;
    .end local v8    # "protoLogParam1":Ljava/lang/String;
    .end local v9    # "protoLogParam2":Ljava/lang/String;
    .end local v11    # "protoLogParam3":Ljava/lang/String;
    :cond_52
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v4, :cond_6c

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "protoLogParam0":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "protoLogParam1":Ljava/lang/String;
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, -0x4770dda0

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v3

    aput-object v8, v5, v6

    invoke-static {v9, v10, v3, v7, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 219
    .end local v4    # "protoLogParam0":Ljava/lang/String;
    .end local v8    # "protoLogParam1":Ljava/lang/String;
    :cond_6c
    const-string/jumbo v3, "resetTargetTaskIfNeeded"

    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual {v2, v4, v5, v3}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskFragment;ILjava/lang/String;)V

    .line 220
    .end local v2    # "p":Lcom/android/server/wm/ActivityRecord;
    goto :goto_3

    .line 221
    :cond_77
    move-object/from16 v4, p2

    move/from16 v5, p3

    return-void
.end method

.method private reset(Lcom/android/server/wm/Task;)V
    .registers 4
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 50
    iput-object p1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTask:Lcom/android/server/wm/Task;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    .line 52
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mCanMoveOptions:Z

    .line 53
    iput-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTopOptions:Landroid/app/ActivityOptions;

    .line 54
    iget-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 55
    iget-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mAllActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 56
    return-void
.end method

.method private takeOption(Lcom/android/server/wm/ActivityRecord;Z)Z
    .registers 4
    .param p1, "p"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "noOptions"    # Z

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mCanMoveOptions:Z

    .line 265
    if-eqz p2, :cond_15

    iget-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTopOptions:Landroid/app/ActivityOptions;

    if-nez v0, :cond_15

    .line 266
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getOptions()Landroid/app/ActivityOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTopOptions:Landroid/app/ActivityOptions;

    .line 267
    if-eqz v0, :cond_15

    .line 268
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->clearOptionsAnimation()V

    .line 269
    const/4 p2, 0x0

    .line 272
    :cond_15
    return p2
.end method


# virtual methods
.method public accept(Lcom/android/server/wm/Task;)V
    .registers 4
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/wm/ResetTargetTaskHelper;->reset(Lcom/android/server/wm/Task;)V

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->getRootActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    .line 76
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

    .line 79
    if-eqz v1, :cond_1a

    iput-boolean v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTaskFound:Z

    .line 81
    :cond_1a
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Predicate;)Z

    .line 82
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 34
    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ResetTargetTaskHelper;->accept(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method process(Lcom/android/server/wm/Task;Z)Landroid/app/ActivityOptions;
    .registers 5
    .param p1, "targetTask"    # Lcom/android/server/wm/Task;
    .param p2, "forceReset"    # Z

    .line 59
    iput-boolean p2, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mForceReset:Z

    .line 60
    iput-object p1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTask:Lcom/android/server/wm/Task;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTaskFound:Z

    .line 62
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mActivityReparentPosition:I

    .line 65
    iget-object v0, p1, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 67
    invoke-direct {p0}, Lcom/android/server/wm/ResetTargetTaskHelper;->processPendingReparentActivities()V

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/ResetTargetTaskHelper;->reset(Lcom/android/server/wm/Task;)V

    .line 69
    iget-object v0, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTopOptions:Landroid/app/ActivityOptions;

    return-object v0
.end method

.method public test(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 15
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

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

    .line 91
    .local v0, "flags":I
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_16

    move v2, v1

    goto :goto_17

    :cond_16
    move v2, v3

    .line 93
    .local v2, "finishOnTaskLaunch":Z
    :goto_17
    and-int/lit8 v4, v0, 0x40

    if-eqz v4, :cond_1d

    move v4, v1

    goto :goto_1e

    :cond_1d
    move v4, v3

    .line 95
    .local v4, "allowTaskReparenting":Z
    :goto_1e
    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 96
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    if-eqz v5, :cond_2b

    move v5, v1

    goto :goto_2c

    :cond_2b
    move v5, v3

    .line 98
    .local v5, "clearWhenTaskReset":Z
    :goto_2c
    iget-boolean v6, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mIsTargetTask:Z

    if-eqz v6, :cond_82

    .line 99
    if-nez v2, :cond_56

    if-nez v5, :cond_56

    .line 100
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_3e

    .line 105
    iget-object v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    return v3

    .line 108
    :cond_3e
    if-eqz v4, :cond_56

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v1, :cond_56

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTask:Lcom/android/server/wm/Task;

    iget-object v6, v6, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    .line 109
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 116
    iget-object v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mPendingReparentActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    return v3

    .line 120
    :cond_56
    iget-boolean v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mForceReset:Z

    if-nez v1, :cond_65

    if-nez v2, :cond_65

    if-eqz v5, :cond_5f

    goto :goto_65

    .line 138
    :cond_5f
    iget-object v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 141
    return v3

    .line 124
    :cond_65
    :goto_65
    if-eqz v5, :cond_6f

    .line 127
    iget-object v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mAllActivities:Ljava/util/ArrayList;

    const-string v6, "clearWhenTaskReset"

    invoke-direct {p0, v1, v6}, Lcom/android/server/wm/ResetTargetTaskHelper;->finishActivities(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_7c

    .line 129
    :cond_6f
    iget-object v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    const-string/jumbo v6, "reset-task"

    invoke-direct {p0, v1, v6}, Lcom/android/server/wm/ResetTargetTaskHelper;->finishActivities(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 133
    :goto_7c
    iget-object v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 134
    return v3

    .line 144
    :cond_82
    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_8c

    .line 149
    iget-object v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    return v3

    .line 151
    :cond_8c
    iget-boolean v6, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTaskFound:Z

    if-eqz v6, :cond_f8

    if-eqz v4, :cond_f8

    iget-object v6, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTask:Lcom/android/server/wm/Task;

    iget-object v6, v6, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-eqz v6, :cond_f8

    iget-object v6, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTask:Lcom/android/server/wm/Task;

    iget-object v6, v6, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    .line 152
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f8

    .line 153
    iget-object v6, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    iget-boolean v6, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mForceReset:Z

    if-nez v6, :cond_ef

    if-eqz v2, :cond_b0

    goto :goto_ef

    .line 166
    :cond_b0
    iget v6, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mActivityReparentPosition:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_bd

    .line 167
    iget-object v6, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTask:Lcom/android/server/wm/Task;

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v6

    iput v6, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mActivityReparentPosition:I

    .line 170
    :cond_bd
    iget-object v9, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTask:Lcom/android/server/wm/Task;

    iget v10, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mActivityReparentPosition:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v7 .. v12}, Lcom/android/server/wm/ResetTargetTaskHelper;->processResultActivities(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;IZZ)V

    .line 176
    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v6, v6, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-ne v6, v1, :cond_f8

    .line 177
    iget-object v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mTargetTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/Task;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 178
    .local v1, "p":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_f8

    .line 179
    iget-object v6, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f8

    .line 180
    const-string/jumbo v6, "replace"

    invoke-virtual {v1, v6, v3}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    goto :goto_f8

    .line 163
    .end local v1    # "p":Lcom/android/server/wm/ActivityRecord;
    :cond_ef
    :goto_ef
    iget-object v1, p0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    const-string/jumbo v6, "move-affinity"

    invoke-direct {p0, v1, v6}, Lcom/android/server/wm/ResetTargetTaskHelper;->finishActivities(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 164
    return v3

    .line 185
    :cond_f8
    :goto_f8
    return v3
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .registers 2

    .line 34
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ResetTargetTaskHelper;->test(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    return p1
.end method
