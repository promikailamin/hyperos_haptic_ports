.class public Lcom/android/server/wm/TaskFragmentOrganizerController;
.super Landroid/window/ITaskFragmentOrganizerController$Stub;
.source "TaskFragmentOrganizerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;,
        Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskFragmentOrganizerController"

.field private static final TEMPORARY_ACTIVITY_TOKEN_TIMEOUT_MS:J = 0x1388L


# instance fields
.field private final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field private final mPendingTaskFragmentEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskFragmentOrganizerState:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmAtmService(Lcom/android/server/wm/TaskFragmentOrganizerController;)Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGlobalLock(Lcom/android/server/wm/TaskFragmentOrganizerController;)Lcom/android/server/wm/WindowManagerGlobalLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mremoveOrganizer(Lcom/android/server/wm/TaskFragmentOrganizerController;Landroid/window/ITaskFragmentOrganizer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->removeOrganizer(Landroid/window/ITaskFragmentOrganizer;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3
    .param p1, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 71
    invoke-direct {p0}, Landroid/window/ITaskFragmentOrganizerController$Stub;-><init>()V

    .line 63
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Ljava/util/ArrayList;

    .line 72
    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 73
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 74
    return-void
.end method

.method private dispatchEvent(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)V
    .registers 8
    .param p1, "event"    # Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    .line 842
    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmTaskFragmentOrg(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v0

    .line 843
    .local v0, "taskFragmentOrg":Landroid/window/ITaskFragmentOrganizer;
    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmTaskFragment(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    .line 844
    .local v1, "taskFragment":Lcom/android/server/wm/TaskFragment;
    iget-object v2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    .line 845
    invoke-interface {v0}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    .line 846
    .local v2, "state":Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;
    if-nez v2, :cond_17

    .line 847
    return-void

    .line 849
    :cond_17
    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmEventType(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)I

    move-result v3

    packed-switch v3, :pswitch_data_48

    goto :goto_47

    .line 866
    :pswitch_1f
    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmActivity(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->onActivityReparentToTask(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_47

    .line 863
    :pswitch_27
    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmErrorCallbackToken(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmOpType(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)I

    move-result v4

    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmException(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->onTaskFragmentError(Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 864
    goto :goto_47

    .line 860
    :pswitch_37
    invoke-virtual {v2, v1}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->onTaskFragmentParentInfoChanged(Lcom/android/server/wm/TaskFragment;)V

    .line 861
    goto :goto_47

    .line 857
    :pswitch_3b
    invoke-virtual {v2, v1}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->onTaskFragmentInfoChanged(Lcom/android/server/wm/TaskFragment;)V

    .line 858
    goto :goto_47

    .line 854
    :pswitch_3f
    invoke-virtual {v2, v1}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->onTaskFragmentVanished(Lcom/android/server/wm/TaskFragment;)V

    .line 855
    goto :goto_47

    .line 851
    :pswitch_43
    invoke-virtual {v2, v1}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->onTaskFragmentAppeared(Lcom/android/server/wm/TaskFragment;)V

    .line 852
    nop

    .line 868
    :goto_47
    return-void

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3f
        :pswitch_3b
        :pswitch_37
        :pswitch_27
        :pswitch_1f
    .end packed-switch
.end method

.method private getLastPendingLifecycleEvent(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;
    .registers 5
    .param p1, "tf"    # Lcom/android/server/wm/TaskFragment;

    .line 732
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_22

    .line 733
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    .line 734
    .local v1, "entry":Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;
    invoke-static {v1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmTaskFragment(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-ne p1, v2, :cond_1f

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->isLifecycleEvent()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 735
    return-object v1

    .line 732
    .end local v1    # "entry":Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 738
    .end local v0    # "i":I
    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method

.method private getPendingTaskFragmentEvent(Lcom/android/server/wm/TaskFragment;I)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;
    .registers 6
    .param p1, "taskFragment"    # Lcom/android/server/wm/TaskFragment;
    .param p2, "type"    # I

    .line 744
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_22

    .line 745
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    .line 746
    .local v1, "entry":Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;
    invoke-static {v1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmTaskFragment(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-ne p1, v2, :cond_1f

    invoke-static {v1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmEventType(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)I

    move-result v2

    if-ne p2, v2, :cond_1f

    .line 747
    return-object v1

    .line 744
    .end local v1    # "entry":Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 750
    .end local v0    # "i":I
    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleTaskFragmentInfoChanged(Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;I)V
    .registers 7
    .param p1, "organizer"    # Landroid/window/ITaskFragmentOrganizer;
    .param p2, "taskFragment"    # Lcom/android/server/wm/TaskFragment;
    .param p3, "eventType"    # I

    .line 459
    iget-boolean v0, p2, Lcom/android/server/wm/TaskFragment;->mTaskFragmentVanishedSent:Z

    if-eqz v0, :cond_5

    .line 460
    return-void

    .line 462
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->validateAndGetState(Landroid/window/ITaskFragmentOrganizer;)Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    .line 463
    iget-boolean v0, p2, Lcom/android/server/wm/TaskFragment;->mTaskFragmentAppearedSent:Z

    if-nez v0, :cond_d

    .line 465
    return-void

    .line 467
    :cond_d
    invoke-direct {p0, p2}, Lcom/android/server/wm/TaskFragmentOrganizerController;->getLastPendingLifecycleEvent(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    move-result-object v0

    .line 468
    .local v0, "pendingEvent":Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;
    if-nez v0, :cond_21

    .line 469
    new-instance v1, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    invoke-direct {v1, p3, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;-><init>(ILandroid/window/ITaskFragmentOrganizer;)V

    .line 470
    invoke-virtual {v1, p2}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->setTaskFragment(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    move-result-object v1

    .line 471
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->build()Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    move-result-object v0

    goto :goto_2b

    .line 474
    :cond_21
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 478
    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fputmDeferTime(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;J)V

    .line 480
    :goto_2b
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    return-void
.end method

.method private static isTaskVisible(Lcom/android/server/wm/Task;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 6
    .param p0, "task"    # Lcom/android/server/wm/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/Task;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;)Z"
        }
    .end annotation

    .line 815
    .local p1, "knownVisibleTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    .local p2, "knownInvisibleTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 816
    return v1

    .line 818
    :cond_8
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    .line 819
    return v2

    .line 821
    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 822
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    return v1

    .line 825
    :cond_1b
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    return v2
.end method

.method static synthetic lambda$onActivityReparentToTask$0([Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment;)Z
    .registers 4
    .param p0, "organizedTf"    # [Lcom/android/server/wm/TaskFragment;
    .param p1, "tf"    # Lcom/android/server/wm/TaskFragment;

    .line 541
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isOrganizedTaskFragment()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 542
    aput-object p1, p0, v1

    .line 543
    const/4 v0, 0x1

    return v0

    .line 545
    :cond_b
    return v1
.end method

.method private removeOrganizer(Landroid/window/ITaskFragmentOrganizer;)V
    .registers 5
    .param p1, "organizer"    # Landroid/window/ITaskFragmentOrganizer;

    .line 568
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    .line 569
    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 568
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    .line 570
    .local v0, "state":Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;
    if-nez v0, :cond_16

    .line 571
    const-string v1, "TaskFragmentOrganizerController"

    const-string v2, "The organizer has already been removed."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    return-void

    .line 576
    :cond_16
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 578
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->dispose()V

    .line 579
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v1

    .line 583
    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->removeOrganizerForEmbeddingDivider(Landroid/os/IBinder;)V

    .line 584
    return-void
.end method

.method private shouldSendEventWhenTaskInvisible(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Z
    .registers 11
    .param p1, "event"    # Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    .line 754
    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmEventType(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_9

    .line 755
    return v1

    .line 757
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmTaskFragmentOrg(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v2

    .line 758
    invoke-interface {v2}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    .line 759
    .local v0, "state":Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;
    invoke-static {v0}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->-$$Nest$fgetmLastSentTaskFragmentInfos(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmTaskFragment(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TaskFragmentInfo;

    .line 760
    .local v2, "lastInfo":Landroid/window/TaskFragmentInfo;
    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmTaskFragment(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentInfo()Landroid/window/TaskFragmentInfo;

    move-result-object v3

    .line 763
    .local v3, "info":Landroid/window/TaskFragmentInfo;
    invoke-static {v0}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->-$$Nest$fgetmLastSentTaskFragmentParentConfigs(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Ljava/util/Map;

    move-result-object v4

    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmTaskFragment(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Lcom/android/server/wm/TaskFragment;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/Configuration;

    .line 764
    .local v4, "lastParentConfig":Landroid/content/res/Configuration;
    if-nez v4, :cond_40

    .line 767
    return v1

    .line 770
    :cond_40
    if-eqz v2, :cond_5d

    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v5

    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmTaskFragment(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Lcom/android/server/wm/TaskFragment;

    move-result-object v6

    .line 771
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    .line 772
    invoke-virtual {v3}, Landroid/window/TaskFragmentInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v2}, Landroid/window/TaskFragmentInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    .line 771
    invoke-interface {v5, v6, v7, v8}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->shouldSendEventWhenTaskInvisible(Lcom/android/server/wm/Task;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 773
    return v1

    .line 779
    :cond_5d
    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmEventType(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_73

    if-eqz v2, :cond_73

    .line 780
    invoke-virtual {v2}, Landroid/window/TaskFragmentInfo;->hasRunningActivity()Z

    move-result v5

    if-eqz v5, :cond_73

    invoke-virtual {v3}, Landroid/window/TaskFragmentInfo;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_73

    goto :goto_74

    :cond_73
    const/4 v1, 0x0

    .line 779
    :goto_74
    return v1
.end method

.method private validateAndGetState(Landroid/window/ITaskFragmentOrganizer;)Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;
    .registers 6
    .param p1, "organizer"    # Landroid/window/ITaskFragmentOrganizer;

    .line 600
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    .line 601
    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    .line 602
    .local v0, "state":Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;
    if-eqz v0, :cond_f

    .line 606
    return-object v0

    .line 603
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TaskFragmentOrganizer has not been registered. Organizer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method dispatchPendingEvents()V
    .registers 12

    .line 784
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->isLayoutDeferred()Z

    move-result v0

    if-nez v0, :cond_85

    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Ljava/util/ArrayList;

    .line 785
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_85

    .line 789
    :cond_16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 790
    .local v0, "visibleTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 791
    .local v1, "invisibleTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 792
    .local v2, "candidateEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v4, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "n":I
    :goto_2c
    if-ge v3, v4, :cond_6a

    .line 793
    iget-object v5, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    .line 794
    .local v5, "event":Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;
    invoke-static {v5}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmTaskFragment(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Lcom/android/server/wm/TaskFragment;

    move-result-object v6

    if-eqz v6, :cond_45

    invoke-static {v5}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmTaskFragment(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Lcom/android/server/wm/TaskFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    goto :goto_46

    :cond_45
    const/4 v6, 0x0

    .line 795
    .local v6, "task":Lcom/android/server/wm/Task;
    :goto_46
    if-eqz v6, :cond_64

    iget-wide v7, v6, Lcom/android/server/wm/Task;->lastActiveTime:J

    invoke-static {v5}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmDeferTime(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_5e

    .line 796
    invoke-static {v6, v0, v1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->isTaskVisible(Lcom/android/server/wm/Task;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_64

    .line 797
    invoke-direct {p0, v5}, Lcom/android/server/wm/TaskFragmentOrganizerController;->shouldSendEventWhenTaskInvisible(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Z

    move-result v7

    if-nez v7, :cond_64

    .line 799
    :cond_5e
    iget-wide v7, v6, Lcom/android/server/wm/Task;->lastActiveTime:J

    invoke-static {v5, v7, v8}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fputmDeferTime(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;J)V

    .line 800
    goto :goto_67

    .line 802
    :cond_64
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    .end local v5    # "event":Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;
    .end local v6    # "task":Lcom/android/server/wm/Task;
    :goto_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 804
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_6a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 805
    .local v3, "numEvents":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6f
    if-ge v4, v3, :cond_7d

    .line 806
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    invoke-direct {p0, v5}, Lcom/android/server/wm/TaskFragmentOrganizerController;->dispatchEvent(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)V

    .line 805
    add-int/lit8 v4, v4, 0x1

    goto :goto_6f

    .line 808
    .end local v4    # "i":I
    :cond_7d
    if-lez v3, :cond_84

    .line 809
    iget-object v4, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 811
    :cond_84
    return-void

    .line 786
    .end local v0    # "visibleTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    .end local v1    # "invisibleTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    .end local v2    # "candidateEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;>;"
    .end local v3    # "numEvents":I
    :cond_85
    :goto_85
    return-void
.end method

.method dispatchPendingInfoChangedEvent(Lcom/android/server/wm/TaskFragment;)V
    .registers 4
    .param p1, "taskFragment"    # Lcom/android/server/wm/TaskFragment;

    .line 831
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->getPendingTaskFragmentEvent(Lcom/android/server/wm/TaskFragment;I)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    move-result-object v0

    .line 833
    .local v0, "event":Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;
    if-nez v0, :cond_8

    .line 834
    return-void

    .line 837
    :cond_8
    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->dispatchEvent(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)V

    .line 838
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 839
    return-void
.end method

.method public getITaskFragmentOrganizerForMiui(Landroid/os/IBinder;)Landroid/window/ITaskFragmentOrganizer;
    .registers 4
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 588
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    .line 589
    .local v0, "organizerState":Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;
    if-eqz v0, :cond_f

    invoke-static {v0}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->-$$Nest$fgetmOrganizer(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return-object v1
.end method

.method public getRemoteAnimationDefinition(Landroid/window/ITaskFragmentOrganizer;I)Landroid/view/RemoteAnimationDefinition;
    .registers 6
    .param p1, "organizer"    # Landroid/window/ITaskFragmentOrganizer;
    .param p2, "taskId"    # I

    .line 413
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 414
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    .line 415
    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    .line 416
    .local v1, "organizerState":Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;
    if-eqz v1, :cond_1f

    .line 417
    invoke-static {v1}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->-$$Nest$fgetmRemoteAnimationDefinitions(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/RemoteAnimationDefinition;

    goto :goto_20

    .line 418
    :cond_1f
    const/4 v2, 0x0

    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_25

    .line 416
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 419
    .end local v1    # "organizerState":Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getReparentActivityFromTemporaryToken(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .registers 6
    .param p1, "organizer"    # Landroid/window/ITaskFragmentOrganizer;
    .param p2, "activityToken"    # Landroid/os/IBinder;

    .line 317
    const/4 v0, 0x0

    if-eqz p1, :cond_21

    if-nez p2, :cond_6

    goto :goto_21

    .line 320
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    .line 321
    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 320
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    .line 322
    .local v1, "state":Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;
    if-eqz v1, :cond_1f

    .line 323
    invoke-static {v1}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->-$$Nest$fgetmTemporaryActivityTokens(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    goto :goto_20

    .line 324
    :cond_1f
    nop

    .line 322
    :goto_20
    return-object v0

    .line 318
    .end local v1    # "state":Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;
    :cond_21
    :goto_21
    return-object v0
.end method

.method getTaskFragmentOrganizerUid(Landroid/window/ITaskFragmentOrganizer;)I
    .registers 4
    .param p1, "organizer"    # Landroid/window/ITaskFragmentOrganizer;

    .line 423
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->validateAndGetState(Landroid/window/ITaskFragmentOrganizer;)Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    move-result-object v0

    .line 424
    .local v0, "state":Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;
    invoke-static {v0}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->-$$Nest$fgetmOrganizerUid(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)I

    move-result v1

    return v1
.end method

.method public isActivityEmbedded(Landroid/os/IBinder;)Z
    .registers 10
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 873
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 874
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 875
    .local v1, "activity":Lcom/android/server/wm/ActivityRecord;
    const/4 v2, 0x0

    if-nez v1, :cond_12

    .line 876
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 878
    :cond_12
    :try_start_12
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    .line 879
    .local v3, "taskFragment":Lcom/android/server/wm/TaskFragment;
    if-nez v3, :cond_1d

    .line 880
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 882
    :cond_1d
    :try_start_1d
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 883
    .local v4, "parentTask":Lcom/android/server/wm/Task;
    if-eqz v4, :cond_3d

    .line 884
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 885
    .local v5, "taskBounds":Landroid/graphics/Rect;
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 886
    .local v6, "taskFragBounds":Landroid/graphics/Rect;
    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_38

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_38

    const/4 v2, 0x1

    :cond_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_1d .. :try_end_39} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 888
    .end local v5    # "taskBounds":Landroid/graphics/Rect;
    .end local v6    # "taskFragBounds":Landroid/graphics/Rect;
    :cond_3d
    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 889
    .end local v1    # "activity":Lcom/android/server/wm/ActivityRecord;
    .end local v3    # "taskFragment":Lcom/android/server/wm/TaskFragment;
    .end local v4    # "parentTask":Lcom/android/server/wm/Task;
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method isOrganizerRegistered(Landroid/window/ITaskFragmentOrganizer;)Z
    .registers 4
    .param p1, "organizer"    # Landroid/window/ITaskFragmentOrganizer;

    .line 564
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method onActivityReparentToTask(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 533
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mLastTaskFragmentOrganizerBeforePip:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_7

    .line 535
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mLastTaskFragmentOrganizerBeforePip:Landroid/window/ITaskFragmentOrganizer;

    .local v0, "organizer":Landroid/window/ITaskFragmentOrganizer;
    goto :goto_23

    .line 538
    .end local v0    # "organizer":Landroid/window/ITaskFragmentOrganizer;
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 539
    .local v0, "task":Lcom/android/server/wm/Task;
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/server/wm/TaskFragment;

    .line 540
    .local v1, "organizedTf":[Lcom/android/server/wm/TaskFragment;
    new-instance v2, Lcom/android/server/wm/TaskFragmentOrganizerController$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/server/wm/TaskFragmentOrganizerController$$ExternalSyntheticLambda0;-><init>([Lcom/android/server/wm/TaskFragment;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    .line 547
    const/4 v2, 0x0

    aget-object v3, v1, v2

    if-nez v3, :cond_1c

    .line 548
    return-void

    .line 550
    :cond_1c
    aget-object v2, v1, v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v2

    move-object v0, v2

    .line 552
    .end local v1    # "organizedTf":[Lcom/android/server/wm/TaskFragment;
    .local v0, "organizer":Landroid/window/ITaskFragmentOrganizer;
    :goto_23
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    invoke-interface {v0}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 553
    const-string v1, "TaskFragmentOrganizerController"

    const-string v2, "The last TaskFragmentOrganizer no longer exists"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    return-void

    .line 556
    :cond_37
    new-instance v1, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;-><init>(ILandroid/window/ITaskFragmentOrganizer;)V

    .line 558
    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->setActivity(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    move-result-object v1

    .line 559
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->build()Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    move-result-object v1

    .line 560
    .local v1, "pendingEvent":Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;
    iget-object v2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    return-void
.end method

.method onTaskFragmentAppeared(Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;)V
    .registers 7
    .param p1, "organizer"    # Landroid/window/ITaskFragmentOrganizer;
    .param p2, "taskFragment"    # Lcom/android/server/wm/TaskFragment;

    .line 428
    iget-boolean v0, p2, Lcom/android/server/wm/TaskFragment;->mTaskFragmentVanishedSent:Z

    if-eqz v0, :cond_5

    .line 429
    return-void

    .line 431
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->validateAndGetState(Landroid/window/ITaskFragmentOrganizer;)Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    move-result-object v0

    .line 432
    .local v0, "state":Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;
    invoke-virtual {v0, p2}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->addTaskFragment(Lcom/android/server/wm/TaskFragment;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 433
    return-void

    .line 435
    :cond_10
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->getPendingTaskFragmentEvent(Lcom/android/server/wm/TaskFragment;I)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    move-result-object v2

    .line 437
    .local v2, "pendingEvent":Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;
    if-nez v2, :cond_29

    .line 438
    new-instance v3, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    invoke-direct {v3, v1, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;-><init>(ILandroid/window/ITaskFragmentOrganizer;)V

    .line 440
    invoke-virtual {v3, p2}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->setTaskFragment(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    move-result-object v1

    .line 441
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->build()Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    move-result-object v2

    .line 442
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    :cond_29
    return-void
.end method

.method onTaskFragmentError(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V
    .registers 8
    .param p1, "organizer"    # Landroid/window/ITaskFragmentOrganizer;
    .param p2, "errorCallbackToken"    # Landroid/os/IBinder;
    .param p3, "taskFragment"    # Lcom/android/server/wm/TaskFragment;
    .param p4, "opType"    # I
    .param p5, "exception"    # Ljava/lang/Throwable;

    .line 514
    if-eqz p3, :cond_7

    iget-boolean v0, p3, Lcom/android/server/wm/TaskFragment;->mTaskFragmentVanishedSent:Z

    if-eqz v0, :cond_7

    .line 515
    return-void

    .line 517
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->validateAndGetState(Landroid/window/ITaskFragmentOrganizer;)Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    .line 518
    const-string v0, "TaskFragmentOrganizerController"

    const-string/jumbo v1, "onTaskFragmentError "

    invoke-static {v0, v1, p5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 519
    new-instance v0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;-><init>(ILandroid/window/ITaskFragmentOrganizer;)V

    .line 521
    invoke-virtual {v0, p2}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->setErrorCallbackToken(Landroid/os/IBinder;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    move-result-object v0

    .line 522
    invoke-virtual {v0, p3}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->setTaskFragment(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    move-result-object v0

    .line 523
    invoke-virtual {v0, p5}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->setException(Ljava/lang/Throwable;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    move-result-object v0

    .line 524
    invoke-virtual {v0, p4}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->setOpType(I)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    move-result-object v0

    .line 525
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->build()Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    move-result-object v0

    .line 526
    .local v0, "pendingEvent":Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 529
    return-void
.end method

.method onTaskFragmentInfoChanged(Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;)V
    .registers 4
    .param p1, "organizer"    # Landroid/window/ITaskFragmentOrganizer;
    .param p2, "taskFragment"    # Lcom/android/server/wm/TaskFragment;

    .line 447
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->handleTaskFragmentInfoChanged(Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;I)V

    .line 449
    return-void
.end method

.method onTaskFragmentParentInfoChanged(Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;)V
    .registers 4
    .param p1, "organizer"    # Landroid/window/ITaskFragmentOrganizer;
    .param p2, "taskFragment"    # Lcom/android/server/wm/TaskFragment;

    .line 453
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->handleTaskFragmentInfoChanged(Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;I)V

    .line 455
    return-void
.end method

.method onTaskFragmentVanished(Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;)V
    .registers 8
    .param p1, "organizer"    # Landroid/window/ITaskFragmentOrganizer;
    .param p2, "taskFragment"    # Lcom/android/server/wm/TaskFragment;

    .line 484
    iget-boolean v0, p2, Lcom/android/server/wm/TaskFragment;->mTaskFragmentVanishedSent:Z

    if-eqz v0, :cond_5

    .line 485
    return-void

    .line 487
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/android/server/wm/TaskFragment;->mTaskFragmentVanishedSent:Z

    .line 488
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->validateAndGetState(Landroid/window/ITaskFragmentOrganizer;)Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    move-result-object v1

    .line 489
    .local v1, "state":Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;
    iget-object v2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    .local v2, "i":I
    :goto_13
    if-ltz v2, :cond_32

    .line 490
    iget-object v3, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    .line 491
    .local v3, "entry":Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;
    invoke-static {v3}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmTaskFragment(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-ne p2, v4, :cond_2f

    .line 492
    iget-object v4, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 493
    invoke-static {v3}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->-$$Nest$fgetmEventType(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)I

    move-result v4

    if-nez v4, :cond_2f

    .line 495
    return-void

    .line 489
    .end local v3    # "entry":Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;
    :cond_2f
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    .line 499
    .end local v2    # "i":I
    :cond_32
    iget-boolean v2, p2, Lcom/android/server/wm/TaskFragment;->mTaskFragmentAppearedSent:Z

    if-nez v2, :cond_37

    .line 500
    return-void

    .line 502
    :cond_37
    new-instance v2, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    invoke-direct {v2, v0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;-><init>(ILandroid/window/ITaskFragmentOrganizer;)V

    .line 504
    invoke-virtual {v2, p2}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->setTaskFragment(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;

    move-result-object v0

    .line 505
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->build()Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    move-result-object v0

    .line 506
    .local v0, "pendingEvent":Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;
    iget-object v2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    invoke-virtual {v1, p2}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->removeTaskFragment(Lcom/android/server/wm/TaskFragment;)V

    .line 509
    iget-object v2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 510
    return-void
.end method

.method public registerOrganizer(Landroid/window/ITaskFragmentOrganizer;)V
    .registers 18
    .param p1, "organizer"    # Landroid/window/ITaskFragmentOrganizer;

    .line 329
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 330
    .local v2, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 331
    .local v3, "uid":I
    iget-object v4, v1, Lcom/android/server/wm/TaskFragmentOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 332
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v0, :cond_3d

    invoke-interface/range {p1 .. p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    int-to-long v5, v3

    .local v5, "protoLogParam1":J
    int-to-long v7, v2

    .local v7, "protoLogParam2":J
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, 0x62872a51

    const/16 v11, 0x14

    const/4 v12, 0x0

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v0, v13, v14

    const/4 v14, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v9, v10, v11, v12, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 335
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v5    # "protoLogParam1":J
    .end local v7    # "protoLogParam2":J
    :cond_3d
    iget-object v0, v1, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    invoke-interface/range {p1 .. p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 339
    iget-object v0, v1, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    invoke-interface/range {p1 .. p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    new-instance v6, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;
    :try_end_51
    .catchall {:try_start_d .. :try_end_51} :catchall_68

    move-object/from16 v7, p1

    :try_start_53
    invoke-direct {v6, v1, v7, v2, v3}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;-><init>(Lcom/android/server/wm/TaskFragmentOrganizerController;Landroid/window/ITaskFragmentOrganizer;II)V

    invoke-virtual {v0, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    monitor-exit v4
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_70

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 342
    return-void

    .line 336
    :cond_5e
    move-object/from16 v7, p1

    :try_start_60
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v5, "Replacing existing organizer currently unsupported"

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "pid":I
    .end local v3    # "uid":I
    .end local p0    # "this":Lcom/android/server/wm/TaskFragmentOrganizerController;
    .end local p1    # "organizer":Landroid/window/ITaskFragmentOrganizer;
    throw v0

    .line 341
    .restart local v2    # "pid":I
    .restart local v3    # "uid":I
    .restart local p0    # "this":Lcom/android/server/wm/TaskFragmentOrganizerController;
    .restart local p1    # "organizer":Landroid/window/ITaskFragmentOrganizer;
    :catchall_68
    move-exception v0

    move-object/from16 v7, p1

    :goto_6b
    monitor-exit v4
    :try_end_6c
    .catchall {:try_start_60 .. :try_end_6c} :catchall_70

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_70
    move-exception v0

    goto :goto_6b
.end method

.method public registerRemoteAnimations(Landroid/window/ITaskFragmentOrganizer;ILandroid/view/RemoteAnimationDefinition;)V
    .registers 22
    .param p1, "organizer"    # Landroid/window/ITaskFragmentOrganizer;
    .param p2, "taskId"    # I
    .param p3, "definition"    # Landroid/view/RemoteAnimationDefinition;

    .line 364
    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 365
    .local v4, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 366
    .local v5, "uid":I
    iget-object v6, v1, Lcom/android/server/wm/TaskFragmentOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v6

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 367
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v0, :cond_44

    invoke-interface/range {p1 .. p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    int-to-long v7, v5

    .local v7, "protoLogParam1":J
    int-to-long v9, v4

    .local v9, "protoLogParam2":J
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, 0x481fb6ca

    const/16 v13, 0x14

    const/4 v14, 0x0

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v0, v15, v16

    const/16 v16, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v11, v12, v13, v14, v15}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 370
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v7    # "protoLogParam1":J
    .end local v9    # "protoLogParam2":J
    :cond_44
    iget-object v0, v1, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    .line 371
    invoke-interface/range {p1 .. p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    .line 372
    .local v0, "organizerState":Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;
    if-eqz v0, :cond_96

    .line 375
    invoke-static {v0}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->-$$Nest$fgetmRemoteAnimationDefinitions(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v7

    if-nez v7, :cond_6b

    .line 382
    invoke-virtual {v3, v4, v5}, Landroid/view/RemoteAnimationDefinition;->setCallingPidUid(II)V

    .line 383
    invoke-static {v0}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->-$$Nest$fgetmRemoteAnimationDefinitions(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 384
    .end local v0    # "organizerState":Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;
    monitor-exit v6
    :try_end_67
    .catchall {:try_start_11 .. :try_end_67} :catchall_9e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 385
    return-void

    .line 376
    .restart local v0    # "organizerState":Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;
    :cond_6b
    :try_start_6b
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The organizer has already registered remote animations="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->-$$Nest$fgetmRemoteAnimationDefinitions(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Landroid/util/SparseArray;

    move-result-object v9

    .line 378
    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for TaskId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "pid":I
    .end local v5    # "uid":I
    .end local p0    # "this":Lcom/android/server/wm/TaskFragmentOrganizerController;
    .end local p1    # "organizer":Landroid/window/ITaskFragmentOrganizer;
    .end local p2    # "taskId":I
    .end local p3    # "definition":Landroid/view/RemoteAnimationDefinition;
    throw v7

    .line 373
    .restart local v4    # "pid":I
    .restart local v5    # "uid":I
    .restart local p0    # "this":Lcom/android/server/wm/TaskFragmentOrganizerController;
    .restart local p1    # "organizer":Landroid/window/ITaskFragmentOrganizer;
    .restart local p2    # "taskId":I
    .restart local p3    # "definition":Landroid/view/RemoteAnimationDefinition;
    :cond_96
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "The organizer hasn\'t been registered."

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "pid":I
    .end local v5    # "uid":I
    .end local p0    # "this":Lcom/android/server/wm/TaskFragmentOrganizerController;
    .end local p1    # "organizer":Landroid/window/ITaskFragmentOrganizer;
    .end local p2    # "taskId":I
    .end local p3    # "definition":Landroid/view/RemoteAnimationDefinition;
    throw v7

    .line 384
    .end local v0    # "organizerState":Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;
    .restart local v4    # "pid":I
    .restart local v5    # "uid":I
    .restart local p0    # "this":Lcom/android/server/wm/TaskFragmentOrganizerController;
    .restart local p1    # "organizer":Landroid/window/ITaskFragmentOrganizer;
    .restart local p2    # "taskId":I
    .restart local p3    # "definition":Landroid/view/RemoteAnimationDefinition;
    :catchall_9e
    move-exception v0

    monitor-exit v6
    :try_end_a0
    .catchall {:try_start_6b .. :try_end_a0} :catchall_9e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public unregisterOrganizer(Landroid/window/ITaskFragmentOrganizer;)V
    .registers 20
    .param p1, "organizer"    # Landroid/window/ITaskFragmentOrganizer;

    .line 346
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 347
    .local v1, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    int-to-long v2, v0

    .line 348
    .local v2, "uid":J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 350
    .local v4, "origId":J
    move-object/from16 v6, p0

    :try_start_f
    iget-object v7, v6, Lcom/android/server/wm/TaskFragmentOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v7
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_59

    :try_start_12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 351
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v0, :cond_47

    invoke-interface/range {p1 .. p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    move-wide v8, v2

    .local v8, "protoLogParam1":J
    int-to-long v10, v1

    .local v10, "protoLogParam2":J
    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const/16 v14, 0x14

    const/4 v15, 0x0

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v0, v13, v16

    const/16 v16, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v13, v16

    const/16 v16, 0x2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v13, v16

    move-object/from16 v16, v0

    const v0, -0x4e2aede8

    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .local v16, "protoLogParam0":Ljava/lang/String;
    invoke-static {v12, v0, v14, v15, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 354
    .end local v8    # "protoLogParam1":J
    .end local v10    # "protoLogParam2":J
    .end local v16    # "protoLogParam0":Ljava/lang/String;
    :cond_47
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->removeOrganizer(Landroid/window/ITaskFragmentOrganizer;)V

    .line 355
    monitor-exit v7
    :try_end_4b
    .catchall {:try_start_12 .. :try_end_4b} :catchall_53

    :try_start_4b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_59

    .line 357
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 358
    nop

    .line 359
    return-void

    .line 355
    :catchall_53
    move-exception v0

    :try_start_54
    monitor-exit v7
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    :try_start_55
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v1    # "pid":I
    .end local v2    # "uid":J
    .end local v4    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskFragmentOrganizerController;
    .end local p1    # "organizer":Landroid/window/ITaskFragmentOrganizer;
    throw v0
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_59

    .line 357
    .restart local v1    # "pid":I
    .restart local v2    # "uid":J
    .restart local v4    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskFragmentOrganizerController;
    .restart local p1    # "organizer":Landroid/window/ITaskFragmentOrganizer;
    :catchall_59
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 358
    throw v0
.end method

.method public unregisterRemoteAnimations(Landroid/window/ITaskFragmentOrganizer;I)V
    .registers 20
    .param p1, "organizer"    # Landroid/window/ITaskFragmentOrganizer;
    .param p2, "taskId"    # I

    .line 389
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 390
    .local v2, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    int-to-long v3, v0

    .line 391
    .local v3, "uid":J
    iget-object v5, v1, Lcom/android/server/wm/TaskFragmentOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 392
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v0, :cond_3e

    invoke-interface/range {p1 .. p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    move-wide v6, v3

    .local v6, "protoLogParam1":J
    int-to-long v8, v2

    .local v8, "protoLogParam2":J
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v11, -0x437186f

    const/16 v12, 0x14

    const/4 v13, 0x0

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v0, v14, v15

    const/4 v15, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v10, v11, v12, v13, v14}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 395
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v6    # "protoLogParam1":J
    .end local v8    # "protoLogParam2":J
    :cond_3e
    iget-object v0, v1, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    .line 396
    invoke-interface/range {p1 .. p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    .line 397
    .local v0, "organizerState":Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;
    if-nez v0, :cond_58

    .line 398
    const-string v6, "TaskFragmentOrganizerController"

    const-string v7, "The organizer hasn\'t been registered."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    monitor-exit v5
    :try_end_54
    .catchall {:try_start_e .. :try_end_54} :catchall_66

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 402
    :cond_58
    :try_start_58
    invoke-static {v0}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->-$$Nest$fgetmRemoteAnimationDefinitions(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Landroid/util/SparseArray;

    move-result-object v6
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_66

    move/from16 v7, p2

    :try_start_5e
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->remove(I)V

    .line 403
    .end local v0    # "organizerState":Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;
    monitor-exit v5
    :try_end_62
    .catchall {:try_start_5e .. :try_end_62} :catchall_6e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 404
    return-void

    .line 403
    :catchall_66
    move-exception v0

    move/from16 v7, p2

    :goto_69
    :try_start_69
    monitor-exit v5
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_6e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_6e
    move-exception v0

    goto :goto_69
.end method
