.class Lcom/android/server/wm/TaskOrganizerController;
.super Landroid/window/ITaskOrganizerController$Stub;
.source "TaskOrganizerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskOrganizerController$StartingWindowAnimationAdaptor;,
        Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;,
        Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;,
        Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;,
        Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskOrganizerController"


# instance fields
.field private mDeferTaskOrgCallbacksConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field private final mInterceptBackPressedOnRootTasks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastSentTaskInfos:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/android/server/wm/Task;",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingTaskEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mTaskOrganizerStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskOrganizers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/window/ITaskOrganizer;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDeferTaskOrgCallbacksConsumer(Lcom/android/server/wm/TaskOrganizerController;)Ljava/util/function/Consumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mDeferTaskOrgCallbacksConsumer:Ljava/util/function/Consumer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGlobalLock(Lcom/android/server/wm/TaskOrganizerController;)Lcom/android/server/wm/WindowManagerGlobalLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInterceptBackPressedOnRootTasks(Lcom/android/server/wm/TaskOrganizerController;)Ljava/util/HashSet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mInterceptBackPressedOnRootTasks:Ljava/util/HashSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/TaskOrganizerController;)Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTaskOrganizerStates(Lcom/android/server/wm/TaskOrganizerController;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTaskOrganizers(Lcom/android/server/wm/TaskOrganizerController;)Ljava/util/LinkedList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/LinkedList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monTaskVanishedInternal(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TaskOrganizerController;->onTaskVanishedInternal(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3
    .param p1, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 333
    invoke-direct {p0}, Landroid/window/ITaskOrganizerController$Stub;-><init>()V

    .line 322
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/LinkedList;

    .line 323
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    .line 324
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mLastSentTaskInfos:Ljava/util/WeakHashMap;

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    .line 328
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mInterceptBackPressedOnRootTasks:Ljava/util/HashSet;

    .line 334
    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 335
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 336
    return-void
.end method

.method static applyStartingWindowAnimation(Lcom/android/server/wm/WindowState;)Landroid/view/SurfaceControl;
    .registers 7
    .param p0, "window"    # Lcom/android/server/wm/WindowState;

    .line 485
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 486
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getRelativeFrame()Landroid/graphics/Rect;

    move-result-object v1

    .line 487
    .local v1, "mainFrame":Landroid/graphics/Rect;
    new-instance v2, Lcom/android/server/wm/TaskOrganizerController$StartingWindowAnimationAdaptor;

    invoke-direct {v2}, Lcom/android/server/wm/TaskOrganizerController$StartingWindowAnimationAdaptor;-><init>()V

    .line 488
    .local v2, "adaptor":Lcom/android/server/wm/TaskOrganizerController$StartingWindowAnimationAdaptor;
    const/4 v3, 0x0

    const/16 v4, 0x80

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    .line 489
    iget-object v3, v2, Lcom/android/server/wm/TaskOrganizerController$StartingWindowAnimationAdaptor;->mAnimationLeash:Landroid/view/SurfaceControl;

    if-nez v3, :cond_37

    .line 490
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot start starting window animation, the window "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was removed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TaskOrganizerController"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/4 v3, 0x0

    return-object v3

    .line 494
    :cond_37
    iget-object v3, v2, Lcom/android/server/wm/TaskOrganizerController$StartingWindowAnimationAdaptor;->mAnimationLeash:Landroid/view/SurfaceControl;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 495
    iget-object v3, v2, Lcom/android/server/wm/TaskOrganizerController$StartingWindowAnimationAdaptor;->mAnimationLeash:Landroid/view/SurfaceControl;

    return-object v3
.end method

