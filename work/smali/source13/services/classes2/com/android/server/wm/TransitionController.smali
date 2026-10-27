.class Lcom/android/server/wm/TransitionController;
.super Ljava/lang/Object;
.source "TransitionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TransitionController$Lock;,
        Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;
    }
.end annotation


# static fields
.field private static final CHANGE_TIMEOUT_MS:I = 0x7d0

.field private static final DEFAULT_TIMEOUT_MS:I = 0x1388

.field private static final LEGACY_STATE_IDLE:I = 0x0

.field private static final LEGACY_STATE_READY:I = 0x1

.field private static final LEGACY_STATE_RUNNING:I = 0x2

.field private static final SHELL_TRANSITIONS_ROTATION:Z

.field private static final TAG:Ljava/lang/String; = "TransitionController"


# instance fields
.field final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mCollectingTransition:Lcom/android/server/wm/Transition;

.field private final mLegacyListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlayingTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Transition;",
            ">;"
        }
    .end annotation
.end field

.field final mRunningLock:Lcom/android/server/wm/TransitionController$Lock;

.field final mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field final mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

.field final mTransitionMetricsReporter:Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;

.field private mTransitionPlayer:Landroid/window/ITransitionPlayer;

.field private final mTransitionPlayerDeath:Landroid/os/IBinder$DeathRecipient;

.field private mTransitionPlayerThread:Landroid/app/IApplicationThread;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 63
    nop

    .line 64
    const-string/jumbo v0, "persist.wm.debug.shell_transit_rotate"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/TransitionController;->SHELL_TRANSITIONS_ROTATION:Z

    .line 63
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/TaskSnapshotController;)V
    .registers 4
    .param p1, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "taskSnapshotController"    # Lcom/android/server/wm/TaskSnapshotController;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;

    invoke-direct {v0}, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionMetricsReporter:Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Lcom/android/server/wm/TransitionController$Lock;

    invoke-direct {v0, p0}, Lcom/android/server/wm/TransitionController$Lock;-><init>(Lcom/android/server/wm/TransitionController;)V

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mRunningLock:Lcom/android/server/wm/TransitionController$Lock;

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 104
    iput-object p1, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 105
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 106
    iput-object p2, p0, Lcom/android/server/wm/TransitionController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 107
    new-instance v0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TransitionController;)V

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayerDeath:Landroid/os/IBinder$DeathRecipient;

    .line 118
    return-void
.end method

