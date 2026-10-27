.class public Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;
.super Ljava/lang/Object;
.source "BackgroundActivityStartController.java"


# instance fields
.field public mDebugInfo:Ljava/lang/String;

.field public mLaunchCount:I

.field public mTaskId:I

.field public mUid:I

.field public final synthetic this$0:Lcom/android/server/wm/BackgroundActivityStartController;


# direct methods
.method public static synthetic $r8$lambda$ynGgZ1HotwBRwYgybi9MzOri2cg(Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->lambda$new$0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/ActivityRecord;)V
    .registers 7

    .line 2327
    iput-object p1, p0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->this$0:Lcom/android/server/wm/BackgroundActivityStartController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2328
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController;->-$$Nest$fgetmTaskIdToFinishedActivity(Lcom/android/server/wm/BackgroundActivityStartController;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    .line 2329
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 2330
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mUid:I

    .line 2331
    iput v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mTaskId:I

    const/4 v2, 0x1

    if-eqz v0, :cond_36

    .line 2332
    iget v3, v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mUid:I

    invoke-virtual {p2, v3}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result v3

    if-nez v3, :cond_33

    goto :goto_36

    :cond_33
    iget v0, v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mLaunchCount:I

    add-int/2addr v2, v0

    :cond_36
    :goto_36
    iput v2, p0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mLaunchCount:I

    .line 2333
    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController;->-$$Nest$smgetDebugStringForActivityRecord(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mDebugInfo:Ljava/lang/String;

    .line 2335
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController;->-$$Nest$mgetService(Lcom/android/server/wm/BackgroundActivityStartController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance p2, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v1}, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;I)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public final synthetic lambda$new$0(I)V
    .registers 5

    .line 2336
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->this$0:Lcom/android/server/wm/BackgroundActivityStartController;

    invoke-static {v0}, Lcom/android/server/wm/BackgroundActivityStartController;->-$$Nest$mgetService(Lcom/android/server/wm/BackgroundActivityStartController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 2337
    :try_start_c
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->this$0:Lcom/android/server/wm/BackgroundActivityStartController;

    invoke-static {v1}, Lcom/android/server/wm/BackgroundActivityStartController;->-$$Nest$fgetmTaskIdToFinishedActivity(Lcom/android/server/wm/BackgroundActivityStartController;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_2c

    .line 2338
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->this$0:Lcom/android/server/wm/BackgroundActivityStartController;

    invoke-static {v1}, Lcom/android/server/wm/BackgroundActivityStartController;->-$$Nest$fgetmTaskIdToFinishedActivity(Lcom/android/server/wm/BackgroundActivityStartController;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    :catchall_2a
    move-exception p0

    goto :goto_3f

    .line 2341
    :cond_2c
    :goto_2c
    iget-object p1, p0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->this$0:Lcom/android/server/wm/BackgroundActivityStartController;

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController;->-$$Nest$fgetmTopFinishedActivity(Lcom/android/server/wm/BackgroundActivityStartController;)Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    move-result-object p1

    if-ne p1, p0, :cond_3a

    .line 2342
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->this$0:Lcom/android/server/wm/BackgroundActivityStartController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->-$$Nest$fputmTopFinishedActivity(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;)V

    .line 2344
    :cond_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_c .. :try_end_3b} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_3f
    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
