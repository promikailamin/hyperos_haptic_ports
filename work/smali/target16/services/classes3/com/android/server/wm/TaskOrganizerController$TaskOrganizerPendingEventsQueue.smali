.class public final Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;
.super Ljava/lang/Object;
.source "TaskOrganizerController.java"


# instance fields
.field public final mLastSentTaskInfos:Ljava/util/WeakHashMap;

.field public final mOrganizerState:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

.field public final mPendingTaskEvents:Ljava/util/ArrayList;

.field public mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public static bridge synthetic -$$Nest$mdispatchTaskInfoChanged(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;Lcom/android/server/wm/Task;Z)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->dispatchTaskInfoChanged(Lcom/android/server/wm/Task;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetPendingTaskEvent(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;Lcom/android/server/wm/Task;I)Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->getPendingTaskEvent(Lcom/android/server/wm/Task;I)Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)V
    .registers 3

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mLastSentTaskInfos:Ljava/util/WeakHashMap;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    .line 200
    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mOrganizerState:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    return-void
.end method


# virtual methods
.method public addPendingTaskEvent(Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;)V
    .registers 2

    .line 217
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearPendingTaskEvents()V
    .registers 1

    .line 213
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final dispatchPendingEvent(Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;)V
    .registers 5

    .line 281
    iget-object v0, p1, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTask:Lcom/android/server/wm/Task;

    .line 282
    iget v1, p1, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mEventType:I

    if-eqz v1, :cond_2f

    const/4 v2, 0x1

    if-eq v1, v2, :cond_20

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1a

    const/4 p1, 0x3

    if-eq v1, p1, :cond_10

    goto :goto_3e

    .line 296
    :cond_10
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mOrganizerState:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    invoke-static {p0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->-$$Nest$fgetmOrganizer(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->onBackPressedOnTaskRoot(Lcom/android/server/wm/Task;)V

    return-void

    .line 293
    :cond_1a
    iget-boolean p1, p1, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mForce:Z

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->dispatchTaskInfoChanged(Lcom/android/server/wm/Task;Z)V

    return-void

    .line 289
    :cond_20
    iget-object p1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mOrganizerState:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    invoke-static {p1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->-$$Nest$fgetmOrganizer(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->onTaskVanished(Lcom/android/server/wm/Task;)V

    .line 290
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mLastSentTaskInfos:Ljava/util/WeakHashMap;

    invoke-virtual {p0, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 284
    :cond_2f
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->taskAppearedReady()Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 285
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mOrganizerState:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    invoke-static {p0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->-$$Nest$fgetmOrganizer(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->onTaskAppeared(Lcom/android/server/wm/Task;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public dispatchPendingEvents()V
    .registers 4

    .line 271
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 274
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_20

    .line 275
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->dispatchPendingEvent(Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 277
    :cond_20
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final dispatchTaskInfoChanged(Lcom/android/server/wm/Task;Z)V
    .registers 5

    .line 302
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mLastSentTaskInfos:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 303
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v1, :cond_13

    .line 304
    new-instance v1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 306
    :cond_13
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->unset()V

    .line 307
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;)V

    .line 309
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 310
    invoke-virtual {v1, v0}, Landroid/app/ActivityManager$RunningTaskInfo;->equalsForTaskOrganizer(Landroid/app/TaskInfo;)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 311
    invoke-static {v1, v0}, Lcom/android/server/wm/WindowOrganizerController;->configurationsAreEqualForOrganizer(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_37

    :cond_34
    if-nez p2, :cond_37

    goto :goto_50

    .line 318
    :cond_37
    :goto_37
    iget-object p2, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 319
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mLastSentTaskInfos:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 325
    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 327
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 332
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mOrganizerState:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    invoke-static {p0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->-$$Nest$fgetmOrganizer(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->onTaskInfoChanged(Lcom/android/server/wm/Task;Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_50
    :goto_50
    return-void
.end method

.method public getPendingEventList()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getPendingLifecycleTaskEvent(Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    .registers 6

    .line 261
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_24

    .line 262
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    .line 263
    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v3, v1, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTask:Lcom/android/server/wm/Task;

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v2, v3, :cond_21

    invoke-virtual {v1}, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->isLifecycleEvent()Z

    move-result v2

    if-eqz v2, :cond_21

    return-object v1

    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPendingTaskEvent(Lcom/android/server/wm/Task;I)Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    .registers 7

    .line 249
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_22

    .line 250
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    .line 251
    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v3, v1, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTask:Lcom/android/server/wm/Task;

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v2, v3, :cond_1f

    iget v2, v1, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mEventType:I

    if-ne p2, v2, :cond_1f

    return-object v1

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_22
    const/4 p0, 0x0

    return-object p0
.end method

.method public numPendingTaskEvents()I
    .registers 1

    .line 209
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public removePendingTaskEvent(Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;)V
    .registers 2

    .line 221
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removePendingTaskEvents(Lcom/android/server/wm/Task;)Z
    .registers 8

    .line 233
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_9
    if-ltz v0, :cond_28

    .line 234
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    .line 235
    iget v4, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v5, v3, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTask:Lcom/android/server/wm/Task;

    iget v5, v5, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v4, v5, :cond_25

    .line 237
    iget-object v4, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 239
    iget v3, v3, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mEventType:I

    if-nez v3, :cond_25

    move v2, v1

    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_28
    return v2
.end method
