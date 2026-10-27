.class public Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;
.super Ljava/lang/Object;
.source "TaskFragmentOrganizerController.java"


# instance fields
.field public mAppThread:Landroid/app/IApplicationThread;

.field public final mDeferredTransitions:Landroid/util/ArrayMap;

.field public final mInFlightTransactions:Landroid/util/ArrayMap;

.field public final mIsSystemOrganizer:Z

.field public final mLastSentTaskFragmentInfos:Ljava/util/Map;

.field public final mLastSentTaskFragmentParentInfos:Landroid/util/SparseArray;

.field public final mOrganizedTaskFragments:Ljava/util/ArrayList;

.field public mOrganizer:Landroid/window/ITaskFragmentOrganizer;

.field public mOrganizerPid:I

.field public final mOrganizerUid:I

.field public final mProcessListener:Lcom/android/server/wm/WindowProcessController$Listener;

.field public mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

.field public mSavedState:Landroid/os/Bundle;

.field public final mTaskFragmentTaskIds:Ljava/util/Map;

.field public final mTemporaryActivityTokens:Ljava/util/Map;

.field public final synthetic this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;


# direct methods
.method public static synthetic $r8$lambda$Q_hgnNtmtG7z8cEA_UyzjUDIWKM(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;Landroid/os/IBinder;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->lambda$prepareActivityReparentedToTask$2(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hoK005TrKOTHHyV_Pnv3a98To8A(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    .line 275
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$huac9rP8W7EStWsQNtLvA9cpEzU(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->lambda$new$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmInFlightTransactions(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Landroid/util/ArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mInFlightTransactions:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsSystemOrganizer(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mIsSystemOrganizer:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastSentTaskFragmentInfos(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentInfos:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastSentTaskFragmentParentInfos(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentParentInfos:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOrganizedTaskFragments(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOrganizer(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Landroid/window/ITaskFragmentOrganizer;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizer:Landroid/window/ITaskFragmentOrganizer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOrganizerUid(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizerUid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRemoteAnimationDefinition(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Landroid/view/RemoteAnimationDefinition;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSavedState(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Landroid/os/Bundle;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mSavedState:Landroid/os/Bundle;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTemporaryActivityTokens(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mTemporaryActivityTokens:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmRemoteAnimationDefinition(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;Landroid/view/RemoteAnimationDefinition;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSavedState(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;Landroid/os/Bundle;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mSavedState:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/TaskFragmentOrganizerController;Landroid/window/ITaskFragmentOrganizer;IIZ)V
    .registers 7

    .line 193
    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentInfos:Ljava/util/Map;

    .line 139
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mTaskFragmentTaskIds:Ljava/util/Map;

    .line 145
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentParentInfos:Landroid/util/SparseArray;

    .line 151
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mTemporaryActivityTokens:Ljava/util/Map;

    .line 174
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mDeferredTransitions:Landroid/util/ArrayMap;

    .line 182
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mInFlightTransactions:Landroid/util/ArrayMap;

    .line 186
    new-instance v0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mProcessListener:Lcom/android/server/wm/WindowProcessController$Listener;

    .line 194
    invoke-virtual {p1, p3, p4}, Lcom/android/server/wm/TaskFragmentOrganizerController;->getAppThread(II)Landroid/app/IApplicationThread;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mAppThread:Landroid/app/IApplicationThread;

    .line 195
    iput-object p2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 196
    iput p3, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizerPid:I

    .line 197
    iput p4, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizerUid:I

    .line 198
    iput-boolean p5, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mIsSystemOrganizer:Z

    .line 200
    invoke-virtual {p0, p3}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->registerProcessDiedHandler(I)V

    return-void
.end method


# virtual methods
.method public addTaskFragment(Lcom/android/server/wm/TaskFragment;)Z
    .registers 4

    .line 241
    iget-boolean v0, p1, Lcom/android/server/wm/TaskFragment;->mTaskFragmentAppearedSent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 244
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    .line 247
    :cond_f
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public dispatchTransaction(Landroid/window/TaskFragmentTransaction;)V
    .registers 8

    .line 496
    invoke-virtual {p1}, Landroid/window/TaskFragmentTransaction;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1e

    .line 502
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mAppThread:Landroid/app/IApplicationThread;

    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizer:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v0, v1, p1}, Landroid/app/IApplicationThread;->scheduleTaskFragmentTransaction(Landroid/window/ITaskFragmentOrganizer;Landroid/window/TaskFragmentTransaction;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_88

    .line 507
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-static {v0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->-$$Nest$fgetmWindowOrganizerController(Lcom/android/server/wm/TaskFragmentOrganizerController;)Lcom/android/server/wm/WindowOrganizerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowOrganizerController;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v0

    if-nez v0, :cond_1f

    :goto_1e
    return-void

    .line 510
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-static {v0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->-$$Nest$fgetmWindowOrganizerController(Lcom/android/server/wm/TaskFragmentOrganizerController;)Lcom/android/server/wm/WindowOrganizerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowOrganizerController;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v0

    .line 511
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransitionId()I

    move-result v0

    .line 513
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    const/4 v2, 0x1

    if-eqz v1, :cond_50

    int-to-long v3, v0

    invoke-virtual {p1}, Landroid/window/TaskFragmentTransaction;->getTransactionToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v3, 0x23f1167dc4bc388cL    # 1.469364523705632E-135

    invoke-static {v5, v3, v4, v2, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 516
    :cond_50
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mDeferredTransitions:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/window/TaskFragmentTransaction;->getTransactionToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-static {v0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->-$$Nest$fgetmWindowOrganizerController(Lcom/android/server/wm/TaskFragmentOrganizerController;)Lcom/android/server/wm/WindowOrganizerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowOrganizerController;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->deferTransitionReady()V

    .line 518
    new-instance v0, Lcom/android/server/wm/Transition$ReadyCondition;

    const-string v1, "task-fragment transaction"

    .line 519
    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/wm/Transition$ReadyCondition;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 520
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-static {v1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->-$$Nest$fgetmWindowOrganizerController(Lcom/android/server/wm/TaskFragmentOrganizerController;)Lcom/android/server/wm/WindowOrganizerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowOrganizerController;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/TransitionController;->waitFor(Lcom/android/server/wm/Transition$ReadyCondition;)V

    .line 521
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mInFlightTransactions:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/window/TaskFragmentTransaction;->getTransactionToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_88
    move-exception p0

    .line 504
    const-string p1, "TaskFragmentOrganizerController"

    const-string v0, "Exception sending TaskFragmentTransaction"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public dispose(Ljava/lang/String;)V
    .registers 9

    .line 257
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ltz v0, :cond_21

    .line 258
    iget-object v4, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskFragment;

    .line 259
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v5

    if-eqz v5, :cond_1b

    move v3, v1

    .line 265
    :cond_1b
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->onTaskFragmentOrganizerRemoved()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_21
    const/4 v0, 0x0

    if-eqz v3, :cond_33

    .line 269
    iget-object v3, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-static {v3}, Lcom/android/server/wm/TaskFragmentOrganizerController;->-$$Nest$fgetmAtmService(Lcom/android/server/wm/TaskFragmentOrganizerController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v4, "TF.dispose"

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActionChain$Tracker;->startTransit(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;

    move-result-object v3

    goto :goto_34

    :cond_33
    move-object v3, v0

    .line 270
    :goto_34
    iget-object v4, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-static {v4}, Lcom/android/server/wm/TaskFragmentOrganizerController;->-$$Nest$fgetmAtmService(Lcom/android/server/wm/TaskFragmentOrganizerController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v4

    if-eqz v3, :cond_78

    .line 271
    invoke-virtual {v4}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v5

    if-eqz v5, :cond_78

    .line 272
    invoke-virtual {v3}, Lcom/android/server/wm/ActionChain;->isCollecting()Z

    move-result v5

    if-nez v5, :cond_78

    .line 273
    iget-object v5, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/TaskFragment;

    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_66

    .line 274
    new-instance v6, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState$$ExternalSyntheticLambda0;-><init>()V

    .line 275
    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_66

    move v2, v1

    :cond_66
    const/4 v6, 0x2

    .line 277
    invoke-virtual {v4, v6}, Lcom/android/server/wm/TransitionController;->createTransition(I)Lcom/android/server/wm/Transition;

    move-result-object v6

    .line 276
    invoke-virtual {v3, v6}, Lcom/android/server/wm/ActionChain;->attachTransition(Lcom/android/server/wm/Transition;)V

    .line 278
    invoke-virtual {v3}, Lcom/android/server/wm/ActionChain;->getTransition()Lcom/android/server/wm/Transition;

    move-result-object v6

    if-eqz v2, :cond_75

    move-object v5, v0

    :cond_75
    invoke-virtual {v4, v6, v5, v0, v0}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 286
    :cond_78
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-static {v0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->-$$Nest$fgetmAtmService(Lcom/android/server/wm/TaskFragmentOrganizerController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 289
    :try_start_81
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->hasSavedState()Z

    move-result v0

    .line 290
    iget-object v2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_8c
    if-ltz v2, :cond_ad

    .line 291
    iget-object v4, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskFragment;

    if-eqz v0, :cond_a2

    .line 292
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v5

    if-nez v5, :cond_aa

    goto :goto_a2

    :catchall_9f
    move-exception p1

    goto/16 :goto_138

    .line 293
    :cond_a2
    :goto_a2
    iget-object v5, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 294
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->removeImmediately()V
    :try_end_aa
    .catchall {:try_start_81 .. :try_end_aa} :catchall_9f

    :cond_aa
    add-int/lit8 v2, v2, -0x1

    goto :goto_8c

    .line 298
    :cond_ad
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-static {v0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->-$$Nest$fgetmAtmService(Lcom/android/server/wm/TaskFragmentOrganizerController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    if-eqz v3, :cond_c3

    .line 300
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-static {v0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->-$$Nest$fgetmAtmService(Lcom/android/server/wm/TaskFragmentOrganizerController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {v0}, Lcom/android/server/wm/ActionChain$Tracker;->endPartial()V

    .line 305
    :cond_c3
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mDeferredTransitions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_e4

    .line 307
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_e4

    int-to-long v2, v0

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v5, 0x563417e65623a01L

    invoke-static {v4, v5, v6, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_e4
    sub-int/2addr v0, v1

    :goto_e5
    if-ltz v0, :cond_f5

    .line 314
    iget-object v2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mDeferredTransitions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->onTransactionFinished(Landroid/os/IBinder;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_e5

    .line 316
    :cond_f5
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mInFlightTransactions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_fc
    if-ltz v0, :cond_122

    .line 318
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mInFlightTransactions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Transition$ReadyCondition;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disposed("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Transition$ReadyCondition;->meetAlternate(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_fc

    .line 320
    :cond_122
    iget-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->-$$Nest$fgetmAtmService(Lcom/android/server/wm/TaskFragmentOrganizerController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    iget v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizerPid:I

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object p1

    if-eqz p1, :cond_137

    .line 323
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mProcessListener:Lcom/android/server/wm/WindowProcessController$Listener;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowProcessController;->removeListener(Lcom/android/server/wm/WindowProcessController$Listener;)V

    :cond_137
    return-void

    .line 298
    :goto_138
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-static {v0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->-$$Nest$fgetmAtmService(Lcom/android/server/wm/TaskFragmentOrganizerController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    if-eqz v3, :cond_14e

    .line 300
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-static {p0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->-$$Nest$fgetmAtmService(Lcom/android/server/wm/TaskFragmentOrganizerController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain$Tracker;->endPartial()V

    .line 302
    :cond_14e
    throw p1
.end method

.method public final handleAppDied()V
    .registers 6

    .line 205
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizer:Landroid/window/ITaskFragmentOrganizer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v2, 0x0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v3, 0x535c6e6f09b331eL

    invoke-static {v1, v3, v4, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 207
    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizer:Landroid/window/ITaskFragmentOrganizer;

    const-string v1, "client died"

    invoke-static {v0, p0, v1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->-$$Nest$mremoveOrganizer(Lcom/android/server/wm/TaskFragmentOrganizerController;Landroid/window/ITaskFragmentOrganizer;Ljava/lang/String;)V

    return-void
.end method

.method public hasSavedState()Z
    .registers 1

    .line 234
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mSavedState:Landroid/os/Bundle;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$new$0()V
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-static {v0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->-$$Nest$fgetmGlobalLock(Lcom/android/server/wm/TaskFragmentOrganizerController;)Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 188
    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->handleAppDied()V

    .line 189
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_12
    move-exception p0

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$prepareActivityReparentedToTask$2(Landroid/os/IBinder;)V
    .registers 3

    .line 469
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-static {v0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->-$$Nest$fgetmGlobalLock(Lcom/android/server/wm/TaskFragmentOrganizerController;)Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 470
    :try_start_a
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mTemporaryActivityTokens:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_14
    move-exception p0

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onTransactionFinished(Landroid/os/IBinder;)V
    .registers 6

    .line 526
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mDeferredTransitions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_82

    .line 531
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mDeferredTransitions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 532
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-static {v1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->-$$Nest$fgetmWindowOrganizerController(Lcom/android/server/wm/TaskFragmentOrganizerController;)Lcom/android/server/wm/WindowOrganizerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowOrganizerController;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_64

    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-static {v1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->-$$Nest$fgetmWindowOrganizerController(Lcom/android/server/wm/TaskFragmentOrganizerController;)Lcom/android/server/wm/WindowOrganizerController;

    move-result-object v1

    .line 533
    invoke-virtual {v1}, Lcom/android/server/wm/WindowOrganizerController;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v1

    .line 534
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->getCollectingTransitionId()I

    move-result v1

    if-eq v1, v0, :cond_38

    goto :goto_64

    .line 543
    :cond_38
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    const/4 v3, 0x0

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_56

    int-to-long v0, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-wide v0, -0x53f127f05eafc5d9L    # -1.805019645377026E-96

    invoke-static {v3, v0, v1, v2, p1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 546
    :cond_56
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-static {p0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->-$$Nest$fgetmWindowOrganizerController(Lcom/android/server/wm/TaskFragmentOrganizerController;)Lcom/android/server/wm/WindowOrganizerController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrganizerController;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->continueTransitionReady()V

    return-void

    .line 536
    :cond_64
    :goto_64
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    const/4 v1, 0x3

    aget-boolean p0, p0, v1

    if-eqz p0, :cond_82

    int-to-long v0, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v0, -0x7535ac31006aca86L

    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_82
    :goto_82
    return-void
.end method

.method public prepareActivityReparentedToTask(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;)Landroid/window/TaskFragmentTransaction$Change;
    .registers 11

    .line 436
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    const-string v2, "Reparent activity="

    const-string v3, "TaskFragmentOrganizerController"

    if-eqz v0, :cond_23

    .line 437
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is finishing"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 440
    :cond_23
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_106

    .line 441
    iget v4, v0, Lcom/android/server/wm/Task;->effectiveUid:I

    iget v5, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizerUid:I

    if-eq v4, v5, :cond_31

    goto/16 :goto_106

    .line 446
    :cond_31
    invoke-virtual {v0, p1, v5}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivity(Lcom/android/server/wm/ActivityRecord;I)I

    move-result v4

    if-eqz v4, :cond_51

    .line 447
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not allowed to be embedded."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 451
    :cond_51
    iget v4, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizerUid:I

    invoke-virtual {v0, p1, v4}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivityInTrustedMode(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v4

    if-nez v4, :cond_79

    .line 452
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isUntrustedEmbeddingStateSharingAllowed()Z

    move-result v4

    if-nez v4, :cond_79

    .line 453
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not allowed to be shared with untrusted host."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 459
    :cond_79
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getPid()I

    move-result v1

    iget v2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizerPid:I

    if-ne v1, v2, :cond_8c

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v1

    iget v2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizerUid:I

    if-ne v1, v2, :cond_8c

    .line 461
    iget-object v1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    goto :goto_ac

    .line 466
    :cond_8c
    new-instance v1, Landroid/os/Binder;

    const-string v2, "TemporaryActivityToken"

    invoke-direct {v1, v2}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 467
    iget-object v2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mTemporaryActivityTokens:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    new-instance v2, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;Landroid/os/IBinder;)V

    .line 473
    iget-object v3, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-static {v3}, Lcom/android/server/wm/TaskFragmentOrganizerController;->-$$Nest$fgetmAtmService(Lcom/android/server/wm/TaskFragmentOrganizerController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 476
    :goto_ac
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_cf

    iget-object v2, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long v3, v3

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v3, -0x6d8a8354e031c2c7L    # -9.51083566816062E-220

    const/4 v6, 0x4

    invoke-static {v5, v3, v4, v6, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 479
    :cond_cf
    new-instance v2, Landroid/window/TaskFragmentTransaction$Change;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Landroid/window/TaskFragmentTransaction$Change;-><init>(I)V

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 481
    invoke-virtual {v2, v0}, Landroid/window/TaskFragmentTransaction$Change;->setTaskId(I)Landroid/window/TaskFragmentTransaction$Change;

    move-result-object v0

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 482
    invoke-static {p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->-$$Nest$smtrimIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/window/TaskFragmentTransaction$Change;->setActivityIntent(Landroid/content/Intent;)Landroid/window/TaskFragmentTransaction$Change;

    move-result-object p1

    .line 483
    invoke-virtual {p1, v1}, Landroid/window/TaskFragmentTransaction$Change;->setActivityToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentTransaction$Change;

    move-result-object p1

    if-eqz p3, :cond_ee

    .line 485
    invoke-virtual {p1, p3}, Landroid/window/TaskFragmentTransaction$Change;->setTaskFragmentToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentTransaction$Change;

    :cond_ee
    if-eqz p2, :cond_105

    .line 488
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getPid()I

    move-result p3

    iget v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizerPid:I

    if-ne p3, v0, :cond_105

    .line 489
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result p3

    iget p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizerUid:I

    if-ne p3, p0, :cond_105

    .line 490
    iget-object p0, p2, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p1, p0}, Landroid/window/TaskFragmentTransaction$Change;->setOtherActivityToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentTransaction$Change;

    :cond_105
    return-object p1

    .line 442
    :cond_106
    :goto_106
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not in a task belong to the organizer app."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public prepareTaskFragmentAppeared(Lcom/android/server/wm/TaskFragment;)Landroid/window/TaskFragmentTransaction$Change;
    .registers 7

    .line 329
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x26fa11ed21b4cf72L    # -7.07858454045048E120

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v3, v4, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 330
    :cond_1d
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentInfo()Landroid/window/TaskFragmentInfo;

    move-result-object v0

    .line 331
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v2, 0x1

    .line 332
    iput-boolean v2, p1, Lcom/android/server/wm/TaskFragment;->mTaskFragmentAppearedSent:Z

    .line 333
    iget-object v3, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentInfos:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v3, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mTaskFragmentTaskIds:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    new-instance v3, Landroid/window/TaskFragmentTransaction$Change;

    invoke-direct {v3, v2}, Landroid/window/TaskFragmentTransaction$Change;-><init>(I)V

    .line 337
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/window/TaskFragmentTransaction$Change;->setTaskFragmentToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentTransaction$Change;

    move-result-object v2

    .line 338
    invoke-virtual {v2, v0}, Landroid/window/TaskFragmentTransaction$Change;->setTaskFragmentInfo(Landroid/window/TaskFragmentInfo;)Landroid/window/TaskFragmentTransaction$Change;

    move-result-object v0

    .line 339
    invoke-virtual {v0, v1}, Landroid/window/TaskFragmentTransaction$Change;->setTaskId(I)Landroid/window/TaskFragmentTransaction$Change;

    move-result-object v0

    .line 340
    iget-boolean p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mIsSystemOrganizer:Z

    if-eqz p0, :cond_58

    .line 341
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/window/TaskFragmentTransaction$Change;->setTaskFragmentSurfaceControl(Landroid/view/SurfaceControl;)Landroid/window/TaskFragmentTransaction$Change;

    :cond_58
    return-object v0
.end method

.method public prepareTaskFragmentError(Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)Landroid/window/TaskFragmentTransaction$Change;
    .registers 9

    .line 422
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    const/4 v0, 0x0

    aget-boolean p0, p0, v0

    if-eqz p0, :cond_1d

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, 0x59dc0e39c3fa3521L    # 7.418520520158507E124

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v2, v3, v0, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1d
    if-eqz p2, :cond_24

    .line 425
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentInfo()Landroid/window/TaskFragmentInfo;

    move-result-object p0

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    .line 426
    :goto_25
    invoke-static {p4, p0, p3}, Landroid/window/TaskFragmentOrganizer;->putErrorInfoInBundle(Ljava/lang/Throwable;Landroid/window/TaskFragmentInfo;I)Landroid/os/Bundle;

    move-result-object p0

    .line 427
    new-instance p2, Landroid/window/TaskFragmentTransaction$Change;

    const/4 p3, 0x5

    invoke-direct {p2, p3}, Landroid/window/TaskFragmentTransaction$Change;-><init>(I)V

    .line 428
    invoke-virtual {p2, p1}, Landroid/window/TaskFragmentTransaction$Change;->setErrorCallbackToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentTransaction$Change;

    move-result-object p1

    .line 429
    invoke-virtual {p1, p0}, Landroid/window/TaskFragmentTransaction$Change;->setErrorBundle(Landroid/os/Bundle;)Landroid/window/TaskFragmentTransaction$Change;

    move-result-object p0

    return-object p0
.end method

.method public prepareTaskFragmentInfoChanged(Lcom/android/server/wm/TaskFragment;)Landroid/window/TaskFragmentTransaction$Change;
    .registers 8

    .line 375
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentInfo()Landroid/window/TaskFragmentInfo;

    move-result-object v0

    .line 376
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentInfos:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TaskFragmentInfo;

    .line 377
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getConfigurationChangeMaskForOrganizer()I

    move-result v2

    .line 378
    invoke-virtual {v0, v1}, Landroid/window/TaskFragmentInfo;->equalsForTaskFragmentOrganizer(Landroid/window/TaskFragmentInfo;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 379
    invoke-virtual {v0}, Landroid/window/TaskFragmentInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 380
    invoke-virtual {v1}, Landroid/window/TaskFragmentInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 379
    invoke-static {v3, v1, v2}, Lcom/android/server/wm/WindowOrganizerController;->configurationsAreEqualForOrganizer(Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 p0, 0x0

    return-object p0

    .line 384
    :cond_26
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_43

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0x2db8bf8f1d73388aL    # 1.9438657186000612E-88

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v4, v5, v2, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 386
    :cond_43
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentInfos:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    new-instance p0, Landroid/window/TaskFragmentTransaction$Change;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Landroid/window/TaskFragmentTransaction$Change;-><init>(I)V

    .line 389
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/window/TaskFragmentTransaction$Change;->setTaskFragmentToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentTransaction$Change;

    move-result-object p0

    .line 390
    invoke-virtual {p0, v0}, Landroid/window/TaskFragmentTransaction$Change;->setTaskFragmentInfo(Landroid/window/TaskFragmentInfo;)Landroid/window/TaskFragmentTransaction$Change;

    move-result-object p0

    .line 391
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, p1}, Landroid/window/TaskFragmentTransaction$Change;->setTaskId(I)Landroid/window/TaskFragmentTransaction$Change;

    move-result-object p0

    return-object p0
.end method

.method public prepareTaskFragmentParentInfoChanged(Lcom/android/server/wm/Task;)Landroid/window/TaskFragmentTransaction$Change;
    .registers 8

    .line 396
    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 398
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTaskFragmentParentInfo()Landroid/window/TaskFragmentParentInfo;

    move-result-object v1

    .line 399
    iget-object v2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentParentInfos:Landroid/util/SparseArray;

    .line 400
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TaskFragmentParentInfo;

    const/4 v3, 0x0

    if-eqz v2, :cond_16

    .line 402
    invoke-virtual {v2}, Landroid/window/TaskFragmentParentInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    goto :goto_17

    :cond_16
    move-object v4, v3

    .line 403
    :goto_17
    invoke-virtual {v1, v2}, Landroid/window/TaskFragmentParentInfo;->equalsForTaskFragmentOrganizer(Landroid/window/TaskFragmentParentInfo;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 404
    invoke-virtual {v1}, Landroid/window/TaskFragmentParentInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/android/server/wm/WindowOrganizerController;->configurationsAreEqualForOrganizer(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_28

    return-object v3

    .line 409
    :cond_28
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    const/4 v3, 0x4

    if-eqz v2, :cond_4b

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    int-to-long v4, v0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {p1, v4}, [Ljava/lang/Object;

    move-result-object p1

    const-wide v4, 0x457d4174c76c3bf3L    # 5.65887308519196E26

    invoke-static {v2, v4, v5, v3, p1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 412
    :cond_4b
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentParentInfos:Landroid/util/SparseArray;

    new-instance p1, Landroid/window/TaskFragmentParentInfo;

    invoke-direct {p1, v1}, Landroid/window/TaskFragmentParentInfo;-><init>(Landroid/window/TaskFragmentParentInfo;)V

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 413
    new-instance p0, Landroid/window/TaskFragmentTransaction$Change;

    invoke-direct {p0, v3}, Landroid/window/TaskFragmentTransaction$Change;-><init>(I)V

    .line 414
    invoke-virtual {p0, v0}, Landroid/window/TaskFragmentTransaction$Change;->setTaskId(I)Landroid/window/TaskFragmentTransaction$Change;

    move-result-object p0

    .line 415
    invoke-virtual {p0, v1}, Landroid/window/TaskFragmentTransaction$Change;->setTaskFragmentParentInfo(Landroid/window/TaskFragmentParentInfo;)Landroid/window/TaskFragmentTransaction$Change;

    move-result-object p0

    return-object p0
.end method

.method public prepareTaskFragmentVanished(Lcom/android/server/wm/TaskFragment;)Landroid/window/TaskFragmentTransaction$Change;
    .registers 7

    .line 348
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x31b638444f87c356L    # -1.3900660472693982E69

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v3, v4, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 349
    :cond_1d
    iput-boolean v1, p1, Lcom/android/server/wm/TaskFragment;->mTaskFragmentAppearedSent:Z

    .line 350
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mTaskFragmentTaskIds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 355
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mTaskFragmentTaskIds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 356
    iget-object v2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mTaskFragmentTaskIds:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 358
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentParentInfos:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_47

    :cond_46
    const/4 v1, -0x1

    .line 365
    :cond_47
    :goto_47
    new-instance p0, Landroid/window/TaskFragmentTransaction$Change;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/window/TaskFragmentTransaction$Change;-><init>(I)V

    .line 366
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/window/TaskFragmentTransaction$Change;->setTaskFragmentToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentTransaction$Change;

    move-result-object p0

    .line 367
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentInfo()Landroid/window/TaskFragmentInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/window/TaskFragmentTransaction$Change;->setTaskFragmentInfo(Landroid/window/TaskFragmentInfo;)Landroid/window/TaskFragmentTransaction$Change;

    move-result-object p0

    .line 368
    invoke-virtual {p0, v1}, Landroid/window/TaskFragmentTransaction$Change;->setTaskId(I)Landroid/window/TaskFragmentTransaction$Change;

    move-result-object p0

    return-object p0
.end method

.method public final registerProcessDiedHandler(I)V
    .registers 3

    .line 227
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-static {v0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->-$$Nest$fgetmAtmService(Lcom/android/server/wm/TaskFragmentOrganizerController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 229
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mProcessListener:Lcom/android/server/wm/WindowProcessController$Listener;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowProcessController;->addListener(Lcom/android/server/wm/WindowProcessController$Listener;)V

    :cond_13
    return-void
.end method

.method public removeTaskFragment(Lcom/android/server/wm/TaskFragment;)V
    .registers 2

    .line 252
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public restore(Landroid/window/ITaskFragmentOrganizer;I)V
    .registers 6

    .line 211
    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 212
    iput p2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizerPid:I

    .line 213
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    iget v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizerUid:I

    invoke-virtual {v0, p2, v1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->getAppThread(II)Landroid/app/IApplicationThread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mAppThread:Landroid/app/IApplicationThread;

    .line 214
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_16
    if-ltz v0, :cond_38

    .line 215
    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskFragment;

    .line 216
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 217
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 218
    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskFragment;->onTaskFragmentOrganizerRestarted(Landroid/window/ITaskFragmentOrganizer;)V

    goto :goto_35

    .line 220
    :cond_30
    iget-object v2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_35
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    .line 223
    :cond_38
    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->registerProcessDiedHandler(I)V

    return-void
.end method