.method private dispatchTaskInfoChanged(Lcom/android/server/wm/Task;Z)V
    .registers 9
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "force"    # Z

    .line 796
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mLastSentTaskInfos:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 797
    .local v0, "lastInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v1, :cond_13

    .line 798
    new-instance v1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 800
    :cond_13
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->unset()V

    .line 801
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;)V

    .line 803
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager$RunningTaskInfo;->equalsForTaskOrganizer(Landroid/app/TaskInfo;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 804
    invoke-static {v1, v4}, Lcom/android/server/wm/WindowOrganizerController;->configurationsAreEqualForOrganizer(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 807
    invoke-virtual {v1, v0}, Landroid/app/ActivityManager$RunningTaskInfo;->equalsForMiuiSizeCompat(Landroid/app/TaskInfo;)Z

    move-result v1

    if-nez v1, :cond_3e

    goto :goto_40

    :cond_3e
    move v1, v2

    goto :goto_41

    :cond_40
    :goto_40
    move v1, v3

    .line 809
    .local v1, "changed":Z
    :goto_41
    if-nez v1, :cond_6b

    if-nez p2, :cond_6b

    iget-boolean v4, p1, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v4, :cond_6b

    .line 810
    iget-object v4, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_69

    iget-object v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_69

    iget-object v4, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 811
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 812
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 811
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_69

    move v2, v3

    goto :goto_6a

    :cond_69
    nop

    :goto_6a
    or-int/2addr v1, v2

    .line 816
    :cond_6b
    if-nez v1, :cond_70

    if-nez p2, :cond_70

    .line 818
    return-void

    .line 820
    :cond_70
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 821
    .local v2, "newInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mLastSentTaskInfos:Ljava/util/WeakHashMap;

    iget-object v4, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v3, p1, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 827
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v3

    if-eqz v3, :cond_99

    .line 832
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 833
    invoke-interface {v4}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 832
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 834
    .local v3, "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    if-eqz v3, :cond_99

    .line 835
    invoke-static {v3}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->-$$Nest$fgetmOrganizer(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->onTaskInfoChanged(Lcom/android/server/wm/Task;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 838
    .end local v3    # "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    :cond_99
    return-void
.end method

.method private getPendingTaskEvent(Lcom/android/server/wm/Task;I)Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    .registers 7
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "type"    # I

    .line 1066
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_22

    .line 1067
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    .line 1068
    .local v1, "entry":Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v3, v1, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTask:Lcom/android/server/wm/Task;

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v2, v3, :cond_1f

    iget v2, v1, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mEventType:I

    if-ne p2, v2, :cond_1f

    .line 1069
    return-object v1

    .line 1066
    .end local v1    # "entry":Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1072
    .end local v0    # "i":I
    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$getRootTasks$3([ILjava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 4
    .param p0, "activityTypes"    # [I
    .param p1, "out"    # Ljava/util/ArrayList;
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 925
    if-eqz p0, :cond_d

    .line 926
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-nez v0, :cond_d

    .line 927
    return-void

    .line 929
    :cond_d
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 930
    return-void
.end method

.method static synthetic lambda$registerTaskOrganizer$0(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 7
    .param p0, "state"    # Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    .param p1, "taskInfos"    # Ljava/util/ArrayList;
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 383
    iget-boolean v0, p2, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    xor-int/lit8 v0, v0, 0x1

    .line 384
    .local v0, "returnTask":Z
    invoke-virtual {p2, v0}, Lcom/android/server/wm/Task;->updateTaskOrganizerState(Z)Z

    .line 385
    if-eqz v0, :cond_1b

    .line 386
    const-string v1, "TaskOrganizerController.registerTaskOrganizer"

    invoke-virtual {p0, p2, v1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->addTaskWithoutCallback(Lcom/android/server/wm/Task;Ljava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object v1

    .line 388
    .local v1, "outSurfaceControl":Landroid/view/SurfaceControl;
    new-instance v2, Landroid/window/TaskAppearedInfo;

    .line 389
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/window/TaskAppearedInfo;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    .line 388
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    .end local v1    # "outSurfaceControl":Landroid/view/SurfaceControl;
    :cond_1b
    return-void
.end method

.method private onTaskVanishedInternal(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V
    .registers 8
    .param p1, "organizer"    # Landroid/window/ITaskOrganizer;
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 623
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_2b

    .line 624
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    .line 625
    .local v2, "entry":Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    iget v3, p2, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v4, v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTask:Lcom/android/server/wm/Task;

    iget v4, v4, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v3, v4, :cond_28

    iget-object v3, v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTaskOrg:Landroid/window/ITaskOrganizer;

    if-ne v3, p1, :cond_28

    .line 627
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 628
    iget v3, v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mEventType:I

    if-nez v3, :cond_28

    .line 630
    return-void

    .line 623
    .end local v2    # "entry":Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 635
    .end local v0    # "i":I
    :cond_2b
    new-instance v0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    invoke-direct {v0, p2, p1, v1}, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;-><init>(Lcom/android/server/wm/Task;Landroid/window/ITaskOrganizer;I)V

    .line 637
    .local v0, "pending":Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    return-void
.end method


# virtual methods
.method addStartingWindow(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;ILandroid/window/TaskSnapshot;I)Z
    .registers 13
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "launchTheme"    # I
    .param p4, "taskSnapshot"    # Landroid/window/TaskSnapshot;
    .param p5, "overrideTheme"    # I

    .line 500
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 501
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    iget-object v2, p2, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-nez v2, :cond_c

    goto :goto_3a

    .line 504
    :cond_c
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/ITaskOrganizer;

    .line 505
    .local v2, "lastOrganizer":Landroid/window/ITaskOrganizer;
    if-nez v2, :cond_17

    .line 506
    return v1

    .line 508
    :cond_17
    invoke-virtual {p1, p2}, Lcom/android/server/wm/Task;->getStartingWindowInfo(Lcom/android/server/wm/ActivityRecord;)Landroid/window/StartingWindowInfo;

    move-result-object v3

    .line 510
    .local v3, "info":Landroid/window/StartingWindowInfo;
    iget-object v4, p2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v4, v3, Landroid/window/StartingWindowInfo;->mlaunchPackageName:Ljava/lang/String;

    .line 511
    if-eqz p3, :cond_23

    .line 512
    iput p3, v3, Landroid/window/StartingWindowInfo;->splashScreenThemeResId:I

    .line 514
    :cond_23
    iput-object p4, v3, Landroid/window/StartingWindowInfo;->taskSnapshot:Landroid/window/TaskSnapshot;

    .line 515
    if-eqz p5, :cond_29

    .line 516
    iput p5, v3, Landroid/window/StartingWindowInfo;->overrideThemeResId:I

    .line 520
    :cond_29
    :try_start_29
    iget-object v4, p2, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-interface {v2, v3, v4}, Landroid/window/ITaskOrganizer;->addStartingWindow(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2e} :catch_31

    .line 524
    nop

    .line 525
    const/4 v1, 0x1

    return v1

    .line 521
    :catch_31
    move-exception v4

    .line 522
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "TaskOrganizerController"

    const-string v6, "Exception sending onTaskStart callback"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 523
    return v1

    .line 502
    .end local v2    # "lastOrganizer":Landroid/window/ITaskOrganizer;
    .end local v3    # "info":Landroid/window/StartingWindowInfo;
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_3a
    :goto_3a
    return v1
.end method

.method copySplashScreenView(Lcom/android/server/wm/Task;)Z
    .registers 8
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 565
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 566
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 567
    return v1

    .line 569
    :cond_8
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/ITaskOrganizer;

    .line 570
    .local v2, "lastOrganizer":Landroid/window/ITaskOrganizer;
    if-nez v2, :cond_13

    .line 571
    return v1

    .line 574
    :cond_13
    :try_start_13
    iget v3, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v2, v3}, Landroid/window/ITaskOrganizer;->copySplashScreenView(I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_18} :catch_1b

    .line 578
    nop

    .line 579
    const/4 v1, 0x1

    return v1

    .line 575
    :catch_1b
    move-exception v3

    .line 576
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "TaskOrganizerController"

    const-string v5, "Exception sending copyStartingWindowView callback"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 577
    return v1
.end method

.method createRootTask(Lcom/android/server/wm/DisplayContent;ILandroid/os/IBinder;)Lcom/android/server/wm/Task;
    .registers 16
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "windowingMode"    # I
    .param p3, "launchCookie"    # Landroid/os/IBinder;

    .line 662
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_23

    iget v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v3, v0

    .local v3, "protoLogParam0":J
    int-to-long v5, p2

    .local v5, "protoLogParam1":J
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x739ff1cb

    const/4 v8, 0x5

    const/4 v9, 0x0

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v2

    invoke-static {v0, v7, v8, v9, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 667
    .end local v3    # "protoLogParam0":J
    .end local v5    # "protoLogParam1":J
    :cond_23
    new-instance v0, Lcom/android/server/wm/Task$Builder;

    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v3}, Lcom/android/server/wm/Task$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 668
    invoke-virtual {v0, p2}, Lcom/android/server/wm/Task$Builder;->setWindowingMode(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 669
    invoke-virtual {v0, v3}, Lcom/android/server/wm/Task$Builder;->setIntent(Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    .line 670
    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task$Builder;->setCreatedByOrganizer(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    .line 671
    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task$Builder;->setDeferTaskAppear(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    .line 672
    invoke-virtual {v0, p3}, Lcom/android/server/wm/Task$Builder;->setLaunchCookie(Landroid/os/IBinder;)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    .line 673
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task$Builder;->setParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    .line 674
    invoke-virtual {v0}, Lcom/android/server/wm/Task$Builder;->build()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 675
    .local v0, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setDeferTaskAppear(Z)V

    .line 676
    return-object v0
.end method

.method public createRootTask(IILandroid/os/IBinder;)V
    .registers 19
    .param p1, "displayId"    # I
    .param p2, "windowingMode"    # I
    .param p3, "launchCookie"    # Landroid/os/IBinder;

    .line 642
    move-object v1, p0

    move/from16 v2, p1

    const-string v0, "createRootTask()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 643
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 645
    .local v3, "origId":J
    :try_start_c
    iget-object v5, v1, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_5b

    :try_start_f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 646
    iget-object v0, v1, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 647
    .local v0, "display":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_3c

    .line 648
    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v6, :cond_34

    int-to-long v6, v2

    .local v6, "protoLogParam0":J
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, 0x5342e5fa

    const/4 v10, 0x0

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v8, v9, v11, v10, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 650
    .end local v6    # "protoLogParam0":J
    :cond_34
    monitor-exit v5
    :try_end_35
    .catchall {:try_start_f .. :try_end_35} :catchall_4d

    .line 656
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 650
    return-void

    .line 653
    :cond_3c
    move/from16 v6, p2

    move-object/from16 v7, p3

    :try_start_40
    invoke-virtual {p0, v0, v6, v7}, Lcom/android/server/wm/TaskOrganizerController;->createRootTask(Lcom/android/server/wm/DisplayContent;ILandroid/os/IBinder;)Lcom/android/server/wm/Task;

    .line 654
    nop

    .end local v0    # "display":Lcom/android/server/wm/DisplayContent;
    monitor-exit v5
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_59

    :try_start_45
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_57

    .line 656
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 657
    nop

    .line 658
    return-void

    .line 654
    :catchall_4d
    move-exception v0

    move/from16 v6, p2

    move-object/from16 v7, p3

    :goto_52
    :try_start_52
    monitor-exit v5
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_59

    :try_start_53
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v3    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "displayId":I
    .end local p2    # "windowingMode":I
    .end local p3    # "launchCookie":Landroid/os/IBinder;
    throw v0
    :try_end_57
    .catchall {:try_start_53 .. :try_end_57} :catchall_57

    .line 656
    .restart local v3    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "displayId":I
    .restart local p2    # "windowingMode":I
    .restart local p3    # "launchCookie":Landroid/os/IBinder;
    :catchall_57
    move-exception v0

    goto :goto_60

    .line 654
    :catchall_59
    move-exception v0

    goto :goto_52

    .line 656
    :catchall_5b
    move-exception v0

    move/from16 v6, p2

    move-object/from16 v7, p3

    :goto_60
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 657
    throw v0
.end method

.method public deleteRootTask(Landroid/window/WindowContainerToken;)Z
    .registers 19
    .param p1, "token"    # Landroid/window/WindowContainerToken;

    .line 681
    const-string v0, "deleteRootTask()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 682
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 684
    .local v1, "origId":J
    move-object/from16 v3, p0

    :try_start_b
    iget-object v4, v3, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_8a

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 685
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 686
    .local v0, "wc":Lcom/android/server/wm/WindowContainer;
    const/4 v5, 0x0

    if-nez v0, :cond_24

    monitor-exit v4
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_84

    .line 700
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 686
    return v5

    .line 687
    :cond_24
    :try_start_24
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v6

    .line 688
    .local v6, "task":Lcom/android/server/wm/Task;
    if-nez v6, :cond_32

    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_84

    .line 700
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 688
    return v5

    .line 689
    :cond_32
    :try_start_32
    iget-boolean v7, v6, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v7, :cond_6b

    .line 694
    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_5e

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v7

    int-to-long v9, v7

    .local v9, "protoLogParam0":J
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v7

    int-to-long v11, v7

    .local v11, "protoLogParam1":J
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v14, 0x5

    const/4 v15, 0x0

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v13, v5

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v13, v8

    const v5, -0x70f88d97

    invoke-static {v7, v5, v14, v15, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 696
    .end local v9    # "protoLogParam0":J
    .end local v11    # "protoLogParam1":J
    :cond_5e
    const-string v5, "deleteRootTask"

    invoke-virtual {v6, v8, v5}, Lcom/android/server/wm/Task;->remove(ZLjava/lang/String;)V

    .line 697
    monitor-exit v4
    :try_end_64
    .catchall {:try_start_32 .. :try_end_64} :catchall_84

    .line 700
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 697
    return v8

    .line 690
    :cond_6b
    :try_start_6b
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempt to delete task not created by organizer task="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "token":Landroid/window/WindowContainerToken;
    throw v5

    .line 698
    .end local v0    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v6    # "task":Lcom/android/server/wm/Task;
    .restart local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "token":Landroid/window/WindowContainerToken;
    :catchall_84
    move-exception v0

    monitor-exit v4
    :try_end_86
    .catchall {:try_start_6b .. :try_end_86} :catchall_84

    :try_start_86
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v1    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "token":Landroid/window/WindowContainerToken;
    throw v0
    :try_end_8a
    .catchall {:try_start_86 .. :try_end_8a} :catchall_8a

    .line 700
    .restart local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "token":Landroid/window/WindowContainerToken;
    :catchall_8a
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 701
    throw v0
.end method

.method dispatchPendingEvents()V
    .registers 8

    .line 705
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->isLayoutDeferred()Z

    move-result v0

    if-nez v0, :cond_8d

    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    .line 706
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_8d

    .line 710
    :cond_16
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_1d
    if-ge v0, v1, :cond_87

    .line 711
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    .line 712
    .local v2, "event":Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    iget-object v3, v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTask:Lcom/android/server/wm/Task;

    .line 714
    .local v3, "task":Lcom/android/server/wm/Task;
    iget v4, v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mEventType:I

    packed-switch v4, :pswitch_data_8e

    goto :goto_84

    .line 739
    :pswitch_2f
    iget-object v4, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    iget-object v5, v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTaskOrg:Landroid/window/ITaskOrganizer;

    invoke-interface {v5}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 740
    .local v4, "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    if-eqz v4, :cond_84

    .line 741
    invoke-static {v4}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->-$$Nest$fgetmOrganizer(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->onBackPressedOnTaskRoot(Lcom/android/server/wm/Task;)V

    goto :goto_84

    .line 736
    .end local v4    # "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    :pswitch_47
    iget-object v4, v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTask:Lcom/android/server/wm/Task;

    iget-boolean v5, v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mForce:Z

    invoke-direct {p0, v4, v5}, Lcom/android/server/wm/TaskOrganizerController;->dispatchTaskInfoChanged(Lcom/android/server/wm/Task;Z)V

    .line 737
    goto :goto_84

    .line 729
    :pswitch_4f
    :try_start_4f
    iget-object v4, v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTaskOrg:Landroid/window/ITaskOrganizer;

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/window/ITaskOrganizer;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_58} :catch_59

    .line 732
    goto :goto_61

    .line 730
    :catch_59
    move-exception v4

    .line 731
    .local v4, "ex":Landroid/os/RemoteException;
    const-string v5, "TaskOrganizerController"

    const-string v6, "Exception sending onTaskVanished callback"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 733
    .end local v4    # "ex":Landroid/os/RemoteException;
    :goto_61
    iget-object v4, p0, Lcom/android/server/wm/TaskOrganizerController;->mLastSentTaskInfos:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v3}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    goto :goto_84

    .line 716
    :pswitch_67
    iget-object v4, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    iget-object v5, v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTaskOrg:Landroid/window/ITaskOrganizer;

    invoke-interface {v5}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 717
    .local v4, "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    if-eqz v4, :cond_84

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->taskAppearedReady()Z

    move-result v5

    if-eqz v5, :cond_84

    .line 718
    invoke-static {v4}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->-$$Nest$fgetmOrganizer(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->onTaskAppeared(Lcom/android/server/wm/Task;)V

    .line 710
    .end local v2    # "event":Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .end local v4    # "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    :cond_84
    :goto_84
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 746
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_87
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 747
    return-void

    .line 707
    :cond_8d
    :goto_8d
    return-void

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_67
        :pswitch_4f
        :pswitch_47
        :pswitch_2f
    .end packed-switch
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 13
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1089
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "TaskOrganizerController:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1090
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 1091
    .local v3, "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    invoke-static {v3}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->-$$Nest$fgetmOrganizedTasks(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1092
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1093
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->-$$Nest$fgetmOrganizer(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->-$$Nest$fgetmUid(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1094
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_74
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_af

    .line 1095
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    .line 1096
    .local v6, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v7

    .line 1097
    .local v7, "mode":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "    ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1098
    invoke-static {v7}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1097
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1094
    .end local v6    # "task":Lcom/android/server/wm/Task;
    .end local v7    # "mode":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_74

    .line 1101
    .end local v3    # "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    .end local v4    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    .end local v5    # "k":I
    :cond_af
    goto/16 :goto_25

    .line 1102
    :cond_b1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1103
    return-void
.end method

.method public enterSplitScreen(IZ)V
    .registers 7
    .param p1, "taskId"    # I
    .param p2, "leftOrTop"    # Z

    .line 1113
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/ITaskOrganizer;

    .line 1114
    .local v0, "lastOrganizer":Landroid/window/ITaskOrganizer;
    if-nez v0, :cond_b

    .line 1115
    return-void

    .line 1118
    :cond_b
    :try_start_b
    invoke-interface {v0, p1, p2}, Landroid/window/ITaskOrganizer;->enterSplitScreen(IZ)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    .line 1121
    goto :goto_17

    .line 1119
    :catch_f
    move-exception v1

    .line 1120
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TaskOrganizerController"

    const-string v3, "Exception enterSplitScreen"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1122
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_17
    return-void
.end method

.method public exitSplitScreen(I)V
    .registers 6
    .param p1, "toTopTaskId"    # I

    .line 1139
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/ITaskOrganizer;

    .line 1140
    .local v0, "lastOrganizer":Landroid/window/ITaskOrganizer;
    if-nez v0, :cond_b

    .line 1141
    return-void

    .line 1144
    :cond_b
    :try_start_b
    invoke-interface {v0, p1}, Landroid/window/ITaskOrganizer;->exitSplitScreen(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    .line 1147
    goto :goto_17

    .line 1145
    :catch_f
    move-exception v1

    .line 1146
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TaskOrganizerController"

    const-string v3, "Exception exitSplitScreen"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1148
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_17
    return-void
.end method

.method public getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;
    .registers 12
    .param p1, "parent"    # Landroid/window/WindowContainerToken;
    .param p2, "activityTypes"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/WindowContainerToken;",
            "[I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 873
    const-string v0, "getChildTasks()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 874
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 876
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_c0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 877
    if-eqz p1, :cond_b2

    .line 880
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 881
    .local v3, "container":Lcom/android/server/wm/WindowContainer;
    const/4 v4, 0x0

    if-nez v3, :cond_42

    .line 882
    const-string v5, "TaskOrganizerController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t get children of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " because it is not valid."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_c .. :try_end_3b} :catchall_ba

    .line 908
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 883
    return-object v4

    .line 885
    :cond_42
    :try_start_42
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 886
    .local v5, "task":Lcom/android/server/wm/Task;
    if-nez v5, :cond_68

    .line 887
    const-string v6, "TaskOrganizerController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not a task..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    monitor-exit v2
    :try_end_61
    .catchall {:try_start_42 .. :try_end_61} :catchall_ba

    .line 908
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 888
    return-object v4

    .line 891
    :cond_68
    :try_start_68
    iget-boolean v6, v5, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-nez v6, :cond_7b

    .line 892
    const-string v6, "TaskOrganizerController"

    const-string v7, "Can only get children of root tasks created via createRootTask"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    monitor-exit v2
    :try_end_74
    .catchall {:try_start_68 .. :try_end_74} :catchall_ba

    .line 908
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 893
    return-object v4

    .line 895
    :cond_7b
    :try_start_7b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 896
    .local v4, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_86
    if-ltz v6, :cond_aa

    .line 897
    invoke-virtual {v5, v6}, Lcom/android/server/wm/Task;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v7

    .line 898
    .local v7, "child":Lcom/android/server/wm/Task;
    if-nez v7, :cond_93

    goto :goto_a7

    .line 899
    :cond_93
    if-eqz p2, :cond_a0

    .line 900
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v8

    invoke-static {p2, v8}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v8

    if-nez v8, :cond_a0

    .line 901
    goto :goto_a7

    .line 903
    :cond_a0
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 896
    .end local v7    # "child":Lcom/android/server/wm/Task;
    :goto_a7
    add-int/lit8 v6, v6, -0x1

    goto :goto_86

    .line 905
    .end local v6    # "i":I
    :cond_aa
    monitor-exit v2
    :try_end_ab
    .catchall {:try_start_7b .. :try_end_ab} :catchall_ba

    .line 908
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 905
    return-object v4

    .line 878
    .end local v3    # "container":Lcom/android/server/wm/WindowContainer;
    .end local v4    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v5    # "task":Lcom/android/server/wm/Task;
    :cond_b2
    :try_start_b2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can\'t get children of null parent"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "parent":Landroid/window/WindowContainerToken;
    .end local p2    # "activityTypes":[I
    throw v3

    .line 906
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "parent":Landroid/window/WindowContainerToken;
    .restart local p2    # "activityTypes":[I
    :catchall_ba
    move-exception v3

    monitor-exit v2
    :try_end_bc
    .catchall {:try_start_b2 .. :try_end_bc} :catchall_ba

    :try_start_bc
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "parent":Landroid/window/WindowContainerToken;
    .end local p2    # "activityTypes":[I
    throw v3
    :try_end_c0
    .catchall {:try_start_bc .. :try_end_c0} :catchall_c0

    .line 908
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "parent":Landroid/window/WindowContainerToken;
    .restart local p2    # "activityTypes":[I
    :catchall_c0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 909
    throw v2
.end method

.method public getImeTarget(I)Landroid/window/WindowContainerToken;
    .registers 9
    .param p1, "displayId"    # I

    .line 842
    const-string v0, "getImeTarget()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 843
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 845
    .local v0, "origId":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_60

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 846
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 847
    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 848
    .local v3, "dc":Lcom/android/server/wm/DisplayContent;
    const/4 v4, 0x0

    if-nez v3, :cond_24

    .line 849
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_5a

    .line 866
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 849
    return-object v4

    .line 852
    :cond_24
    const/4 v5, 0x0

    :try_start_25
    invoke-virtual {v3, v5}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v5

    .line 853
    .local v5, "imeLayeringTarget":Lcom/android/server/wm/InsetsControlTarget;
    if-eqz v5, :cond_52

    invoke-interface {v5}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v6

    if-nez v6, :cond_32

    goto :goto_52

    .line 858
    :cond_32
    invoke-interface {v5}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    .line 859
    .local v6, "task":Lcom/android/server/wm/Task;
    if-nez v6, :cond_44

    .line 860
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_25 .. :try_end_3d} :catchall_5a

    .line 866
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 860
    return-object v4

    .line 863
    :cond_44
    :try_start_44
    iget-object v4, v6, Lcom/android/server/wm/Task;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v4

    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_5a

    .line 866
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 863
    return-object v4

    .line 854
    .end local v6    # "task":Lcom/android/server/wm/Task;
    :cond_52
    :goto_52
    :try_start_52
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_5a

    .line 866
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 854
    return-object v4

    .line 864
    .end local v3    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v5    # "imeLayeringTarget":Lcom/android/server/wm/InsetsControlTarget;
    :catchall_5a
    move-exception v3

    :try_start_5b
    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    :try_start_5c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "displayId":I
    throw v3
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_60

    .line 866
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "displayId":I
    :catchall_60
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 867
    throw v2
.end method

.method getPendingEventList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;",
            ">;"
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method getPendingLifecycleTaskEvent(Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    .registers 6
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 1078
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_24

    .line 1079
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    .line 1080
    .local v1, "entry":Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v3, v1, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTask:Lcom/android/server/wm/Task;

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v2, v3, :cond_21

    invoke-virtual {v1}, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->isLifecycleEvent()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1081
    return-object v1

    .line 1078
    .end local v1    # "entry":Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1084
    .end local v0    # "i":I
    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRootTasks(I[I)Ljava/util/List;
    .registers 10
    .param p1, "displayId"    # I
    .param p2, "activityTypes"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 914
    const-string v0, "getRootTasks()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 915
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 917
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_53

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 918
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 919
    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 920
    .local v3, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v3, :cond_2e

    .line 923
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 924
    .local v4, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    new-instance v5, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda3;

    invoke-direct {v5, p2, v4}, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda3;-><init>([ILjava/util/ArrayList;)V

    invoke-virtual {v3, v5}, Lcom/android/server/wm/DisplayContent;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 931
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_4d

    .line 934
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 931
    return-object v4

    .line 921
    .end local v4    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_2e
    :try_start_2e
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Display "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doesn\'t exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "displayId":I
    .end local p2    # "activityTypes":[I
    throw v4

    .line 932
    .end local v3    # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "displayId":I
    .restart local p2    # "activityTypes":[I
    :catchall_4d
    move-exception v3

    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_2e .. :try_end_4f} :catchall_4d

    :try_start_4f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "displayId":I
    .end local p2    # "activityTypes":[I
    throw v3
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_53

    .line 934
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "displayId":I
    .restart local p2    # "activityTypes":[I
    :catchall_53
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 935
    throw v2
.end method

.method getTaskOrganizer()Landroid/window/ITaskOrganizer;
    .registers 2

    .line 438
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/ITaskOrganizer;

    return-object v0
.end method

.method getTaskOrganizerState(Landroid/os/IBinder;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    .registers 3
    .param p1, "taskOrganizer"    # Landroid/os/IBinder;

    .line 1107
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    return-object v0
.end method

.method public handleInterceptBackPressedOnTaskRoot(Lcom/android/server/wm/Task;)Z
    .registers 7
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 1039
    const/4 v0, 0x0

    if-eqz p1, :cond_43

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v1

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mInterceptBackPressedOnRootTasks:Ljava/util/HashSet;

    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 1040
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_43

    .line 1044
    :cond_18
    nop

    .line 1045
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/TaskOrganizerController;->getPendingTaskEvent(Lcom/android/server/wm/Task;I)Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    move-result-object v2

    .line 1046
    .local v2, "pendingVanished":Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    if-eqz v2, :cond_21

    .line 1048
    return v0

    .line 1051
    :cond_21
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TaskOrganizerController;->getPendingTaskEvent(Lcom/android/server/wm/Task;I)Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    move-result-object v3

    .line 1053
    .local v3, "pending":Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    if-nez v3, :cond_2f

    .line 1054
    new-instance v4, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    invoke-direct {v4, p1, v0}, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;-><init>(Lcom/android/server/wm/Task;I)V

    move-object v3, v4

    goto :goto_34

    .line 1057
    :cond_2f
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1059
    :goto_34
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1060
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 1061
    return v1

    .line 1041
    .end local v2    # "pendingVanished":Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    .end local v3    # "pending":Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    :cond_43
    :goto_43
    return v0
.end method

.method synthetic lambda$registerTaskOrganizer$1$com-android-server-wm-TaskOrganizerController(Landroid/window/ITaskOrganizer;ILjava/util/ArrayList;)V
    .registers 14
    .param p1, "organizer"    # Landroid/window/ITaskOrganizer;
    .param p2, "uid"    # I
    .param p3, "taskInfos"    # Ljava/util/ArrayList;

    .line 373
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v0, :cond_24

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    int-to-long v1, p2

    .local v1, "protoLogParam1":J
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x6ad96a00

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 375
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v1    # "protoLogParam1":J
    :cond_24
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 376
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 377
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;-><init>(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    :cond_43
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 382
    .local v0, "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p3}, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 392
    return-void
.end method

.method synthetic lambda$unregisterTaskOrganizer$2$com-android-server-wm-TaskOrganizerController(Landroid/window/ITaskOrganizer;I)V
    .registers 14
    .param p1, "organizer"    # Landroid/window/ITaskOrganizer;
    .param p2, "uid"    # I

    .line 413
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 414
    .local v0, "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    if-nez v0, :cond_f

    .line 415
    return-void

    .line 417
    :cond_f
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v1, :cond_33

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    int-to-long v2, p2

    .local v2, "protoLogParam1":J
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x38bd7039

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v9, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 419
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v2    # "protoLogParam1":J
    :cond_33
    invoke-virtual {v0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->unlinkDeath()V

    .line 420
    invoke-virtual {v0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->dispose()V

    .line 421
    return-void
.end method

.method public onAppSplashScreenViewRemoved(Lcom/android/server/wm/Task;)V
    .registers 7
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 589
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 590
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    if-nez v0, :cond_7

    .line 591
    return-void

    .line 593
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/ITaskOrganizer;

    .line 594
    .local v1, "lastOrganizer":Landroid/window/ITaskOrganizer;
    if-nez v1, :cond_12

    .line 595
    return-void

    .line 598
    :cond_12
    :try_start_12
    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v1, v2}, Landroid/window/ITaskOrganizer;->onAppSplashScreenViewRemoved(I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_18

    .line 601
    goto :goto_20

    .line 599
    :catch_18
    move-exception v2

    .line 600
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "TaskOrganizerController"

    const-string v4, "Exception sending onAppSplashScreenViewRemoved callback"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 602
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method

.method onTaskAppeared(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V
    .registers 7
    .param p1, "organizer"    # Landroid/window/ITaskOrganizer;
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 605
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 606
    .local v0, "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    if-eqz v0, :cond_26

    invoke-static {v0, p2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->-$$Nest$maddTask(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 607
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/wm/TaskOrganizerController;->getPendingTaskEvent(Lcom/android/server/wm/Task;I)Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    move-result-object v2

    .line 608
    .local v2, "pending":Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    if-nez v2, :cond_26

    .line 609
    new-instance v3, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    invoke-direct {v3, p2, v1}, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;-><init>(Lcom/android/server/wm/Task;I)V

    move-object v1, v3

    .line 610
    .end local v2    # "pending":Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    .local v1, "pending":Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    .end local v1    # "pending":Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    :cond_26
    return-void
.end method

.method onTaskInfoChanged(Lcom/android/server/wm/Task;Z)V
    .registers 6
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "force"    # Z

    .line 761
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    if-nez v0, :cond_5

    .line 763
    return-void

    .line 765
    :cond_5
    if-eqz p2, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 772
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TaskOrganizerController;->dispatchTaskInfoChanged(Lcom/android/server/wm/Task;Z)V

    .line 773
    return-void

    .line 778
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskOrganizerController;->getPendingLifecycleTaskEvent(Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    move-result-object v0

    .line 779
    .local v0, "pending":Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
    const/4 v1, 0x2

    if-nez v0, :cond_22

    .line 780
    new-instance v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    invoke-direct {v2, p1, v1}, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;-><init>(Lcom/android/server/wm/Task;I)V

    move-object v0, v2

    goto :goto_2c

    .line 782
    :cond_22
    iget v2, v0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mEventType:I

    if-eq v2, v1, :cond_27

    .line 786
    return-void

    .line 789
    :cond_27
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 791
    :goto_2c
    iget-boolean v1, v0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mForce:Z

    or-int/2addr v1, p2

    iput-boolean v1, v0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mForce:Z

    .line 792
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    return-void
.end method

.method onTaskVanished(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V
    .registers 5
    .param p1, "organizer"    # Landroid/window/ITaskOrganizer;
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 616
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 617
    .local v0, "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    if-eqz v0, :cond_19

    iget-boolean v1, p2, Lcom/android/server/wm/Task;->mRemoveWithTaskOrganizer:Z

    invoke-static {v0, p2, v1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->-$$Nest$mremoveTask(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;Lcom/android/server/wm/Task;Z)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 618
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TaskOrganizerController;->onTaskVanishedInternal(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V

    .line 620
    :cond_19
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 342
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/window/ITaskOrganizerController$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 343
    :catch_5
    move-exception v0

    .line 344
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "TaskOrganizerController"

    invoke-static {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->logAndRethrowRuntimeExceptionOnTransact(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerTaskOrganizer(Landroid/window/ITaskOrganizer;)Landroid/content/pm/ParceledListSlice;
    .registers 10
    .param p1, "organizer"    # Landroid/window/ITaskOrganizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/ITaskOrganizer;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/window/TaskAppearedInfo;",
            ">;"
        }
    .end annotation

    .line 367
    const-string/jumbo v0, "registerTaskOrganizer()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 368
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 369
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 371
    .local v1, "origId":J
    :try_start_e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v3, "taskInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/window/TaskAppearedInfo;>;"
    new-instance v4, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1, v0, v3}, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;ILjava/util/ArrayList;)V

    .line 393
    .local v4, "withGlobalLock":Ljava/lang/Runnable;
    iget-object v5, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 394
    iget-object v5, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/TransitionController;->mRunningLock:Lcom/android/server/wm/TransitionController$Lock;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v6, v7, v4}, Lcom/android/server/wm/TransitionController$Lock;->runWhenIdle(JLjava/lang/Runnable;)V

    goto :goto_3f

    .line 396
    :cond_32
    iget-object v5, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5
    :try_end_35
    .catchall {:try_start_e .. :try_end_35} :catchall_4e

    :try_start_35
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 397
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 398
    monitor-exit v5
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_48

    :try_start_3c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 400
    :goto_3f
    new-instance v5, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v5, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_4e

    .line 402
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 400
    return-object v5

    .line 398
    :catchall_48
    move-exception v6

    :try_start_49
    monitor-exit v5
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    :try_start_4a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "uid":I
    .end local v1    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "organizer":Landroid/window/ITaskOrganizer;
    throw v6
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_4e

    .line 402
    .end local v3    # "taskInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/window/TaskAppearedInfo;>;"
    .end local v4    # "withGlobalLock":Ljava/lang/Runnable;
    .restart local v0    # "uid":I
    .restart local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "organizer":Landroid/window/ITaskOrganizer;
    :catchall_4e
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 403
    throw v3
.end method

.method removeStartingWindow(Lcom/android/server/wm/Task;Z)V
    .registers 11
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "prepareAnimation"    # Z

    .line 529
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 530
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    if-nez v0, :cond_7

    .line 531
    return-void

    .line 533
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/ITaskOrganizer;

    .line 534
    .local v1, "lastOrganizer":Landroid/window/ITaskOrganizer;
    if-nez v1, :cond_12

    .line 535
    return-void

    .line 537
    :cond_12
    new-instance v2, Landroid/window/StartingWindowRemovalInfo;

    invoke-direct {v2}, Landroid/window/StartingWindowRemovalInfo;-><init>()V

    .line 538
    .local v2, "removalInfo":Landroid/window/StartingWindowRemovalInfo;
    iget v3, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iput v3, v2, Landroid/window/StartingWindowRemovalInfo;->taskId:I

    .line 539
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_2a

    .line 540
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v5

    iget v5, v5, Landroid/view/DisplayInfo;->state:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2a

    move v5, v3

    goto :goto_2b

    :cond_2a
    move v5, v4

    :goto_2b
    iput-boolean v5, v2, Landroid/window/StartingWindowRemovalInfo;->playRevealAnimation:Z

    .line 541
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v5

    xor-int/2addr v3, v5

    .line 542
    .local v3, "playShiftUpAnimation":Z
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->topActivityContainsStartingWindow()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 543
    .local v5, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_61

    .line 544
    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 545
    invoke-virtual {v6, v5}, Lcom/android/server/wm/DisplayContent;->mayImeShowOnLaunchingActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v6

    iput-boolean v6, v2, Landroid/window/StartingWindowRemovalInfo;->deferRemoveForIme:Z

    .line 546
    nop

    .line 547
    invoke-virtual {v5, v4}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v6

    .line 550
    .local v6, "mainWindow":Lcom/android/server/wm/WindowState;
    if-eqz v6, :cond_5f

    iget-boolean v7, v6, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v7, :cond_4c

    goto :goto_5f

    .line 552
    :cond_4c
    iget-boolean v4, v2, Landroid/window/StartingWindowRemovalInfo;->playRevealAnimation:Z

    if-eqz v4, :cond_61

    if-eqz v3, :cond_61

    .line 553
    invoke-static {v6}, Lcom/android/server/wm/TaskOrganizerController;->applyStartingWindowAnimation(Lcom/android/server/wm/WindowState;)Landroid/view/SurfaceControl;

    move-result-object v4

    iput-object v4, v2, Landroid/window/StartingWindowRemovalInfo;->windowAnimationLeash:Landroid/view/SurfaceControl;

    .line 554
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getRelativeFrame()Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, v2, Landroid/window/StartingWindowRemovalInfo;->mainFrame:Landroid/graphics/Rect;

    goto :goto_61

    .line 551
    :cond_5f
    :goto_5f
    iput-boolean v4, v2, Landroid/window/StartingWindowRemovalInfo;->playRevealAnimation:Z

    .line 558
    .end local v6    # "mainWindow":Lcom/android/server/wm/WindowState;
    :cond_61
    :goto_61
    :try_start_61
    invoke-interface {v1, v2}, Landroid/window/ITaskOrganizer;->removeStartingWindow(Landroid/window/StartingWindowRemovalInfo;)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_64} :catch_65

    .line 561
    goto :goto_6d

    .line 559
    :catch_65
    move-exception v4

    .line 560
    .local v4, "e":Landroid/os/RemoteException;
    const-string v6, "TaskOrganizerController"

    const-string v7, "Exception sending onStartTaskFinished callback"

    invoke-static {v6, v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 562
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_6d
    return-void
.end method

.method reportImeDrawnOnTask(Lcom/android/server/wm/Task;)V
    .registers 6
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 750
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-interface {v1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 751
    .local v0, "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    if-eqz v0, :cond_24

    .line 753
    :try_start_10
    invoke-static {v0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->-$$Nest$fgetmOrganizer(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v1, v2}, Landroid/window/ITaskOrganizer;->onImeDrawnOnTask(I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1b} :catch_1c

    .line 756
    goto :goto_24

    .line 754
    :catch_1c
    move-exception v1

    .line 755
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TaskOrganizerController"

    const-string v3, "Exception sending onImeDrawnOnTask callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 758
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_24
    :goto_24
    return-void
.end method

.method public restartTaskTopActivityProcessIfVisible(Landroid/window/WindowContainerToken;)V
    .registers 16
    .param p1, "token"    # Landroid/window/WindowContainerToken;

    .line 970
    const-string/jumbo v0, "restartTopActivityProcessIfVisible()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 971
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 973
    .local v0, "origId":J
    :try_start_a
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_70

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 974
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 975
    .local v3, "wc":Lcom/android/server/wm/WindowContainer;
    if-nez v3, :cond_29

    .line 976
    const-string v4, "TaskOrganizerController"

    const-string v5, "Could not resolve window from token"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_6a

    .line 992
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 977
    return-void

    .line 979
    :cond_29
    :try_start_29
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 980
    .local v4, "task":Lcom/android/server/wm/Task;
    if-nez v4, :cond_3e

    .line 981
    const-string v5, "TaskOrganizerController"

    const-string v6, "Could not resolve task from token"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_29 .. :try_end_37} :catchall_6a

    .line 992
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 982
    return-void

    .line 984
    :cond_3e
    :try_start_3e
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v5, :cond_58

    iget v5, v4, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long v5, v5

    .local v5, "protoLogParam0":J
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x75068c04

    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v7, v8, v10, v9, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 986
    .end local v5    # "protoLogParam0":J
    :cond_58
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 987
    .local v5, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_61

    .line 988
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->restartProcessIfVisible()V

    .line 990
    .end local v3    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v4    # "task":Lcom/android/server/wm/Task;
    .end local v5    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_61
    monitor-exit v2
    :try_end_62
    .catchall {:try_start_3e .. :try_end_62} :catchall_6a

    :try_start_62
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_70

    .line 992
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 993
    nop

    .line 994
    return-void

    .line 990
    :catchall_6a
    move-exception v3

    :try_start_6b
    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    :try_start_6c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "token":Landroid/window/WindowContainerToken;
    throw v3
    :try_end_70
    .catchall {:try_start_6c .. :try_end_70} :catchall_70

    .line 992
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "token":Landroid/window/WindowContainerToken;
    :catchall_70
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 993
    throw v2
.end method

.method public setDeferTaskOrgCallbacksConsumer(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 354
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Runnable;>;"
    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController;->mDeferTaskOrgCallbacksConsumer:Ljava/util/function/Consumer;

    .line 355
    return-void
.end method

.method public setInterceptBackPressedOnTaskRoot(Landroid/window/WindowContainerToken;Z)V
    .registers 14
    .param p1, "token"    # Landroid/window/WindowContainerToken;
    .param p2, "interceptBackPressed"    # Z

    .line 941
    const-string/jumbo v0, "setInterceptBackPressedOnTaskRoot()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 942
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 944
    .local v0, "origId":J
    :try_start_a
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_7f

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 945
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v3, :cond_29

    move v3, p2

    .local v3, "protoLogParam0":Z
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0xdd8e260

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 947
    .end local v3    # "protoLogParam0":Z
    :cond_29
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 948
    .local v3, "wc":Lcom/android/server/wm/WindowContainer;
    if-nez v3, :cond_42

    .line 949
    const-string v4, "TaskOrganizerController"

    const-string v5, "Could not resolve window from token"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_d .. :try_end_3b} :catchall_79

    .line 964
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 950
    return-void

    .line 952
    :cond_42
    :try_start_42
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 953
    .local v4, "task":Lcom/android/server/wm/Task;
    if-nez v4, :cond_57

    .line 954
    const-string v5, "TaskOrganizerController"

    const-string v6, "Could not resolve task from token"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    monitor-exit v2
    :try_end_50
    .catchall {:try_start_42 .. :try_end_50} :catchall_79

    .line 964
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 955
    return-void

    .line 957
    :cond_57
    if-eqz p2, :cond_65

    .line 958
    :try_start_59
    iget-object v5, p0, Lcom/android/server/wm/TaskOrganizerController;->mInterceptBackPressedOnRootTasks:Ljava/util/HashSet;

    iget v6, v4, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_70

    .line 960
    :cond_65
    iget-object v5, p0, Lcom/android/server/wm/TaskOrganizerController;->mInterceptBackPressedOnRootTasks:Ljava/util/HashSet;

    iget v6, v4, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 962
    .end local v3    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v4    # "task":Lcom/android/server/wm/Task;
    :goto_70
    monitor-exit v2
    :try_end_71
    .catchall {:try_start_59 .. :try_end_71} :catchall_79

    :try_start_71
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_7f

    .line 964
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 965
    nop

    .line 966
    return-void

    .line 962
    :catchall_79
    move-exception v3

    :try_start_7a
    monitor-exit v2
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    :try_start_7b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "token":Landroid/window/WindowContainerToken;
    .end local p2    # "interceptBackPressed":Z
    throw v3
    :try_end_7f
    .catchall {:try_start_7b .. :try_end_7f} :catchall_7f

    .line 964
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "token":Landroid/window/WindowContainerToken;
    .restart local p2    # "interceptBackPressed":Z
    :catchall_7f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 965
    throw v2
.end method

.method public setIsIgnoreOrientationRequestDisabled(Z)V
    .registers 6
    .param p1, "isDisabled"    # Z

    .line 1027
    const-string/jumbo v0, "setIsIgnoreOrientationRequestDisabled()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 1028
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1030
    .local v0, "origId":J
    :try_start_a
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_26

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1031
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowManagerService;->setIsIgnoreOrientationRequestDisabled(Z)V

    .line 1032
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_20

    :try_start_18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_26

    .line 1034
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1035
    nop

    .line 1036
    return-void

    .line 1032
    :catchall_20
    move-exception v3

    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    :try_start_22
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "isDisabled":Z
    throw v3
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_26

    .line 1034
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "isDisabled":Z
    :catchall_26
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1035
    throw v2
.end method

.method public startTasksWithLegacyTransitionForSystem(II)V
    .registers 7
    .param p1, "mainTaskId"    # I
    .param p2, "sideTaskId"    # I

    .line 1152
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/ITaskOrganizer;

    .line 1153
    .local v0, "lastOrganizer":Landroid/window/ITaskOrganizer;
    if-nez v0, :cond_b

    .line 1154
    return-void

    .line 1157
    :cond_b
    :try_start_b
    invoke-interface {v0, p1, p2}, Landroid/window/ITaskOrganizer;->startTasksWithLegacyTransitionForSystem(II)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    .line 1160
    goto :goto_17

    .line 1158
    :catch_f
    move-exception v1

    .line 1159
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TaskOrganizerController"

    const-string v3, "Exception startTasksWithLegacyTransitionForSystem"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1161
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_17
    return-void
.end method

.method public swapSplitTasks()V
    .registers 5

    .line 1126
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/ITaskOrganizer;

    .line 1127
    .local v0, "lastOrganizer":Landroid/window/ITaskOrganizer;
    if-nez v0, :cond_b

    .line 1128
    return-void

    .line 1131
    :cond_b
    :try_start_b
    invoke-interface {v0}, Landroid/window/ITaskOrganizer;->swapSplitTasks()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    .line 1134
    goto :goto_17

    .line 1132
    :catch_f
    move-exception v1

    .line 1133
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TaskOrganizerController"

    const-string v3, "Exception exitSplitScreen"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1135
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_17
    return-void
.end method

.method public unregisterTaskOrganizer(Landroid/window/ITaskOrganizer;)V
    .registers 9
    .param p1, "organizer"    # Landroid/window/ITaskOrganizer;

    .line 408
    const-string/jumbo v0, "unregisterTaskOrganizer()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 409
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 410
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 412
    .local v1, "origId":J
    :try_start_e
    new-instance v3, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;I)V

    .line 422
    .local v3, "withGlobalLock":Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 423
    iget-object v4, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/TransitionController;->mRunningLock:Lcom/android/server/wm/TransitionController$Lock;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v5, v6, v3}, Lcom/android/server/wm/TransitionController$Lock;->runWhenIdle(JLjava/lang/Runnable;)V

    goto :goto_3a

    .line 425
    :cond_2d
    iget-object v4, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4
    :try_end_30
    .catchall {:try_start_e .. :try_end_30} :catchall_45

    :try_start_30
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 426
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 427
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_3f

    :try_start_37
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_45

    .line 430
    .end local v3    # "withGlobalLock":Ljava/lang/Runnable;
    :goto_3a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 431
    nop

    .line 432
    return-void

    .line 427
    .restart local v3    # "withGlobalLock":Ljava/lang/Runnable;
    :catchall_3f
    move-exception v5

    :try_start_40
    monitor-exit v4
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    :try_start_41
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "uid":I
    .end local v1    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "organizer":Landroid/window/ITaskOrganizer;
    throw v5
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_45

    .line 430
    .end local v3    # "withGlobalLock":Ljava/lang/Runnable;
    .restart local v0    # "uid":I
    .restart local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "organizer":Landroid/window/ITaskOrganizer;
    :catchall_45
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 431
    throw v3
.end method

.method public updateCameraCompatControlState(Landroid/window/WindowContainerToken;I)V
    .registers 19
    .param p1, "token"    # Landroid/window/WindowContainerToken;
    .param p2, "state"    # I

    .line 998
    const-string/jumbo v0, "updateCameraCompatControlState()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 999
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1001
    .local v1, "origId":J
    move-object/from16 v3, p0

    :try_start_c
    iget-object v4, v3, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_89

    :try_start_f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1002
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1003
    .local v0, "wc":Lcom/android/server/wm/WindowContainer;
    if-nez v0, :cond_2b

    .line 1004
    const-string v5, "TaskOrganizerController"

    const-string v6, "Could not resolve window from token"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    monitor-exit v4
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_7d

    .line 1021
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1005
    return-void

    .line 1007
    :cond_2b
    :try_start_2b
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 1008
    .local v5, "task":Lcom/android/server/wm/Task;
    if-nez v5, :cond_40

    .line 1009
    const-string v6, "TaskOrganizerController"

    const-string v7, "Could not resolve task from token"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    monitor-exit v4
    :try_end_39
    .catchall {:try_start_2b .. :try_end_39} :catchall_7d

    .line 1021
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1010
    return-void

    .line 1012
    :cond_40
    :try_start_40
    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v6, :cond_66

    invoke-static/range {p2 .. p2}, Landroid/app/TaskInfo;->cameraCompatControlStateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam0":Ljava/lang/String;
    iget v7, v5, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long v7, v7

    .local v7, "protoLogParam1":J
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, -0x327b247c

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    const/4 v14, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v9, v10, v11, v12, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1015
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    .end local v7    # "protoLogParam1":J
    :cond_66
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6
    :try_end_6a
    .catchall {:try_start_40 .. :try_end_6a} :catchall_7d

    .line 1016
    .local v6, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v6, :cond_72

    .line 1017
    move/from16 v7, p2

    :try_start_6e
    invoke-virtual {v6, v7}, Lcom/android/server/wm/ActivityRecord;->updateCameraCompatStateFromUser(I)V

    goto :goto_74

    .line 1016
    :cond_72
    move/from16 v7, p2

    .line 1019
    .end local v0    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v5    # "task":Lcom/android/server/wm/Task;
    .end local v6    # "activity":Lcom/android/server/wm/ActivityRecord;
    :goto_74
    monitor-exit v4
    :try_end_75
    .catchall {:try_start_6e .. :try_end_75} :catchall_87

    :try_start_75
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_85

    .line 1021
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1022
    nop

    .line 1023
    return-void

    .line 1019
    :catchall_7d
    move-exception v0

    move/from16 v7, p2

    :goto_80
    :try_start_80
    monitor-exit v4
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_87

    :try_start_81
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v1    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "token":Landroid/window/WindowContainerToken;
    .end local p2    # "state":I
    throw v0
    :try_end_85
    .catchall {:try_start_81 .. :try_end_85} :catchall_85

    .line 1021
    .restart local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "token":Landroid/window/WindowContainerToken;
    .restart local p2    # "state":I
    :catchall_85
    move-exception v0

    goto :goto_8c

    .line 1019
    :catchall_87
    move-exception v0

    goto :goto_80

    .line 1021
    :catchall_89
    move-exception v0

    move/from16 v7, p2

    :goto_8c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1022
    throw v0
.end method
