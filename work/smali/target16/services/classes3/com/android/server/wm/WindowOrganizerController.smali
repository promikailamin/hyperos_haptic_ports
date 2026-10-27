.class public Lcom/android/server/wm/WindowOrganizerController;
.super Landroid/window/IWindowOrganizerController$Stub;
.source "WindowOrganizerController.java"

# interfaces
.implements Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;


# instance fields
.field public final mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field final mLaunchTaskFragments:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/TaskFragment;",
            ">;"
        }
    .end annotation
.end field

.field public final mMultitaskingController:Lcom/android/server/wm/MultitaskingController;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

.field public final mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

.field public final mTmpBounds0:Landroid/graphics/Rect;

.field public final mTmpBounds1:Landroid/graphics/Rect;

.field public final mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

.field public final mTransitionController:Lcom/android/server/wm/TransitionController;


# direct methods
.method public static synthetic $r8$lambda$Dh6K-ZEVc8HCgFBye2JhFi18Idw(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/TaskFragment;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowOrganizerController;->lambda$applyTaskFragmentOperation$13(Lcom/android/server/wm/TaskFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ktd0mEZGGdp2G6sUrqEz1G5ckL0(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowOrganizerController;->lambda$applySyncTransaction$1(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OxMmVYZeM4xJh7uJ-Y5zE6BDr8Y(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition$ReadyCondition;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowOrganizerController;->lambda$startTransition$4(Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition$ReadyCondition;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PHnU0rj5Bcvaq0dL-Wi7kOJt8bo(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition$ReadyCondition;ZZ)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/wm/WindowOrganizerController;->lambda$startTransition$3(Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition$ReadyCondition;ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Udo8ccaftdRLBU4kwjIYQuKEt5Y(Lcom/android/server/wm/WindowOrganizerController;[Ljava/lang/Integer;Ljava/util/function/IntSupplier;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowOrganizerController;->lambda$waitAsyncStart$15([Ljava/lang/Integer;Ljava/util/function/IntSupplier;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wk0qMkr6FsnxR_NSdWMz_GRJXNc(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    .line 1744
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$WpZsgFsQkKfWbC5KpiRgRygDo0M(Landroid/window/WindowContainerTransaction$Change;[ILjava/lang/Object;)V
    .registers 4

    .line 1070
    check-cast p2, Lcom/android/server/wm/Task;

    .line 1071
    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1b

    .line 1072
    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction$Change;->getHidden()Z

    move-result p0

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p0}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x0

    .line 1073
    aget p2, p1, p0

    or-int/2addr p2, v0

    aput p2, p1, p0

    :cond_1b
    return-void
.end method

.method public static synthetic $r8$lambda$b6Ho-cI4nosNJGhhnIqATtTV08w(ILcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 1009
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$b9SZ7IAloD3MuUhvAJTdz5zHJ5k(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/Transition;Lcom/android/server/wm/Transition$ReadyCondition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/window/RemoteTransition;Z)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/wm/WindowOrganizerController;->lambda$applyTaskFragmentTransactionLocked$5(Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/Transition;Lcom/android/server/wm/Transition$ReadyCondition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/window/RemoteTransition;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$bKC_sB5Z_Fv5D0RamlN1JR0Y4R4(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/WindowOrganizerController$CallerInfo;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/WindowOrganizerController;->lambda$applySyncTransaction$2(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hkQsQ6KHYw9RJcI5qgr8IGd-uZ4(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/WindowOrganizerController$CallerInfo;Ljava/lang/Boolean;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowOrganizerController;->lambda$applySyncTransaction$0(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/WindowOrganizerController$CallerInfo;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kXdrte-1yLt1FSmx03iQMc0pY0A(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/TaskFragment;Landroid/content/Intent;Lcom/android/server/wm/SafeActivityOptions;Landroid/os/IBinder;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/os/IBinder;)I
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/wm/WindowOrganizerController;->lambda$applyTaskFragmentOperation$12(Lcom/android/server/wm/TaskFragment;Landroid/content/Intent;Lcom/android/server/wm/SafeActivityOptions;Landroid/os/IBinder;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/os/IBinder;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pLNp_awgf8eTzDR3wucBMvfb13c(Lcom/android/server/wm/TaskFragment;)Z
    .registers 1

    .line 1925
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$s7aFkCZ6zAzwLh7nMkwc20qg8lg(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;ILcom/android/server/wm/SafeActivityOptions;)I
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/WindowOrganizerController;->lambda$applyHierarchyOp$9(Lcom/android/server/wm/WindowOrganizerController$CallerInfo;ILcom/android/server/wm/SafeActivityOptions;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$uEqvBVRgaS-NbaHAA-Lq0GwoRGY(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/WindowContainer;ZLcom/android/server/wm/TaskDisplayArea;Landroid/window/WindowContainerTransaction$HierarchyOp;Lcom/android/server/wm/WindowContainer;ZLjava/util/ArrayList;Lcom/android/server/wm/Task;)Z
    .registers 9

    .line 0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/wm/WindowOrganizerController;->lambda$reparentChildrenTasksHierarchyOp$16(Lcom/android/server/wm/WindowContainer;ZLcom/android/server/wm/TaskDisplayArea;Landroid/window/WindowContainerTransaction$HierarchyOp;Lcom/android/server/wm/WindowContainer;ZLjava/util/ArrayList;Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ypsTPIe3s2bFHjQZlRM_7n4LFuQ(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 788
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    .line 789
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(Z)Z

    :cond_a
    return-void
.end method

.method public static synthetic $r8$lambda$zr9VJC0fYmsJ1S59sEsh3nD0PG0(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction$HierarchyOp;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/WindowOrganizerController;->lambda$applyHierarchyOp$10(Landroid/window/WindowContainerTransaction$HierarchyOp;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 216
    invoke-direct {p0}, Landroid/window/IWindowOrganizerController$Stub;-><init>()V

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    .line 210
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    .line 213
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTmpBounds0:Landroid/graphics/Rect;

    .line 214
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTmpBounds1:Landroid/graphics/Rect;

    .line 217
    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 218
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 219
    new-instance v0, Lcom/android/server/wm/TaskOrganizerController;

    invoke-direct {v0, p1}, Lcom/android/server/wm/TaskOrganizerController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 220
    new-instance v0, Lcom/android/server/wm/DisplayAreaOrganizerController;

    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayAreaOrganizerController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    .line 221
    new-instance v0, Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-direct {v0, p1, p0}, Lcom/android/server/wm/TaskFragmentOrganizerController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowOrganizerController;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 222
    new-instance v0, Lcom/android/server/wm/TransitionController;

    invoke-direct {v0, p1}, Lcom/android/server/wm/TransitionController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 p1, 0x0

    .line 224
    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController;->mMultitaskingController:Lcom/android/server/wm/MultitaskingController;

    return-void
.end method

.method public static configurationsAreEqualForOrganizer(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .registers 3

    const/4 v0, 0x0

    .line 2584
    invoke-static {p0, p1, v0}, Lcom/android/server/wm/WindowOrganizerController;->configurationsAreEqualForOrganizer(Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)Z

    move-result p0

    return p0
.end method

.method public static configurationsAreEqualForOrganizer(Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 2602
    :cond_4
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    and-int/2addr p2, v1

    if-eqz p2, :cond_c

    return v0

    :cond_c
    const/high16 p2, 0x20000000

    and-int/2addr p2, v1

    const/4 v2, 0x1

    if-eqz p2, :cond_1c

    .line 2607
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0, p1, v2}, Landroid/app/WindowConfiguration;->diff(Landroid/app/WindowConfiguration;Z)J

    move-result-wide p0

    long-to-int p0, p0

    goto :goto_1d

    :cond_1c
    move p0, v0

    :goto_1d
    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_25

    const p0, -0x20000001

    and-int/2addr v1, p0

    :cond_25
    const p0, 0x20003c00

    and-int/2addr p0, v1

    if-nez p0, :cond_2c

    return v2

    :cond_2c
    return v0
.end method

.method public static hasActivityLaunch(Landroid/window/WindowContainerTransaction;)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 444
    :goto_2
    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_34

    .line 445
    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 446
    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_32

    .line 447
    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_2f

    .line 448
    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_32

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_32
    :goto_32
    const/4 p0, 0x1

    return p0

    :cond_34
    return v0
.end method

.method public static runAfterTransition(Lcom/android/server/wm/Transition;Ljava/lang/Runnable;)V
    .registers 2

    if-nez p0, :cond_6

    .line 2076
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 2078
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->addTransitionEndedListener(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static shouldApplyLifecycleEffectOnPipChange()Z
    .registers 2

    .line 1052
    const-string v0, "persist.wm.debug.apply_lifecycle_on_pip_change"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_a

    return v1

    :cond_a
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public addToSyncSet(ILcom/android/server/wm/WindowContainer;)V
    .registers 3

    .line 2513
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/BLASTSyncEngine;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method public final adjustTaskFragmentRelativeBoundsForMinDimensionsIfNeeded(Lcom/android/server/wm/TaskFragment;Landroid/graphics/Rect;Landroid/os/IBinder;)V
    .registers 13

    .line 1139
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1c

    .line 1142
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->calculateMinDimension()Landroid/graphics/Point;

    move-result-object v0

    .line 1143
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-lt v1, v2, :cond_1d

    .line 1144
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-ge v1, v2, :cond_1c

    goto :goto_1d

    :cond_1c
    :goto_1c
    return-void

    .line 1146
    :cond_1d
    :goto_1d
    new-instance v8, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The requested relative bounds:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not satisfy minimum dimensions:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 1149
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v4

    const/16 v7, 0x9

    move-object v3, p0

    move-object v6, p1

    move-object v5, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 1153
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public final applyChanges(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;)I
    .registers 19

    move-object/from16 v0, p1

    .line 820
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getConfigSetMask()I

    move-result v1

    const v2, 0x20003c00

    and-int/2addr v1, v2

    .line 821
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getWindowSetMask()I

    move-result v2

    const/4 v3, 0x3

    and-int/2addr v2, v3

    .line 823
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getWindowingMode()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_14f

    if-le v4, v5, :cond_2e

    .line 825
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v8

    if-eq v4, v8, :cond_2e

    .line 831
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    .line 832
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-virtual {v7, v8, v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;II)V

    goto/16 :goto_144

    .line 834
    :cond_2e
    new-instance v8, Landroid/content/res/Configuration;

    .line 835
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 836
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-virtual {v8, v9, v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;II)V

    .line 837
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    const/4 v9, 0x6

    if-ne v1, v9, :cond_141

    .line 838
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getConfigSetMask()I

    move-result v1

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_141

    .line 843
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_141

    .line 845
    iget v9, v8, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v9, :cond_122

    iget v9, v8, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v9, :cond_122

    .line 848
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v9, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v9}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 849
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v10

    .line 857
    invoke-virtual {v10, v9}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v11

    if-nez v11, :cond_c8

    .line 858
    invoke-static {v10, v9}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v11

    if-eqz v11, :cond_c8

    .line 861
    iget v11, v9, Landroid/graphics/Rect;->top:I

    iget v12, v10, Landroid/graphics/Rect;->top:I

    if-ge v11, v12, :cond_7f

    sub-int/2addr v12, v11

    .line 862
    iput v12, v1, Lcom/android/server/wm/Task;->mOffsetYForInsets:I

    goto :goto_88

    .line 863
    :cond_7f
    iget v11, v9, Landroid/graphics/Rect;->bottom:I

    iget v12, v10, Landroid/graphics/Rect;->bottom:I

    if-le v11, v12, :cond_88

    sub-int/2addr v12, v11

    .line 864
    iput v12, v1, Lcom/android/server/wm/Task;->mOffsetYForInsets:I

    .line 866
    :cond_88
    :goto_88
    iget v11, v9, Landroid/graphics/Rect;->left:I

    iget v12, v10, Landroid/graphics/Rect;->left:I

    if-ge v11, v12, :cond_92

    sub-int/2addr v12, v11

    .line 867
    iput v12, v1, Lcom/android/server/wm/Task;->mOffsetXForInsets:I

    goto :goto_9b

    .line 868
    :cond_92
    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget v10, v10, Landroid/graphics/Rect;->right:I

    if-le v9, v10, :cond_9b

    sub-int/2addr v10, v9

    .line 869
    iput v10, v1, Lcom/android/server/wm/Task;->mOffsetXForInsets:I

    .line 871
    :cond_9b
    :goto_9b
    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    aget-boolean v7, v9, v7

    if-eqz v7, :cond_141

    iget v7, v1, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long v9, v7

    iget v7, v1, Lcom/android/server/wm/Task;->mOffsetXForInsets:I

    int-to-long v11, v7

    iget v1, v1, Lcom/android/server/wm/Task;->mOffsetYForInsets:I

    int-to-long v13, v1

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    filled-new-array {v7, v9, v10}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v9, -0x462bcb06dbb3c43dL    # -3.985113602745736E-30

    const/16 v11, 0x15

    invoke-static {v1, v9, v10, v11, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto/16 :goto_141

    .line 876
    :cond_c8
    iput v7, v1, Lcom/android/server/wm/Task;->mOffsetYForInsets:I

    iput v7, v1, Lcom/android/server/wm/Task;->mOffsetXForInsets:I

    .line 877
    sget-object v11, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    aget-boolean v11, v11, v7

    if-eqz v11, :cond_e7

    iget v11, v1, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long v11, v11

    sget-object v13, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    const-wide v14, 0x768760a962bf36e4L    # 9.20165338106662E262

    invoke-static {v13, v14, v15, v6, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 880
    :cond_e7
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v12

    if-eq v11, v12, :cond_141

    iget v11, v9, Landroid/graphics/Rect;->top:I

    iget v12, v10, Landroid/graphics/Rect;->top:I

    if-eq v11, v12, :cond_141

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    if-eq v9, v10, :cond_141

    sub-int/2addr v10, v9

    .line 883
    iput v10, v1, Lcom/android/server/wm/Task;->mOffsetYForInsets:I

    .line 884
    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    aget-boolean v7, v9, v7

    if-eqz v7, :cond_141

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long v11, v1

    int-to-long v9, v10

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    filled-new-array {v7, v9}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v9, -0x6f4b52dd4754c462L

    const/4 v11, 0x5

    invoke-static {v1, v9, v10, v11, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_141

    .line 890
    :cond_122
    iput v7, v1, Lcom/android/server/wm/Task;->mOffsetYForInsets:I

    iput v7, v1, Lcom/android/server/wm/Task;->mOffsetXForInsets:I

    .line 891
    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    aget-boolean v7, v9, v7

    if-eqz v7, :cond_141

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long v9, v1

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v9, -0x1c516b1f3dafcf6bL    # -1.4772945634182912E172

    invoke-static {v1, v9, v10, v6, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 896
    :cond_141
    :goto_141
    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    :goto_144
    if-eqz v2, :cond_14d

    .line 899
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isEmbedded()Z

    move-result v1

    if-eqz v1, :cond_14d

    goto :goto_150

    :cond_14d
    move v3, v6

    goto :goto_150

    :cond_14f
    move v3, v7

    .line 904
    :goto_150
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v1

    and-int/2addr v1, v6

    if-eqz v1, :cond_163

    .line 905
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getFocusable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->setFocusable(Z)Z

    move-result v1

    if-eqz v1, :cond_163

    or-int/lit8 v3, v3, 0x2

    .line 910
    :cond_163
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v1

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_172

    .line 912
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getIsTaskMoveAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->setIsTaskMoveAllowed(Z)V

    :cond_172
    if-le v4, v5, :cond_1be

    move-object/from16 v1, p0

    .line 916
    iget-object v1, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isInLockTaskMode()Z

    move-result v1

    if-eqz v1, :cond_192

    .line 917
    invoke-static {v4}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v1

    if-eqz v1, :cond_192

    .line 918
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isEmbedded()Z

    move-result v1

    if-nez v1, :cond_192

    .line 919
    const-string v0, "WindowOrganizerController"

    const-string v1, "Dropping unsupported request to set multi-window windowing mode during locked task mode."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_192
    const/4 v1, 0x2

    if-ne v4, v1, :cond_196

    goto :goto_1be

    .line 931
    :cond_196
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    move-result v2

    .line 932
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_1b2

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v5

    if-eqz v5, :cond_1b2

    .line 933
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/wm/Task;->setRootTaskWindowingMode(I)V

    goto :goto_1b5

    .line 935
    :cond_1b2
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V

    .line 937
    :goto_1b5
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    if-eq v2, v0, :cond_1be

    or-int/lit8 v0, v3, 0x2

    return v0

    :cond_1be
    :goto_1be
    return v3
.end method

.method public final applyDisplayAreaChanges(Lcom/android/server/wm/DisplayArea;Landroid/window/WindowContainerTransaction$Change;)I
    .registers 5

    const/4 v0, 0x1

    .line 1059
    new-array v0, v0, [I

    .line 1060
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowOrganizerController;->applyChanges(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;)I

    move-result p0

    const/4 v1, 0x0

    aput p0, v0, v1

    .line 1062
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result p0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_22

    .line 1064
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getIgnoreOrientationRequest()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayArea;->setIgnoreOrientationRequest(Z)Z

    move-result p0

    if-eqz p0, :cond_22

    .line 1065
    aget p0, v0, v1

    or-int/lit8 p0, p0, 0x2

    aput p0, v0, v1

    .line 1069
    :cond_22
    new-instance p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda8;

    invoke-direct {p0, p2, v0}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda8;-><init>(Landroid/window/WindowContainerTransaction$Change;[I)V

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 1078
    aget p0, v0, v1

    return p0
.end method

.method public final applyHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;IILcom/android/server/wm/ActionChain;ZLcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;)I
    .registers 23

    move/from16 v0, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    .line 1161
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v7

    const/16 v5, 0x11

    .line 1162
    const-string v8, "Skip applying hierarchy operation "

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "WindowOrganizerController"

    if-eq v7, v5, :cond_44d

    const-string v5, "Cannot set non-task as launch root: "

    const-string v6, " while in lock task mode"

    packed-switch v7, :pswitch_data_854

    const-string v0, "Attempt to remove invalid task: "

    packed-switch v7, :pswitch_data_868

    packed-switch v7, :pswitch_data_872

    if-eqz v3, :cond_44a

    .line 1430
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v12, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    .line 1281
    :pswitch_3e
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_4a

    goto/16 :goto_44a

    .line 1286
    :cond_4a
    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v3, :cond_5a

    .line 1287
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_5a

    .line 1288
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_5a

    goto/16 :goto_44a

    .line 1291
    :cond_5a
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 1292
    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActionChain;->collect(Lcom/android/server/wm/WindowContainer;)V

    if-eqz v3, :cond_a2

    .line 1294
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_a2

    .line 1296
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 1297
    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TransparentPolicy;->getFirstOpaqueActivity()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 1298
    invoke-virtual {v2}, Lcom/android/server/wm/ActionChain;->isCollecting()Z

    move-result v5

    if-eqz v5, :cond_87

    .line 1299
    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActionChain;->collect(Lcom/android/server/wm/WindowContainer;)V

    if-eq v0, v3, :cond_87

    .line 1302
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActionChain;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 1305
    :cond_87
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getAppCompatOptions()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_a2

    .line 1307
    const-string v5, "android:transaction.reachability_x"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1308
    const-string v6, "android:transaction.reachability_y"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1309
    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatController;->getReachabilityPolicy()Lcom/android/server/wm/AppCompatReachabilityPolicy;

    move-result-object v3

    .line 1310
    invoke-virtual {v3, v5, v0, v9}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->handleDoubleTap(III)V

    :cond_a2
    or-int/lit8 v0, p2, 0x1

    :goto_a4
    move v3, v0

    goto/16 :goto_45a

    .line 1183
    :pswitch_a7
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-eqz v3, :cond_f4

    .line 1184
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_f4

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v5

    if-eqz v5, :cond_f4

    .line 1185
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v5

    if-eqz v5, :cond_f4

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez v5, :cond_d0

    goto :goto_f4

    .line 1189
    :cond_d0
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1190
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    if-nez v3, :cond_e4

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_e1

    goto :goto_e4

    :cond_e1
    move/from16 v3, p2

    goto :goto_e6

    :cond_e4
    :goto_e4
    or-int/lit8 v3, p2, 0x2

    .line 1194
    :goto_e6
    iget-object v5, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTask(Lcom/android/server/wm/Task;)V

    .line 1196
    const-string v5, "remove-root-task-through-hierarchyOp"

    invoke-virtual {v0, v9, v5}, Lcom/android/server/wm/TaskFragment;->remove(ZLjava/lang/String;)V

    goto/16 :goto_45a

    .line 1186
    :cond_f4
    :goto_f4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44a

    .line 1383
    :pswitch_108
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowOrganizerController;->applyKeyguardState(Landroid/window/WindowContainerTransaction$HierarchyOp;)I

    move-result v0

    :goto_10c
    or-int v0, p2, v0

    goto :goto_a4

    .line 1243
    :pswitch_10f
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowOrganizerController;->clearAdjacentRootsHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;)I

    move-result v0

    goto :goto_10c

    .line 1252
    :pswitch_114
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_44a

    .line 1253
    iget-boolean v3, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_124

    goto/16 :goto_44a

    .line 1256
    :cond_124
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v3

    const-string v5, "finish-activity-op"

    if-nez v3, :cond_138

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    if-eqz v3, :cond_133

    goto :goto_138

    .line 1262
    :cond_133
    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    goto/16 :goto_44a

    :cond_138
    :goto_138
    or-int/lit8 v3, p2, 0x2

    .line 1260
    invoke-virtual {v0, v5, v10}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    goto/16 :goto_45a

    .line 1164
    :pswitch_13f
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-eqz v3, :cond_186

    .line 1165
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_186

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v5

    if-nez v5, :cond_156

    goto :goto_186

    .line 1169
    :cond_156
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1170
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    if-nez v3, :cond_16a

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_167

    goto :goto_16a

    :cond_167
    move/from16 v3, p2

    goto :goto_16c

    :cond_16a
    :goto_16a
    or-int/lit8 v3, p2, 0x2

    .line 1173
    :goto_16c
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v5

    if-eqz v5, :cond_17d

    .line 1174
    iget-object v5, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string v6, "remove-task-through-hierarchyOp"

    .line 1175
    invoke-virtual {v5, v0, v9, v9, v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    goto/16 :goto_45a

    .line 1178
    :cond_17d
    iget-object v5, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTask(Lcom/android/server/wm/Task;)V

    goto/16 :goto_45a

    .line 1166
    :cond_186
    :goto_186
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44a

    .line 1387
    :pswitch_19a
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1a6

    .line 1389
    new-instance v3, Landroid/app/ActivityOptions;

    invoke-direct {v3, v0}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_1a7

    :cond_1a6
    move-object v3, v11

    :goto_1a7
    if-eqz v3, :cond_1d1

    .line 1390
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getTransientLaunch()Z

    move-result v0

    if-eqz v0, :cond_1d1

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1391
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->isCallerRecents(I)Z

    move-result v0

    if-eqz v0, :cond_1d1

    .line 1392
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    .line 1393
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityIntent()Landroid/content/Intent;

    move-result-object v5

    .line 1392
    invoke-virtual {v0, v5, v3}, Lcom/android/server/wm/ActivityStartController;->startExistingRecentsIfPossible(Landroid/content/Intent;Landroid/app/ActivityOptions;)Z

    move-result v0

    if-eqz v0, :cond_1d1

    goto/16 :goto_44a

    .line 1399
    :cond_1d1
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1e8

    .line 1400
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1401
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1400
    invoke-virtual {v0, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e9

    :cond_1e8
    move-object v0, v11

    .line 1404
    :goto_1e9
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v5

    if-eqz v5, :cond_1fc

    if-nez v3, :cond_1f9

    .line 1409
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 1411
    :cond_1f9
    invoke-virtual {v3, v10}, Landroid/app/ActivityOptions;->setCallerDisplayId(I)Landroid/app/ActivityOptions;

    :cond_1fc
    if-eqz v3, :cond_203

    .line 1413
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    goto :goto_204

    :cond_203
    move-object v3, v11

    .line 1414
    :goto_204
    new-instance v5, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda10;

    invoke-direct {v5, p0, p1, v0, v3}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction$HierarchyOp;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowOrganizerController;->waitAsyncStart(Ljava/util/function/IntSupplier;)I

    move-result v0

    .line 1419
    invoke-static {v0}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v0

    if-eqz v0, :cond_44a

    or-int/lit8 v0, p2, 0x2

    goto/16 :goto_a4

    .line 1218
    :pswitch_217
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_28e

    .line 1219
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v3

    if-nez v3, :cond_228

    goto :goto_28e

    .line 1223
    :cond_228
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 1224
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v6

    if-eqz v3, :cond_279

    .line 1227
    iget-boolean v5, v3, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v5, :cond_262

    .line 1230
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v5

    if-nez v5, :cond_256

    if-eqz v6, :cond_23f

    goto :goto_256

    .line 1231
    :cond_23f
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set non-adjacent task as adjacent flag root: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1235
    :cond_256
    :goto_256
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v6, :cond_25d

    move-object v3, v11

    :cond_25d
    invoke-virtual {v0, v3}, Lcom/android/server/wm/TaskDisplayArea;->setLaunchAdjacentFlagRootTask(Lcom/android/server/wm/Task;)V

    goto/16 :goto_44a

    .line 1228
    :cond_262
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set non-organized task as adjacent flag root: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1226
    :cond_279
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1220
    :cond_28e
    :goto_28e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt to set launch adjacent to a detached container: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44a

    .line 1267
    :pswitch_2a4
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v3, "android.permission.START_TASKS_FROM_RECENTS"

    const-string v5, "launchTask HierarchyOp"

    invoke-virtual {v0, v3, v5}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v0

    .line 1270
    const-string v3, "android:transaction.hop.taskId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1272
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1273
    iget v3, v4, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    iget v6, v4, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    .line 1274
    invoke-static {v0, v3, v6}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;II)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v0

    or-int/lit8 v3, p2, 0x2

    .line 1276
    new-instance v6, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda9;

    invoke-direct {v6, p0, v4, v5, v0}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;ILcom/android/server/wm/SafeActivityOptions;)V

    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowOrganizerController;->waitAsyncStart(Ljava/util/function/IntSupplier;)I

    goto/16 :goto_45a

    .line 1239
    :pswitch_2d0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowOrganizerController;->setAdjacentRootsHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;)I

    move-result v0

    goto/16 :goto_10c

    .line 1200
    :pswitch_2d6
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_330

    .line 1201
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v3

    if-nez v3, :cond_2e7

    goto :goto_330

    .line 1205
    :cond_2e7
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_31b

    .line 1208
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    if-eqz v5, :cond_304

    .line 1212
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 1213
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getWindowingModes()[I

    move-result-object v5

    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityTypes()[I

    move-result-object v6

    .line 1212
    invoke-virtual {v0, v3, v5, v6}, Lcom/android/server/wm/TaskDisplayArea;->setLaunchRootTask(Lcom/android/server/wm/Task;[I[I)V

    goto/16 :goto_44a

    .line 1209
    :cond_304
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set a task without display area as launch root: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1207
    :cond_31b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1202
    :cond_330
    :goto_330
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt to set launch root to a detached container: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44a

    .line 1247
    :pswitch_346
    invoke-virtual {v2}, Lcom/android/server/wm/ActionChain;->getTransition()Lcom/android/server/wm/Transition;

    move-result-object v5

    invoke-virtual {p0, p1, v5, v0, v3}, Lcom/android/server/wm/WindowOrganizerController;->reparentChildrenTasksHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;Lcom/android/server/wm/Transition;IZ)I

    move-result v0

    goto/16 :goto_10c

    .line 1320
    :pswitch_350
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    if-eqz v5, :cond_436

    .line 1321
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v13

    if-nez v13, :cond_362

    goto/16 :goto_436

    .line 1325
    :cond_362
    sget-object v13, Landroid/window/DesktopExperienceFlags;->ENABLE_DESKTOP_WINDOWING_ENTERPRISE_BUGFIX:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v13}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v13

    if-nez v13, :cond_395

    if-eqz v3, :cond_385

    if-nez v7, :cond_385

    .line 1329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44a

    .line 1333
    :cond_385
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v13

    invoke-virtual {p0, v6, v13, v3}, Lcom/android/server/wm/WindowOrganizerController;->isLockTaskModeViolation(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Task;Z)Z

    move-result v3

    if-eqz v3, :cond_3d4

    goto/16 :goto_44a

    :cond_395
    if-nez v7, :cond_3d4

    .line 1336
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_3d4

    .line 1337
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-eqz v3, :cond_3ac

    .line 1338
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    goto :goto_3ad

    :cond_3ac
    move-object v3, v11

    :goto_3ad
    if-eqz v3, :cond_3d4

    .line 1339
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v6

    if-eqz v6, :cond_3d4

    .line 1340
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->hasDirectChildActivities()Z

    move-result v3

    if-eqz v3, :cond_3d4

    .line 1341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " on a leaf task."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44a

    :cond_3d4
    if-ltz v0, :cond_3d9

    .line 1347
    invoke-virtual {p0, v0, v5}, Lcom/android/server/wm/WindowOrganizerController;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    .line 1349
    :cond_3d9
    invoke-virtual {v2}, Lcom/android/server/wm/ActionChain;->isCollecting()Z

    move-result v0

    if-eqz v0, :cond_40e

    .line 1350
    invoke-virtual {v2, v5}, Lcom/android/server/wm/ActionChain;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 1351
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->isReparent()Z

    move-result v0

    if-eqz v0, :cond_40e

    .line 1352
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_3f5

    .line 1355
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActionChain;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 1357
    :cond_3f5
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_40e

    .line 1359
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_40b

    .line 1361
    const-string v0, "Can\'t resolve parent window from token"

    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44a

    .line 1364
    :cond_40b
    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActionChain;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 1368
    :cond_40e
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_41e

    .line 1369
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowOrganizerController;->sanitizeAndApplyHierarchyOpForTask(Lcom/android/server/wm/Task;Landroid/window/WindowContainerTransaction$HierarchyOp;)I

    move-result v0

    goto/16 :goto_10c

    .line 1370
    :cond_41e
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v0

    if-eqz v0, :cond_42e

    .line 1371
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowOrganizerController;->sanitizeAndApplyHierarchyOpForDisplayArea(Lcom/android/server/wm/DisplayArea;Landroid/window/WindowContainerTransaction$HierarchyOp;)I

    move-result v0

    goto/16 :goto_10c

    .line 1373
    :cond_42e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid container in hierarchy op"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1322
    :cond_436
    :goto_436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to operate on detached container: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44a
    :goto_44a
    move/from16 v3, p2

    goto :goto_45a

    :cond_44d
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    .line 1378
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->applyTaskFragmentOperation(Landroid/window/WindowContainerTransaction$HierarchyOp;Lcom/android/server/wm/ActionChain;ZLcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;)I

    move-result v3

    or-int v2, p2, v3

    move v3, v2

    .line 1437
    :goto_45a
    const-string v2, "Attempt to operate on unknown or detached container: "

    packed-switch v7, :pswitch_data_87c

    :pswitch_45f
    goto/16 :goto_852

    .line 1683
    :pswitch_461
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActionChain;->getTransition()Lcom/android/server/wm/Transition;

    move-result-object p0

    if-nez p0, :cond_46d

    .line 1685
    const-string p0, "No transition to set animation delegate on"

    invoke-static {v12, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1691
    :cond_46d
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getCaller()Landroid/os/IBinder;

    move-result-object v0

    .line 1692
    const-string v2, "android.app.IApplicationThread"

    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 1694
    instance-of v2, v2, Landroid/app/IApplicationThread;

    if-nez v2, :cond_490

    .line 1695
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a valid process token: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v12, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1698
    :cond_490
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mRemoteDelegate:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_4ad

    .line 1699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transition already has a remote delegate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1700
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->getSyncId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1699
    invoke-static {v12, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1703
    :cond_4ad
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getCaller()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/Transition;->mRemoteDelegate:Landroid/app/IApplicationThread;

    return v3

    .line 1663
    :pswitch_4b8
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-eqz p0, :cond_4f1

    .line 1664
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v0

    if-nez v0, :cond_4c9

    goto :goto_4f1

    .line 1669
    :cond_4c9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_4e4

    .line 1671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot disallow override bounds for children on a non-task: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v12, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1677
    :cond_4e4
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getDisallowOverrideBoundsForChildren()Z

    move-result p0

    .line 1676
    invoke-virtual {v0, p0}, Lcom/android/server/wm/Task;->setDisallowOverrideBoundsForChildren(Z)I

    move-result p0

    if-eqz p0, :cond_852

    or-int/lit8 p0, v3, 0x2

    return p0

    .line 1665
    :cond_4f1
    :goto_4f1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v12, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1650
    :pswitch_504
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    .line 1651
    instance-of v0, p0, Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_526

    check-cast p0, Lcom/android/server/wm/DisplayContent;

    .line 1652
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p0

    .line 1653
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getCaller()Landroid/os/IBinder;

    move-result-object v0

    .line 1654
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getForciblyShowingInsetsTypes()I

    move-result v2

    .line 1655
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getForciblyHidingInsetsTypes()I

    move-result v1

    .line 1652
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/wm/DisplayPolicy;->setSystemBarVisibilityOverride(Landroid/os/IBinder;II)V

    return v3

    .line 1657
    :cond_526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to operate on non-display or detached container: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v12, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1635
    :pswitch_53b
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-eqz p0, :cond_55f

    .line 1636
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v0

    if-nez v0, :cond_54c

    goto :goto_55f

    .line 1641
    :cond_54c
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActionChain;->getTransition()Lcom/android/server/wm/Transition;

    move-result-object v0

    if-eqz v0, :cond_555

    .line 1643
    invoke-virtual {v0, p0}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 1645
    :cond_555
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getSafeRegionBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->setSafeRegionBounds(Landroid/graphics/Rect;)V

    or-int/lit8 p0, v3, 0x1

    return p0

    .line 1637
    :cond_55f
    :goto_55f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v12, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1625
    :pswitch_572
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-nez p0, :cond_58f

    .line 1627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v12, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1631
    :cond_58f
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getExcludeInsetsTypes()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->setExcludeInsetsTypes(I)V

    return v3

    .line 1619
    :pswitch_597
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController;->restoreBackNavigation()Z

    move-result p0

    if-eqz p0, :cond_852

    or-int/lit8 p0, v3, 0x2

    return p0

    .line 1608
    :pswitch_5a4
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-eqz p0, :cond_5b2

    .line 1609
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v11

    :cond_5b2
    if-eqz v11, :cond_5c3

    .line 1610
    invoke-virtual {v11}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v0

    if-nez v0, :cond_5bb

    goto :goto_5c3

    .line 1615
    :cond_5bb
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->isTrimmableFromRecents()Z

    move-result p0

    invoke-virtual {v11, p0}, Lcom/android/server/wm/Task;->setTrimmableFromRecents(Z)V

    return v3

    .line 1611
    :cond_5c3
    :goto_5c3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v12, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1458
    :pswitch_5d6
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 1459
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-nez v2, :cond_5fc

    .line 1461
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " as there is no valid task provided"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v12, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1465
    :cond_5fc
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_650

    .line 1466
    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    if-nez v4, :cond_607

    goto :goto_650

    .line 1472
    :cond_607
    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v4

    if-eqz v4, :cond_617

    .line 1478
    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 1479
    invoke-virtual {v4}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v4

    iput-boolean v4, v2, Lcom/android/server/wm/ActivityRecord;->mAutoEnteringPip:Z

    .line 1481
    :cond_617
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1482
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const-string v0, "moveActivityToPinnedRootTask"

    invoke-virtual {p0, v2, v11, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->moveActivityToPinnedRootTask(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 1486
    sget-object p0, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p0

    if-eqz p0, :cond_64a

    iget-boolean p0, v2, Lcom/android/server/wm/ActivityRecord;->mPauseSchedulePendingForPip:Z

    if-eqz p0, :cond_64a

    .line 1492
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "auto-pip"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object p1, p0

    move/from16 p5, v0

    move-object/from16 p6, v1

    move-object/from16 p2, v2

    move/from16 p3, v4

    move/from16 p4, v5

    invoke-virtual/range {p1 .. p6}, Lcom/android/server/wm/TaskFragment;->schedulePauseActivity(Lcom/android/server/wm/ActivityRecord;ZZZLjava/lang/String;)V

    move-object/from16 p0, p2

    goto :goto_64b

    :cond_64a
    move-object p0, v2

    .line 1497
    :goto_64b
    iput-boolean v10, p0, Lcom/android/server/wm/ActivityRecord;->mAutoEnteringPip:Z

    or-int/lit8 p0, v3, 0x2

    return p0

    .line 1467
    :cond_650
    :goto_650
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " as the provided task has no PiP-able activity"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v12, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1589
    :pswitch_668
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-eqz p0, :cond_676

    .line 1590
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v11

    :cond_676
    if-eqz v11, :cond_6bf

    .line 1591
    invoke-virtual {v11}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v0

    if-nez v0, :cond_67f

    goto :goto_6bf

    .line 1596
    :cond_67f
    iget-boolean p0, v11, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz p0, :cond_6a8

    .line 1600
    invoke-virtual {v11}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result p0

    if-eqz p0, :cond_691

    .line 1604
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->isReparentLeafTaskIfRelaunch()Z

    move-result p0

    invoke-virtual {v11, p0}, Lcom/android/server/wm/Task;->setReparentLeafTaskIfRelaunch(Z)V

    return v3

    .line 1601
    :cond_691
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot set reparent leaf task flag on non-root task : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1597
    :cond_6a8
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot set reparent leaf task flag on non-organized task : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1592
    :cond_6bf
    :goto_6bf
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v12, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1571
    :pswitch_6d2
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-eqz p0, :cond_718

    .line 1572
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v0

    if-nez v0, :cond_6e3

    goto :goto_718

    .line 1577
    :cond_6e3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_704

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v0

    if-nez v0, :cond_704

    .line 1578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot set always-on-top on non-task or non-display area: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v12, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1582
    :cond_704
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTop()Z

    move-result v0

    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->isAlwaysOnTop()Z

    move-result v2

    if-eq v0, v2, :cond_710

    or-int/lit8 v3, v3, 0x2

    .line 1585
    :cond_710
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->isAlwaysOnTop()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->setAlwaysOnTop(Z)V

    return v3

    .line 1573
    :cond_718
    :goto_718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v12, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1560
    :pswitch_72b
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-nez p0, :cond_74a

    .line 1562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to remove local insets source provider from unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v12, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1567
    :cond_74a
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getInsetsFrameProvider()Landroid/view/InsetsFrameProvider;

    move-result-object v0

    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getCaller()Landroid/os/IBinder;

    move-result-object v1

    .line 1566
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->removeLocalInsetsFrameProvider(Landroid/view/InsetsFrameProvider;Landroid/os/IBinder;)V

    return v3

    .line 1549
    :pswitch_756
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-nez p0, :cond_775

    .line 1551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to add local insets source provider on unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v12, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1556
    :cond_775
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getInsetsFrameProvider()Landroid/view/InsetsFrameProvider;

    move-result-object v0

    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getCaller()Landroid/os/IBinder;

    move-result-object v1

    .line 1555
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->addLocalInsetsFrameProvider(Landroid/view/InsetsFrameProvider;Landroid/os/IBinder;)V

    return v3

    .line 1504
    :pswitch_781
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-nez v1, :cond_79c

    .line 1506
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean p0, p0, v10

    if-eqz p0, :cond_852

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v0, -0x5e54de061248c20eL

    invoke-static {p0, v0, v1, v10, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return v3

    .line 1510
    :cond_79c
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_7ab

    .line 1511
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_7af

    :cond_7ab
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    :goto_7af
    if-nez v2, :cond_7c2

    .line 1513
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean p0, p0, v10

    if-eqz p0, :cond_852

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v0, -0x73c470f49422ca46L    # -9.622843145230481E-250

    invoke-static {p0, v0, v1, v10, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return v3

    .line 1519
    :cond_7c2
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 1520
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TransitionController;->getTransientLaunchTransitionAndTarget(Lcom/android/server/wm/WindowContainer;)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_7db

    .line 1522
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean p0, p0, v10

    if-eqz p0, :cond_852

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v0, 0x20a126f5f6ce34bbL

    invoke-static {p0, v0, v1, v10, v11}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return v3

    .line 1526
    :cond_7db
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/Transition;

    .line 1527
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/wm/Task;

    .line 1528
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v1, v1, v10

    if-eqz v1, :cond_7fe

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long v4, v1

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v5, 0x68a14bc89a8e3720L    # 1.0100749890343758E196

    invoke-static {v1, v5, v6, v9, v4}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1532
    :cond_7fe
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 1533
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/android/server/wm/TaskDisplayArea;->moveRootTaskBehindRootTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    .line 1539
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActionChain;->getTransition()Lcom/android/server/wm/Transition;

    move-result-object p0

    if-eqz p0, :cond_812

    .line 1541
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Transition;->updateChangesForRestoreTransientHideTasks(Lcom/android/server/wm/Transition;)V

    :cond_812
    or-int/lit8 p0, v3, 0x2

    return p0

    .line 1439
    :pswitch_815
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v12

    .line 1440
    const-string p0, "android:transaction.hop.shortcut_calling_package"

    invoke-virtual {v12, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1442
    invoke-virtual {v12, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1445
    const-class p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsServiceInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsServiceInternal;

    .line 1448
    iget v5, v4, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    iget v6, v4, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    .line 1449
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v8

    .line 1450
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    .line 1451
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v13

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v4, p0

    .line 1448
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsServiceInternal;->startShortcut(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)Z

    move-result p0

    if-eqz p0, :cond_852

    or-int/lit8 p0, v3, 0x2

    return p0

    :cond_852
    :goto_852
    return v3

    nop

    :pswitch_data_854
    .packed-switch 0x0
        :pswitch_350
        :pswitch_350
        :pswitch_346
        :pswitch_2d6
        :pswitch_2d0
        :pswitch_2a4
        :pswitch_217
        :pswitch_19a
    .end packed-switch

    :pswitch_data_868
    .packed-switch 0xd
        :pswitch_13f
        :pswitch_114
        :pswitch_10f
    .end packed-switch

    :pswitch_data_872
    .packed-switch 0x16
        :pswitch_108
        :pswitch_a7
        :pswitch_3e
    .end packed-switch

    :pswitch_data_87c
    .packed-switch 0x8
        :pswitch_815
        :pswitch_781
        :pswitch_756
        :pswitch_72b
        :pswitch_6d2
        :pswitch_45f
        :pswitch_45f
        :pswitch_45f
        :pswitch_668
        :pswitch_45f
        :pswitch_5d6
        :pswitch_5a4
        :pswitch_597
        :pswitch_572
        :pswitch_45f
        :pswitch_45f
        :pswitch_45f
        :pswitch_53b
        :pswitch_504
        :pswitch_4b8
        :pswitch_461
    .end packed-switch
.end method

.method public final applyKeyguardState(Landroid/window/WindowContainerTransaction$HierarchyOp;)I
    .registers 4

    .line 2060
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getKeyguardState()Landroid/window/KeyguardState;

    move-result-object p1

    const/4 v0, 0x2

    if-eqz p1, :cond_14

    .line 2062
    invoke-virtual {p1}, Landroid/window/KeyguardState;->getKeyguardShowing()Z

    move-result v1

    .line 2063
    invoke-virtual {p1}, Landroid/window/KeyguardState;->getAodShowing()Z

    move-result p1

    .line 2064
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->setLockScreenShownLocked(ZZ)V

    :cond_14
    return v0
.end method

.method public applySyncTransaction(Landroid/window/WindowContainerTransaction;Landroid/window/IWindowContainerTransactionCallback;)I
    .registers 10

    if-eqz p1, :cond_9c

    .line 266
    const-string v0, "applySyncTransaction()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 267
    new-instance v0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    invoke-direct {v0}, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;-><init>()V

    .line 268
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 270
    :try_start_10
    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_97

    if-nez p2, :cond_37

    .line 272
    :try_start_18
    iget-object p2, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v4, "applySyncLegacy"

    invoke-virtual {p2, v4}, Lcom/android/server/wm/ActionChain$Tracker;->startLegacy(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;

    move-result-object p2

    const/4 v4, -0x1

    .line 273
    invoke-virtual {p0, p1, v4, p2, v0}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I

    .line 274
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain$Tracker;->end()V

    .line 275
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_35

    .line 322
    :goto_2e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_35
    move-exception p0

    goto :goto_92

    .line 290
    :cond_37
    :try_start_37
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowOrganizerController;->prepareSyncWithOrganizer(Landroid/window/IWindowContainerTransactionCallback;)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object p2

    .line 291
    iget v4, p2, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    .line 292
    iget-object v5, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v5}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v5

    if-eqz v5, :cond_50

    .line 293
    iget-object v5, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    new-instance v6, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, p1, v4, v0}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    invoke-virtual {v5, p2, v6}, Lcom/android/server/wm/TransitionController;->startLegacySyncOrQueue(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Ljava/util/function/Consumer;)V

    goto :goto_90

    .line 300
    :cond_50
    iget-object v5, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v5}, Lcom/android/server/wm/BLASTSyncEngine;->hasActiveSync()Z

    move-result v5

    if-nez v5, :cond_7d

    .line 301
    iget-object v5, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v5, p2}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    .line 302
    iget-object p2, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v5, "applySyncLegacy"

    invoke-virtual {p2, v5}, Lcom/android/server/wm/ActionChain$Tracker;->startLegacy(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;

    move-result-object p2

    invoke-virtual {p0, p1, v4, p2, v0}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I

    .line 304
    iget-object p1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p1}, Lcom/android/server/wm/ActionChain$Tracker;->end()V

    .line 305
    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowOrganizerController;->setSyncReady(I)V

    goto :goto_90

    .line 309
    :cond_7d
    iget-object v5, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    new-instance v6, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0, p2}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    new-instance p2, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p1, v4, v0}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    invoke-virtual {v5, v6, p2}, Lcom/android/server/wm/BLASTSyncEngine;->queueSyncSet(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 319
    :goto_90
    monitor-exit v3

    goto :goto_2e

    .line 320
    :goto_92
    monitor-exit v3
    :try_end_93
    .catchall {:try_start_37 .. :try_end_93} :catchall_35

    :try_start_93
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_97
    .catchall {:try_start_93 .. :try_end_97} :catchall_97

    :catchall_97
    move-exception p0

    .line 322
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 323
    throw p0

    .line 264
    :cond_9c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null transaction passed to applySyncTransaction"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final applyTaskChanges(Lcom/android/server/wm/Task;Landroid/window/WindowContainerTransaction$Change;)I
    .registers 9

    .line 948
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getBoundsChangeTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 952
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 955
    :cond_9
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowOrganizerController;->applyChanges(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;)I

    move-result v0

    .line 956
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    const/4 v2, 0x2

    if-eqz v1, :cond_22

    .line 957
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getHidden()Z

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    move-result v1

    if-eqz v1, :cond_22

    or-int/lit8 v0, v0, 0x2

    .line 962
    :cond_22
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v1

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_36

    .line 963
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getForceTranslucent()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/TaskFragment;->setForceTranslucent(Z)Z

    move-result v1

    if-eqz v1, :cond_36

    or-int/lit8 v0, v0, 0x2

    .line 968
    :cond_36
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v1

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_44

    .line 969
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getLaunchNextToBubble()Z

    move-result v1

    iput-boolean v1, p1, Lcom/android/server/wm/Task;->mLaunchNextToBubble:Z

    .line 972
    :cond_44
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_53

    .line 973
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getDragResizing()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setDragResizing(Z)V

    .line 976
    :cond_53
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v1

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_62

    .line 978
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getForceExcludedFromRecents()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setForceExcludedFromRecents(Z)V

    .line 981
    :cond_62
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v1

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_71

    .line 983
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getDisablePip()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setDisablePip(Z)V

    .line 986
    :cond_71
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v1

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_80

    .line 988
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getDisableLaunchAdjacent()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setLaunchAdjacentDisabled(Z)V

    .line 991
    :cond_80
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getActivityWindowingMode()I

    move-result v1

    .line 992
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    move-result v3

    if-nez v3, :cond_c7

    .line 993
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v3

    if-ne v3, v2, :cond_c7

    if-eq v1, v2, :cond_9e

    if-nez v1, :cond_95

    goto :goto_9e

    .line 1002
    :cond_95
    invoke-static {}, Lcom/android/server/wm/WindowOrganizerController;->shouldApplyLifecycleEffectOnPipChange()Z

    move-result v3

    if-eqz v3, :cond_c7

    or-int/lit8 v0, v0, 0x2

    goto :goto_c7

    .line 998
    :cond_9e
    :goto_9e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Task and activity windowing modes match, so remove any timeout abort PiP callbacks scheduled if needed; task_win_mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", activity_win_mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 998
    const-string v4, "WindowOrganizerController"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->removeAllMaybeAbortPipEnterRunnable()V

    :cond_c7
    :goto_c7
    const/4 v3, -0x1

    if-le v1, v3, :cond_d2

    .line 1009
    new-instance v4, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda7;

    invoke-direct {v4, v1}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {p1, v4}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 1012
    :cond_d2
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getWindowingMode()I

    move-result v1

    if-ne v1, v2, :cond_107

    .line 1013
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_107

    .line 1014
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_107

    .line 1016
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    const/4 v4, 0x1

    .line 1020
    iput-boolean v4, v1, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 1021
    const-string v5, "applyTaskChanges"

    invoke-virtual {v1, v5, v4}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_103

    .line 1024
    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    .line 1025
    invoke-virtual {v4, v1}, Lcom/android/server/wm/ActivityClientController;->requestPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_103

    .line 1026
    invoke-static {}, Lcom/android/server/wm/WindowOrganizerController;->shouldApplyLifecycleEffectOnPipChange()Z

    move-result v5

    if-eqz v5, :cond_103

    or-int/lit8 v0, v0, 0x2

    :cond_103
    if-nez v4, :cond_107

    .line 1032
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 1037
    :cond_107
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getSelfMovable()I

    move-result v1

    if-eq v1, v3, :cond_114

    .line 1038
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getSelfMovable()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setSelfMovable(I)V

    .line 1041
    :cond_114
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v1

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_127

    .line 1042
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 1043
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getInterceptBackPressed()Z

    move-result p2

    .line 1042
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskOrganizerController;->setInterceptBackPressedOnTaskRoot(IZ)V

    :cond_127
    return v0
.end method

.method public final applyTaskFragmentChanges(Lcom/android/server/wm/TaskFragment;Landroid/window/WindowContainerTransaction$Change;Landroid/os/IBinder;)I
    .registers 7

    .line 1083
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskFragmentInPip()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1092
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTmpBounds0:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1093
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTmpBounds1:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRelativeEmbeddedBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1094
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->deferOrganizedTaskFragmentSurfaceUpdate()V

    .line 1095
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getRelativeBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 1098
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/wm/WindowOrganizerController;->adjustTaskFragmentRelativeBoundsForMinDimensionsIfNeeded(Lcom/android/server/wm/TaskFragment;Landroid/graphics/Rect;Landroid/os/IBinder;)V

    .line 1104
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    .line 1106
    invoke-virtual {p1, v0, p3}, Lcom/android/server/wm/TaskFragment;->translateRelativeBoundsToAbsoluteBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p3

    .line 1108
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2, p3}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 1109
    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskFragment;->setRelativeEmbeddedBounds(Landroid/graphics/Rect;)V

    .line 1111
    :cond_3e
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result p3

    and-int/lit8 p3, p3, 0x8

    const/4 v0, 0x2

    if-eqz p3, :cond_53

    const/4 p3, 0x4

    .line 1113
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getHidden()Z

    move-result v2

    .line 1112
    invoke-virtual {p1, p3, v2}, Lcom/android/server/wm/TaskFragment;->setForceHidden(IZ)Z

    move-result p3

    if-eqz p3, :cond_53

    move v1, v0

    .line 1117
    :cond_53
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result p3

    and-int/lit8 p3, p3, 0x40

    if-eqz p3, :cond_66

    .line 1118
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getForceTranslucent()Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/server/wm/TaskFragment;->setForceTranslucent(Z)Z

    move-result p3

    if-eqz p3, :cond_66

    goto :goto_67

    :cond_66
    move v0, v1

    .line 1123
    :goto_67
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowOrganizerController;->applyChanges(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;)I

    move-result p2

    or-int/2addr p2, v0

    .line 1125
    iget-object p3, p0, Lcom/android/server/wm/WindowOrganizerController;->mTmpBounds0:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTmpBounds1:Landroid/graphics/Rect;

    invoke-virtual {p1, p3, v0}, Lcom/android/server/wm/TaskFragment;->shouldStartChangeTransition(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p3

    if-eqz p3, :cond_7b

    .line 1126
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V

    .line 1128
    :cond_7b
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->continueOrganizedTaskFragmentSurfaceUpdate()V

    return p2
.end method

.method public final applyTaskFragmentOperation(Landroid/window/WindowContainerTransaction$HierarchyOp;Lcom/android/server/wm/ActionChain;ZLcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;)I
    .registers 17

    move-object/from16 v1, p6

    .line 1717
    invoke-virtual {p0, p1, p5, v1}, Lcom/android/server/wm/WindowOrganizerController;->validateTaskFragmentOperation(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;)Z

    move-result v0

    const/4 v8, 0x0

    if-nez v0, :cond_a

    return v8

    .line 1720
    :cond_a
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    .line 1721
    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/wm/TaskFragment;

    .line 1722
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getTaskFragmentOperation()Landroid/window/TaskFragmentOperation;

    move-result-object p1

    .line 1723
    invoke-virtual {p1}, Landroid/window/TaskFragmentOperation;->getOpType()I

    move-result v4

    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x2

    packed-switch v4, :pswitch_data_2f2

    packed-switch v4, :pswitch_data_308

    packed-switch v4, :pswitch_data_31a

    goto/16 :goto_172

    .line 2047
    :pswitch_2d
    invoke-virtual {p1}, Landroid/window/TaskFragmentOperation;->getBooleanValue()Z

    move-result p1

    invoke-virtual {v3, p1}, Lcom/android/server/wm/TaskFragment;->setCanAffectSystemUiFlags(Z)V

    .line 2050
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    return v8

    .line 2011
    :pswitch_3e
    invoke-virtual {p1}, Landroid/window/TaskFragmentOperation;->getBooleanValue()Z

    move-result p0

    invoke-virtual {v3, p0}, Lcom/android/server/wm/TaskFragment;->setMoveToBottomIfClearWhenLaunch(Z)V

    return v8

    .line 1961
    :pswitch_46
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_172

    .line 1963
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    if-eq p1, v3, :cond_172

    .line 1964
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1965
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1966
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result p1

    if-nez p1, :cond_65

    .line 1969
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->assignChildLayers()V

    :cond_65
    return v9

    .line 1945
    :pswitch_66
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_172

    .line 1947
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getBottomChild()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    if-eq p1, v3, :cond_172

    .line 1948
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1949
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p1, v8, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1950
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result p1

    if-nez p1, :cond_85

    .line 1953
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->assignChildLayers()V

    :cond_85
    return v9

    .line 2042
    :pswitch_86
    invoke-virtual {p1}, Landroid/window/TaskFragmentOperation;->getBooleanValue()Z

    move-result p0

    .line 2043
    invoke-virtual {v3, p0}, Lcom/android/server/wm/TaskFragment;->setPinned(Z)V

    return v8

    .line 2016
    :pswitch_8e
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_96

    goto/16 :goto_172

    .line 2021
    :cond_96
    invoke-virtual {p1}, Landroid/window/TaskFragmentOperation;->getSurfaceTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p3

    if-eqz p3, :cond_a3

    .line 2026
    iget v0, p4, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    iget v1, p4, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    invoke-virtual {p3, v0, v1}, Landroid/view/SurfaceControl$Transaction;->sanitize(II)V

    .line 2031
    :cond_a3
    invoke-virtual {p1}, Landroid/window/TaskFragmentOperation;->getBooleanValue()Z

    move-result p1

    .line 2029
    invoke-virtual {p0, v3, p1, p3}, Lcom/android/server/wm/Task;->requestDecorSurfaceBoosted(Lcom/android/server/wm/TaskFragment;ZLandroid/view/SurfaceControl$Transaction;)V

    .line 2037
    invoke-virtual {p2}, Lcom/android/server/wm/ActionChain;->getTransition()Lcom/android/server/wm/Transition;

    move-result-object p1

    new-instance p2, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda17;

    invoke-direct {p2, p0}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/wm/Task;)V

    invoke-static {p1, p2}, Lcom/android/server/wm/WindowOrganizerController;->runAfterTransition(Lcom/android/server/wm/Transition;Ljava/lang/Runnable;)V

    return v8

    .line 2005
    :pswitch_b7
    invoke-virtual {p1}, Landroid/window/TaskFragmentOperation;->getBooleanValue()Z

    move-result p0

    .line 2006
    invoke-virtual {v3, p0}, Lcom/android/server/wm/TaskFragment;->setEmbeddedDimArea(I)V

    return v8

    .line 1997
    :pswitch_bf
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_c7

    goto/16 :goto_172

    .line 2001
    :cond_c7
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->removeDecorSurface()V

    return v8

    .line 1977
    :pswitch_cb
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_d3

    goto/16 :goto_172

    .line 1984
    :cond_d3
    invoke-virtual {p2}, Lcom/android/server/wm/ActionChain;->getTransition()Lcom/android/server/wm/Transition;

    move-result-object p1

    if-eqz p1, :cond_e7

    .line 1986
    iget-object p1, p1, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda16;

    invoke-direct {p2, p1}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda16;-><init>(Landroid/util/ArraySet;)V

    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskFragment;->getTaskFragment(Ljava/util/function/Predicate;)Lcom/android/server/wm/TaskFragment;

    move-result-object v5

    :cond_e7
    if-eqz v5, :cond_f4

    .line 1989
    invoke-virtual {p0, v3, v8}, Lcom/android/server/wm/Task;->moveOrCreateDecorSurfaceFor(Lcom/android/server/wm/TaskFragment;Z)V

    .line 1990
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setDecorSurfaceVisible(Landroid/view/SurfaceControl$Transaction;)V

    return v8

    .line 1992
    :cond_f4
    invoke-virtual {p0, v3, v0}, Lcom/android/server/wm/Task;->moveOrCreateDecorSurfaceFor(Lcom/android/server/wm/TaskFragment;Z)V

    return v8

    .line 1940
    :pswitch_f8
    invoke-virtual {p1}, Landroid/window/TaskFragmentOperation;->getBooleanValue()Z

    move-result p0

    .line 1941
    invoke-virtual {v3, p0}, Lcom/android/server/wm/TaskFragment;->setIsolatedNav(Z)V

    return v8

    .line 1922
    :pswitch_100
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_172

    .line 1924
    new-instance p1, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda15;

    invoke-direct {p1}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda15;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->getTaskFragment(Ljava/util/function/Predicate;)Lcom/android/server/wm/TaskFragment;

    move-result-object p1

    if-eqz p1, :cond_172

    if-eq p1, v3, :cond_172

    .line 1927
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 1928
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1929
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p2, p1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1930
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result p1

    if-nez p1, :cond_12c

    .line 1932
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->assignChildLayers()V

    :cond_12c
    return v9

    .line 1910
    :pswitch_12d
    invoke-virtual {p1}, Landroid/window/TaskFragmentOperation;->getAnimationParams()Landroid/window/TaskFragmentAnimationParams;

    move-result-object p1

    if-nez p1, :cond_140

    .line 1912
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string p1, "TaskFragmentAnimationParams must be non-null"

    invoke-direct {v5, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p5

    .line 1914
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return v8

    .line 1918
    :cond_140
    invoke-virtual {v3, p1}, Lcom/android/server/wm/TaskFragment;->setAnimationParams(Landroid/window/TaskFragmentAnimationParams;)V

    return v8

    .line 1900
    :pswitch_144
    invoke-virtual {p1}, Landroid/window/TaskFragmentOperation;->getSecondaryFragmentToken()Landroid/os/IBinder;

    move-result-object p2

    if-eqz p2, :cond_153

    .line 1902
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskFragment;

    goto :goto_154

    :cond_153
    move-object p0, v5

    .line 1904
    :goto_154
    invoke-virtual {p1}, Landroid/window/TaskFragmentOperation;->getActivityToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p2, :cond_15b

    move-object v5, p1

    .line 1905
    :cond_15b
    invoke-virtual {v3, p0, v5}, Lcom/android/server/wm/TaskFragment;->setCompanionTaskFragment(Lcom/android/server/wm/TaskFragment;Landroid/os/IBinder;)V

    return v8

    .line 1875
    :pswitch_15f
    iget-object p1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance p2, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;

    invoke-direct {p2, p0, v3}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/TaskFragment;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v8

    .line 1850
    :pswitch_16c
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result p0

    if-nez p0, :cond_173

    :cond_172
    :goto_172
    return v8

    .line 1855
    :cond_173
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_180

    .line 1857
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    goto :goto_181

    :cond_180
    move-object p0, v5

    :goto_181
    if-eq p0, v3, :cond_18b

    if-eqz p0, :cond_18c

    .line 1861
    invoke-virtual {v3, p0}, Lcom/android/server/wm/TaskFragment;->isAdjacentTo(Lcom/android/server/wm/TaskFragment;)Z

    move-result p1

    if-eqz p1, :cond_18c

    :cond_18b
    move v8, v0

    .line 1863
    :cond_18c
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->removeFromAdjacentTaskFragments()V

    if-eqz v8, :cond_19e

    .line 1869
    invoke-virtual {p0, v5}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-nez p1, :cond_19e

    .line 1870
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    :cond_19e
    return v9

    .line 1820
    :pswitch_19f
    invoke-virtual {p1}, Landroid/window/TaskFragmentOperation;->getSecondaryFragmentToken()Landroid/os/IBinder;

    move-result-object p2

    .line 1821
    iget-object p3, p0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    .line 1822
    invoke-virtual {p3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/TaskFragment;

    if-nez p2, :cond_1bc

    .line 1824
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string p1, "SecondaryFragmentToken must be set for setAdjacentTaskFragments."

    invoke-direct {v5, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p5

    move-object/from16 v1, p6

    .line 1826
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return v8

    .line 1830
    :cond_1bc
    invoke-virtual {v3, p2}, Lcom/android/server/wm/TaskFragment;->isAdjacentTo(Lcom/android/server/wm/TaskFragment;)Z

    move-result p0

    if-nez p0, :cond_1cf

    .line 1833
    new-instance p0, Lcom/android/server/wm/TaskFragment$AdjacentSet;

    filled-new-array {v3, p2}, [Lcom/android/server/wm/TaskFragment;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/server/wm/TaskFragment$AdjacentSet;-><init>([Lcom/android/server/wm/TaskFragment;)V

    invoke-virtual {v3, p0}, Lcom/android/server/wm/TaskFragment;->setAdjacentTaskFragments(Lcom/android/server/wm/TaskFragment$AdjacentSet;)V

    goto :goto_1d0

    :cond_1cf
    move v9, v8

    .line 1838
    :goto_1d0
    invoke-virtual {p1}, Landroid/window/TaskFragmentOperation;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1db

    .line 1841
    new-instance v5, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;

    invoke-direct {v5, p0}, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;-><init>(Landroid/os/Bundle;)V

    :cond_1db
    if-eqz v5, :cond_1e5

    .line 1844
    invoke-virtual {v5}, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->shouldDelayPrimaryLastActivityRemoval()Z

    move-result p0

    if-eqz p0, :cond_1e5

    move p0, v0

    goto :goto_1e6

    :cond_1e5
    move p0, v8

    .line 1843
    :goto_1e6
    invoke-virtual {v3, p0}, Lcom/android/server/wm/TaskFragment;->setDelayLastActivityRemoval(Z)V

    if-eqz v5, :cond_1f2

    .line 1846
    invoke-virtual {v5}, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->shouldDelaySecondaryLastActivityRemoval()Z

    move-result p0

    if-eqz p0, :cond_1f2

    move v8, v0

    .line 1845
    :cond_1f2
    invoke-virtual {p2, v8}, Lcom/android/server/wm/TaskFragment;->setDelayLastActivityRemoval(Z)V

    return v9

    .line 1777
    :pswitch_1f6
    invoke-virtual {p1}, Landroid/window/TaskFragmentOperation;->getActivityToken()Landroid/os/IBinder;

    move-result-object p1

    .line 1778
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p3

    if-nez p3, :cond_206

    .line 1782
    iget-object p3, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 1783
    invoke-virtual {p3, v1, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->getReparentActivityFromTemporaryToken(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p3

    :cond_206
    if-nez p3, :cond_215

    .line 1786
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not allowed to operate with invalid activity."

    invoke-direct {v5, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p5

    .line 1788
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return v8

    .line 1792
    :cond_215
    invoke-virtual {v3, p3}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivity(Lcom/android/server/wm/ActivityRecord;)I

    move-result p1

    if-eqz p1, :cond_22a

    .line 1793
    new-instance v5, Ljava/lang/SecurityException;

    const-string p1, "The task fragment is not allowed to embed the given activity."

    invoke-direct {v5, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p5

    move-object/from16 v1, p6

    .line 1795
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return v8

    .line 1799
    :cond_22a
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eq p1, v0, :cond_243

    .line 1800
    new-instance v5, Ljava/lang/SecurityException;

    const-string p1, "The reparented activity is not in the same Task as the target TaskFragment."

    invoke-direct {v5, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p5

    move-object/from16 v1, p6

    .line 1802
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return v8

    .line 1806
    :cond_243
    invoke-virtual {p2}, Lcom/android/server/wm/ActionChain;->isCollecting()Z

    move-result p0

    if-eqz p0, :cond_25c

    .line 1807
    invoke-virtual {p2, p3}, Lcom/android/server/wm/ActionChain;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 1808
    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-eqz p0, :cond_259

    .line 1811
    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/server/wm/ActionChain;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 1813
    :cond_259
    invoke-virtual {p2, v3}, Lcom/android/server/wm/ActionChain;->collect(Lcom/android/server/wm/WindowContainer;)V

    :cond_25c
    const p0, 0x7fffffff

    .line 1815
    invoke-virtual {p3, v3, p0}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    return v9

    :pswitch_263
    move p2, v4

    .line 1759
    invoke-virtual {p1}, Landroid/window/TaskFragmentOperation;->getActivityToken()Landroid/os/IBinder;

    move-result-object v5

    move-object v2, v3

    .line 1760
    invoke-virtual {p1}, Landroid/window/TaskFragmentOperation;->getActivityIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1761
    invoke-virtual {p1}, Landroid/window/TaskFragmentOperation;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 1762
    iget p3, p4, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    iget v0, p4, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    .line 1763
    invoke-static {p1, p3, v0}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;II)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v4

    .line 1764
    new-instance v0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda13;

    move-object v1, p0

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/TaskFragment;Landroid/content/Intent;Lcom/android/server/wm/SafeActivityOptions;Landroid/os/IBinder;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/os/IBinder;)V

    move-object p3, v0

    move-object p1, v3

    move-object v3, v2

    invoke-virtual {p0, p3}, Lcom/android/server/wm/WindowOrganizerController;->waitAsyncStart(Ljava/util/function/IntSupplier;)I

    move-result p3

    .line 1768
    invoke-static {p3}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v1

    if-nez v1, :cond_29b

    .line 1770
    invoke-virtual {p0, p3, p1}, Lcom/android/server/wm/WindowOrganizerController;->convertStartFailureToThrowable(ILandroid/content/Intent;)Ljava/lang/Throwable;

    move-result-object v5

    move-object v0, p0

    move v4, p2

    move-object v2, p5

    move-object/from16 v1, p6

    .line 1769
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return v8

    :cond_29b
    return v9

    :pswitch_29c
    if-eqz p3, :cond_2cb

    .line 1743
    new-instance p1, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;

    invoke-direct {p1}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;-><init>()V

    invoke-virtual {v3, p1, v8}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_2cb

    .line 1745
    iget-object p3, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1746
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/android/server/wm/LockTaskController;->activityBlockedFromFinish(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-eqz p1, :cond_2cb

    .line 1748
    const-string p1, "WindowOrganizerController"

    const-string p2, "Skip removing TaskFragment due in lock task mode."

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string p1, "Not allow to delete task fragment in lock task mode."

    invoke-direct {v5, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p5

    move-object/from16 v1, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return v8

    .line 1755
    :cond_2cb
    invoke-virtual {p2}, Lcom/android/server/wm/ActionChain;->getTransition()Lcom/android/server/wm/Transition;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/android/server/wm/WindowOrganizerController;->deleteTaskFragment(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/Transition;)I

    move-result p0

    return p0

    .line 1729
    :pswitch_2d4
    invoke-virtual {p1}, Landroid/window/TaskFragmentOperation;->getTaskFragmentCreationParams()Landroid/window/TaskFragmentCreationParams;

    move-result-object p1

    if-nez p1, :cond_2e9

    .line 1731
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string p1, "TaskFragmentCreationParams must be non-null"

    invoke-direct {v5, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p5

    move-object/from16 v1, p6

    .line 1733
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return v8

    .line 1738
    :cond_2e9
    invoke-virtual {p2}, Lcom/android/server/wm/ActionChain;->getTransition()Lcom/android/server/wm/Transition;

    move-result-object p2

    .line 1737
    invoke-virtual {p0, p1, p5, p4, p2}, Lcom/android/server/wm/WindowOrganizerController;->createTaskFragment(Landroid/window/TaskFragmentCreationParams;Landroid/os/IBinder;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition;)V

    return v8

    nop

    :pswitch_data_2f2
    .packed-switch 0x0
        :pswitch_2d4
        :pswitch_29c
        :pswitch_263
        :pswitch_1f6
        :pswitch_19f
        :pswitch_16c
        :pswitch_15f
        :pswitch_144
        :pswitch_12d
    .end packed-switch

    :pswitch_data_308
    .packed-switch 0xa
        :pswitch_100
        :pswitch_f8
        :pswitch_cb
        :pswitch_bf
        :pswitch_b7
        :pswitch_8e
        :pswitch_86
    .end packed-switch

    :pswitch_data_31a
    .packed-switch 0x3e9
        :pswitch_66
        :pswitch_46
        :pswitch_3e
        :pswitch_2d
    .end packed-switch
.end method

.method public applyTaskFragmentTransactionLocked(Landroid/window/WindowContainerTransaction;IZLandroid/window/RemoteTransition;)V
    .registers 16

    .line 546
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/window/ITaskFragmentOrganizer;

    .line 545
    const-string v1, "applyTaskFragmentTransaction()"

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskFragmentOrganizerPermission(Ljava/lang/String;Landroid/window/ITaskFragmentOrganizer;Landroid/window/WindowContainerTransaction;)V

    if-eqz p4, :cond_29

    .line 548
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 549
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v1

    invoke-interface {v1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 548
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->isSystemOrganizer(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_29

    .line 550
    :cond_21
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only a system organizer is allowed to use remote transition!"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 553
    :cond_29
    :goto_29
    new-instance v5, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    invoke-direct {v5}, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;-><init>()V

    .line 554
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 556
    :try_start_32
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_57

    .line 558
    iget-object p2, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string p3, "legacyTFTransact"

    .line 559
    invoke-virtual {p2, p3}, Lcom/android/server/wm/ActionChain$Tracker;->startLegacy(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;

    move-result-object p2

    .line 558
    invoke-virtual {p0, p1, v1, p2, v5}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I

    .line 560
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain$Tracker;->end()V
    :try_end_4f
    .catchall {:try_start_32 .. :try_end_4f} :catchall_53

    .line 620
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_53
    move-exception v0

    move-object p0, v0

    goto/16 :goto_d0

    .line 566
    :cond_57
    :try_start_57
    new-instance v4, Lcom/android/server/wm/Transition$ReadyCondition;

    const-string v0, "TF WCT Applied"

    const/4 v2, 0x1

    .line 567
    invoke-direct {v4, v0, v2}, Lcom/android/server/wm/Transition$ReadyCondition;-><init>(Ljava/lang/String;Z)V

    .line 568
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v0}, Lcom/android/server/wm/BLASTSyncEngine;->hasActiveSync()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_b1

    if-nez p3, :cond_b1

    .line 573
    iget-object p2, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string p3, "tfTransact"

    invoke-virtual {p2, p3}, Lcom/android/server/wm/ActionChain$Tracker;->startTransit(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;

    move-result-object p2

    .line 574
    invoke-virtual {p2}, Lcom/android/server/wm/ActionChain;->getTransition()Lcom/android/server/wm/Transition;

    move-result-object p3

    if-nez p3, :cond_7f

    goto :goto_80

    :cond_7f
    move v2, v3

    :goto_80
    if-eqz v2, :cond_95

    .line 580
    sget-object p3, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 p4, 0x3

    aget-boolean p3, p3, p4

    if-eqz p3, :cond_9e

    sget-object p3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v9, 0x54cde495c22f3cd2L    # 3.269164467809003E100

    const/4 p4, 0x0

    invoke-static {p3, v9, v10, v3, p4}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_9e

    .line 585
    :cond_95
    invoke-virtual {p2}, Lcom/android/server/wm/ActionChain;->getTransition()Lcom/android/server/wm/Transition;

    move-result-object p3

    iget-object p3, p3, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    invoke-virtual {p3, v4}, Lcom/android/server/wm/Transition$ReadyTracker;->add(Lcom/android/server/wm/Transition$ReadyCondition;)V

    .line 587
    :cond_9e
    :goto_9e
    invoke-virtual {p0, p1, v1, p2, v5}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I

    if-nez v2, :cond_a6

    .line 589
    invoke-virtual {v4}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    .line 591
    :cond_a6
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain$Tracker;->end()V
    :try_end_ad
    .catchall {:try_start_57 .. :try_end_ad} :catchall_53

    .line 620
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_b1
    move p3, v3

    .line 595
    :try_start_b2
    new-instance v3, Lcom/android/server/wm/Transition;

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-direct {v3, p2, p3, v0, v1}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    .line 597
    new-instance v0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;

    move-object v1, p0

    move-object v2, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/Transition;Lcom/android/server/wm/Transition$ReadyCondition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/window/RemoteTransition;)V

    .line 618
    iget-object p0, v1, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p0, v3, v0}, Lcom/android/server/wm/TransitionController;->startCollectOrQueue(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)Z
    :try_end_cc
    .catchall {:try_start_b2 .. :try_end_cc} :catchall_53

    .line 620
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_d0
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 621
    throw p0
.end method

.method public final applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I
    .registers 27

    move-object/from16 v1, p0

    move/from16 v4, p2

    .line 649
    const-string v10, " is not collecting"

    const-string v11, " state: "

    const-string v12, "Too late, transition : "

    .line 650
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    const/4 v13, 0x0

    aget-boolean v0, v0, v13

    const/4 v14, 0x1

    if-eqz v0, :cond_25

    int-to-long v2, v4

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v5, 0x7fae65e581513769L    # 1.0673112428514985E307

    invoke-static {v0, v5, v6, v14, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 651
    :cond_25
    iget-object v0, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 652
    iget-object v0, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    .line 654
    iget-object v0, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, v14}, Lcom/android/server/wm/ActivityTaskSupervisor;->setDeferRootVisibilityUpdate(Z)V

    .line 656
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ActionChain;->getTransition()Lcom/android/server/wm/Transition;

    move-result-object v0

    .line 657
    const-string v15, "WindowOrganizerController"

    if-eqz v0, :cond_80

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_80

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ActionChain;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_80

    .line 658
    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->isCollecting()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 660
    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->deferTransitionReady()V

    move-object v3, v0

    move/from16 v16, v14

    goto :goto_83

    .line 662
    :cond_59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transition is not collecting when applyTransaction. transition="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " state="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->getState()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 662
    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ActionChain;->detachTransition()V

    move/from16 v16, v13

    const/4 v3, 0x0

    goto :goto_83

    :cond_80
    move-object v3, v0

    move/from16 v16, v13

    .line 670
    :goto_83
    :try_start_83
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V
    :try_end_88
    .catchall {:try_start_83 .. :try_end_88} :catchall_300

    if-eqz v3, :cond_9a

    .line 672
    :try_start_8a
    invoke-virtual {v3, v0}, Lcom/android/server/wm/Transition;->applyDisplayChangeIfNeeded(Landroid/util/ArraySet;)V

    .line 673
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v5
    :try_end_91
    .catchall {:try_start_8a .. :try_end_91} :catchall_95

    if-nez v5, :cond_9a

    move v5, v14

    goto :goto_9b

    :catchall_95
    move-exception v0

    move-object/from16 v20, v3

    goto/16 :goto_305

    :cond_9a
    move v5, v13

    .line 677
    :goto_9b
    :try_start_9b
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v6

    .line 678
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7
    :try_end_a3
    .catchall {:try_start_9b .. :try_end_a3} :catchall_300

    if-eqz v3, :cond_e1

    .line 683
    :try_start_a5
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getChanges()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 684
    :cond_b1
    :goto_b1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e1

    .line 686
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 687
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/window/WindowContainerTransaction$Change;

    invoke-virtual/range {v17 .. v17}, Landroid/window/WindowContainerTransaction$Change;->getConfigAtTransitionEnd()Z

    move-result v17

    if-nez v17, :cond_ca

    goto :goto_b1

    .line 688
    :cond_ca
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/IBinder;

    invoke-static {v9}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    if-eqz v9, :cond_b1

    .line 689
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v17

    if-nez v17, :cond_dd

    goto :goto_b1

    .line 690
    :cond_dd
    invoke-virtual {v3, v9}, Lcom/android/server/wm/Transition;->setConfigAtEnd(Lcom/android/server/wm/WindowContainer;)V
    :try_end_e0
    .catchall {:try_start_a5 .. :try_end_e0} :catchall_95

    goto :goto_b1

    .line 693
    :cond_e1
    :try_start_e1
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getChanges()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 694
    :goto_ed
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9
    :try_end_f1
    .catchall {:try_start_e1 .. :try_end_f1} :catchall_300

    if-eqz v9, :cond_216

    .line 695
    :try_start_f3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 696
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/IBinder;

    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v14

    if-eqz v14, :cond_10b

    .line 697
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v17

    if-nez v17, :cond_112

    :cond_10b
    move-object/from16 v20, v3

    move/from16 v21, v5

    const/4 v5, 0x0

    goto/16 :goto_1f8

    :cond_112
    if-ltz v4, :cond_117

    .line 705
    invoke-virtual {v1, v4, v14}, Lcom/android/server/wm/WindowOrganizerController;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    :cond_117
    move-object/from16 v2, p3

    goto :goto_120

    :catchall_11a
    move-exception v0

    move-object/from16 v20, v3

    :goto_11d
    const/4 v14, 0x1

    goto/16 :goto_305

    .line 707
    :goto_120
    invoke-virtual {v2, v14}, Lcom/android/server/wm/ActionChain;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 709
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/window/WindowContainerTransaction$Change;

    invoke-virtual/range {v19 .. v19}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v19

    and-int/lit8 v19, v19, 0x20

    if-eqz v19, :cond_13d

    .line 714
    iget-object v13, v1, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 715
    invoke-virtual {v13, v14}, Lcom/android/server/wm/TransitionController;->getTransientHideTransitionForContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    move-result-object v13

    if-eqz v13, :cond_142

    const/4 v2, 0x0

    .line 717
    invoke-virtual {v13, v2}, Lcom/android/server/wm/Transition;->setCanPipOnFinish(Z)V

    :cond_13d
    move-object/from16 v20, v3

    move/from16 v21, v5

    goto :goto_15b

    :cond_142
    const/4 v2, 0x0

    .line 719
    sget-object v13, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v13, v13, v2

    if-eqz v13, :cond_13d

    sget-object v13, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;
    :try_end_14b
    .catchall {:try_start_f3 .. :try_end_14b} :catchall_11a

    move-object/from16 v20, v3

    const-wide v3, 0x3d4ce6662a8436c7L    # 2.0534682527300362E-13

    move/from16 v21, v5

    const/4 v5, 0x0

    :try_start_155
    invoke-static {v13, v3, v4, v2, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_15b

    :catchall_159
    move-exception v0

    goto :goto_11d

    .line 726
    :goto_15b
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_1a0

    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_1a0

    .line 727
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerTransaction$Change;

    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$Change;->getWindowingMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1a0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_176
    if-ge v2, v7, :cond_1a1

    .line 731
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 732
    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v5

    const/4 v13, 0x1

    if-eq v5, v13, :cond_186

    goto :goto_19d

    .line 734
    :cond_186
    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v5

    .line 733
    invoke-static {v5}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    .line 735
    invoke-virtual {v14, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_195

    goto :goto_19d

    .line 736
    :cond_195
    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v3

    const/16 v18, 0x1

    xor-int/lit8 v3, v3, 0x1

    :goto_19d
    add-int/lit8 v2, v2, 0x1

    goto :goto_176

    :cond_1a0
    const/4 v3, 0x0

    :cond_1a1
    if-eqz v3, :cond_1ab

    .line 740
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    const/4 v13, 0x1

    invoke-virtual {v2, v13, v13}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    :cond_1ab
    if-eqz v3, :cond_1c8

    .line 742
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    move-result v2

    if-nez v2, :cond_1c8

    .line 746
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;)V

    .line 747
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string v4, "force-stop-on-removing-pip"

    const/4 v13, 0x0

    invoke-virtual {v2, v5, v13, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->processStoppingAndFinishingActivities(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)V

    goto :goto_1c9

    :cond_1c8
    const/4 v5, 0x0

    .line 752
    :goto_1c9
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerTransaction$Change;

    .line 753
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getErrorCallbackToken()Landroid/os/IBinder;

    move-result-object v4

    .line 752
    invoke-virtual {v1, v14, v2, v4}, Lcom/android/server/wm/WindowOrganizerController;->applyWindowContainerChange(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;Landroid/os/IBinder;)I

    move-result v2

    or-int v4, v21, v2

    if-eqz v3, :cond_1e4

    .line 757
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    const/4 v9, 0x0

    const/4 v13, 0x1

    invoke-virtual {v3, v13, v9}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    :cond_1e4
    and-int/lit8 v3, v4, 0x2

    if-nez v3, :cond_1ef

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1ef

    .line 763
    invoke-virtual {v0, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1ef
    move v5, v4

    move-object/from16 v3, v20

    const/4 v13, 0x0

    const/4 v14, 0x1

    move/from16 v4, p2

    goto/16 :goto_ed

    .line 698
    :goto_1f8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to operate on detached container: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v4, p2

    move-object/from16 v3, v20

    move/from16 v5, v21

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_ed

    :cond_216
    move-object/from16 v20, v3

    move/from16 v21, v5

    if-lez v7, :cond_24e

    .line 768
    iget-object v2, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isInLockTaskMode()Z

    move-result v2

    move/from16 v3, v21

    const/4 v13, 0x0

    :goto_225
    if-ge v13, v7, :cond_24c

    .line 770
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 771
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getErrorCallbackToken()Landroid/os/IBinder;

    move-result-object v8

    .line 772
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v9

    move-object/from16 v5, p3

    move-object v14, v6

    move/from16 v17, v7

    move-object/from16 v7, p4

    move v6, v2

    move-object v2, v4

    move/from16 v4, p2

    .line 770
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/WindowOrganizerController;->applyHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;IILcom/android/server/wm/ActionChain;ZLcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;)I

    move-result v2

    or-int/2addr v3, v2

    add-int/lit8 v13, v13, 0x1

    move v2, v6

    move-object v6, v14

    move/from16 v7, v17

    goto :goto_225

    :cond_24c
    move v5, v3

    goto :goto_250

    :cond_24e
    move/from16 v5, v21

    :goto_250
    if-eqz v20, :cond_25a

    .line 775
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/Transition;->applyDisplayRemovalsIfNeeded()Z

    move-result v2

    if-eqz v2, :cond_25a

    or-int/lit8 v5, v5, 0x2

    :cond_25a
    and-int/lit8 v2, v5, 0x2

    if-eqz v2, :cond_281

    .line 779
    iget-object v0, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Lcom/android/server/wm/ActivityTaskSupervisor;->setDeferRootVisibilityUpdate(Z)V

    .line 780
    iget-object v0, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V
    :try_end_26d
    .catchall {:try_start_155 .. :try_end_26d} :catchall_159

    .line 783
    :try_start_26d
    iget-object v0, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    .line 784
    iget-object v0, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z
    :try_end_27b
    .catchall {:try_start_26d .. :try_end_27b} :catchall_27d

    const/4 v14, 0x0

    goto :goto_2ac

    :catchall_27d
    move-exception v0

    const/4 v14, 0x0

    goto/16 :goto_305

    :cond_281
    and-int/lit8 v2, v5, 0x1

    if-eqz v2, :cond_2a8

    .line 786
    :try_start_285
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2
    :try_end_289
    .catchall {:try_start_285 .. :try_end_289} :catchall_2a4

    const/16 v18, 0x1

    add-int/lit8 v2, v2, -0x1

    :goto_28d
    if-ltz v2, :cond_2aa

    .line 787
    :try_start_28f
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    new-instance v4, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V
    :try_end_29d
    .catchall {:try_start_28f .. :try_end_29d} :catchall_2a0

    add-int/lit8 v2, v2, -0x1

    goto :goto_28d

    :catchall_2a0
    move-exception v0

    :goto_2a1
    move/from16 v14, v18

    goto :goto_305

    :catchall_2a4
    move-exception v0

    const/16 v18, 0x1

    goto :goto_2a1

    :cond_2a8
    const/16 v18, 0x1

    :cond_2aa
    move/from16 v14, v18

    :goto_2ac
    if-eqz v5, :cond_2ba

    .line 796
    :try_start_2ae
    iget-object v0, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V
    :try_end_2b7
    .catchall {:try_start_2ae .. :try_end_2b7} :catchall_2b8

    goto :goto_2ba

    :catchall_2b8
    move-exception v0

    goto :goto_305

    :cond_2ba
    :goto_2ba
    if-eqz v16, :cond_2e9

    .line 800
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/Transition;->isCollecting()Z

    move-result v0

    if-eqz v0, :cond_2c6

    .line 801
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/Transition;->continueTransitionReady()V

    goto :goto_2e9

    .line 803
    :cond_2c6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/Transition;->getSyncId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/Transition;->getState()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 803
    invoke-static {v15, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_2e9
    :goto_2e9
    iget-object v0, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Lcom/android/server/wm/ActivityTaskSupervisor;->setDeferRootVisibilityUpdate(Z)V

    if-eqz v14, :cond_2fa

    .line 809
    iget-object v0, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 811
    :cond_2fa
    iget-object v0, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    return v5

    :catchall_300
    move-exception v0

    move-object/from16 v20, v3

    move/from16 v18, v14

    :goto_305
    if-eqz v16, :cond_334

    .line 800
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/Transition;->isCollecting()Z

    move-result v2

    if-eqz v2, :cond_311

    .line 801
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/Transition;->continueTransitionReady()V

    goto :goto_334

    .line 803
    :cond_311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/Transition;->getSyncId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/Transition;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 803
    invoke-static {v15, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_334
    :goto_334
    iget-object v2, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Lcom/android/server/wm/ActivityTaskSupervisor;->setDeferRootVisibilityUpdate(Z)V

    if-eqz v14, :cond_345

    .line 809
    iget-object v2, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 811
    :cond_345
    iget-object v1, v1, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 812
    throw v0
.end method

.method public final applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Z)I
    .registers 6

    if-eqz p5, :cond_11

    .line 628
    :try_start_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I

    move-result p0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    .line 634
    const-string p1, "WindowOrganizerController"

    const-string p2, "Failed to execute deferred applyTransaction"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0

    .line 638
    :cond_11
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I

    move-result p0

    return p0
.end method

.method public applyTransaction(Landroid/window/WindowContainerTransaction;)V
    .registers 8

    if-eqz p1, :cond_3f

    .line 246
    const-string v0, "applyTransaction()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 247
    new-instance v0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    invoke-direct {v0}, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;-><init>()V

    .line 248
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 250
    :try_start_10
    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_33

    .line 251
    :try_start_16
    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v5, "applyTransactLegacy"

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActionChain$Tracker;->startLegacy(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;

    move-result-object v4

    const/4 v5, -0x1

    .line 252
    invoke-virtual {p0, p1, v5, v4, v0}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I

    .line 253
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain$Tracker;->end()V

    .line 254
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_16 .. :try_end_2c} :catchall_35

    :try_start_2c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_33

    .line 256
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_33
    move-exception p0

    goto :goto_3b

    :catchall_35
    move-exception p0

    .line 254
    :try_start_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    :try_start_37
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_33

    .line 256
    :goto_3b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 257
    throw p0

    .line 244
    :cond_3f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null transaction passed to applyTransaction"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final applyWindowContainerChange(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;Landroid/os/IBinder;)I
    .registers 5

    .line 2451
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowOrganizerController;->sanitizeWindowContainer(Lcom/android/server/wm/WindowContainer;)V

    .line 2452
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 2453
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowOrganizerController;->applyDisplayAreaChanges(Lcom/android/server/wm/DisplayArea;Landroid/window/WindowContainerTransaction$Change;)I

    move-result p0

    return p0

    .line 2454
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 2455
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowOrganizerController;->applyTaskChanges(Lcom/android/server/wm/Task;Landroid/window/WindowContainerTransaction$Change;)I

    move-result p0

    return p0

    .line 2456
    :cond_21
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_3a

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 2457
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/WindowOrganizerController;->applyTaskFragmentChanges(Lcom/android/server/wm/TaskFragment;Landroid/window/WindowContainerTransaction$Change;Landroid/os/IBinder;)I

    move-result p0

    return p0

    .line 2459
    :cond_3a
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowOrganizerController;->applyChanges(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;)I

    move-result p0

    return p0
.end method

.method public cleanUpEmbeddedTaskFragment(Lcom/android/server/wm/TaskFragment;)V
    .registers 2

    .line 2878
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getFragmentToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final clearAdjacentRootsHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;)I
    .registers 4

    .line 2426
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_3d

    .line 2427
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_3d

    .line 2431
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    .line 2432
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_26

    .line 2436
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v0

    if-nez v0, :cond_21

    return p1

    .line 2439
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->removeFromAdjacentTaskFragments()V

    const/4 p0, 0x2

    return p0

    .line 2433
    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearAdjacentRootsHierarchyOp: Not created by organizer root="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2428
    :cond_3d
    :goto_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to operate on unknown or detached container: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WindowOrganizerController"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public final convertStartFailureToThrowable(ILandroid/content/Intent;)Ljava/lang/Throwable;
    .registers 5

    const/16 p0, -0x60

    if-eq p1, p0, :cond_5d

    const/16 p0, -0x5e

    if-eq p1, p0, :cond_46

    const/16 p0, -0x5c

    if-eq p1, p0, :cond_2f

    const/16 p0, -0x5b

    if-eq p1, p0, :cond_2f

    .line 2914
    new-instance p0, Landroid/util/AndroidRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start activity failed with error code : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " when starting "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 2906
    :cond_2f
    new-instance p0, Landroid/content/ActivityNotFoundException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No Activity found to handle "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 2908
    :cond_46
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Permission denied and not allowed to start activity "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 2911
    :cond_5d
    new-instance p0, Landroid/util/AndroidRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity could not be started for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " with error code : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public final createTaskFragment(Landroid/window/TaskFragmentCreationParams;Landroid/os/IBinder;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition;)V
    .registers 13

    .line 2759
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getOwnerToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2761
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getOrganizer()Landroid/window/TaskFragmentOrganizerToken;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/TaskFragmentOrganizerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2760
    invoke-static {v1}, Landroid/window/ITaskFragmentOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v3

    .line 2763
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 2764
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string p1, "TaskFragment token must be unique"

    invoke-direct {v7, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p2

    .line 2766
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return-void

    :cond_2f
    move-object v2, p0

    move-object v4, p2

    if-eqz v0, :cond_131

    .line 2770
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_3b

    goto/16 :goto_131

    .line 2777
    :cond_3b
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result p0

    if-nez p0, :cond_4e

    .line 2778
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string p0, "Not allowed to operate with non-resizable owner Activity"

    invoke-direct {v7, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2780
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return-void

    .line 2785
    :cond_4e
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    .line 2786
    iget p2, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v1

    if-ne p2, v1, :cond_124

    iget p2, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    iget p3, p3, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    if-eq p2, p3, :cond_62

    goto/16 :goto_124

    .line 2795
    :cond_62
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result p2

    if-eqz p2, :cond_75

    .line 2796
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string p0, "Not allowed to create TaskFragment in PIP Task"

    invoke-direct {v7, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2798
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return-void

    .line 2802
    :cond_75
    new-instance p2, Lcom/android/server/wm/TaskFragment;

    iget-object p3, v2, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2803
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x1

    invoke-direct {p2, p3, v1, v3}, Lcom/android/server/wm/TaskFragment;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;Z)V

    .line 2804
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getAllowTransitionWhenEmpty()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/server/wm/TaskFragment;->setAllowTransitionWhenEmpty(Z)V

    .line 2807
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getOrganizer()Landroid/window/TaskFragmentOrganizerToken;

    move-result-object p3

    .line 2809
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v1

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 2808
    invoke-virtual {p2, p3, v1, v0}, Lcom/android/server/wm/TaskFragment;->setTaskFragmentOrganizer(Landroid/window/TaskFragmentOrganizerToken;ILjava/lang/String;)V

    .line 2810
    iget-object v0, v2, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-virtual {p3}, Landroid/window/TaskFragmentOrganizerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/android/server/wm/TaskFragmentOrganizerController;->isSystemOrganizer(Landroid/os/IBinder;)Z

    move-result p3

    if-eqz p3, :cond_b1

    .line 2811
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getOverrideOrientation()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/server/wm/WindowContainer;->setOverrideOrientation(I)V

    .line 2813
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getConfigurationChangeMask()I

    move-result p3

    .line 2812
    invoke-virtual {p2, p3}, Lcom/android/server/wm/TaskFragment;->setConfigurationChangeMaskForOrganizer(I)V

    .line 2816
    :cond_b1
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getPairedPrimaryFragmentToken()Landroid/os/IBinder;

    move-result-object p3

    const/4 v0, -0x1

    const v1, 0x7fffffff

    if-eqz p3, :cond_ce

    .line 2820
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getPairedPrimaryFragmentToken()Landroid/os/IBinder;

    move-result-object p3

    .line 2819
    invoke-virtual {v2, p3}, Lcom/android/server/wm/WindowOrganizerController;->getTaskFragment(Landroid/os/IBinder;)Lcom/android/server/wm/TaskFragment;

    move-result-object p3

    .line 2821
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p3

    if-eq p3, v0, :cond_e5

    :goto_cb
    add-int/lit8 v1, p3, 0x1

    goto :goto_e5

    .line 2823
    :cond_ce
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getPairedActivityToken()Landroid/os/IBinder;

    move-result-object p3

    if-eqz p3, :cond_e5

    .line 2827
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getPairedActivityToken()Landroid/os/IBinder;

    move-result-object p3

    .line 2826
    invoke-static {p3}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p3

    .line 2828
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p3

    if-eq p3, v0, :cond_e5

    goto :goto_cb

    .line 2833
    :cond_e5
    :goto_e5
    invoke-virtual {p0, p2, v1}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 2834
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p3

    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {p3, p0}, Lcom/android/server/wm/EventLogTags;->writeWmTfCreated(II)V

    .line 2835
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getWindowingMode()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V

    .line 2836
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getInitialRelativeBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_115

    if-eqz p4, :cond_10b

    .line 2840
    invoke-virtual {p4}, Lcom/android/server/wm/Transition;->getSyncId()I

    move-result p0

    invoke-virtual {v2, p0, p2}, Lcom/android/server/wm/WindowOrganizerController;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    .line 2844
    :cond_10b
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getInitialRelativeBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/server/wm/TaskFragment;->setRelativeEmbeddedBounds(Landroid/graphics/Rect;)V

    .line 2847
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->recomputeConfiguration()V

    .line 2849
    :cond_115
    iget-object p0, v2, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getFragmentToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_123

    .line 2851
    invoke-virtual {p4, p2}, Lcom/android/server/wm/Transition;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    :cond_123
    return-void

    .line 2788
    :cond_124
    :goto_124
    new-instance v7, Ljava/lang/SecurityException;

    const-string p0, "Not allowed to operate with the ownerToken while the root activity of the target task belong to the different app"

    invoke-direct {v7, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2791
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return-void

    .line 2771
    :cond_131
    :goto_131
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string p0, "Not allowed to operate with invalid ownerToken"

    invoke-direct {v7, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2773
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return-void
.end method

.method public final deleteTaskFragment(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/Transition;)I
    .registers 7

    .line 2856
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getNonFinishingActivityCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    if-eqz p2, :cond_1e

    .line 2857
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    if-nez v3, :cond_1b

    iget-object v3, p2, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 2859
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 2860
    :cond_1b
    invoke-virtual {p2, p1}, Lcom/android/server/wm/Transition;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    .line 2863
    :cond_1e
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getFragmentToken()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2864
    const-string p0, "deleteTaskFragment"

    invoke-virtual {p1, v2, p0}, Lcom/android/server/wm/TaskFragment;->remove(ZLjava/lang/String;)V

    if-eqz v0, :cond_2f

    return v1

    :cond_2f
    const/4 p0, 0x2

    return p0
.end method

.method public final enforceTaskFragmentConfigChangeAllowed(Ljava/lang/String;Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;Landroid/window/ITaskFragmentOrganizer;)V
    .registers 13

    .line 2694
    const-string v0, "WindowOrganizerController"

    if-nez p2, :cond_a

    .line 2695
    const-string p0, "Attempt to operate on task fragment that no longer exists"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2698
    :cond_a
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p2

    .line 2699
    const-string v1, ", uid="

    const-string v2, " from pid="

    const-string v3, "Permission Denial: "

    if-eqz p2, :cond_ab

    invoke-virtual {p2, p4}, Lcom/android/server/wm/TaskFragment;->hasTaskFragmentOrganizer(Landroid/window/ITaskFragmentOrganizer;)Z

    move-result v4

    if-eqz v4, :cond_ab

    .line 2708
    invoke-virtual {p3}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v4

    .line 2709
    invoke-virtual {p3}, Landroid/window/WindowContainerTransaction$Change;->getConfigSetMask()I

    move-result v5

    .line 2710
    invoke-virtual {p3}, Landroid/window/WindowContainerTransaction$Change;->getWindowSetMask()I

    move-result p3

    .line 2716
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-interface {p4}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wm/TaskFragmentOrganizerController;->isSystemOrganizer(Landroid/os/IBinder;)Z

    move-result p0

    if-eqz p0, :cond_37

    and-int/lit8 p0, v4, -0x4a

    goto :goto_38

    :cond_37
    move p0, v4

    :goto_38
    and-int/lit16 v6, p0, 0x100

    if-eqz v6, :cond_4e

    const/high16 v6, 0x20000000

    and-int/2addr v6, v5

    if-eqz v6, :cond_4e

    and-int/lit8 v6, p3, 0x1

    if-eqz v6, :cond_4e

    and-int/lit16 p0, p0, -0x101

    const v6, -0x20000001

    and-int/2addr v6, v5

    and-int/lit8 v7, p3, -0x2

    goto :goto_50

    :cond_4e
    move v7, p3

    move v6, v5

    :goto_50
    if-nez p0, :cond_57

    if-nez v6, :cond_57

    if-nez v7, :cond_57

    return-void

    .line 2745
    :cond_57
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2746
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " trying to apply changes of changeMask="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " configSetMask="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " windowSetMask="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to TaskFragment="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " TaskFragmentOrganizer="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2751
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2701
    :cond_ab
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2702
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " trying to modify window container not belonging to the TaskFragmentOrganizer="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2704
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2705
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final enforceTaskFragmentOrganized(Ljava/lang/String;Landroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;)V
    .registers 4

    .line 2667
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2668
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskFragment;

    if-eqz p0, :cond_50

    .line 2672
    invoke-virtual {p0, p3}, Lcom/android/server/wm/TaskFragment;->hasTaskFragmentOrganizer(Landroid/window/ITaskFragmentOrganizer;)Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_50

    .line 2673
    :cond_14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Permission Denial: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2674
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " trying to modify TaskFragment not belonging to the TaskFragmentOrganizer="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2676
    const-string p1, "WindowOrganizerController"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2677
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_50
    :goto_50
    return-void
.end method

.method public final enforceTaskFragmentOrganizerPermission(Ljava/lang/String;Landroid/window/ITaskFragmentOrganizer;Landroid/window/WindowContainerTransaction;)V
    .registers 8

    .line 2623
    invoke-virtual {p3}, Landroid/window/WindowContainerTransaction;->getChanges()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2624
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 2625
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2626
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 2627
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/WindowContainerTransaction$Change;

    invoke-virtual {p0, p1, v2, v1, p2}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskFragmentConfigChangeAllowed(Ljava/lang/String;Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;Landroid/window/ITaskFragmentOrganizer;)V

    goto :goto_c

    .line 2631
    :cond_2c
    invoke-virtual {p3}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object p3

    .line 2632
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_36
    if-ltz v0, :cond_ac

    .line 2633
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 2634
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v2

    const/16 v3, 0xe

    if-eq v2, v3, :cond_a9

    const/16 v3, 0x11

    if-ne v2, v3, :cond_6d

    .line 2638
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskFragmentOrganized(Ljava/lang/String;Landroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;)V

    .line 2639
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getTaskFragmentOperation()Landroid/window/TaskFragmentOperation;

    move-result-object v2

    if-eqz v2, :cond_a9

    .line 2640
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getTaskFragmentOperation()Landroid/window/TaskFragmentOperation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/window/TaskFragmentOperation;->getSecondaryFragmentToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_a9

    .line 2642
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getTaskFragmentOperation()Landroid/window/TaskFragmentOperation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/TaskFragmentOperation;->getSecondaryFragmentToken()Landroid/os/IBinder;

    move-result-object v1

    .line 2641
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskFragmentOrganized(Ljava/lang/String;Landroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;)V

    goto :goto_a9

    .line 2651
    :cond_6d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Permission Denial: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2652
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " trying to apply a hierarchy change that is not allowed for TaskFragmentOrganizer="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2655
    const-string p1, "WindowOrganizerController"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2656
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a9
    :goto_a9
    add-int/lit8 v0, v0, -0x1

    goto :goto_36

    :cond_ac
    return-void
.end method

.method public finishTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;)V
    .registers 9

    .line 503
    const-string v0, "finishTransition()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 504
    new-instance v0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    invoke-direct {v0}, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;-><init>()V

    .line 505
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 507
    :try_start_e
    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_48

    .line 508
    :try_start_14
    invoke-static {p1}, Lcom/android/server/wm/Transition;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/Transition;

    move-result-object p1

    .line 509
    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v5, "finishTransit"

    .line 510
    invoke-virtual {v4, v5, p1}, Lcom/android/server/wm/ActionChain$Tracker;->startFinish(Ljava/lang/String;Lcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object v4

    if-eqz p2, :cond_2f

    .line 517
    iget-object v5, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iput-object p1, v5, Lcom/android/server/wm/TransitionController;->mFinishingTransition:Lcom/android/server/wm/Transition;

    const/4 p1, -0x1

    .line 518
    invoke-virtual {p0, p2, p1, v4, v0}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I

    goto :goto_2f

    :catchall_2d
    move-exception p0

    goto :goto_4a

    .line 520
    :cond_2f
    :goto_2f
    iget-object p1, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1, v4}, Lcom/android/server/wm/TransitionController;->finishTransition(Lcom/android/server/wm/ActionChain;)V

    .line 521
    iget-object p1, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/android/server/wm/TransitionController;->mFinishingTransition:Lcom/android/server/wm/Transition;

    .line 522
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain$Tracker;->end()V

    .line 523
    monitor-exit v3
    :try_end_41
    .catchall {:try_start_14 .. :try_end_41} :catchall_2d

    :try_start_41
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_48

    .line 525
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_48
    move-exception p0

    goto :goto_4f

    .line 523
    :goto_4a
    :try_start_4a
    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_2d

    :try_start_4b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_48

    .line 525
    :goto_4f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 526
    throw p0
.end method

.method public getApplyToken()Landroid/os/IBinder;
    .registers 1

    .line 2577
    const-string p0, "getApplyToken()"

    invoke-static {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2578
    invoke-static {}, Landroid/view/SurfaceControl$Transaction;->getDefaultApplyToken()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayAreaOrganizerController()Landroid/window/IDisplayAreaOrganizerController;
    .registers 2

    .line 2471
    const-string v0, "getDisplayAreaOrganizerController()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2472
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    return-object p0
.end method

.method public getMultitaskingController()Landroid/window/IMultitaskingController;
    .registers 1

    .line 2482
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mMultitaskingController:Lcom/android/server/wm/MultitaskingController;

    return-object p0
.end method

.method public getTaskFragment(Landroid/os/IBinder;)Lcom/android/server/wm/TaskFragment;
    .registers 2

    .line 2874
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskFragment;

    return-object p0
.end method

.method public getTaskFragmentOrganizerController()Landroid/window/ITaskFragmentOrganizerController;
    .registers 1

    .line 2477
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    return-object p0
.end method

.method public getTaskOrganizerController()Landroid/window/ITaskOrganizerController;
    .registers 2

    .line 2465
    const-string v0, "getTaskOrganizerController()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2466
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    return-object p0
.end method

.method public getTransitionController()Lcom/android/server/wm/TransitionController;
    .registers 1

    .line 228
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    return-object p0
.end method

.method public getTransitionMetricsReporter()Landroid/window/ITransitionMetricsReporter;
    .registers 1

    .line 2572
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mTransitionMetricsReporter:Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;

    return-object p0
.end method

.method public final isCreatedTaskFragmentReady(Landroid/window/WindowContainerTransaction;)Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 456
    :goto_2
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_45

    .line 457
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 458
    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v3

    const/16 v4, 0x11

    if-ne v3, v4, :cond_42

    .line 459
    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getTaskFragmentOperation()Landroid/window/TaskFragmentOperation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/window/TaskFragmentOperation;->getOpType()I

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_42

    .line 463
    :cond_29
    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getTaskFragmentOperation()Landroid/window/TaskFragmentOperation;

    move-result-object v2

    .line 464
    invoke-virtual {v2}, Landroid/window/TaskFragmentOperation;->getTaskFragmentCreationParams()Landroid/window/TaskFragmentCreationParams;

    move-result-object v2

    invoke-virtual {v2}, Landroid/window/TaskFragmentCreationParams;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v2

    .line 465
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowOrganizerController;->getTaskFragment(Landroid/os/IBinder;)Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 466
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->isReadyToTransit()Z

    move-result v2

    if-nez v2, :cond_42

    return v0

    :cond_42
    :goto_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_45
    const/4 p0, 0x1

    return p0
.end method

.method public final isLockTaskModeViolation(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Task;Z)Z
    .registers 5

    if-eqz p3, :cond_42

    if-eqz p1, :cond_42

    if-nez p2, :cond_7

    goto :goto_42

    .line 2276
    :cond_7
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object p0

    .line 2277
    invoke-virtual {p0, p2}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;)Z

    move-result p3

    if-nez p3, :cond_21

    .line 2278
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 2279
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;)Z

    move-result p3

    :cond_21
    if-eqz p3, :cond_41

    .line 2282
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t support the operation since in lock task mode violation.  Task: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " Parent : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowOrganizerController"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    return p3

    :cond_42
    :goto_42
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$applyHierarchyOp$10(Landroid/window/WindowContainerTransaction$HierarchyOp;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 13

    .line 1414
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 1415
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    .line 1416
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getWhitelistToken()Landroid/os/IBinder;

    move-result-object v2

    .line 1417
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityIntent()Landroid/content/Intent;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v5, p2

    move-object v8, p3

    .line 1414
    invoke-virtual/range {v0 .. v8}, Landroid/app/ActivityManagerInternal;->sendIntentSender(Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public final synthetic lambda$applyHierarchyOp$9(Lcom/android/server/wm/WindowOrganizerController$CallerInfo;ILcom/android/server/wm/SafeActivityOptions;)I
    .registers 5

    .line 1276
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v0, p1, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    iget p1, p1, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskSupervisor;->startActivityFromRecents(IIILcom/android/server/wm/SafeActivityOptions;)I

    move-result p0

    return p0
.end method

.method public final synthetic lambda$applySyncTransaction$0(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/WindowOrganizerController$CallerInfo;Ljava/lang/Boolean;)V
    .registers 13

    .line 294
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v1, "applySyncLegacy"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActionChain$Tracker;->startLegacy(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;

    move-result-object v5

    .line 295
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    .line 294
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Z)I

    .line 296
    iget-object p0, v2, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain$Tracker;->end()V

    .line 297
    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowOrganizerController;->setSyncReady(I)V

    return-void
.end method

.method public final synthetic lambda$applySyncTransaction$1(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V
    .registers 2

    .line 310
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    return-void
.end method

.method public final synthetic lambda$applySyncTransaction$2(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/WindowOrganizerController$CallerInfo;)V
    .registers 6

    .line 312
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v1, "applySyncLegacy"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActionChain$Tracker;->startLegacy(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I

    .line 314
    iget-object p1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p1}, Lcom/android/server/wm/ActionChain$Tracker;->end()V

    .line 315
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowOrganizerController;->setSyncReady(I)V

    return-void
.end method

.method public final synthetic lambda$applyTaskFragmentOperation$12(Lcom/android/server/wm/TaskFragment;Landroid/content/Intent;Lcom/android/server/wm/SafeActivityOptions;Landroid/os/IBinder;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/os/IBinder;)I
    .registers 15

    .line 1764
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    iget v5, p5, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    iget v6, p5, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p6

    .line 1765
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/ActivityStartController;->startActivityInTaskFragment(Lcom/android/server/wm/TaskFragment;Landroid/content/Intent;Lcom/android/server/wm/SafeActivityOptions;Landroid/os/IBinder;IILandroid/os/IBinder;)I

    move-result p0

    return p0
.end method

.method public final synthetic lambda$applyTaskFragmentOperation$13(Lcom/android/server/wm/TaskFragment;)V
    .registers 4

    .line 1876
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 1878
    :try_start_8
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_24

    .line 1879
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    if-ne v1, p1, :cond_24

    .line 1880
    const-string p1, "WindowOrganizerController"

    const-string v0, "The requested TaskFragment already has the focus."

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_22
    move-exception p1

    goto :goto_5a

    :cond_24
    if-eqz v0, :cond_3c

    .line 1883
    :try_start_26
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eq v0, v1, :cond_3c

    .line 1884
    const-string p1, "WindowOrganizerController"

    const-string v0, "The Task of the requested TaskFragment doesn\'t have focus."

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_26 .. :try_end_38} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1888
    :cond_3c
    :try_start_3c
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_4e

    .line 1890
    const-string p1, "WindowOrganizerController"

    const-string v0, "There is no resumed activity in the requested TaskFragment."

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_3c .. :try_end_4a} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1894
    :cond_4e
    :try_start_4e
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    .line 1895
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_4e .. :try_end_56} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_5a
    :try_start_5a
    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public final synthetic lambda$applyTaskFragmentTransactionLocked$5(Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/Transition;Lcom/android/server/wm/Transition$ReadyCondition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/window/RemoteTransition;Z)V
    .registers 15

    if-eqz p6, :cond_e

    .line 598
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->isValidTransaction(Landroid/window/WindowContainerTransaction;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 599
    invoke-virtual {p2}, Lcom/android/server/wm/Transition;->abort()V

    return-void

    .line 602
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v1, "tfTransact"

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/ActionChain$Tracker;->start(Ljava/lang/String;Lcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object v5

    .line 603
    iget-object v0, p2, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    invoke-virtual {v0, p3}, Lcom/android/server/wm/Transition$ReadyTracker;->add(Lcom/android/server/wm/Transition$ReadyCondition;)V

    const/4 v4, -0x1

    move-object v2, p0

    move-object v3, p1

    move-object v6, p4

    move v7, p6

    .line 604
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Z)I

    move-result p0

    .line 605
    iget-object p1, v2, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p1}, Lcom/android/server/wm/ActionChain$Tracker;->end()V

    if-nez p0, :cond_3d

    .line 606
    iget-object p0, p2, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3d

    if-nez p5, :cond_3d

    .line 610
    invoke-virtual {p2}, Lcom/android/server/wm/Transition;->abort()V

    return-void

    .line 613
    :cond_3d
    invoke-virtual {p3}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    .line 614
    iget-object p0, v2, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1, p5, p1}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 616
    invoke-virtual {v2, p2, v3}, Lcom/android/server/wm/WindowOrganizerController;->setAllReadyIfNeeded(Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public final synthetic lambda$reparentChildrenTasksHierarchyOp$16(Lcom/android/server/wm/WindowContainer;ZLcom/android/server/wm/TaskDisplayArea;Landroid/window/WindowContainerTransaction$HierarchyOp;Lcom/android/server/wm/WindowContainer;ZLjava/util/ArrayList;Lcom/android/server/wm/Task;)Z
    .registers 12

    .line 2335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Processing task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowOrganizerController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    iget-boolean v0, p8, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    const/4 v2, 0x0

    if-nez v0, :cond_94

    invoke-virtual {p8}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eq v0, p1, :cond_23

    goto/16 :goto_94

    :cond_23
    if-eqz p2, :cond_40

    .line 2342
    invoke-virtual {p8, p3}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result p1

    if-nez p1, :cond_40

    .line 2343
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "reparentChildrenTasksHierarchyOp non-resizeable task to multi window, task="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 2347
    :cond_40
    invoke-virtual {p4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityTypes()[I

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result p1

    if-nez p1, :cond_59

    .line 2348
    invoke-virtual {p4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityTypes()[I

    move-result-object p1

    invoke-virtual {p8}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p1

    if-nez p1, :cond_59

    return v2

    .line 2351
    :cond_59
    invoke-virtual {p4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getWindowingModes()[I

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result p1

    if-nez p1, :cond_72

    .line 2352
    invoke-virtual {p4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getWindowingModes()[I

    move-result-object p1

    .line 2353
    invoke-virtual {p8}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    move-result p2

    .line 2352
    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p1

    if-nez p1, :cond_72

    return v2

    .line 2356
    :cond_72
    invoke-virtual {p0, p5, p8, p6}, Lcom/android/server/wm/WindowOrganizerController;->isLockTaskModeViolation(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Task;Z)Z

    move-result p0

    if-eqz p0, :cond_79

    return v2

    .line 2360
    :cond_79
    invoke-virtual {p4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result p0

    if-eqz p0, :cond_83

    .line 2361
    invoke-virtual {p7, v2, p8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_86

    .line 2363
    :cond_83
    invoke-virtual {p7, p8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2365
    :goto_86
    invoke-virtual {p4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getReparentTopOnly()Z

    move-result p0

    if-eqz p0, :cond_94

    invoke-virtual {p7}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_94

    return p1

    :cond_94
    :goto_94
    return v2
.end method

.method public final synthetic lambda$startTransition$3(Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition$ReadyCondition;ZZ)V
    .registers 15

    .line 375
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v1, "startNewTransit"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActionChain$Tracker;->start(Ljava/lang/String;Lcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object v5

    .line 377
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->start()V

    .line 378
    iget-object v0, p1, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iput-object p2, v0, Lcom/android/server/wm/TransitionController$Logger;->mStartWCT:Landroid/window/WindowContainerTransaction;

    const/4 v4, -0x1

    move-object v2, p0

    move-object v3, p2

    move-object v6, p3

    move v7, p6

    .line 379
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Z)I

    .line 380
    invoke-virtual {p4}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    if-eqz p5, :cond_21

    .line 382
    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/WindowOrganizerController;->setAllReadyIfNeeded(Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;)V

    .line 384
    :cond_21
    iget-object p0, v2, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain$Tracker;->end()V

    return-void
.end method

.method public final synthetic lambda$startTransition$4(Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition$ReadyCondition;)V
    .registers 8

    .line 413
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 414
    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v2, "startTransit"

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/ActionChain$Tracker;->start(Ljava/lang/String;Lcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object v1

    .line 416
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->start()V

    const/4 p1, -0x1

    .line 417
    invoke-virtual {p0, p2, p1, v1, p3}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I

    if-eqz p4, :cond_21

    .line 419
    invoke-virtual {p4}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    goto :goto_21

    :catchall_1f
    move-exception p0

    goto :goto_2d

    .line 421
    :cond_21
    :goto_21
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain$Tracker;->end()V

    .line 422
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_2d
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$waitAsyncStart$15([Ljava/lang/Integer;Ljava/util/function/IntSupplier;)V
    .registers 5

    const/4 v0, 0x0

    .line 2162
    :try_start_1
    invoke-interface {p2}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_c

    goto :goto_1a

    :catchall_c
    move-exception p2

    const/16 v1, -0x60

    .line 2164
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    .line 2165
    const-string p1, "WindowOrganizerController"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2167
    :goto_1a
    iget-object p1, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    .line 2168
    :try_start_20
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2169
    monitor-exit p1
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2a
    move-exception p0

    :try_start_2b
    monitor-exit p1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    .line 235
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/window/IWindowOrganizerController$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    .line 237
    const-string p1, "WindowOrganizerController"

    invoke-static {p1, p0}, Lcom/android/server/wm/ActivityTaskManagerService;->logAndRethrowRuntimeExceptionOnTransact(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
    .registers 8

    .line 2518
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1b

    int-to-long v0, p1

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v3, 0x5aed84692c233a99L    # 1.0230191066375382E130

    const/4 v1, 0x1

    invoke-static {v2, v3, v4, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2519
    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    .line 2520
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/IWindowContainerTransactionCallback;

    .line 2523
    :try_start_27
    invoke-interface {v0, p1, p2}, Landroid/window/IWindowContainerTransactionCallback;->onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_4a

    :catch_2b
    move-exception v0

    .line 2525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to notify transaction ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") ready"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowOrganizerController"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2528
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2531
    :goto_4a
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final prepareSyncWithOrganizer(Landroid/window/IWindowContainerTransactionCallback;)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;
    .registers 4

    .line 2492
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    const-string v1, "Organizer"

    .line 2493
    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/BLASTSyncEngine;->prepareSyncSet(Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;Ljava/lang/String;)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object v0

    .line 2494
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    iget v1, v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public registerTransitionPlayer(Landroid/window/ITransitionPlayer;)V
    .registers 8

    .line 2536
    const-string v0, "registerTransitionPlayer()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2540
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2541
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2542
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2544
    :try_start_11
    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v4
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_2a

    .line 2545
    :try_start_17
    iget-object v5, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2546
    invoke-virtual {v5, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 2547
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TransitionController;->registerTransitionPlayer(Landroid/window/ITransitionPlayer;Lcom/android/server/wm/WindowProcessController;)V

    .line 2548
    monitor-exit v4
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_2c

    :try_start_23
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_2a

    .line 2550
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2a
    move-exception p0

    goto :goto_32

    :catchall_2c
    move-exception p0

    .line 2548
    :try_start_2d
    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    :try_start_2e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_2a

    .line 2550
    :goto_32
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2551
    throw p0
.end method

.method public final reparentChildrenTasksHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;Lcom/android/server/wm/Transition;IZ)I
    .registers 16

    .line 2290
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 2291
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_11

    :cond_10
    move-object v0, v1

    .line 2292
    :goto_11
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 2293
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    :cond_1f
    if-nez v0, :cond_3b

    if-eqz v1, :cond_24

    goto :goto_3b

    .line 2295
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "reparentChildrenTasksHierarchyOp: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    :goto_3b
    if-nez v0, :cond_4c

    .line 2297
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    :cond_49
    :goto_49
    move-object v4, v0

    move-object v8, v1

    goto :goto_5b

    :cond_4c
    if-nez v1, :cond_49

    .line 2299
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    goto :goto_49

    .line 2302
    :goto_5b
    const-string v0, "WindowOrganizerController"

    const/4 v1, 0x0

    if-ne v4, v8, :cond_75

    .line 2303
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "reparentChildrenTasksHierarchyOp parent not changing: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2306
    :cond_75
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v2

    const-string v3, " hop="

    if-nez v2, :cond_98

    .line 2307
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "reparentChildrenTasksHierarchyOp currentParent detached="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2311
    :cond_98
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v2

    if-nez v2, :cond_b9

    .line 2312
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "reparentChildrenTasksHierarchyOp newParent detached="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2316
    :cond_b9
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_da

    .line 2317
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "reparentChildrenTasksHierarchyOp newParent in PIP="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2322
    :cond_da
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v5

    .line 2323
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_ee

    .line 2324
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    :goto_ec
    move-object v6, v2

    goto :goto_f3

    .line 2325
    :cond_ee
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    goto :goto_ec

    .line 2328
    :goto_f3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reparentChildrenTasksHierarchyOp currentParent="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " newParent="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2332
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2334
    new-instance v2, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda11;

    move-object v3, p0

    move-object v7, p1

    move v9, p4

    invoke-direct/range {v2 .. v10}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/WindowContainer;ZLcom/android/server/wm/TaskDisplayArea;Landroid/window/WindowContainerTransaction$HierarchyOp;Lcom/android/server/wm/WindowContainer;ZLjava/util/ArrayList;)V

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Predicate;)Z

    .line 2368
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result p0

    move p1, v1

    :goto_12a
    if-ge p1, p0, :cond_162

    .line 2370
    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/wm/Task;

    if-ltz p3, :cond_137

    .line 2372
    invoke-virtual {v3, p3, p4}, Lcom/android/server/wm/WindowOrganizerController;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    :cond_137
    if-eqz p2, :cond_13c

    .line 2374
    invoke-virtual {p2, p4}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 2376
    :cond_13c
    instance-of v0, v8, Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v0, :cond_14b

    .line 2378
    move-object v0, v8

    check-cast v0, Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v7}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v2

    invoke-virtual {p4, v0, v2}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    goto :goto_15f

    .line 2380
    :cond_14b
    move-object v0, v8

    check-cast v0, Lcom/android/server/wm/Task;

    .line 2381
    invoke-virtual {v7}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v2

    if-eqz v2, :cond_158

    const v2, 0x7fffffff

    goto :goto_15a

    :cond_158
    const/high16 v2, -0x80000000

    :goto_15a
    const-string v4, "processChildrenTaskReparentHierarchyOp"

    .line 2380
    invoke-virtual {p4, v0, v2, v1, v4}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;IZLjava/lang/String;)V

    :goto_15f
    add-int/lit8 p1, p1, 0x1

    goto :goto_12a

    :cond_162
    if-eqz p2, :cond_167

    .line 2386
    invoke-virtual {p2, v8}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    :cond_167
    const/4 p0, 0x2

    return p0
.end method

.method public final sanitizeAndApplyHierarchyOpForDisplayArea(Lcom/android/server/wm/DisplayArea;Landroid/window/WindowContainerTransaction$HierarchyOp;)I
    .registers 4

    .line 2187
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_28

    .line 2190
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-nez p0, :cond_f

    const/4 p0, 0x0

    return p0

    .line 2193
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    .line 2194
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v0

    if-eqz v0, :cond_1d

    const v0, 0x7fffffff

    goto :goto_1f

    :cond_1d
    const/high16 v0, -0x80000000

    .line 2195
    :goto_1f
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->includingParents()Z

    move-result p2

    .line 2193
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    const/4 p0, 0x2

    return p0

    .line 2188
    :cond_28
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "DisplayArea only supports reordering"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final sanitizeAndApplyHierarchyOpForTask(Lcom/android/server/wm/Task;Landroid/window/WindowContainerTransaction$HierarchyOp;)I
    .registers 9

    .line 2201
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    .line 2202
    const-string v0, "WindowOrganizerController"

    const/4 v1, 0x0

    if-nez p0, :cond_1e

    .line 2203
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Container is no longer attached: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2208
    :cond_1e
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->isReparent()Z

    move-result v2

    const/high16 v3, -0x80000000

    const v4, 0x7fffffff

    if-eqz v2, :cond_125

    .line 2210
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v2

    if-nez v2, :cond_53

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v2, :cond_3c

    goto :goto_53

    .line 2254
    :cond_3c
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Reparenting leaf Tasks is not supported now. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2212
    :cond_53
    :goto_53
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_5e

    .line 2213
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    goto :goto_66

    .line 2214
    :cond_5e
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    :goto_66
    if-nez p0, :cond_6e

    .line 2216
    const-string p0, "Can\'t resolve parent window from token"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2219
    :cond_6e
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-eq v2, p0, :cond_10b

    .line 2220
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    if-eqz v2, :cond_87

    .line 2222
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result p2

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    goto/16 :goto_153

    .line 2223
    :cond_87
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_f4

    .line 2224
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_e5

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v2

    if-eqz v2, :cond_e5

    .line 2225
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v2

    const-string v5, " task="

    if-eqz v2, :cond_bc

    .line 2226
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t support moving a task to another PIP window... newParent="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2231
    :cond_bc
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 2230
    invoke-virtual {p1, v2}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v2

    if-nez v2, :cond_e5

    .line 2232
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t support task that doesn\'t support multi-window mode in multi-window mode... newParent="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2238
    :cond_e5
    check-cast p0, Lcom/android/server/wm/Task;

    .line 2239
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result p2

    if-eqz p2, :cond_ee

    move v3, v4

    :cond_ee
    const-string p2, "sanitizeAndApplyHierarchyOp"

    .line 2238
    invoke-virtual {p1, p0, v3, v1, p2}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;IZLjava/lang/String;)V

    goto :goto_153

    .line 2242
    :cond_f4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can only reparent task to another task or taskDisplayArea, but not "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2247
    :cond_10b
    instance-of v0, p0, Lcom/android/server/wm/TaskDisplayArea;

    if-nez v0, :cond_110

    goto :goto_114

    .line 2248
    :cond_110
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    :goto_114
    check-cast p0, Lcom/android/server/wm/Task;

    .line 2249
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    .line 2250
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result p2

    if-eqz p2, :cond_121

    move v3, v4

    .line 2249
    :cond_121
    invoke-virtual {p1, v3, p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    goto :goto_153

    .line 2257
    :cond_125
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result p0

    if-eqz p0, :cond_141

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result p0

    if-eqz p0, :cond_141

    .line 2259
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    .line 2258
    invoke-static {p0}, Lcom/android/server/wm/Task;->findEnterPipOnTaskSwitchCandidate(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    const/4 v0, 0x0

    .line 2260
    invoke-static {p0, p1, v0, v0}, Lcom/android/server/wm/Task;->enableEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    .line 2264
    :cond_141
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    .line 2265
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v0

    if-eqz v0, :cond_14c

    move v3, v4

    .line 2266
    :cond_14c
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->includingParents()Z

    move-result p2

    .line 2264
    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    :goto_153
    const/4 p0, 0x2

    return p0
.end method

.method public final sanitizeWindowContainer(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 2444
    instance-of p0, p1, Lcom/android/server/wm/TaskFragment;

    if-nez p0, :cond_11

    instance-of p0, p1, Lcom/android/server/wm/DisplayArea;

    if-eqz p0, :cond_9

    return-void

    .line 2445
    :cond_9
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Invalid token in task fragment or displayArea transaction"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    return-void
.end method

.method public sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V
    .registers 12

    if-eqz p1, :cond_f

    .line 2897
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 2898
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TaskFragmentOrganizerController;->onTaskFragmentError(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return-void

    .line 2895
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not allowed to operate with invalid organizer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setAdjacentRootsHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;)I
    .registers 7

    .line 2392
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainers()[Landroid/os/IBinder;

    move-result-object p0

    .line 2393
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 2394
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    if-ge v2, v0, :cond_8f

    aget-object v3, p0, v2

    .line 2395
    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-eqz v3, :cond_78

    .line 2396
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v4

    if-nez v4, :cond_1d

    goto :goto_78

    .line 2400
    :cond_1d
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_61

    .line 2406
    iget-boolean v3, v4, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v3, :cond_4a

    .line 2410
    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 2414
    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 2411
    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setAdjacentRootsHierarchyOp: called with same root twice="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2407
    :cond_4a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setAdjacentRootsHierarchyOp: Not created by organizer root="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2403
    :cond_61
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setAdjacentRootsHierarchyOp: Not called with Task. wc="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2397
    :cond_78
    :goto_78
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Attempt to operate on unknown or detached container: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowOrganizerController"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2416
    :cond_8f
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskFragment;

    .line 2417
    new-instance v0, Lcom/android/server/wm/TaskFragment$AdjacentSet;

    invoke-direct {v0, p1}, Lcom/android/server/wm/TaskFragment$AdjacentSet;-><init>(Landroid/util/ArraySet;)V

    .line 2418
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getAdjacentTaskFragments()Lcom/android/server/wm/TaskFragment$AdjacentSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskFragment$AdjacentSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a5

    return v1

    .line 2421
    :cond_a5
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->setAdjacentTaskFragments(Lcom/android/server/wm/TaskFragment$AdjacentSet;)V

    const/4 p0, 0x2

    return p0
.end method

.method public final setAllReadyIfNeeded(Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;)V
    .registers 4

    .line 476
    invoke-static {p2}, Lcom/android/server/wm/WindowOrganizerController;->hasActivityLaunch(Landroid/window/WindowContainerTransaction;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 477
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->allPausedActivitiesComplete()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_28

    .line 482
    :cond_11
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowOrganizerController;->isCreatedTaskFragmentReady(Landroid/window/WindowContainerTransaction;)Z

    move-result p2

    if-nez p2, :cond_18

    goto :goto_28

    .line 491
    :cond_18
    iget p2, p1, Lcom/android/server/wm/Transition;->mType:I

    const/16 v0, 0xe

    if-ne p2, v0, :cond_29

    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    .line 492
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackNavigationController;->restoreBackNavigationSetTransitionReady(Lcom/android/server/wm/Transition;)Z

    move-result p0

    if-eqz p0, :cond_29

    :goto_28
    return-void

    .line 497
    :cond_29
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->setAllReady()V

    return-void
.end method

.method public setSyncReady(I)V
    .registers 7

    .line 2507
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1b

    int-to-long v0, p1

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v3, 0x603e95f9b0c32d8L

    const/4 v1, 0x1

    invoke-static {v2, v3, v4, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2508
    :cond_1b
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/BLASTSyncEngine;->setReady(I)V

    return-void
.end method

.method public startNewTransition(ILandroid/window/WindowContainerTransaction;)Landroid/os/IBinder;
    .registers 4

    const/4 v0, 0x0

    .line 328
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/WindowOrganizerController;->startTransition(ILandroid/os/IBinder;Landroid/window/WindowContainerTransaction;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public startSyncWithOrganizer(Landroid/window/IWindowContainerTransactionCallback;)I
    .registers 2

    .line 2500
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowOrganizerController;->prepareSyncWithOrganizer(Landroid/window/IWindowContainerTransactionCallback;)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object p1

    .line 2501
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    .line 2502
    iget p0, p1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    return p0
.end method

.method public final startTransition(ILandroid/os/IBinder;Landroid/window/WindowContainerTransaction;)Landroid/os/IBinder;
    .registers 15

    .line 339
    const-string v0, "startTransition()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 340
    new-instance v5, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    invoke-direct {v5}, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;-><init>()V

    .line 341
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 343
    :try_start_e
    iget-object v10, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v10
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_128

    .line 344
    :try_start_14
    invoke-static {p2}, Lcom/android/server/wm/Transition;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/Transition;

    move-result-object v3

    .line 345
    iget-object p2, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p2}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p2, :cond_55

    if-nez v3, :cond_55

    .line 346
    const-string p1, "WindowOrganizerController"

    const-string p2, "Using shell transitions API for legacy transitions."

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_4d

    .line 351
    iget-object p1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string p2, "wrongLegacyTransit"

    .line 352
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActionChain$Tracker;->startLegacy(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;

    move-result-object p1

    .line 351
    invoke-virtual {p0, p3, v1, p1, v5}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I

    .line 353
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain$Tracker;->end()V

    .line 354
    monitor-exit v10
    :try_end_42
    .catchall {:try_start_14 .. :try_end_42} :catchall_49

    .line 439
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_49
    move-exception v0

    move-object p0, v0

    goto/16 :goto_123

    .line 348
    :cond_4d
    :try_start_4d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t use legacy transitions in compatibility mode with no WCT."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_55
    if-eqz p3, :cond_59

    move-object v4, p3

    goto :goto_5f

    .line 357
    :cond_59
    new-instance p2, Landroid/window/WindowContainerTransaction;

    invoke-direct {p2}, Landroid/window/WindowContainerTransaction;-><init>()V

    move-object v4, p2

    :goto_5f
    const/4 p2, 0x1

    if-nez v3, :cond_a9

    if-ltz p1, :cond_a1

    const/4 v0, 0x0

    if-eqz p3, :cond_69

    move v7, p2

    goto :goto_6a

    :cond_69
    move v7, v0

    .line 366
    :goto_6a
    new-instance v3, Lcom/android/server/wm/Transition;

    iget-object p3, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-direct {v3, p1, v0, p3, v1}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    .line 368
    new-instance v6, Lcom/android/server/wm/Transition$ReadyCondition;

    const-string p1, "start WCT applied"

    invoke-direct {v6, p1, p2}, Lcom/android/server/wm/Transition$ReadyCondition;-><init>(Ljava/lang/String;Z)V

    .line 370
    iget-object p1, v3, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    invoke-virtual {p1, v6}, Lcom/android/server/wm/Transition$ReadyTracker;->add(Lcom/android/server/wm/Transition$ReadyCondition;)V

    .line 371
    invoke-virtual {v3, v4}, Lcom/android/server/wm/Transition;->calcParallelCollectType(Landroid/window/WindowContainerTransaction;)V

    .line 372
    iget-object p1, v3, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iput-boolean p2, p1, Lcom/android/server/wm/TransitionController$Logger;->mFromPlayer:Z

    .line 373
    iget-object p1, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    new-instance v1, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda5;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition$ReadyCondition;Z)V

    invoke-virtual {p1, v3, v1, p2}, Lcom/android/server/wm/TransitionController;->startCollectOrQueue(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;Z)Z

    .line 386
    invoke-virtual {v3}, Lcom/android/server/wm/Transition;->getToken()Landroid/os/IBinder;

    move-result-object p0

    monitor-exit v10
    :try_end_9a
    .catchall {:try_start_4d .. :try_end_9a} :catchall_49

    .line 439
    :goto_9a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 360
    :cond_a1
    :try_start_a1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t create transition with no type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a9
    move-object v2, p0

    .line 390
    invoke-virtual {v3}, Lcom/android/server/wm/Transition;->isCollecting()Z

    move-result p0

    if-nez p0, :cond_da

    invoke-virtual {v3}, Lcom/android/server/wm/Transition;->isForcePlaying()Z

    move-result p0

    if-nez p0, :cond_da

    .line 391
    const-string p0, "WindowOrganizerController"

    const-string p1, "Trying to start a transition that isn\'t collecting. This probably means Shell took too long to respond to a request. WM State may be incorrect now, please file a bug"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object p0, v2, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string p1, "startTransit"

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActionChain$Tracker;->startFailsafe(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;

    move-result-object p0

    .line 395
    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain;->detachTransition()V

    .line 396
    invoke-virtual {v2, v4, v1, p0, v5}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I

    .line 397
    iget-object p0, v2, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain$Tracker;->end()V

    .line 398
    invoke-virtual {v3}, Lcom/android/server/wm/Transition;->getToken()Landroid/os/IBinder;

    move-result-object p0

    monitor-exit v10

    goto :goto_9a

    :cond_da
    if-eqz p3, :cond_e8

    .line 404
    new-instance v0, Lcom/android/server/wm/Transition$ReadyCondition;

    const-string p0, "start WCT applied"

    .line 405
    invoke-direct {v0, p0, p2}, Lcom/android/server/wm/Transition$ReadyCondition;-><init>(Ljava/lang/String;Z)V

    .line 406
    iget-object p0, v3, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Transition$ReadyTracker;->add(Lcom/android/server/wm/Transition$ReadyCondition;)V

    :cond_e8
    move-object v6, v0

    .line 410
    iget-object p0, v3, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iput-object v4, p0, Lcom/android/server/wm/TransitionController$Logger;->mStartWCT:Landroid/window/WindowContainerTransaction;

    .line 411
    invoke-virtual {v3}, Lcom/android/server/wm/Transition;->shouldApplyOnDisplayThread()Z

    move-result p0

    if-eqz p0, :cond_100

    .line 412
    iget-object p0, v2, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda6;

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition$ReadyCondition;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_11c

    .line 425
    :cond_100
    iget-object p0, v2, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string p1, "startTransit"

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/ActionChain$Tracker;->start(Ljava/lang/String;Lcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object p0

    .line 427
    invoke-virtual {v3}, Lcom/android/server/wm/Transition;->start()V

    .line 428
    invoke-virtual {v2, v4, v1, p0, v5}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/ActionChain;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I

    if-eqz v6, :cond_115

    .line 430
    invoke-virtual {v6}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    .line 432
    :cond_115
    iget-object p0, v2, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain$Tracker;->end()V

    .line 436
    :goto_11c
    invoke-virtual {v3}, Lcom/android/server/wm/Transition;->getToken()Landroid/os/IBinder;

    move-result-object p0

    monitor-exit v10

    goto/16 :goto_9a

    .line 437
    :goto_123
    monitor-exit v10
    :try_end_124
    .catchall {:try_start_a1 .. :try_end_124} :catchall_49

    :try_start_124
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_128
    .catchall {:try_start_124 .. :try_end_128} :catchall_128

    :catchall_128
    move-exception v0

    move-object p0, v0

    .line 439
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 440
    throw p0
.end method

.method public startTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;)V
    .registers 4

    const/4 v0, -0x1

    .line 334
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/WindowOrganizerController;->startTransition(ILandroid/os/IBinder;Landroid/window/WindowContainerTransaction;)Landroid/os/IBinder;

    return-void
.end method

.method public unregisterTransitionPlayer(Landroid/window/ITransitionPlayer;)V
    .registers 5

    .line 2556
    const-string v0, "unregisterTransitionPlayer()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2560
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2562
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_1c

    .line 2563
    :try_start_f
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->unregisterTransitionPlayer(Landroid/window/ITransitionPlayer;)V

    .line 2564
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_1e

    :try_start_15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1c

    .line 2566
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1c
    move-exception p0

    goto :goto_24

    :catchall_1e
    move-exception p0

    .line 2564
    :try_start_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    :try_start_20
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_1c

    .line 2566
    :goto_24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2567
    throw p0
.end method

.method public final validateTaskFragment(Lcom/android/server/wm/TaskFragment;ILandroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;)Z
    .registers 14

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 2125
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v1

    if-nez v1, :cond_f

    :cond_9
    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move-object v4, p3

    move-object v3, p4

    goto :goto_2f

    .line 2133
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskFragmentInPip()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2e

    if-ne p2, v2, :cond_1e

    .line 2137
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 2138
    :cond_1e
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not allowed to apply operation on PIP TaskFragment"

    invoke-direct {v8, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    move-object v5, p3

    move-object v4, p4

    .line 2140
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return v0

    :cond_2e
    return v2

    .line 2127
    :goto_2f
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Not allowed to apply operation on invalid fragment tokens opType="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v7, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2129
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return v0
.end method

.method public final validateTaskFragmentOperation(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;)Z
    .registers 11

    .line 2085
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getTaskFragmentOperation()Landroid/window/TaskFragmentOperation;

    move-result-object v0

    .line 2086
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object p1

    .line 2087
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/android/server/wm/TaskFragment;

    const/4 p1, 0x0

    if-nez v0, :cond_23

    .line 2089
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v0, "TaskFragmentOperation must be non-null"

    invoke-direct {v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v5, -0x1

    move-object v1, p0

    move-object v3, p2

    move-object v2, p3

    .line 2091
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return p1

    :cond_23
    move-object v1, p0

    move-object v3, p2

    move-object v2, p3

    .line 2095
    invoke-virtual {v0}, Landroid/window/TaskFragmentOperation;->getOpType()I

    move-result v5

    const/16 p0, 0x3e8

    if-lt v5, p0, :cond_54

    .line 2097
    iget-object p0, v1, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 2098
    invoke-interface {v2}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskFragmentOrganizerController;->isSystemOrganizer(Landroid/os/IBinder;)Z

    move-result p0

    if-nez p0, :cond_54

    .line 2099
    new-instance v6, Ljava/lang/SecurityException;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Only a system organizer can perform privileged operations. opType="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v6, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 2102
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return p1

    :cond_54
    const/4 p0, 0x1

    if-nez v5, :cond_58

    return p0

    .line 2112
    :cond_58
    invoke-virtual {v1, v4, v5, v3, v2}, Lcom/android/server/wm/WindowOrganizerController;->validateTaskFragment(Lcom/android/server/wm/TaskFragment;ILandroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;)Z

    move-result p2

    if-nez p2, :cond_5f

    return p1

    .line 2116
    :cond_5f
    invoke-virtual {v0}, Landroid/window/TaskFragmentOperation;->getSecondaryFragmentToken()Landroid/os/IBinder;

    move-result-object p2

    if-eqz p2, :cond_75

    .line 2117
    iget-object p3, v1, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    .line 2118
    invoke-virtual {p3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/TaskFragment;

    invoke-virtual {v1, p2, v5, v3, v2}, Lcom/android/server/wm/WindowOrganizerController;->validateTaskFragment(Lcom/android/server/wm/TaskFragment;ILandroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;)Z

    move-result p2

    if-eqz p2, :cond_74

    goto :goto_75

    :cond_74
    return p1

    :cond_75
    :goto_75
    return p0
.end method

.method public final waitAsyncStart(Ljava/util/function/IntSupplier;)I
    .registers 5

    const/4 v0, 0x0

    .line 2152
    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    .line 2153
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1a

    .line 2157
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    goto :goto_1e

    .line 2159
    :cond_1a
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 2160
    :goto_1e
    new-instance v2, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/wm/WindowOrganizerController;[Ljava/lang/Integer;Ljava/util/function/IntSupplier;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2172
    :try_start_26
    iget-object p1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p1}, Lcom/android/server/wm/ActionChain$Tracker;->pushAsyncStart()V

    :catch_2d
    :goto_2d
    const/4 p1, 0x0

    .line 2173
    aget-object v1, v0, p1
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_38

    if-nez v1, :cond_3a

    .line 2175
    :try_start_32
    iget-object p1, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_37} :catch_2d
    .catchall {:try_start_32 .. :try_end_37} :catchall_38

    goto :goto_2d

    :catchall_38
    move-exception p1

    goto :goto_48

    .line 2180
    :cond_3a
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain$Tracker;->popAsyncStart()V

    .line 2182
    aget-object p0, v0, p1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 2180
    :goto_48
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain$Tracker;->popAsyncStart()V

    .line 2181
    throw p1
.end method