.method private createTransition(II)Lcom/android/server/wm/Transition;
    .registers 10
    .param p1, "type"    # I
    .param p2, "flags"    # I

    .line 132
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayer:Landroid/window/ITransitionPlayer;

    if-eqz v0, :cond_37

    .line 135
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez v0, :cond_2f

    .line 139
    new-instance v0, Lcom/android/server/wm/Transition;

    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    .line 140
    .local v0, "transit":Lcom/android/server/wm/Transition;
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v1, :cond_2b

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0xf732d0e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const-string v6, "Creating Transition: %s"

    invoke-static {v2, v3, v5, v6, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 141
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    :cond_2b
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TransitionController;->moveToCollecting(Lcom/android/server/wm/Transition;)V

    .line 142
    return-object v0

    .line 136
    .end local v0    # "transit":Lcom/android/server/wm/Transition;
    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Simultaneous transition collection not supported yet. Use {@link #createPendingTransition} for explicit queueing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shell Transitions not enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isExistenceType(I)Z
    .registers 3
    .param p0, "type"    # I

    .line 327
    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v1, 0x2

    if-ne p0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0
.end method

.method static synthetic lambda$collectForDisplayChange$1(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;)V
    .registers 3
    .param p0, "transition"    # Lcom/android/server/wm/Transition;
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 436
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 437
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 439
    :cond_9
    return-void
.end method

.method private setAnimationRunning(Z)V
    .registers 5
    .param p1, "running"    # Z

    .line 499
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayerThread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_5

    return-void

    .line 500
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 501
    .local v0, "wpc":Lcom/android/server/wm/WindowProcessController;
    if-nez v0, :cond_28

    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find process for player thread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayerThread:Landroid/app/IApplicationThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TransitionController"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return-void

    .line 505
    :cond_28
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setRunningRemoteAnimation(Z)V

    .line 506
    return-void
.end method


# virtual methods
.method abort(Lcom/android/server/wm/Transition;)V
    .registers 4
    .param p1, "transition"    # Lcom/android/server/wm/Transition;

    .line 509
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-ne p1, v0, :cond_b

    .line 512
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->abort()V

    .line 513
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 514
    return-void

    .line 510
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Too late to abort."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method collect(Lcom/android/server/wm/WindowContainer;)V
    .registers 3
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 416
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez v0, :cond_5

    return-void

    .line 417
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 418
    return-void
.end method

.method collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V
    .registers 3
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 422
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez v0, :cond_5

    return-void

    .line 423
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Transition;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    .line 424
    return-void
.end method

.method collectForDisplayChange(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Transition;)V
    .registers 6
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "incoming"    # Lcom/android/server/wm/Transition;

    .line 431
    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 432
    :cond_4
    if-nez p2, :cond_7

    return-void

    .line 433
    :cond_7
    move-object v0, p2

    .line 435
    .local v0, "transition":Lcom/android/server/wm/Transition;
    new-instance v1, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/Transition;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 441
    new-instance v1, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/TransitionController;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Transition;)V

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 447
    return-void
.end method

.method createTransition(I)Lcom/android/server/wm/Transition;
    .registers 3
    .param p1, "type"    # I

    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    move-result-object v0

    return-object v0
.end method

.method dispatchLegacyAppTransitionCancelled()V
    .registers 4

    .line 578
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 579
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionCancelledLocked(Z)V

    .line 578
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 582
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method dispatchLegacyAppTransitionFinished(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5
    .param p1, "ar"    # Lcom/android/server/wm/ActivityRecord;

    .line 572
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 573
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 572
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 575
    .end local v0    # "i":I
    :cond_19
    return-void
.end method

.method dispatchLegacyAppTransitionPending()V
    .registers 3

    .line 556
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 557
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionPendingLocked()V

    .line 556
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 559
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method dispatchLegacyAppTransitionStarting(Landroid/window/TransitionInfo;)V
    .registers 13
    .param p1, "info"    # Landroid/window/TransitionInfo;

    .line 562
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->isKeyguardGoingAway()Z

    move-result v9

    .line 563
    .local v9, "keyguardGoingAway":Z
    const/4 v0, 0x0

    move v10, v0

    .local v10, "i":I
    :goto_6
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_26

    .line 565
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    .line 567
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x78

    .line 565
    move v1, v9

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionStartingLocked(ZZJJJ)I

    .line 563
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 569
    .end local v10    # "i":I
    :cond_26
    return-void
.end method

.method dumpDebugLegacy(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 585
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 586
    .local v0, "token":J
    const/4 v2, 0x0

    .line 587
    .local v2, "state":I
    iget-object v3, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    .line 588
    const/4 v2, 0x2

    goto :goto_26

    .line 589
    :cond_f
    iget-object v3, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz v3, :cond_19

    invoke-virtual {v3}, Lcom/android/server/wm/Transition;->getLegacyIsReady()Z

    move-result v3

    if-nez v3, :cond_25

    :cond_19
    iget-object v3, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 590
    invoke-virtual {v3}, Lcom/android/server/wm/BLASTSyncEngine;->hasPendingSyncSets()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 594
    :cond_25
    const/4 v2, 0x1

    .line 596
    :cond_26
    :goto_26
    const-wide v3, 0x10e00000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 597
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 598
    return-void
.end method

.method finishTransition(Landroid/os/IBinder;)V
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;

    .line 470
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionMetricsReporter:Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;->reportAnimationStart(Landroid/os/IBinder;J)V

    .line 472
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->endLaunchPowerMode(I)V

    .line 473
    invoke-static {p1}, Lcom/android/server/wm/Transition;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/Transition;

    move-result-object v0

    .line 474
    .local v0, "record":Lcom/android/server/wm/Transition;
    if-eqz v0, :cond_4d

    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_4d

    .line 478
    :cond_1c
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_34

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x25133a8c

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    const-string v6, "Finish Transition: %s"

    invoke-static {v3, v4, v2, v6, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 479
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    :cond_34
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 480
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 481
    invoke-direct {p0, v2}, Lcom/android/server/wm/TransitionController;->setAnimationRunning(Z)V

    .line 483
    :cond_44
    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->finishTransition()V

    .line 484
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mRunningLock:Lcom/android/server/wm/TransitionController$Lock;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController$Lock;->doNotifyLocked()V

    .line 485
    return-void

    .line 475
    :cond_4d
    :goto_4d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to finish a non-playing transition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TransitionController"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    return-void
.end method

.method getCollectingTransitionType()I
    .registers 2

    .line 303
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz v0, :cond_7

    iget v0, v0, Lcom/android/server/wm/Transition;->mType:I

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method getTransitionPlayer()Landroid/window/ITransitionPlayer;
    .registers 2

    .line 184
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayer:Landroid/window/ITransitionPlayer;

    return-object v0
.end method

.method getWindowingModeAtStart(Lcom/android/server/wm/WindowContainer;)I
    .registers 4
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 292
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getWindowingMode()I

    move-result v0

    return v0

    .line 293
    :cond_9
    iget-object v0, v0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 294
    .local v0, "ci":Lcom/android/server/wm/Transition$ChangeInfo;
    if-nez v0, :cond_18

    .line 296
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getWindowingMode()I

    move-result v1

    return v1

    .line 298
    :cond_18
    iget v1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    return v1
.end method

.method inRecentsTransition(Lcom/android/server/wm/WindowContainer;)Z
    .registers 6
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 244
    move-object v0, p1

    .local v0, "p":Lcom/android/server/wm/WindowContainer;
    :goto_1
    const/4 v1, 0x1

    if-eqz v0, :cond_21

    .line 246
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez v2, :cond_9

    goto :goto_21

    .line 247
    :cond_9
    invoke-virtual {v2}, Lcom/android/server/wm/Transition;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    iget-object v2, v2, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 248
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 249
    return v1

    .line 244
    :cond_1c
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_1

    .line 253
    .end local v0    # "p":Lcom/android/server/wm/WindowContainer;
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_28
    if-ltz v0, :cond_56

    .line 254
    move-object v2, p1

    .local v2, "p":Lcom/android/server/wm/WindowContainer;
    :goto_2b
    if-eqz v2, :cond_53

    .line 256
    iget-object v3, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition;

    invoke-virtual {v3}, Lcom/android/server/wm/Transition;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 257
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition;

    iget-object v3, v3, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 258
    return v1

    .line 254
    :cond_4e
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    goto :goto_2b

    .line 253
    .end local v2    # "p":Lcom/android/server/wm/WindowContainer;
    :cond_53
    add-int/lit8 v0, v0, -0x1

    goto :goto_28

    .line 262
    .end local v0    # "i":I
    :cond_56
    const/4 v0, 0x0

    return v0
.end method

.method inTransition()Z
    .registers 2

    .line 223
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method inTransition(Lcom/android/server/wm/WindowContainer;)Z
    .registers 6
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 228
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    .line 229
    move-object v0, p1

    .local v0, "p":Lcom/android/server/wm/WindowContainer;
    :goto_8
    if-eqz v0, :cond_16

    .line 230
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_11

    return v1

    .line 229
    :cond_11
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_8

    .line 233
    .end local v0    # "p":Lcom/android/server/wm/WindowContainer;
    :cond_16
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_1d
    if-ltz v0, :cond_3b

    .line 234
    move-object v2, p1

    .local v2, "p":Lcom/android/server/wm/WindowContainer;
    :goto_20
    if-eqz v2, :cond_38

    .line 235
    iget-object v3, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition;

    iget-object v3, v3, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 236
    return v1

    .line 234
    :cond_33
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    goto :goto_20

    .line 233
    .end local v2    # "p":Lcom/android/server/wm/WindowContainer;
    :cond_38
    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    .line 240
    .end local v0    # "i":I
    :cond_3b
    const/4 v0, 0x0

    return v0
.end method

.method isCollecting()Z
    .registers 2

    .line 201
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isCollecting(Lcom/android/server/wm/WindowContainer;)Z
    .registers 3
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 209
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz v0, :cond_e

    iget-object v0, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method isPlaying()Z
    .registers 2

    .line 217
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isShellTransitionsEnabled()Z
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayer:Landroid/window/ITransitionPlayer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5
    .param p1, "ar"    # Lcom/android/server/wm/ActivityRecord;

    .line 281
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Transition;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 282
    return v1

    .line 284
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_13
    if-ltz v0, :cond_27

    .line 285
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/Transition;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_24

    return v1

    .line 284
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 287
    .end local v0    # "i":I
    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method isTransitionOnDisplay(Lcom/android/server/wm/DisplayContent;)Z
    .registers 5
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 267
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Transition;->isOnDisplay(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 268
    return v1

    .line 270
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_13
    if-ltz v0, :cond_27

    .line 271
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/Transition;->isOnDisplay(Lcom/android/server/wm/DisplayContent;)Z

    move-result v2

    if-eqz v2, :cond_24

    return v1

    .line 270
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 273
    .end local v0    # "i":I
    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$collectForDisplayChange$2$com-android-server-wm-TransitionController(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Transition;Lcom/android/server/wm/WindowState;)V
    .registers 5
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "transition"    # Lcom/android/server/wm/Transition;
    .param p3, "w"    # Lcom/android/server/wm/WindowState;

    .line 442
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_1d

    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 443
    invoke-virtual {p1, p3}, Lcom/android/server/wm/DisplayContent;->shouldSyncRotationChange(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 444
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p2, v0}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 446
    :cond_1d
    return-void
.end method

.method synthetic lambda$new$0$com-android-server-wm-TransitionController()V
    .registers 4

    .line 108
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 110
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 111
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition;

    invoke-virtual {v2}, Lcom/android/server/wm/Transition;->cleanUpOnFailure()V

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 113
    .end local v1    # "i":I
    :cond_1f
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 114
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayer:Landroid/window/ITransitionPlayer;

    .line 115
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mRunningLock:Lcom/android/server/wm/TransitionController$Lock;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController$Lock;->doNotifyLocked()V

    .line 116
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 117
    return-void

    .line 116
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method legacyDetachNavigationBarFromApp(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 539
    invoke-static {p1}, Lcom/android/server/wm/Transition;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/Transition;

    move-result-object v0

    .line 540
    .local v0, "transition":Lcom/android/server/wm/Transition;
    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_13

    .line 544
    :cond_f
    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->legacyRestoreNavigationBarFromApp()V

    .line 545
    return-void

    .line 541
    :cond_13
    :goto_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transition isn\'t playing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TransitionController"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    return-void
.end method

.method moveToCollecting(Lcom/android/server/wm/Transition;)V
    .registers 10
    .param p1, "transition"    # Lcom/android/server/wm/Transition;

    .line 147
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez v0, :cond_33

    .line 150
    iput-object p1, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 153
    iget v0, p1, Lcom/android/server/wm/Transition;->mType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_e

    const-wide/16 v0, 0x7d0

    goto :goto_10

    :cond_e
    const-wide/16 v0, 0x1388

    .line 154
    .local v0, "timeoutMs":J
    :goto_10
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/Transition;->startCollecting(J)V

    .line 155
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x69309a00

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const-string v7, "Start collecting in Transition: %s"

    invoke-static {v3, v4, v6, v7, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 157
    .end local v2    # "protoLogParam0":Ljava/lang/String;
    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->dispatchLegacyAppTransitionPending()V

    .line 158
    return-void

    .line 148
    .end local v0    # "timeoutMs":J
    :cond_33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Simultaneous transition collection not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method moveToPlaying(Lcom/android/server/wm/Transition;)V
    .registers 4
    .param p1, "transition"    # Lcom/android/server/wm/Transition;

    .line 488
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-ne p1, v0, :cond_19

    .line 491
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 492
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 493
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/TransitionController;->setAnimationRunning(Z)V

    .line 495
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    return-void

    .line 489
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to move non-collecting transition to playing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method registerLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 548
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    return-void
.end method

.method registerTransitionPlayer(Landroid/window/ITransitionPlayer;Landroid/app/IApplicationThread;)V
    .registers 6
    .param p1, "player"    # Landroid/window/ITransitionPlayer;
    .param p2, "appThread"    # Landroid/app/IApplicationThread;

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayer:Landroid/window/ITransitionPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 165
    invoke-interface {v0}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 166
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayer:Landroid/window/ITransitionPlayer;

    invoke-interface {v0}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayerDeath:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 168
    :cond_16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayer:Landroid/window/ITransitionPlayer;

    .line 170
    :cond_19
    invoke-interface {p1}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 171
    invoke-interface {p1}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayerDeath:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 173
    :cond_28
    iput-object p1, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayer:Landroid/window/ITransitionPlayer;

    .line 175
    const-string v0, "TransitionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " registerTransitionPlayer player: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iput-object p2, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayerThread:Landroid/app/IApplicationThread;
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_44} :catch_46

    .line 180
    nop

    .line 181
    return-void

    .line 178
    :catch_46
    move-exception v0

    .line 179
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to set transition player"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method requestCloseTransitionIfNeeded(Lcom/android/server/wm/WindowContainer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;)V"
        }
    .end annotation

    .line 400
    .local p1, "wc":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayer:Landroid/window/ITransitionPlayer;

    if-nez v0, :cond_5

    return-void

    .line 401
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 402
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 403
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    move-result-object v0

    .line 404
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 403
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 406
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_26

    .line 410
    :cond_23
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 412
    :goto_26
    return-void
.end method

.method requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;
    .registers 11
    .param p1, "transition"    # Lcom/android/server/wm/Transition;
    .param p2, "startTask"    # Lcom/android/server/wm/Task;
    .param p3, "remoteTransition"    # Landroid/window/RemoteTransition;
    .param p4, "displayChange"    # Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 382
    :try_start_0
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_18

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0x6af21364

    const-string v3, "Requesting StartTransition: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 384
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_18
    const/4 v0, 0x0

    .line 385
    .local v0, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz p2, :cond_24

    .line 386
    new-instance v1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    move-object v0, v1

    .line 387
    invoke-virtual {p2, v0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;)V

    .line 389
    :cond_24
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayer:Landroid/window/ITransitionPlayer;

    new-instance v2, Landroid/window/TransitionRequestInfo;

    iget v3, p1, Lcom/android/server/wm/Transition;->mType:I

    invoke-direct {v2, v3, v0, p3, p4}, Landroid/window/TransitionRequestInfo;-><init>(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)V

    invoke-interface {v1, p1, v2}, Landroid/window/ITransitionPlayer;->requestStartTransition(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_30} :catch_31

    .line 394
    .end local v0    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    goto :goto_3c

    .line 391
    :catch_31
    move-exception v0

    .line 392
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TransitionController"

    const-string v2, "Error requesting transition"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->start()V

    .line 395
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3c
    return-object p1
.end method

.method requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;
    .registers 12
    .param p1, "type"    # I
    .param p2, "flags"    # I
    .param p3, "trigger"    # Lcom/android/server/wm/WindowContainer;
    .param p4, "readyGroupRef"    # Lcom/android/server/wm/WindowContainer;

    .line 322
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    move-result-object v0

    return-object v0
.end method

.method requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;
    .registers 11
    .param p1, "type"    # I
    .param p2, "flags"    # I
    .param p3, "trigger"    # Lcom/android/server/wm/WindowContainer;
    .param p4, "readyGroupRef"    # Lcom/android/server/wm/WindowContainer;
    .param p5, "remoteTransition"    # Landroid/window/RemoteTransition;
    .param p6, "displayChange"    # Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 342
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayer:Landroid/window/ITransitionPlayer;

    const/4 v1, 0x0

    const-string v2, "TransitionController"

    if-nez v0, :cond_e

    .line 344
    const-string/jumbo v0, "requestTransitionIfNeeded mTransitionPlayer is null"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return-object v1

    .line 348
    :cond_e
    const/4 v0, 0x0

    .line 349
    .local v0, "newTransition":Lcom/android/server/wm/Transition;
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 350
    if-nez p6, :cond_27

    .line 354
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    const/4 v3, 0x0

    invoke-virtual {v1, p4, v3}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 355
    and-int/lit16 v1, p2, 0x100

    if-eqz v1, :cond_3d

    .line 357
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/Transition;->addFlag(I)V

    goto :goto_3d

    .line 351
    :cond_27
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Provided displayChange for a non-new request"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 360
    :cond_2f
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    move-result-object v3

    .line 361
    if-eqz p3, :cond_39

    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 360
    :cond_39
    invoke-virtual {p0, v3, v1, p5, p6}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    move-result-object v0

    .line 363
    :cond_3d
    :goto_3d
    if-eqz p3, :cond_4c

    .line 364
    invoke-static {p1}, Lcom/android/server/wm/TransitionController;->isExistenceType(I)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 365
    invoke-virtual {p0, p3}, Lcom/android/server/wm/TransitionController;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_4c

    .line 367
    :cond_49
    invoke-virtual {p0, p3}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 371
    :cond_4c
    :goto_4c
    const-string/jumbo v1, "requestTransitionIfNeeded FINISH"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return-object v0
.end method

.method requestTransitionIfNeeded(ILcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;
    .registers 4
    .param p1, "type"    # I
    .param p2, "trigger"    # Lcom/android/server/wm/WindowContainer;

    .line 312
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p2}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    move-result-object v0

    return-object v0
.end method

.method setOverrideAnimation(Landroid/window/TransitionInfo$AnimationOptions;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;)V
    .registers 5
    .param p1, "options"    # Landroid/window/TransitionInfo$AnimationOptions;
    .param p2, "startCallback"    # Landroid/os/IRemoteCallback;
    .param p3, "finishCallback"    # Landroid/os/IRemoteCallback;

    .line 452
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez v0, :cond_5

    return-void

    .line 453
    :cond_5
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/Transition;->setOverrideAnimation(Landroid/window/TransitionInfo$AnimationOptions;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;)V

    .line 454
    return-void
.end method

.method setReady(Lcom/android/server/wm/WindowContainer;)V
    .registers 3
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 464
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TransitionController;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 465
    return-void
.end method

.method setReady(Lcom/android/server/wm/WindowContainer;Z)V
    .registers 4
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "ready"    # Z

    .line 458
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez v0, :cond_5

    return-void

    .line 459
    :cond_5
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 460
    return-void
.end method

.method setTransientLaunch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V
    .registers 5
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "restoreBelowTask"    # Lcom/android/server/wm/Task;

    .line 523
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez v0, :cond_5

    return-void

    .line 524
    :cond_5
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/Transition;->setTransientLaunch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V

    .line 528
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHomeOrRecents()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 529
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Transition;->addFlag(I)V

    .line 534
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setCanAffectSystemUiFlags(Z)V

    .line 536
    :cond_1d
    return-void
.end method

.method unregisterLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 552
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 553
    return-void
.end method

.method useShellTransitionsRotation()Z
    .registers 2

    .line 193
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-boolean v0, Lcom/android/server/wm/TransitionController;->SHELL_TRANSITIONS_ROTATION:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
