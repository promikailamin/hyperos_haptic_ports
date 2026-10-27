.class Lcom/android/server/wm/WindowOrganizerController;
.super Landroid/window/IWindowOrganizerController$Stub;
.source "WindowOrganizerController.java"

# interfaces
.implements Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    }
.end annotation


# static fields
.field static final CONTROLLABLE_CONFIGS:I = 0x20002c00

.field static final CONTROLLABLE_WINDOW_CONFIGS:I = 0x3

.field private static final PERMISSION_ACTIVITY:Ljava/lang/String; = "com.android.packageinstaller.permission.ui.GrantPermissionsActivity"

.field private static final TAG:Ljava/lang/String; = "WindowOrganizerController"

.field private static final TRANSACT_EFFECTS_CLIENT_CONFIG:I = 0x1

.field private static final TRANSACT_EFFECTS_LIFECYCLE:I = 0x2


# instance fields
.field final mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

.field private final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

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

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field final mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

.field final mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/window/IWindowContainerTransactionCallback;",
            ">;"
        }
    .end annotation
.end field

.field mTransitionController:Lcom/android/server/wm/TransitionController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3
    .param p1, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 152
    invoke-direct {p0}, Landroid/window/IWindowOrganizerController$Stub;-><init>()V

    .line 133
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTmpBounds:Landroid/graphics/Rect;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    .line 147
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    .line 153
    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 154
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 155
    new-instance v0, Lcom/android/server/wm/TaskOrganizerController;

    invoke-direct {v0, p1}, Lcom/android/server/wm/TaskOrganizerController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 156
    new-instance v0, Lcom/android/server/wm/DisplayAreaOrganizerController;

    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayAreaOrganizerController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    .line 157
    new-instance v0, Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-direct {v0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 158
    return-void
.end method

.method private adjustBoundsForMinDimensionsIfNeeded(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;Landroid/os/IBinder;)V
    .registers 10
    .param p2, "change"    # Landroid/window/WindowContainerTransaction$Change;
    .param p3, "errorCallbackToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;",
            "Landroid/window/WindowContainerTransaction$Change;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .line 599
    .local p1, "container":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    .line 600
    .local v0, "taskFragment":Lcom/android/server/wm/TaskFragment;
    if-eqz v0, :cond_54

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_54

    .line 603
    :cond_d
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getWindowSetMask()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_16

    .line 604
    return-void

    .line 606
    :cond_16
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 607
    .local v1, "winConfig":Landroid/app/WindowConfiguration;
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 608
    .local v2, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->calculateMinDimension()Landroid/graphics/Point;

    move-result-object v3

    .line 609
    .local v3, "minDimensions":Landroid/graphics/Point;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, v3, Landroid/graphics/Point;->x:I

    if-lt v4, v5, :cond_34

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, v3, Landroid/graphics/Point;->y:I

    if-ge v4, v5, :cond_53

    .line 610
    :cond_34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBounds:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v3, p3, v4}, Lcom/android/server/wm/WindowOrganizerController;->sendMinimumDimensionViolation(Lcom/android/server/wm/TaskFragment;Landroid/graphics/Point;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 613
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v4}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 615
    :cond_53
    return-void

    .line 601
    .end local v1    # "winConfig":Landroid/app/WindowConfiguration;
    .end local v2    # "bounds":Landroid/graphics/Rect;
    .end local v3    # "minDimensions":Landroid/graphics/Point;
    :cond_54
    :goto_54
    return-void
.end method

.method private applyChanges(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;Landroid/os/IBinder;)I
    .registers 11
    .param p2, "change"    # Landroid/window/WindowContainerTransaction$Change;
    .param p3, "errorCallbackToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;",
            "Landroid/window/WindowContainerTransaction$Change;",
            "Landroid/os/IBinder;",
            ")I"
        }
    .end annotation

    .line 531
    .local p1, "container":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getConfigSetMask()I

    move-result v0

    const v1, 0x20002c00

    and-int/2addr v0, v1

    .line 532
    .local v0, "configMask":I
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getWindowSetMask()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    .line 533
    .local v1, "windowMask":I
    const/4 v2, 0x0

    .line 534
    .local v2, "effects":I
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getWindowingMode()I

    move-result v3

    .line 535
    .local v3, "windowingMode":I
    const/4 v4, -0x1

    if-eqz v0, :cond_52

    .line 537
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/WindowOrganizerController;->adjustBoundsForMinDimensionsIfNeeded(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;Landroid/os/IBinder;)V

    .line 539
    if-le v3, v4, :cond_2d

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getWindowingMode()I

    move-result v5

    if-eq v3, v5, :cond_2d

    .line 545
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 546
    .local v5, "c":Landroid/content/res/Configuration;
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v5, v6, v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;II)V

    .line 547
    .end local v5    # "c":Landroid/content/res/Configuration;
    goto :goto_40

    .line 548
    :cond_2d
    new-instance v5, Landroid/content/res/Configuration;

    .line 549
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 550
    .restart local v5    # "c":Landroid/content/res/Configuration;
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v5, v6, v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;II)V

    .line 551
    invoke-virtual {p1, v5}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 553
    .end local v5    # "c":Landroid/content/res/Configuration;
    :goto_40
    or-int/lit8 v2, v2, 0x1

    .line 556
    if-eqz v1, :cond_52

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isEmbedded()Z

    move-result v5

    if-eqz v5, :cond_52

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->inFreeformSmallWinMode()Z

    move-result v5

    if-nez v5, :cond_52

    .line 559
    or-int/lit8 v2, v2, 0x2

    .line 562
    :cond_52
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_66

    .line 563
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getFocusable()Z

    move-result v5

    invoke-virtual {p1, v5}, Lcom/android/server/wm/WindowContainer;->setFocusable(Z)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 564
    or-int/lit8 v2, v2, 0x2

    .line 568
    :cond_66
    if-le v3, v4, :cond_a6

    .line 569
    iget-object v5, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->isInLockTaskMode()Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 570
    invoke-static {v3}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v5

    if-nez v5, :cond_77

    goto :goto_7f

    .line 571
    :cond_77
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Not supported to set multi-window windowing mode during locked task mode."

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 576
    :cond_7f
    :goto_7f
    instance-of v5, p1, Lcom/android/server/wm/Task;

    if-eqz v5, :cond_97

    .line 577
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getWindowingMode()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_97

    .line 578
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getActivityWindowingMode()I

    move-result v5

    .line 579
    .local v5, "childWindowingMode":I
    if-le v5, v4, :cond_97

    .line 580
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/server/wm/Task;->setActivityWindowingMode(I)V

    .line 585
    .end local v5    # "childWindowingMode":I
    :cond_97
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getWindowingMode()I

    move-result v4

    .line 586
    .local v4, "prevMode":I
    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowContainer;->setWindowingMode(I)V

    .line 587
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getWindowingMode()I

    move-result v5

    if-eq v4, v5, :cond_a6

    .line 591
    or-int/lit8 v2, v2, 0x2

    .line 594
    .end local v4    # "prevMode":I
    :cond_a6
    return v2
.end method

.method private applyDisplayAreaChanges(Lcom/android/server/wm/DisplayArea;Landroid/window/WindowContainerTransaction$Change;)I
    .registers 6
    .param p1, "displayArea"    # Lcom/android/server/wm/DisplayArea;
    .param p2, "c"    # Landroid/window/WindowContainerTransaction$Change;

    .line 646
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 647
    .local v0, "effects":[I
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/wm/WindowOrganizerController;->applyChanges(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;Landroid/os/IBinder;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 649
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_23

    .line 651
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getIgnoreOrientationRequest()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/DisplayArea;->setIgnoreOrientationRequest(Z)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 652
    aget v1, v0, v2

    or-int/lit8 v1, v1, 0x2

    aput v1, v0, v2

    .line 656
    :cond_23
    new-instance v1, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda11;

    invoke-direct {v1, p2, v0}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda11;-><init>(Landroid/window/WindowContainerTransaction$Change;[I)V

    invoke-virtual {p1, v1}, Lcom/android/server/wm/DisplayArea;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 665
    aget v1, v0, v2

    return v1
.end method

.method private applyHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;IILcom/android/server/wm/Transition;ZLcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/Transition;)I
    .registers 40
    .param p1, "hop"    # Landroid/window/WindowContainerTransaction$HierarchyOp;
    .param p2, "effects"    # I
    .param p3, "syncId"    # I
    .param p4, "transition"    # Lcom/android/server/wm/Transition;
    .param p5, "isInLockTaskMode"    # Z
    .param p6, "caller"    # Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .param p7, "errorCallbackToken"    # Landroid/os/IBinder;
    .param p8, "organizer"    # Landroid/window/ITaskFragmentOrganizer;
    .param p9, "finishTransition"    # Lcom/android/server/wm/Transition;

    .line 711
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    move-object/from16 v15, p7

    move-object/from16 v14, p8

    move-object/from16 v13, p9

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v19

    .line 712
    .local v19, "type":I
    const-string v0, "Cannot set non-task as launch root: "

    const-string v12, "Attempt to operate on detached container: "

    const-string v11, "Attempt to operate on unknown or detached container: "

    const/4 v4, 0x0

    const-string v2, "WindowOrganizerController"

    sparse-switch v19, :sswitch_data_75a

    .line 937
    move-object v8, v2

    move-object v13, v12

    move-object v9, v14

    move-object v7, v15

    const/16 v20, 0x0

    move-object v14, v11

    if-eqz p5, :cond_527

    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skip applying hierarchy operation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " while in lock task mode"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    return p2

    .line 927
    :sswitch_49
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v0

    .line 928
    invoke-interface/range {p8 .. p8}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 927
    invoke-interface {v0, v1}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->removeOrganizerForEmbeddingDivider(Landroid/os/IBinder;)V

    .line 929
    move-object v8, v2

    move-object v1, v7

    move-object v13, v12

    move-object v9, v14

    move-object v2, v15

    const/16 v20, 0x0

    move-object v14, v11

    goto/16 :goto_52a

    .line 903
    :sswitch_5e
    iget-object v0, v6, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskFragment;

    .line 904
    .local v0, "tf":Lcom/android/server/wm/TaskFragment;
    if-eqz v0, :cond_d2

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v1

    if-nez v1, :cond_74

    goto/16 :goto_d2

    .line 908
    :cond_74
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 909
    .local v1, "curFocus":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_91

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v5

    if-ne v5, v0, :cond_91

    .line 910
    const-string v5, "The requested TaskFragment already has the focus."

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    move-object v8, v2

    move-object v1, v7

    move-object v13, v12

    move-object v9, v14

    move-object v2, v15

    const/16 v20, 0x0

    move-object v14, v11

    goto/16 :goto_52a

    .line 913
    :cond_91
    if-eqz v1, :cond_ac

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eq v5, v3, :cond_ac

    .line 914
    const-string v3, "The Task of the requested TaskFragment doesn\'t have focus."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    move-object v8, v2

    move-object v1, v7

    move-object v13, v12

    move-object v9, v14

    move-object v2, v15

    const/16 v20, 0x0

    move-object v14, v11

    goto/16 :goto_52a

    .line 917
    :cond_ac
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 918
    .local v3, "targetFocus":Lcom/android/server/wm/ActivityRecord;
    if-nez v3, :cond_c1

    .line 919
    const-string v5, "There is no resumed activity in the requested TaskFragment."

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    move-object v8, v2

    move-object v1, v7

    move-object v13, v12

    move-object v9, v14

    move-object v2, v15

    const/16 v20, 0x0

    move-object v14, v11

    goto/16 :goto_52a

    .line 922
    :cond_c1
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    .line 923
    move-object v8, v2

    move-object v1, v7

    move-object v13, v12

    move-object v9, v14

    move-object v2, v15

    const/16 v20, 0x0

    move-object v14, v11

    goto/16 :goto_52a

    .line 905
    .end local v1    # "curFocus":Lcom/android/server/wm/ActivityRecord;
    .end local v3    # "targetFocus":Lcom/android/server/wm/ActivityRecord;
    :cond_d2
    :goto_d2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    move-object v8, v2

    move-object v1, v7

    move-object v13, v12

    move-object v9, v14

    move-object v2, v15

    const/16 v20, 0x0

    move-object v14, v11

    goto/16 :goto_52a

    .line 851
    .end local v0    # "tf":Lcom/android/server/wm/TaskFragment;
    :sswitch_f0
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v3

    .line 852
    .local v3, "fragmentToken":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getAdjacentRoot()Landroid/os/IBinder;

    move-result-object v1

    .line 853
    .local v1, "adjacentFragmentToken":Landroid/os/IBinder;
    iget-object v0, v6, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskFragment;

    .line 854
    .local v0, "tf1":Lcom/android/server/wm/TaskFragment;
    if-eqz v1, :cond_10b

    .line 855
    iget-object v5, v6, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/TaskFragment;

    goto :goto_10c

    .line 856
    :cond_10b
    const/4 v5, 0x0

    :goto_10c
    nop

    .line 857
    .local v5, "tf2":Lcom/android/server/wm/TaskFragment;
    if-eqz v0, :cond_1d2

    if-eqz v1, :cond_120

    if-nez v5, :cond_120

    move-object/from16 v21, v0

    move-object/from16 v16, v1

    move-object v8, v2

    move-object/from16 v22, v3

    move-object/from16 v17, v5

    const/16 v20, 0x0

    goto/16 :goto_1dd

    .line 863
    :cond_120
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskFragmentInPip()Z

    move-result v17

    if-nez v17, :cond_1aa

    if-eqz v5, :cond_132

    .line 864
    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskFragmentInPip()Z

    move-result v17

    if-eqz v17, :cond_132

    move-object/from16 v16, v1

    goto/16 :goto_1ac

    .line 870
    :cond_132
    invoke-virtual {v0, v5, v4}, Lcom/android/server/wm/TaskFragment;->setAdjacentTaskFragment(Lcom/android/server/wm/TaskFragment;Z)V

    .line 873
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->inFreeformWindowingMode()Z

    move-result v17

    if-nez v17, :cond_146

    if-eqz v5, :cond_143

    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->inFreeformWindowingMode()Z

    move-result v17

    if-nez v17, :cond_146

    .line 874
    :cond_143
    or-int/lit8 v17, p2, 0x2

    .end local p2    # "effects":I
    .local v17, "effects":I
    goto :goto_148

    .line 880
    .end local v17    # "effects":I
    .restart local p2    # "effects":I
    :cond_146
    move/from16 v17, p2

    .end local p2    # "effects":I
    .restart local v17    # "effects":I
    :goto_148
    if-nez v5, :cond_176

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_176

    .line 881
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/TaskFragment;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-eqz v4, :cond_172

    .line 882
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v16

    if-nez v16, :cond_16f

    .line 883
    move-object/from16 v16, v1

    .end local v1    # "adjacentFragmentToken":Landroid/os/IBinder;
    .local v16, "adjacentFragmentToken":Landroid/os/IBinder;
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    goto :goto_179

    .line 882
    .end local v16    # "adjacentFragmentToken":Landroid/os/IBinder;
    .restart local v1    # "adjacentFragmentToken":Landroid/os/IBinder;
    :cond_16f
    move-object/from16 v16, v1

    .end local v1    # "adjacentFragmentToken":Landroid/os/IBinder;
    .restart local v16    # "adjacentFragmentToken":Landroid/os/IBinder;
    goto :goto_179

    .line 881
    .end local v16    # "adjacentFragmentToken":Landroid/os/IBinder;
    .restart local v1    # "adjacentFragmentToken":Landroid/os/IBinder;
    :cond_172
    move-object/from16 v16, v1

    const/4 v4, 0x0

    .end local v1    # "adjacentFragmentToken":Landroid/os/IBinder;
    .restart local v16    # "adjacentFragmentToken":Landroid/os/IBinder;
    goto :goto_179

    .line 880
    .end local v16    # "adjacentFragmentToken":Landroid/os/IBinder;
    .restart local v1    # "adjacentFragmentToken":Landroid/os/IBinder;
    :cond_176
    move-object/from16 v16, v1

    const/4 v4, 0x0

    .line 886
    .end local v1    # "adjacentFragmentToken":Landroid/os/IBinder;
    .restart local v16    # "adjacentFragmentToken":Landroid/os/IBinder;
    :goto_179
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v1

    .line 888
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_185

    new-instance v4, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;

    invoke-direct {v4, v1}, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;-><init>(Landroid/os/Bundle;)V

    goto :goto_186

    .line 889
    :cond_185
    const/4 v4, 0x0

    :goto_186
    nop

    .line 890
    .local v4, "adjacentParams":Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;
    if-nez v4, :cond_18a

    .line 891
    goto :goto_19e

    .line 894
    :cond_18a
    nop

    .line 895
    move-object/from16 p2, v1

    .end local v1    # "bundle":Landroid/os/Bundle;
    .local p2, "bundle":Landroid/os/Bundle;
    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->shouldDelayPrimaryLastActivityRemoval()Z

    move-result v1

    .line 894
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskFragment;->setDelayLastActivityRemoval(Z)V

    .line 896
    if-eqz v5, :cond_19e

    .line 897
    nop

    .line 898
    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->shouldDelaySecondaryLastActivityRemoval()Z

    move-result v1

    .line 897
    invoke-virtual {v5, v1}, Lcom/android/server/wm/TaskFragment;->setDelayLastActivityRemoval(Z)V

    .line 945
    .end local v0    # "tf1":Lcom/android/server/wm/TaskFragment;
    .end local v3    # "fragmentToken":Landroid/os/IBinder;
    .end local v4    # "adjacentParams":Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;
    .end local v5    # "tf2":Lcom/android/server/wm/TaskFragment;
    .end local v16    # "adjacentFragmentToken":Landroid/os/IBinder;
    .end local p2    # "bundle":Landroid/os/Bundle;
    :cond_19e
    :goto_19e
    move-object v8, v2

    move-object v1, v7

    move-object v13, v12

    move-object v9, v14

    move-object v2, v15

    move/from16 v0, v17

    const/16 v20, 0x0

    move-object v14, v11

    goto/16 :goto_52c

    .line 863
    .end local v17    # "effects":I
    .restart local v0    # "tf1":Lcom/android/server/wm/TaskFragment;
    .local v1, "adjacentFragmentToken":Landroid/os/IBinder;
    .restart local v3    # "fragmentToken":Landroid/os/IBinder;
    .restart local v5    # "tf2":Lcom/android/server/wm/TaskFragment;
    .local p2, "effects":I
    :cond_1aa
    move-object/from16 v16, v1

    .line 865
    .end local v1    # "adjacentFragmentToken":Landroid/os/IBinder;
    .restart local v16    # "adjacentFragmentToken":Landroid/os/IBinder;
    :goto_1ac
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Not allowed to set adjacent on TaskFragment in PIP Task"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object/from16 v17, v5

    .end local v5    # "tf2":Lcom/android/server/wm/TaskFragment;
    .local v17, "tf2":Lcom/android/server/wm/TaskFragment;
    move-object v5, v1

    .line 867
    .local v5, "exception":Ljava/lang/Throwable;
    move-object/from16 v21, v0

    .end local v0    # "tf1":Lcom/android/server/wm/TaskFragment;
    .local v21, "tf1":Lcom/android/server/wm/TaskFragment;
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object v4, v2

    move-object/from16 v2, p7

    move-object/from16 v22, v3

    const/16 v20, 0x0

    .end local v3    # "fragmentToken":Landroid/os/IBinder;
    .local v22, "fragmentToken":Landroid/os/IBinder;
    move-object/from16 v3, v21

    move-object v8, v4

    move/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 868
    move-object v1, v7

    move-object v13, v12

    move-object v9, v14

    move-object v2, v15

    move-object v14, v11

    goto/16 :goto_52a

    .line 857
    .end local v16    # "adjacentFragmentToken":Landroid/os/IBinder;
    .end local v17    # "tf2":Lcom/android/server/wm/TaskFragment;
    .end local v21    # "tf1":Lcom/android/server/wm/TaskFragment;
    .end local v22    # "fragmentToken":Landroid/os/IBinder;
    .restart local v0    # "tf1":Lcom/android/server/wm/TaskFragment;
    .restart local v1    # "adjacentFragmentToken":Landroid/os/IBinder;
    .restart local v3    # "fragmentToken":Landroid/os/IBinder;
    .local v5, "tf2":Lcom/android/server/wm/TaskFragment;
    :cond_1d2
    move-object/from16 v21, v0

    move-object/from16 v16, v1

    move-object v8, v2

    move-object/from16 v22, v3

    move-object/from16 v17, v5

    const/16 v20, 0x0

    .line 858
    .end local v0    # "tf1":Lcom/android/server/wm/TaskFragment;
    .end local v1    # "adjacentFragmentToken":Landroid/os/IBinder;
    .end local v3    # "fragmentToken":Landroid/os/IBinder;
    .end local v5    # "tf2":Lcom/android/server/wm/TaskFragment;
    .restart local v16    # "adjacentFragmentToken":Landroid/os/IBinder;
    .restart local v17    # "tf2":Lcom/android/server/wm/TaskFragment;
    .restart local v21    # "tf1":Lcom/android/server/wm/TaskFragment;
    .restart local v22    # "fragmentToken":Landroid/os/IBinder;
    :goto_1dd
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not allowed to set adjacent on invalid fragment tokens"

    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 860
    .local v5, "exception":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p7

    move-object/from16 v3, v21

    move/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 861
    move-object v1, v7

    move-object v13, v12

    move-object v9, v14

    move-object v2, v15

    move-object v14, v11

    goto/16 :goto_52a

    .line 807
    .end local v5    # "exception":Ljava/lang/Throwable;
    .end local v16    # "adjacentFragmentToken":Landroid/os/IBinder;
    .end local v17    # "tf2":Lcom/android/server/wm/TaskFragment;
    .end local v21    # "tf1":Lcom/android/server/wm/TaskFragment;
    .end local v22    # "fragmentToken":Landroid/os/IBinder;
    :sswitch_1f8
    move-object v8, v2

    const/16 v20, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v4

    .line 808
    .local v4, "fragmentToken":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v3

    .line 809
    .local v3, "activityToken":Landroid/os/IBinder;
    invoke-static {v3}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 810
    .local v0, "activity":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_211

    .line 813
    iget-object v1, v6, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 814
    invoke-virtual {v1, v14, v3}, Lcom/android/server/wm/TaskFragmentOrganizerController;->getReparentActivityFromTemporaryToken(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    move-object v2, v0

    goto :goto_212

    .line 810
    :cond_211
    move-object v2, v0

    .line 816
    .end local v0    # "activity":Lcom/android/server/wm/ActivityRecord;
    .local v2, "activity":Lcom/android/server/wm/ActivityRecord;
    :goto_212
    iget-object v0, v6, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/wm/TaskFragment;

    .line 817
    .local v1, "parent":Lcom/android/server/wm/TaskFragment;
    if-eqz v1, :cond_2df

    if-nez v2, :cond_229

    move-object/from16 v18, v3

    move-object/from16 v21, v4

    move-object/from16 v17, v11

    move-object v4, v1

    move-object v11, v2

    goto/16 :goto_2e7

    .line 823
    :cond_229
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-ne v1, v0, :cond_24c

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt to reparent activity to the current parent r="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    move-object v1, v7

    move-object v13, v12

    move-object v9, v14

    move-object v2, v15

    move-object v14, v11

    goto/16 :goto_52a

    .line 827
    :cond_24c
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskFragmentInPip()Z

    move-result v0

    if-eqz v0, :cond_277

    .line 828
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not allowed to reparent activity to PIP TaskFragment"

    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 830
    .restart local v5    # "exception":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    move-object/from16 v16, v1

    .end local v1    # "parent":Lcom/android/server/wm/TaskFragment;
    .local v16, "parent":Lcom/android/server/wm/TaskFragment;
    move-object/from16 v1, p8

    move-object/from16 v17, v11

    move-object v11, v2

    .end local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    .local v11, "activity":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v2, p7

    move-object/from16 v18, v3

    .end local v3    # "activityToken":Landroid/os/IBinder;
    .local v18, "activityToken":Landroid/os/IBinder;
    move-object/from16 v3, v16

    move-object/from16 v21, v4

    .end local v4    # "fragmentToken":Landroid/os/IBinder;
    .local v21, "fragmentToken":Landroid/os/IBinder;
    move/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 831
    move-object v1, v7

    move-object v13, v12

    move-object v9, v14

    move-object v2, v15

    move-object/from16 v14, v17

    goto/16 :goto_52a

    .line 833
    .end local v5    # "exception":Ljava/lang/Throwable;
    .end local v11    # "activity":Lcom/android/server/wm/ActivityRecord;
    .end local v16    # "parent":Lcom/android/server/wm/TaskFragment;
    .end local v18    # "activityToken":Landroid/os/IBinder;
    .end local v21    # "fragmentToken":Landroid/os/IBinder;
    .restart local v1    # "parent":Lcom/android/server/wm/TaskFragment;
    .restart local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    .restart local v3    # "activityToken":Landroid/os/IBinder;
    .restart local v4    # "fragmentToken":Landroid/os/IBinder;
    :cond_277
    move-object/from16 v16, v1

    move-object/from16 v18, v3

    move-object/from16 v21, v4

    move-object/from16 v17, v11

    move-object v11, v2

    .end local v1    # "parent":Lcom/android/server/wm/TaskFragment;
    .end local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    .end local v3    # "activityToken":Landroid/os/IBinder;
    .end local v4    # "fragmentToken":Landroid/os/IBinder;
    .restart local v11    # "activity":Lcom/android/server/wm/ActivityRecord;
    .restart local v16    # "parent":Lcom/android/server/wm/TaskFragment;
    .restart local v18    # "activityToken":Landroid/os/IBinder;
    .restart local v21    # "fragmentToken":Landroid/os/IBinder;
    move-object/from16 v4, v16

    .end local v16    # "parent":Lcom/android/server/wm/TaskFragment;
    .local v4, "parent":Lcom/android/server/wm/TaskFragment;
    invoke-virtual {v4, v11}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivity(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    if-eqz v0, :cond_2a5

    .line 834
    new-instance v5, Ljava/lang/SecurityException;

    const-string v0, "The task fragment is not allowed to embed the given activity."

    invoke-direct {v5, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 836
    .restart local v5    # "exception":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p7

    move-object v3, v4

    move-object/from16 v16, v4

    .end local v4    # "parent":Lcom/android/server/wm/TaskFragment;
    .restart local v16    # "parent":Lcom/android/server/wm/TaskFragment;
    move/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 837
    move-object v1, v7

    move-object v13, v12

    move-object v9, v14

    move-object v2, v15

    move-object/from16 v14, v17

    goto/16 :goto_52a

    .line 839
    .end local v5    # "exception":Ljava/lang/Throwable;
    .end local v16    # "parent":Lcom/android/server/wm/TaskFragment;
    .restart local v4    # "parent":Lcom/android/server/wm/TaskFragment;
    :cond_2a5
    move-object/from16 v16, v4

    .end local v4    # "parent":Lcom/android/server/wm/TaskFragment;
    .restart local v16    # "parent":Lcom/android/server/wm/TaskFragment;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eq v0, v1, :cond_2cd

    .line 840
    new-instance v5, Ljava/lang/SecurityException;

    const-string v0, "The reparented activity is not in the same Task as the target TaskFragment."

    invoke-direct {v5, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 842
    .restart local v5    # "exception":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p7

    move-object/from16 v3, v16

    move/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 843
    move-object v1, v7

    move-object v13, v12

    move-object v9, v14

    move-object v2, v15

    move-object/from16 v14, v17

    goto/16 :goto_52a

    .line 846
    .end local v5    # "exception":Ljava/lang/Throwable;
    :cond_2cd
    const v0, 0x7fffffff

    move-object/from16 v4, v16

    .end local v16    # "parent":Lcom/android/server/wm/TaskFragment;
    .restart local v4    # "parent":Lcom/android/server/wm/TaskFragment;
    invoke-virtual {v11, v4, v0}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 847
    or-int/lit8 v0, p2, 0x2

    .line 848
    .end local p2    # "effects":I
    .local v0, "effects":I
    move-object v1, v7

    move-object v13, v12

    move-object v9, v14

    move-object v2, v15

    move-object/from16 v14, v17

    goto/16 :goto_52c

    .line 817
    .end local v0    # "effects":I
    .end local v11    # "activity":Lcom/android/server/wm/ActivityRecord;
    .end local v18    # "activityToken":Landroid/os/IBinder;
    .end local v21    # "fragmentToken":Landroid/os/IBinder;
    .restart local v1    # "parent":Lcom/android/server/wm/TaskFragment;
    .restart local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    .restart local v3    # "activityToken":Landroid/os/IBinder;
    .local v4, "fragmentToken":Landroid/os/IBinder;
    .restart local p2    # "effects":I
    :cond_2df
    move-object/from16 v18, v3

    move-object/from16 v21, v4

    move-object/from16 v17, v11

    move-object v4, v1

    move-object v11, v2

    .line 818
    .end local v1    # "parent":Lcom/android/server/wm/TaskFragment;
    .end local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    .end local v3    # "activityToken":Landroid/os/IBinder;
    .local v4, "parent":Lcom/android/server/wm/TaskFragment;
    .restart local v11    # "activity":Lcom/android/server/wm/ActivityRecord;
    .restart local v18    # "activityToken":Landroid/os/IBinder;
    .restart local v21    # "fragmentToken":Landroid/os/IBinder;
    :goto_2e7
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not allowed to operate with invalid fragment token or activity."

    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 820
    .restart local v5    # "exception":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p7

    move-object v3, v4

    move-object/from16 v16, v4

    .end local v4    # "parent":Lcom/android/server/wm/TaskFragment;
    .restart local v16    # "parent":Lcom/android/server/wm/TaskFragment;
    move/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 821
    move-object v1, v7

    move-object v13, v12

    move-object v9, v14

    move-object v2, v15

    move-object/from16 v14, v17

    goto/16 :goto_52a

    .line 779
    .end local v5    # "exception":Ljava/lang/Throwable;
    .end local v11    # "activity":Lcom/android/server/wm/ActivityRecord;
    .end local v16    # "parent":Lcom/android/server/wm/TaskFragment;
    .end local v18    # "activityToken":Landroid/os/IBinder;
    .end local v21    # "fragmentToken":Landroid/os/IBinder;
    :sswitch_304
    move-object v8, v2

    move-object/from16 v17, v11

    const/16 v20, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v11

    .line 780
    .local v11, "fragmentToken":Landroid/os/IBinder;
    iget-object v0, v6, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/server/wm/TaskFragment;

    .line 781
    .local v21, "tf":Lcom/android/server/wm/TaskFragment;
    if-nez v21, :cond_335

    .line 782
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not allowed to operate with invalid fragment token"

    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 784
    .restart local v5    # "exception":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p7

    move-object/from16 v3, v21

    move/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 785
    move-object v1, v7

    move-object v13, v12

    move-object v9, v14

    move-object v2, v15

    move-object/from16 v14, v17

    goto/16 :goto_52a

    .line 787
    .end local v5    # "exception":Ljava/lang/Throwable;
    :cond_335
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskFragmentInPip()Z

    move-result v0

    if-eqz v0, :cond_357

    .line 788
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not allowed to start activity in PIP TaskFragment"

    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 790
    .restart local v5    # "exception":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p7

    move-object/from16 v3, v21

    move/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 791
    move-object v1, v7

    move-object v13, v12

    move-object v9, v14

    move-object v2, v15

    move-object/from16 v14, v17

    goto/16 :goto_52a

    .line 793
    .end local v5    # "exception":Ljava/lang/Throwable;
    :cond_357
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityIntent()Landroid/content/Intent;

    move-result-object v5

    .line 794
    .local v5, "activityIntent":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v22

    .line 795
    .local v22, "activityOptions":Landroid/os/Bundle;
    iget-object v0, v6, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    .line 797
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getCallingActivity()Landroid/os/IBinder;

    move-result-object v1

    iget v2, v10, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    iget v3, v10, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    .line 796
    move-object/from16 v24, v11

    move-object/from16 v4, v17

    .end local v11    # "fragmentToken":Landroid/os/IBinder;
    .local v24, "fragmentToken":Landroid/os/IBinder;
    move-object v11, v0

    move-object v0, v12

    move-object/from16 v12, v21

    move-object v9, v13

    move-object v13, v5

    move-object v9, v14

    move-object/from16 v14, v22

    move-object v7, v15

    move-object v15, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v18, p7

    invoke-virtual/range {v11 .. v18}, Lcom/android/server/wm/ActivityStartController;->startActivityInTaskFragment(Lcom/android/server/wm/TaskFragment;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/IBinder;IILandroid/os/IBinder;)I

    move-result v11

    .line 798
    .local v11, "result":I
    invoke-static {v11}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v1

    if-nez v1, :cond_3a7

    .line 799
    nop

    .line 800
    invoke-direct {v6, v11, v5}, Lcom/android/server/wm/WindowOrganizerController;->convertStartFailureToThrowable(ILandroid/content/Intent;)Ljava/lang/Throwable;

    move-result-object v12

    .line 799
    move-object v13, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p7

    move-object/from16 v3, v21

    move-object v14, v4

    move/from16 v4, v19

    move-object v15, v5

    .end local v5    # "activityIntent":Landroid/content/Intent;
    .local v15, "activityIntent":Landroid/content/Intent;
    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    move-object/from16 v1, p1

    move-object v2, v7

    goto/16 :goto_52a

    .line 802
    .end local v15    # "activityIntent":Landroid/content/Intent;
    .restart local v5    # "activityIntent":Landroid/content/Intent;
    :cond_3a7
    move-object v13, v0

    move-object v14, v4

    move-object v15, v5

    .end local v5    # "activityIntent":Landroid/content/Intent;
    .restart local v15    # "activityIntent":Landroid/content/Intent;
    or-int/lit8 v0, p2, 0x2

    .line 804
    .end local p2    # "effects":I
    .restart local v0    # "effects":I
    move-object/from16 v1, p1

    move-object v2, v7

    goto/16 :goto_52c

    .line 752
    .end local v0    # "effects":I
    .end local v11    # "result":I
    .end local v15    # "activityIntent":Landroid/content/Intent;
    .end local v21    # "tf":Lcom/android/server/wm/TaskFragment;
    .end local v22    # "activityOptions":Landroid/os/Bundle;
    .end local v24    # "fragmentToken":Landroid/os/IBinder;
    .restart local p2    # "effects":I
    :sswitch_3b1
    move-object v8, v2

    move-object v13, v12

    move-object v9, v14

    move-object v7, v15

    const/16 v20, 0x0

    move-object v14, v11

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v11

    .line 753
    .local v11, "wc":Lcom/android/server/wm/WindowContainer;
    if-eqz v11, :cond_41f

    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v0

    if-nez v0, :cond_3c9

    goto :goto_41f

    .line 757
    :cond_3c9
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v12

    .line 758
    .local v12, "taskFragment":Lcom/android/server/wm/TaskFragment;
    if-eqz v12, :cond_417

    invoke-virtual {v12}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_417

    .line 762
    if-eqz p5, :cond_40c

    .line 763
    new-instance v0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda6;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v1}, Lcom/android/server/wm/TaskFragment;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v15

    .line 765
    .local v15, "bottomActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v15, :cond_40c

    iget-object v0, v6, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 766
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/android/server/wm/LockTaskController;->activityBlockedFromFinish(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_40c

    .line 768
    const-string v0, "Skip removing TaskFragment due in lock task mode."

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v0, "Not allow to delete task fragment in lock task mode."

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p7

    move-object v3, v12

    move/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 772
    move-object/from16 v1, p1

    move-object v2, v7

    goto/16 :goto_52a

    .line 775
    .end local v15    # "bottomActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_40c
    invoke-direct {v6, v12, v9, v7}, Lcom/android/server/wm/WindowOrganizerController;->deleteTaskFragment(Lcom/android/server/wm/TaskFragment;Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;)I

    move-result v0

    or-int v0, p2, v0

    .line 776
    .end local p2    # "effects":I
    .restart local v0    # "effects":I
    move-object/from16 v1, p1

    move-object v2, v7

    goto/16 :goto_52c

    .line 759
    .end local v0    # "effects":I
    .restart local p2    # "effects":I
    :cond_417
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only delete organized TaskFragment, but not Task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 754
    .end local v12    # "taskFragment":Lcom/android/server/wm/TaskFragment;
    :cond_41f
    :goto_41f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    move-object/from16 v1, p1

    move-object v2, v7

    goto/16 :goto_52a

    .line 746
    .end local v11    # "wc":Lcom/android/server/wm/WindowContainer;
    :sswitch_438
    move-object v8, v2

    move-object v13, v12

    move-object v9, v14

    move-object v7, v15

    const/16 v20, 0x0

    move-object v14, v11

    .line 747
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getTaskFragmentCreationOptions()Landroid/window/TaskFragmentCreationParams;

    move-result-object v0

    .line 748
    .local v0, "taskFragmentCreationOptions":Landroid/window/TaskFragmentCreationParams;
    invoke-virtual {v6, v0, v7, v10}, Lcom/android/server/wm/WindowOrganizerController;->createTaskFragment(Landroid/window/TaskFragmentCreationParams;Landroid/os/IBinder;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    .line 749
    move-object/from16 v1, p1

    move-object v2, v7

    goto/16 :goto_52a

    .line 725
    .end local v0    # "taskFragmentCreationOptions":Landroid/window/TaskFragmentCreationParams;
    :sswitch_44b
    move-object v8, v2

    move-object v13, v12

    move-object v9, v14

    move-object v7, v15

    const/16 v20, 0x0

    move-object v14, v11

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 726
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    if-eqz v1, :cond_461

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    goto :goto_463

    :cond_461
    move-object/from16 v3, v20

    .line 727
    .local v3, "task":Lcom/android/server/wm/Task;
    :goto_463
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v2

    .line 728
    .local v2, "clearRoot":Z
    if-eqz v3, :cond_4ba

    .line 730
    iget-boolean v0, v3, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_4a1

    .line 733
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-nez v0, :cond_48f

    if-eqz v2, :cond_476

    goto :goto_48f

    .line 734
    :cond_476
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot set non-adjacent task as adjacent flag root: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 738
    :cond_48f
    :goto_48f
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v2, :cond_498

    move-object/from16 v4, v20

    goto :goto_499

    :cond_498
    move-object v4, v3

    :goto_499
    invoke-virtual {v0, v4}, Lcom/android/server/wm/TaskDisplayArea;->setLaunchAdjacentFlagRootTask(Lcom/android/server/wm/Task;)V

    .line 739
    move-object/from16 v1, p1

    move-object v2, v7

    goto/16 :goto_52a

    .line 731
    :cond_4a1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot set non-organized task as adjacent flag root: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 729
    :cond_4ba
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 742
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v2    # "clearRoot":Z
    .end local v3    # "task":Lcom/android/server/wm/Task;
    :sswitch_4d1
    move-object v8, v2

    move-object v13, v12

    move-object v9, v14

    move-object v7, v15

    const/16 v20, 0x0

    move-object v14, v11

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/WindowOrganizerController;->setAdjacentRootsHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;)I

    move-result v0

    or-int v0, p2, v0

    .line 743
    .end local p2    # "effects":I
    .local v0, "effects":I
    move-object/from16 v1, p1

    move-object v2, v7

    goto :goto_52c

    .line 714
    .end local v0    # "effects":I
    .restart local p2    # "effects":I
    :sswitch_4e2
    move-object v8, v2

    move-object v13, v12

    move-object v9, v14

    move-object v7, v15

    const/16 v20, 0x0

    move-object v14, v11

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 715
    .restart local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    if-eqz v1, :cond_4f8

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    goto :goto_4fa

    :cond_4f8
    move-object/from16 v3, v20

    :goto_4fa
    move-object v2, v3

    .line 716
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_510

    .line 717
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 718
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getWindowingModes()[I

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityTypes()[I

    move-result-object v4

    .line 717
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/TaskDisplayArea;->setLaunchRootTask(Lcom/android/server/wm/Task;[I[I)V

    move-object/from16 v1, p1

    move-object v2, v7

    goto :goto_52a

    .line 720
    :cond_510
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 937
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_527
    move-object/from16 v1, p1

    move-object v2, v7

    .line 945
    :goto_52a
    move/from16 v0, p2

    .end local p2    # "effects":I
    .restart local v0    # "effects":I
    :goto_52c
    packed-switch v19, :pswitch_data_784

    :pswitch_52f
    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object v3, v9

    goto/16 :goto_759

    .line 1072
    :pswitch_536
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 1073
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getInsetsTypes()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowContainer;->removeLocalInsetsSourceProvider([I)V

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object v3, v9

    goto/16 :goto_759

    .line 1065
    :pswitch_54c
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getInsetsProviderFrame()Landroid/graphics/Rect;

    move-result-object v3

    .line 1066
    .local v3, "insetsProviderWindowContainer":Landroid/graphics/Rect;
    nop

    .line 1067
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    .line 1068
    .local v4, "receiverWindowContainer":Lcom/android/server/wm/WindowContainer;
    nop

    .line 1069
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getInsetsTypes()[I

    move-result-object v5

    .line 1068
    invoke-virtual {v4, v3, v5}, Lcom/android/server/wm/WindowContainer;->addLocalRectInsetsSourceProvider(Landroid/graphics/Rect;[I)V

    .line 1070
    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object v3, v9

    goto/16 :goto_759

    .line 1052
    .end local v3    # "insetsProviderWindowContainer":Landroid/graphics/Rect;
    .end local v4    # "receiverWindowContainer":Lcom/android/server/wm/WindowContainer;
    :pswitch_568
    move-object/from16 v4, p9

    move-object v3, v9

    if-nez v4, :cond_573

    move/from16 v4, p3

    move-object/from16 v5, p4

    goto/16 :goto_759

    .line 1053
    :cond_573
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    .line 1054
    .local v5, "container":Lcom/android/server/wm/WindowContainer;
    if-nez v5, :cond_583

    move/from16 v4, p3

    move-object/from16 v5, p4

    goto/16 :goto_759

    .line 1055
    :cond_583
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    if-eqz v7, :cond_592

    .line 1056
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v7

    goto :goto_596

    :cond_592
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v7

    .line 1057
    .local v7, "thisTask":Lcom/android/server/wm/Task;
    :goto_596
    if-nez v7, :cond_59e

    move/from16 v4, p3

    move-object/from16 v5, p4

    goto/16 :goto_759

    .line 1058
    :cond_59e
    invoke-virtual {v4, v5}, Lcom/android/server/wm/Transition;->getTransientLaunchRestoreTarget(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task;

    move-result-object v8

    .line 1059
    .local v8, "restoreAt":Lcom/android/server/wm/Task;
    if-nez v8, :cond_5aa

    move/from16 v4, p3

    move-object/from16 v5, p4

    goto/16 :goto_759

    .line 1060
    :cond_5aa
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v9

    .line 1061
    .local v9, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v11

    invoke-virtual {v9, v11, v8}, Lcom/android/server/wm/TaskDisplayArea;->moveRootTaskBehindRootTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    .line 1062
    move/from16 v4, p3

    move-object/from16 v5, p4

    goto/16 :goto_759

    .line 1020
    .end local v5    # "container":Lcom/android/server/wm/WindowContainer;
    .end local v7    # "thisTask":Lcom/android/server/wm/Task;
    .end local v8    # "restoreAt":Lcom/android/server/wm/Task;
    .end local v9    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :pswitch_5bb
    move-object/from16 v4, p9

    move-object v3, v9

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v5

    .line 1021
    .local v5, "launchOpts":Landroid/os/Bundle;
    const-string v7, "android:transaction.hop.shortcut_calling_package"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1023
    .local v8, "callingPackage":Ljava/lang/String;
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1026
    const-class v7, Lcom/android/server/pm/LauncherAppsService$LauncherAppsServiceInternal;

    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/LauncherAppsService$LauncherAppsServiceInternal;

    .line 1029
    .local v7, "launcherApps":Lcom/android/server/pm/LauncherAppsService$LauncherAppsServiceInternal;
    iget v9, v10, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    iget v11, v10, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    .line 1030
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    .line 1031
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    .line 1032
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v29

    .line 1029
    move-object/from16 v20, v7

    move/from16 v21, v9

    move/from16 v22, v11

    move-object/from16 v23, v8

    move-object/from16 v28, v5

    invoke-virtual/range {v20 .. v29}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsServiceInternal;->startShortcut(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)Z

    .line 1033
    move/from16 v4, p3

    move-object/from16 v5, p4

    goto/16 :goto_759

    .line 996
    .end local v5    # "launchOpts":Landroid/os/Bundle;
    .end local v7    # "launcherApps":Lcom/android/server/pm/LauncherAppsService$LauncherAppsServiceInternal;
    .end local v8    # "callingPackage":Ljava/lang/String;
    :pswitch_606
    move-object/from16 v4, p9

    move-object v3, v9

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_620

    .line 997
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityIntent()Landroid/content/Intent;

    move-result-object v5

    iget-object v7, v6, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 998
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 997
    invoke-virtual {v5, v7}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    goto :goto_622

    .line 999
    :cond_620
    move-object/from16 v5, v20

    :goto_622
    nop

    .line 1001
    .local v5, "resolvedType":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1002
    .local v7, "activityOptions":Landroid/app/ActivityOptions;
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v8

    if-eqz v8, :cond_647

    .line 1006
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_63e

    .line 1007
    new-instance v8, Landroid/app/ActivityOptions;

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_642

    .line 1008
    :cond_63e
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v8

    :goto_642
    move-object v7, v8

    .line 1009
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/ActivityOptions;->setCallerDisplayId(I)Landroid/app/ActivityOptions;

    .line 1011
    :cond_647
    if-eqz v7, :cond_64e

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    goto :goto_650

    :cond_64e
    move-object/from16 v8, v20

    .line 1012
    .local v8, "options":Landroid/os/Bundle;
    :goto_650
    new-instance v9, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda8;

    invoke-direct {v9, v6, v1, v5, v8}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction$HierarchyOp;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {v6, v9}, Lcom/android/server/wm/WindowOrganizerController;->waitAsyncStart(Ljava/util/function/IntSupplier;)V

    .line 1017
    move/from16 v4, p3

    move-object/from16 v5, p4

    goto/16 :goto_759

    .line 1036
    .end local v5    # "resolvedType":Ljava/lang/String;
    .end local v7    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v8    # "options":Landroid/os/Bundle;
    :pswitch_65e
    move-object/from16 v4, p9

    move-object v3, v9

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    .line 1037
    .local v5, "oldParent":Lcom/android/server/wm/WindowContainer;
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v7

    if-eqz v7, :cond_678

    .line 1038
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    goto :goto_67a

    .line 1039
    :cond_678
    move-object/from16 v7, v20

    :goto_67a
    nop

    .line 1040
    .local v7, "newParent":Lcom/android/server/wm/WindowContainer;
    if-eqz v5, :cond_699

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v9

    if-eqz v9, :cond_699

    .line 1041
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v9

    if-nez v9, :cond_68a

    goto :goto_699

    .line 1046
    :cond_68a
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v8

    invoke-virtual {v6, v8, v7, v3, v2}, Lcom/android/server/wm/WindowOrganizerController;->reparentTaskFragment(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/WindowContainer;Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;)V

    .line 1048
    or-int/lit8 v0, v0, 0x2

    .line 1049
    move/from16 v4, p3

    move-object/from16 v5, p4

    goto/16 :goto_759

    .line 1042
    :cond_699
    :goto_699
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    move/from16 v4, p3

    move-object/from16 v5, p4

    goto/16 :goto_759

    .line 983
    .end local v5    # "oldParent":Lcom/android/server/wm/WindowContainer;
    .end local v7    # "newParent":Lcom/android/server/wm/WindowContainer;
    :pswitch_6b3
    move-object/from16 v4, p9

    move-object v3, v9

    iget-object v5, v6, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v7, "android.permission.START_TASKS_FROM_RECENTS"

    const-string v8, "launchTask HierarchyOp"

    invoke-virtual {v5, v7, v8}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v5

    .line 986
    .local v5, "launchOpts":Landroid/os/Bundle;
    const-string v7, "android:transaction.hop.taskId"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 988
    .local v8, "taskId":I
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 989
    iget v7, v10, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    iget v9, v10, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    .line 990
    invoke-static {v5, v7, v9}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;II)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v7

    .line 991
    .local v7, "safeOptions":Lcom/android/server/wm/SafeActivityOptions;
    new-instance v9, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda7;

    invoke-direct {v9, v6, v10, v8, v7}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;ILcom/android/server/wm/SafeActivityOptions;)V

    invoke-direct {v6, v9}, Lcom/android/server/wm/WindowOrganizerController;->waitAsyncStart(Ljava/util/function/IntSupplier;)V

    .line 993
    move/from16 v4, p3

    move-object/from16 v5, p4

    goto/16 :goto_759

    .line 947
    .end local v5    # "launchOpts":Landroid/os/Bundle;
    .end local v7    # "safeOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v8    # "taskId":I
    :pswitch_6e4
    move-object/from16 v4, p9

    move-object v3, v9

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct {v6, v1, v5, v4}, Lcom/android/server/wm/WindowOrganizerController;->reparentChildrenTasksHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;Lcom/android/server/wm/Transition;I)I

    move-result v7

    or-int/2addr v0, v7

    .line 948
    goto :goto_759

    .line 952
    :pswitch_6f1
    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object v3, v9

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    .line 953
    .local v7, "wc":Lcom/android/server/wm/WindowContainer;
    if-eqz v7, :cond_744

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v9

    if-nez v9, :cond_707

    goto :goto_744

    .line 957
    :cond_707
    if-ltz v4, :cond_70c

    .line 958
    invoke-virtual {v6, v4, v7}, Lcom/android/server/wm/WindowOrganizerController;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    .line 960
    :cond_70c
    if-eqz v5, :cond_73e

    .line 961
    invoke-virtual {v5, v7}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 962
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->isReparent()Z

    move-result v9

    if-eqz v9, :cond_73e

    .line 963
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    if-eqz v9, :cond_724

    .line 966
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 968
    :cond_724
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v9

    if-eqz v9, :cond_73e

    .line 969
    nop

    .line 970
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    .line 971
    .local v9, "parentWc":Lcom/android/server/wm/WindowContainer;
    if-nez v9, :cond_73b

    .line 972
    const-string v11, "Can\'t resolve parent window from token"

    invoke-static {v8, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    goto :goto_759

    .line 975
    :cond_73b
    invoke-virtual {v5, v9}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 979
    .end local v9    # "parentWc":Lcom/android/server/wm/WindowContainer;
    :cond_73e
    invoke-direct {v6, v7, v1}, Lcom/android/server/wm/WindowOrganizerController;->sanitizeAndApplyHierarchyOp(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$HierarchyOp;)I

    move-result v8

    or-int/2addr v0, v8

    .line 980
    goto :goto_759

    .line 954
    :cond_744
    :goto_744
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    nop

    .line 1076
    .end local v7    # "wc":Lcom/android/server/wm/WindowContainer;
    :goto_759
    return v0

    :sswitch_data_75a
    .sparse-switch
        0x3 -> :sswitch_4e2
        0x4 -> :sswitch_4d1
        0x6 -> :sswitch_44b
        0x7 -> :sswitch_438
        0x8 -> :sswitch_3b1
        0x9 -> :sswitch_304
        0xa -> :sswitch_1f8
        0xd -> :sswitch_f0
        0x12 -> :sswitch_5e
        0x1e -> :sswitch_49
    .end sparse-switch

    :pswitch_data_784
    .packed-switch 0x0
        :pswitch_6f1
        :pswitch_6f1
        :pswitch_6e4
        :pswitch_52f
        :pswitch_52f
        :pswitch_6b3
        :pswitch_52f
        :pswitch_52f
        :pswitch_52f
        :pswitch_52f
        :pswitch_52f
        :pswitch_65e
        :pswitch_606
        :pswitch_52f
        :pswitch_5bb
        :pswitch_568
        :pswitch_54c
        :pswitch_536
    .end packed-switch
.end method

.method private applyTaskChanges(Lcom/android/server/wm/Task;Landroid/window/WindowContainerTransaction$Change;)I
    .registers 8
    .param p1, "tr"    # Lcom/android/server/wm/Task;
    .param p2, "c"    # Landroid/window/WindowContainerTransaction$Change;

    .line 618
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/WindowOrganizerController;->applyChanges(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;Landroid/os/IBinder;)I

    move-result v0

    .line 619
    .local v0, "effects":I
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getBoundsChangeTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 621
    .local v1, "t":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1d

    .line 622
    const/4 v2, 0x2

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getHidden()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 623
    const/4 v0, 0x2

    .line 627
    :cond_1d
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getActivityWindowingMode()I

    move-result v2

    .line 628
    .local v2, "childWindowingMode":I
    const/4 v3, -0x1

    if-le v2, v3, :cond_27

    .line 629
    invoke-virtual {p1, v2}, Lcom/android/server/wm/Task;->setActivityWindowingMode(I)V

    .line 632
    :cond_27
    if-eqz v1, :cond_2c

    .line 633
    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 636
    :cond_2c
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getEnterPipBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 637
    .local v3, "enterPipBounds":Landroid/graphics/Rect;
    if-eqz v3, :cond_39

    .line 638
    iget-object v4, p1, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/PinnedTaskController;->setEnterPipBounds(Landroid/graphics/Rect;)V

    .line 641
    :cond_39
    return v0
.end method

.method private applyTaskFragmentChanges(Lcom/android/server/wm/TaskFragment;Landroid/window/WindowContainerTransaction$Change;Landroid/os/IBinder;)I
    .registers 9
    .param p1, "taskFragment"    # Lcom/android/server/wm/TaskFragment;
    .param p2, "c"    # Landroid/window/WindowContainerTransaction$Change;
    .param p3, "errorCallbackToken"    # Landroid/os/IBinder;

    .line 670
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskFragmentInPip()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 672
    return v1

    .line 676
    :cond_8
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getScale()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskFragment;->setScale(F)V

    .line 684
    const/4 v0, 0x0

    .line 685
    .local v0, "mTmpsurfaceControl":Landroid/view/SurfaceControl;
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 686
    .local v2, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_51

    .line 687
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->isLetterBoxed()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_51

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v3

    if-ne v3, v4, :cond_51

    .line 688
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->isLetterBoxed()Z

    move-result v3

    if-nez v3, :cond_51

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getWindowingMode()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_51

    .line 689
    const-string v3, "WindowOrganizerController"

    const-string v4, "Animation From FixedOrientation to Embedding"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 691
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    goto :goto_5a

    .line 693
    :cond_51
    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 696
    :goto_5a
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->deferOrganizedTaskFragmentSurfaceUpdate()V

    .line 697
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/WindowOrganizerController;->applyChanges(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;Landroid/os/IBinder;)I

    move-result v3

    .line 698
    .local v3, "effects":I
    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Lcom/android/server/wm/TaskFragment;->shouldStartChangeTransition(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 700
    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v4, v0}, Lcom/android/server/wm/TaskFragment;->initializeChangeTransition(Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V

    .line 702
    :cond_6e
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->continueOrganizedTaskFragmentSurfaceUpdate()V

    .line 703
    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 704
    return v3
.end method

.method private applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V
    .registers 11
    .param p1, "t"    # Landroid/window/WindowContainerTransaction;
    .param p2, "syncId"    # I
    .param p3, "transition"    # Lcom/android/server/wm/Transition;
    .param p4, "caller"    # Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    .line 382
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition;)V

    .line 383
    return-void
.end method

.method private applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition;)V
    .registers 30
    .param p1, "t"    # Landroid/window/WindowContainerTransaction;
    .param p2, "syncId"    # I
    .param p3, "transition"    # Lcom/android/server/wm/Transition;
    .param p4, "caller"    # Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .param p5, "finishTransition"    # Lcom/android/server/wm/Transition;

    .line 394
    move-object/from16 v11, p0

    move/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p5

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v0

    const-string v15, "WindowOrganizerController"

    if-eqz v0, :cond_3d

    iget-object v0, v11, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 395
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->isOrganizerRegistered(Landroid/window/ITaskFragmentOrganizer;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caller organizer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is no longer registered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    return-void

    .line 400
    :cond_3d
    const/4 v1, 0x0

    .line 401
    .local v1, "effects":I
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_56

    int-to-long v2, v12

    .local v2, "protoLogParam0":J
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x3603be95

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v0, v4, v8, v10, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 402
    .end local v2    # "protoLogParam0":J
    :cond_56
    iget-object v0, v11, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 403
    iget-object v0, v11, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivityTaskSupervisor;->setDeferRootVisibilityUpdate(Z)V

    .line 405
    if-eqz v13, :cond_82

    .line 407
    :try_start_64
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/DisplayRotation;->getDisplayFromTransition(Lcom/android/server/wm/Transition;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 408
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_82

    iget-object v2, v13, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 412
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v2, v0, v13}, Lcom/android/server/wm/TransitionController;->collectForDisplayChange(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Transition;)V

    .line 413
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    .line 414
    or-int/lit8 v1, v1, 0x2

    .line 417
    .end local v0    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_82
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v7, v0

    .line 418
    .local v7, "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    nop

    .line 419
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getChanges()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 420
    .local v0, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    :goto_95
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_99
    .catchall {:try_start_64 .. :try_end_99} :catchall_2bc

    const-string v5, "Attempt to operate on detached container: "

    if-eqz v2, :cond_103

    .line 421
    :try_start_9d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 422
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 423
    .local v3, "wc":Lcom/android/server/wm/WindowContainer;
    if-eqz v3, :cond_ee

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v4

    if-nez v4, :cond_b6

    goto :goto_ee

    .line 430
    :cond_b6
    if-ltz v12, :cond_bb

    .line 431
    invoke-virtual {v11, v12, v3}, Lcom/android/server/wm/WindowOrganizerController;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    .line 433
    :cond_bb
    if-eqz v13, :cond_c0

    invoke-virtual {v13, v3}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 435
    :cond_c0
    if-eqz v14, :cond_d3

    .line 437
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/WindowContainerTransaction$Change;

    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v4

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_d3

    .line 439
    invoke-virtual {v14, v9}, Lcom/android/server/wm/Transition;->setCanPipOnFinish(Z)V

    .line 443
    :cond_d3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/WindowContainerTransaction$Change;

    .line 444
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getErrorCallbackToken()Landroid/os/IBinder;

    move-result-object v5

    .line 443
    invoke-direct {v11, v3, v4, v5}, Lcom/android/server/wm/WindowOrganizerController;->applyWindowContainerChange(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;Landroid/os/IBinder;)I

    move-result v4

    .line 445
    .local v4, "containerEffect":I
    or-int/2addr v1, v4

    .line 448
    and-int/lit8 v5, v1, 0x2

    if-nez v5, :cond_ed

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_ed

    .line 450
    invoke-virtual {v7, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 452
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    .end local v3    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v4    # "containerEffect":I
    :cond_ed
    goto :goto_95

    .line 424
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    .restart local v3    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_ee
    :goto_ee
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    goto :goto_95

    .line 454
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    .end local v3    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_103
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v2

    move-object v4, v2

    .line 455
    .local v4, "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    move v3, v2

    .line 456
    .local v3, "hopSize":I
    if-lez v3, :cond_175

    .line 457
    iget-object v2, v11, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isInLockTaskMode()Z

    move-result v6
    :try_end_115
    .catchall {:try_start_9d .. :try_end_115} :catchall_2bc

    .line 458
    .local v6, "isInLockTaskMode":Z
    const/4 v2, 0x0

    move/from16 v16, v1

    .end local v1    # "effects":I
    .local v2, "i":I
    .local v16, "effects":I
    :goto_118
    if-ge v2, v3, :cond_166

    .line 459
    :try_start_11a
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 460
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getErrorCallbackToken()Landroid/os/IBinder;

    move-result-object v18

    .line 461
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v19

    .line 459
    move-object/from16 v1, p0

    move/from16 v20, v2

    .end local v2    # "i":I
    .local v20, "i":I
    move-object/from16 v2, v17

    move/from16 v17, v3

    .end local v3    # "hopSize":I
    .local v17, "hopSize":I
    move/from16 v3, v16

    move-object/from16 v21, v4

    .end local v4    # "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    .local v21, "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    move/from16 v4, p2

    move-object/from16 v22, v0

    move-object v0, v5

    .end local v0    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .local v22, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    move-object/from16 v5, p3

    move-object/from16 v23, v7

    .end local v7    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .local v23, "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    move-object/from16 v7, p4

    move v12, v8

    move-object/from16 v8, v18

    move v12, v9

    move-object/from16 v9, v19

    move-object v12, v10

    move-object/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Lcom/android/server/wm/WindowOrganizerController;->applyHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;IILcom/android/server/wm/Transition;ZLcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/Transition;)I

    move-result v1
    :try_end_14e
    .catchall {:try_start_11a .. :try_end_14e} :catchall_161

    or-int v16, v16, v1

    .line 458
    add-int/lit8 v2, v20, 0x1

    move-object v5, v0

    move-object v10, v12

    move/from16 v3, v17

    move-object/from16 v4, v21

    move-object/from16 v0, v22

    move-object/from16 v7, v23

    const/4 v8, 0x1

    const/4 v9, 0x0

    move/from16 v12, p2

    .end local v20    # "i":I
    .restart local v2    # "i":I
    goto :goto_118

    .line 522
    .end local v2    # "i":I
    .end local v6    # "isInLockTaskMode":Z
    .end local v17    # "hopSize":I
    .end local v21    # "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    .end local v22    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .end local v23    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    :catchall_161
    move-exception v0

    move/from16 v1, v16

    goto/16 :goto_2bd

    .line 458
    .restart local v0    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .restart local v2    # "i":I
    .restart local v3    # "hopSize":I
    .restart local v4    # "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    .restart local v6    # "isInLockTaskMode":Z
    .restart local v7    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    :cond_166
    move-object/from16 v22, v0

    move/from16 v20, v2

    move/from16 v17, v3

    move-object/from16 v21, v4

    move-object v0, v5

    move-object/from16 v23, v7

    move-object v12, v10

    .end local v0    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .end local v2    # "i":I
    .end local v3    # "hopSize":I
    .end local v4    # "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    .end local v7    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .restart local v17    # "hopSize":I
    .restart local v20    # "i":I
    .restart local v21    # "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    .restart local v22    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .restart local v23    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    move/from16 v1, v16

    goto :goto_17f

    .line 456
    .end local v6    # "isInLockTaskMode":Z
    .end local v16    # "effects":I
    .end local v17    # "hopSize":I
    .end local v20    # "i":I
    .end local v21    # "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    .end local v22    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .end local v23    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .restart local v0    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .restart local v1    # "effects":I
    .restart local v3    # "hopSize":I
    .restart local v4    # "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    .restart local v7    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    :cond_175
    move-object/from16 v22, v0

    move/from16 v17, v3

    move-object/from16 v21, v4

    move-object v0, v5

    move-object/from16 v23, v7

    move-object v12, v10

    .line 466
    .end local v0    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .end local v3    # "hopSize":I
    .end local v4    # "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    .end local v7    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .restart local v17    # "hopSize":I
    .restart local v21    # "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    .restart local v22    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .restart local v23    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    :goto_17f
    :try_start_17f
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getChanges()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 467
    .end local v22    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .local v2, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    :cond_18b
    :goto_18b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23d

    .line 468
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 469
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v4}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    .line 470
    .local v4, "wc":Lcom/android/server/wm/WindowContainer;
    if-eqz v4, :cond_227

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v5

    if-nez v5, :cond_1ab

    goto/16 :goto_227

    .line 475
    :cond_1ab
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 476
    .local v5, "task":Lcom/android/server/wm/Task;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/WindowContainerTransaction$Change;

    invoke-virtual {v6}, Landroid/window/WindowContainerTransaction$Change;->getBoundsChangeSurfaceBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 477
    .local v6, "surfaceBounds":Landroid/graphics/Rect;
    if-eqz v5, :cond_18b

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v7

    if-eqz v7, :cond_18b

    if-nez v6, :cond_1c4

    .line 478
    goto :goto_18b

    .line 480
    :cond_1c4
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v7

    if-nez v7, :cond_1fb

    .line 481
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    if-eqz v7, :cond_1d9

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v10

    goto :goto_1da

    :cond_1d9
    move-object v10, v12

    :goto_1da
    move-object v7, v10

    .line 484
    .local v7, "parent":Lcom/android/server/wm/Task;
    if-eqz v7, :cond_1e2

    iget-boolean v8, v7, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v8, :cond_1e2

    goto :goto_1fb

    .line 485
    :cond_1e2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t manipulate non-organized task surface "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "effects":I
    .end local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .end local p1    # "t":Landroid/window/WindowContainerTransaction;
    .end local p2    # "syncId":I
    .end local p3    # "transition":Lcom/android/server/wm/Transition;
    .end local p4    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .end local p5    # "finishTransition":Lcom/android/server/wm/Transition;
    throw v0

    .line 489
    .end local v7    # "parent":Lcom/android/server/wm/Task;
    .restart local v1    # "effects":I
    .restart local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .restart local p1    # "t":Landroid/window/WindowContainerTransaction;
    .restart local p2    # "syncId":I
    .restart local p3    # "transition":Lcom/android/server/wm/Transition;
    .restart local p4    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .restart local p5    # "finishTransition":Lcom/android/server/wm/Transition;
    :cond_1fb
    :goto_1fb
    new-instance v7, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v7}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 490
    .local v7, "sft":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v8

    .line 491
    .local v8, "sc":Landroid/view/SurfaceControl;
    iget v9, v6, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget v10, v6, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 492
    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_217

    .line 493
    invoke-virtual {v7, v8, v12}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_222

    .line 495
    :cond_217
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 497
    :goto_222
    invoke-virtual {v5, v7}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 498
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    .end local v4    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v5    # "task":Lcom/android/server/wm/Task;
    .end local v6    # "surfaceBounds":Landroid/graphics/Rect;
    .end local v7    # "sft":Landroid/view/SurfaceControl$Transaction;
    .end local v8    # "sc":Landroid/view/SurfaceControl;
    goto/16 :goto_18b

    .line 471
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    .restart local v4    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_227
    :goto_227
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    goto/16 :goto_18b

    .line 499
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    .end local v4    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_23d
    and-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_25b

    .line 500
    iget-object v0, v11, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->setDeferRootVisibilityUpdate(Z)V

    .line 502
    iget-object v0, v11, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x1

    invoke-virtual {v0, v12, v3, v4}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 503
    iget-object v0, v11, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    move-object/from16 v4, v23

    goto :goto_2a3

    .line 504
    :cond_25b
    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_2a1

    .line 505
    new-instance v0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda9;-><init>()V

    const-class v3, Lcom/android/server/wm/ActivityRecord;

    .line 507
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 508
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 505
    invoke-static {v0, v3, v5, v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0
    :try_end_278
    .catchall {:try_start_17f .. :try_end_278} :catchall_2bc

    move-object v3, v0

    .line 510
    .local v3, "f":Lcom/android/internal/util/function/pooled/PooledConsumer;
    :try_start_279
    invoke-virtual/range {v23 .. v23}, Landroid/util/ArraySet;->size()I

    move-result v0
    :try_end_27d
    .catchall {:try_start_279 .. :try_end_27d} :catchall_299

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    .local v0, "i":I
    :goto_27f
    if-ltz v0, :cond_293

    .line 511
    move-object/from16 v4, v23

    .end local v23    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .local v4, "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    :try_start_283
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V
    :try_end_28c
    .catchall {:try_start_283 .. :try_end_28c} :catchall_291

    .line 510
    add-int/lit8 v0, v0, -0x1

    move-object/from16 v23, v4

    goto :goto_27f

    .line 514
    .end local v0    # "i":I
    :catchall_291
    move-exception v0

    goto :goto_29c

    .line 510
    .end local v4    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .restart local v0    # "i":I
    .restart local v23    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    :cond_293
    move-object/from16 v4, v23

    .line 514
    .end local v0    # "i":I
    .end local v23    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .restart local v4    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    :try_start_295
    invoke-interface {v3}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 515
    goto :goto_2a3

    .line 514
    .end local v4    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .restart local v23    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    :catchall_299
    move-exception v0

    move-object/from16 v4, v23

    .end local v23    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .restart local v4    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    :goto_29c
    invoke-interface {v3}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 515
    nop

    .end local v1    # "effects":I
    .end local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .end local p1    # "t":Landroid/window/WindowContainerTransaction;
    .end local p2    # "syncId":I
    .end local p3    # "transition":Lcom/android/server/wm/Transition;
    .end local p4    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .end local p5    # "finishTransition":Lcom/android/server/wm/Transition;
    throw v0

    .line 504
    .end local v3    # "f":Lcom/android/internal/util/function/pooled/PooledConsumer;
    .end local v4    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .restart local v1    # "effects":I
    .restart local v23    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .restart local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .restart local p1    # "t":Landroid/window/WindowContainerTransaction;
    .restart local p2    # "syncId":I
    .restart local p3    # "transition":Lcom/android/server/wm/Transition;
    .restart local p4    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .restart local p5    # "finishTransition":Lcom/android/server/wm/Transition;
    :cond_2a1
    move-object/from16 v4, v23

    .line 518
    .end local v23    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .restart local v4    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    :goto_2a3
    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_2ad

    .line 519
    iget-object v0, v11, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->addWindowLayoutReasons(I)V
    :try_end_2ad
    .catchall {:try_start_295 .. :try_end_2ad} :catchall_2bc

    .line 522
    .end local v2    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .end local v4    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .end local v17    # "hopSize":I
    .end local v21    # "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    :cond_2ad
    iget-object v0, v11, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->setDeferRootVisibilityUpdate(Z)V

    .line 523
    iget-object v0, v11, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 524
    nop

    .line 525
    return-void

    .line 522
    :catchall_2bc
    move-exception v0

    :goto_2bd
    iget-object v2, v11, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->setDeferRootVisibilityUpdate(Z)V

    .line 523
    iget-object v2, v11, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 524
    throw v0
.end method

.method private applyWindowContainerChange(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;Landroid/os/IBinder;)I
    .registers 5
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "c"    # Landroid/window/WindowContainerTransaction$Change;
    .param p3, "errorCallbackToken"    # Landroid/os/IBinder;

    .line 1316
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowOrganizerController;->sanitizeWindowContainer(Lcom/android/server/wm/WindowContainer;)V

    .line 1317
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1318
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/WindowOrganizerController;->applyDisplayAreaChanges(Lcom/android/server/wm/DisplayArea;Landroid/window/WindowContainerTransaction$Change;)I

    move-result v0

    return v0

    .line 1319
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 1320
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/WindowOrganizerController;->applyTaskChanges(Lcom/android/server/wm/Task;Landroid/window/WindowContainerTransaction$Change;)I

    move-result v0

    return v0

    .line 1321
    :cond_21
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 1322
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/wm/WindowOrganizerController;->applyTaskFragmentChanges(Lcom/android/server/wm/TaskFragment;Landroid/window/WindowContainerTransaction$Change;Landroid/os/IBinder;)I

    move-result v0

    return v0

    .line 1324
    :cond_30
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/WindowOrganizerController;->applyChanges(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method static configurationsAreEqualForOrganizer(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .registers 8
    .param p0, "newConfig"    # Landroid/content/res/Configuration;
    .param p1, "oldConfig"    # Landroid/content/res/Configuration;

    .line 1422
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1423
    return v0

    .line 1425
    :cond_4
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    .line 1426
    .local v1, "cfgChanges":I
    const/high16 v2, 0x20000000

    and-int/2addr v2, v1

    const/4 v3, 0x1

    if-eqz v2, :cond_18

    .line 1427
    iget-object v2, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v4, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2, v4, v3}, Landroid/app/WindowConfiguration;->diff(Landroid/app/WindowConfiguration;Z)J

    move-result-wide v4

    long-to-int v2, v4

    goto :goto_19

    .line 1428
    :cond_18
    move v2, v0

    :goto_19
    nop

    .line 1429
    .local v2, "winCfgChanges":I
    and-int/lit8 v4, v2, 0x3

    if-nez v4, :cond_22

    .line 1430
    const v4, -0x20000001

    and-int/2addr v1, v4

    .line 1432
    :cond_22
    const v4, 0x20002c00

    and-int/2addr v4, v1

    if-nez v4, :cond_29

    move v0, v3

    :cond_29
    return v0
.end method

.method private convertStartFailureToThrowable(ILandroid/content/Intent;)Ljava/lang/Throwable;
    .registers 6
    .param p1, "result"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1805
    packed-switch p1, :pswitch_data_7c

    .line 1816
    :pswitch_3
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start activity failed with error code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when starting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1808
    :pswitch_26
    new-instance v0, Landroid/content/ActivityNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Activity found to handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1810
    :pswitch_3f
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission denied and not allowed to start activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1813
    :pswitch_58
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity could not be started for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with error code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_7c
    .packed-switch -0x60
        :pswitch_58
        :pswitch_3
        :pswitch_3f
        :pswitch_3
        :pswitch_26
        :pswitch_26
    .end packed-switch
.end method

.method private deleteTaskFragment(Lcom/android/server/wm/TaskFragment;Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;)I
    .registers 13
    .param p1, "taskFragment"    # Lcom/android/server/wm/TaskFragment;
    .param p2, "organizer"    # Landroid/window/ITaskFragmentOrganizer;
    .param p3, "errorCallbackToken"    # Landroid/os/IBinder;

    .line 1751
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 1752
    .local v0, "index":I
    const/4 v1, 0x0

    if-gez v0, :cond_1a

    .line 1753
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not allowed to operate with invalid taskFragment"

    invoke-direct {v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1756
    .local v7, "exception":Ljava/lang/Throwable;
    const/16 v6, 0x8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 1758
    return v1

    .line 1760
    .end local v7    # "exception":Ljava/lang/Throwable;
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskFragmentInPip()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1763
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 1764
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not allowed to delete TaskFragment in PIP Task"

    invoke-direct {v8, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1766
    .local v8, "exception":Ljava/lang/Throwable;
    const/16 v7, 0x8

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 1768
    return v1

    .line 1770
    .end local v8    # "exception":Ljava/lang/Throwable;
    :cond_37
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1771
    const/4 v1, 0x1

    const-string v2, "deleteTaskFragment"

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/TaskFragment;->remove(ZLjava/lang/String;)V

    .line 1772
    const/4 v1, 0x2

    return v1
.end method

.method private enforceOperationsAllowedForTaskFragmentOrganizer(Ljava/lang/String;Landroid/window/WindowContainerTransaction;)V
    .registers 11
    .param p1, "func"    # Ljava/lang/String;
    .param p2, "t"    # Landroid/window/WindowContainerTransaction;

    .line 1456
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v0

    .line 1459
    .local v0, "organizer":Landroid/window/ITaskFragmentOrganizer;
    nop

    .line 1460
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction;->getChanges()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1461
    .local v1, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1462
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1464
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 1465
    .local v3, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-direct {p0, p1, v3, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskFragmentOrganized(Ljava/lang/String;Lcom/android/server/wm/WindowContainer;Landroid/window/ITaskFragmentOrganizer;)V

    .line 1466
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/WindowContainerTransaction$Change;

    invoke-direct {p0, p1, v3, v4, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskFragmentConfigChangeAllowed(Ljava/lang/String;Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;Landroid/window/ITaskFragmentOrganizer;)V

    .line 1467
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    .end local v3    # "wc":Lcom/android/server/wm/WindowContainer;
    goto :goto_11

    .line 1470
    :cond_34
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v2

    .line 1471
    .local v2, "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_3e
    if-ltz v3, :cond_db

    .line 1472
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 1473
    .local v4, "hop":Landroid/window/WindowContainerTransaction$HierarchyOp;
    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v5

    .line 1475
    .local v5, "type":I
    sparse-switch v5, :sswitch_data_dc

    .line 1514
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1515
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " trying to apply a hierarchy change that is not allowed for TaskFragmentOrganizer="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1518
    .local v6, "msg":Ljava/lang/String;
    const-string v7, "WindowOrganizerController"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    new-instance v7, Ljava/lang/SecurityException;

    invoke-direct {v7, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1504
    .end local v6    # "msg":Ljava/lang/String;
    :sswitch_91
    nop

    .line 1505
    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    .line 1504
    invoke-direct {p0, p1, v6, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskFragmentOrganized(Ljava/lang/String;Lcom/android/server/wm/WindowContainer;Landroid/window/ITaskFragmentOrganizer;)V

    .line 1506
    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_d7

    .line 1507
    nop

    .line 1508
    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    .line 1507
    invoke-direct {p0, p1, v6, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskFragmentOrganized(Ljava/lang/String;Lcom/android/server/wm/WindowContainer;Landroid/window/ITaskFragmentOrganizer;)V

    goto :goto_d7

    .line 1502
    :sswitch_b0
    goto :goto_d7

    .line 1482
    :sswitch_b1
    nop

    .line 1483
    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    .line 1482
    invoke-direct {p0, p1, v6, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskFragmentOrganized(Ljava/lang/String;Lcom/android/server/wm/WindowContainer;Landroid/window/ITaskFragmentOrganizer;)V

    .line 1484
    nop

    .line 1485
    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getAdjacentRoot()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    .line 1484
    invoke-direct {p0, p1, v6, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskFragmentOrganized(Ljava/lang/String;Lcom/android/server/wm/WindowContainer;Landroid/window/ITaskFragmentOrganizer;)V

    .line 1487
    goto :goto_d7

    .line 1478
    :sswitch_ca
    nop

    .line 1479
    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    .line 1478
    invoke-direct {p0, p1, v6, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskFragmentOrganized(Ljava/lang/String;Lcom/android/server/wm/WindowContainer;Landroid/window/ITaskFragmentOrganizer;)V

    .line 1480
    nop

    .line 1471
    .end local v4    # "hop":Landroid/window/WindowContainerTransaction$HierarchyOp;
    .end local v5    # "type":I
    :cond_d7
    :goto_d7
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_3e

    .line 1522
    .end local v3    # "i":I
    :cond_db
    return-void

    :sswitch_data_dc
    .sparse-switch
        0x1 -> :sswitch_ca
        0x4 -> :sswitch_b1
        0x7 -> :sswitch_b0
        0x8 -> :sswitch_ca
        0x9 -> :sswitch_b0
        0xa -> :sswitch_b0
        0xb -> :sswitch_91
        0xd -> :sswitch_b0
        0x12 -> :sswitch_b0
        0x1e -> :sswitch_b0
    .end sparse-switch
.end method

.method private enforceTaskFragmentConfigChangeAllowed(Ljava/lang/String;Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;Landroid/window/ITaskFragmentOrganizer;)V
    .registers 19
    .param p1, "func"    # Ljava/lang/String;
    .param p2, "wc"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "change"    # Landroid/window/WindowContainerTransaction$Change;
    .param p4, "organizer"    # Landroid/window/ITaskFragmentOrganizer;

    .line 1548
    move-object v0, p1

    move-object/from16 v1, p4

    const-string v2, "WindowOrganizerController"

    if-nez p2, :cond_d

    .line 1549
    const-string v3, "Attempt to operate on task fragment that no longer exists"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    return-void

    .line 1552
    :cond_d
    if-nez p3, :cond_10

    .line 1553
    return-void

    .line 1555
    :cond_10
    invoke-virtual/range {p3 .. p3}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v3

    .line 1556
    .local v3, "changeMask":I
    const-string v4, ", uid="

    const-string v5, " from pid="

    const-string v6, "Permission Denial: "

    if-nez v3, :cond_14b

    .line 1566
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/TaskFragment;->isAllowedToBeEmbeddedInTrustedMode()Z

    move-result v7

    if-eqz v7, :cond_27

    .line 1568
    return-void

    .line 1570
    :cond_27
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    .line 1571
    .local v7, "wcParent":Lcom/android/server/wm/WindowContainer;
    if-nez v7, :cond_33

    .line 1572
    const-string v4, "Attempt to apply config change on task fragment that has no parent"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    return-void

    .line 1575
    :cond_33
    invoke-virtual/range {p3 .. p3}, Landroid/window/WindowContainerTransaction$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    .line 1576
    .local v8, "requestedConfig":Landroid/content/res/Configuration;
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    .line 1577
    .local v9, "parentConfig":Landroid/content/res/Configuration;
    iget v10, v9, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v11, v8, Landroid/content/res/Configuration;->screenWidthDp:I

    if-lt v10, v11, :cond_10f

    iget v10, v9, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v11, v8, Landroid/content/res/Configuration;->screenHeightDp:I

    if-lt v10, v11, :cond_10f

    iget v10, v9, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v11, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-lt v10, v11, :cond_10f

    .line 1587
    invoke-virtual/range {p3 .. p3}, Landroid/window/WindowContainerTransaction$Change;->getWindowSetMask()I

    move-result v10

    if-nez v10, :cond_54

    .line 1589
    return-void

    .line 1591
    :cond_54
    iget-object v10, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1592
    .local v10, "requestedWindowConfig":Landroid/app/WindowConfiguration;
    iget-object v11, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1593
    .local v11, "parentWindowConfig":Landroid/app/WindowConfiguration;
    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_ad

    .line 1594
    invoke-virtual {v11}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v12

    if-eqz v12, :cond_71

    goto :goto_ad

    .line 1595
    :cond_71
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1596
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " trying to apply bounds outside of parent for non-trusted host, TaskFragmentOrganizer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1599
    .local v4, "msg":Ljava/lang/String;
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1602
    .end local v4    # "msg":Ljava/lang/String;
    :cond_ad
    :goto_ad
    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v12

    if-eqz v12, :cond_10e

    .line 1603
    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_10e

    .line 1604
    invoke-virtual {v11}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v12

    if-eqz v12, :cond_10e

    .line 1605
    invoke-virtual {v11}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v12

    .line 1606
    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v13

    .line 1605
    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v12

    if-eqz v12, :cond_d2

    goto :goto_10e

    .line 1607
    :cond_d2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1608
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " trying to apply app bounds outside of parent for non-trusted host, TaskFragmentOrganizer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1611
    .restart local v4    # "msg":Ljava/lang/String;
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1614
    .end local v4    # "msg":Ljava/lang/String;
    :cond_10e
    :goto_10e
    return-void

    .line 1580
    .end local v10    # "requestedWindowConfig":Landroid/app/WindowConfiguration;
    .end local v11    # "parentWindowConfig":Landroid/app/WindowConfiguration;
    :cond_10f
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1581
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " trying to apply screen width/height greater than parent\'s for non-trusted host, TaskFragmentOrganizer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1584
    .restart local v4    # "msg":Ljava/lang/String;
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1558
    .end local v4    # "msg":Ljava/lang/String;
    .end local v7    # "wcParent":Lcom/android/server/wm/WindowContainer;
    .end local v8    # "requestedConfig":Landroid/content/res/Configuration;
    .end local v9    # "parentConfig":Landroid/content/res/Configuration;
    :cond_14b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1559
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " trying to apply changes of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to TaskFragment TaskFragmentOrganizer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1562
    .restart local v4    # "msg":Ljava/lang/String;
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private enforceTaskFragmentOrganized(Ljava/lang/String;Lcom/android/server/wm/WindowContainer;Landroid/window/ITaskFragmentOrganizer;)V
    .registers 8
    .param p1, "func"    # Ljava/lang/String;
    .param p2, "wc"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "organizer"    # Landroid/window/ITaskFragmentOrganizer;

    .line 1526
    const-string v0, "WindowOrganizerController"

    if-nez p2, :cond_a

    .line 1527
    const-string v1, "Attempt to operate on window that no longer exists"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    return-void

    .line 1531
    :cond_a
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    .line 1532
    .local v1, "tf":Lcom/android/server/wm/TaskFragment;
    if-eqz v1, :cond_17

    invoke-virtual {v1, p3}, Lcom/android/server/wm/TaskFragment;->hasTaskFragmentOrganizer(Landroid/window/ITaskFragmentOrganizer;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1539
    return-void

    .line 1533
    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1534
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " trying to modify window container not belonging to the TaskFragmentOrganizer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1536
    .local v2, "msg":Ljava/lang/String;
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceTaskPermission(Ljava/lang/String;)V
    .registers 2
    .param p1, "func"    # Ljava/lang/String;

    .line 1436
    invoke-static {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 1437
    return-void
.end method

.method private enforceTaskPermission(Ljava/lang/String;Landroid/window/WindowContainerTransaction;)V
    .registers 4
    .param p1, "func"    # Ljava/lang/String;
    .param p2, "t"    # Landroid/window/WindowContainerTransaction;

    .line 1440
    if-eqz p2, :cond_d

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_d

    .line 1447
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowOrganizerController;->enforceOperationsAllowedForTaskFragmentOrganizer(Ljava/lang/String;Landroid/window/WindowContainerTransaction;)V

    .line 1448
    return-void

    .line 1441
    :cond_d
    :goto_d
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    .line 1442
    return-void
.end method

.method static synthetic lambda$applyDisplayAreaChanges$4(Landroid/window/WindowContainerTransaction$Change;[ILjava/lang/Object;)V
    .registers 7
    .param p0, "c"    # Landroid/window/WindowContainerTransaction$Change;
    .param p1, "effects"    # [I
    .param p2, "task"    # Ljava/lang/Object;

    .line 657
    move-object v0, p2

    check-cast v0, Lcom/android/server/wm/Task;

    .line 658
    .local v0, "tr":Lcom/android/server/wm/Task;
    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1c

    .line 659
    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction$Change;->getHidden()Z

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 660
    const/4 v1, 0x0

    aget v3, p1, v1

    or-int/2addr v2, v3

    aput v2, p1, v1

    .line 663
    :cond_1c
    return-void
.end method

.method static synthetic lambda$applyHierarchyOp$5(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2
    .param p0, "a"    # Lcom/android/server/wm/ActivityRecord;

    .line 764
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$reparentChildrenTasksHierarchyOp$9(Lcom/android/server/wm/WindowContainer;ZLcom/android/server/wm/TaskDisplayArea;Landroid/window/WindowContainerTransaction$HierarchyOp;Ljava/util/ArrayList;Lcom/android/server/wm/Task;)Z
    .registers 10
    .param p0, "finalCurrentParent"    # Lcom/android/server/wm/WindowContainer;
    .param p1, "newParentInMultiWindow"    # Z
    .param p2, "newParentTda"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p3, "hop"    # Landroid/window/WindowContainerTransaction$HierarchyOp;
    .param p4, "tasksToReparent"    # Ljava/util/ArrayList;
    .param p5, "task"    # Lcom/android/server/wm/Task;

    .line 1233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Processing task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowOrganizerController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    iget-boolean v0, p5, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    const/4 v2, 0x0

    if-nez v0, :cond_a8

    invoke-virtual {p5}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eq v0, p0, :cond_25

    goto/16 :goto_a8

    .line 1240
    :cond_25
    if-eqz p1, :cond_45

    invoke-virtual {p5, p2}, Lcom/android/server/wm/Task;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 1241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reparentChildrenTasksHierarchyOp non-resizeable task to multi window, task="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    return v2

    .line 1245
    :cond_45
    invoke-virtual {p3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityTypes()[I

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 1246
    invoke-virtual {p3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityTypes()[I

    move-result-object v0

    invoke-virtual {p5}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 1247
    return v2

    .line 1249
    :cond_5e
    invoke-virtual {p3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getWindowingModes()[I

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_77

    .line 1250
    invoke-virtual {p3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getWindowingModes()[I

    move-result-object v0

    invoke-virtual {p5}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-nez v0, :cond_77

    .line 1251
    return v2

    .line 1255
    :cond_77
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v0

    invoke-virtual {p5}, Lcom/android/server/wm/Task;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->skipTaskForMultiWindow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 1256
    invoke-virtual {p3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getReparentTopOnly()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 1257
    return v2

    .line 1261
    :cond_8c
    invoke-virtual {p3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 1262
    invoke-virtual {p4, v2, p5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_99

    .line 1264
    :cond_96
    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1266
    :goto_99
    invoke-virtual {p3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getReparentTopOnly()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a7

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_a7

    move v2, v1

    :cond_a7
    return v2

    .line 1238
    :cond_a8
    :goto_a8
    return v2
.end method

.method static synthetic lambda$reparentTaskFragment$10(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p0, "newParentTF"    # Lcom/android/server/wm/TaskFragment;
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 1721
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivity(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private prepareSyncWithOrganizer(Landroid/window/IWindowContainerTransactionCallback;)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;
    .registers 5
    .param p1, "callback"    # Landroid/window/IWindowContainerTransactionCallback;

    .line 1352
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 1353
    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/BLASTSyncEngine;->prepareSyncSet(Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;Ljava/lang/String;)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object v0

    .line 1354
    .local v0, "s":Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    iget v2, v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1355
    return-object v0
.end method

.method private reparentChildrenTasksHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;Lcom/android/server/wm/Transition;I)I
    .registers 21
    .param p1, "hop"    # Landroid/window/WindowContainerTransaction$HierarchyOp;
    .param p2, "transition"    # Lcom/android/server/wm/Transition;
    .param p3, "syncId"    # I

    .line 1189
    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 1190
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_17

    :cond_16
    move-object v0, v1

    .line 1191
    .local v0, "currentParent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :goto_17
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 1192
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    goto :goto_27

    :cond_26
    nop

    .line 1193
    .local v1, "newParent":Lcom/android/server/wm/WindowContainer;
    :goto_27
    if-nez v0, :cond_46

    if-eqz v1, :cond_2c

    goto :goto_46

    .line 1194
    :cond_2c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reparentChildrenTasksHierarchyOp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1195
    :cond_46
    :goto_46
    if-nez v0, :cond_57

    .line 1196
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    move-object v9, v0

    move-object v10, v1

    goto :goto_6a

    .line 1197
    :cond_57
    if-nez v1, :cond_68

    .line 1198
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    move-object v9, v0

    move-object v10, v1

    goto :goto_6a

    .line 1197
    :cond_68
    move-object v9, v0

    move-object v10, v1

    .line 1201
    .end local v0    # "currentParent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v1    # "newParent":Lcom/android/server/wm/WindowContainer;
    .local v9, "currentParent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .local v10, "newParent":Lcom/android/server/wm/WindowContainer;
    :goto_6a
    const/4 v11, 0x0

    const-string v0, "WindowOrganizerController"

    if-ne v9, v10, :cond_87

    .line 1202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reparentChildrenTasksHierarchyOp parent not changing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    return v11

    .line 1205
    :cond_87
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v1

    const-string v2, " hop="

    if-nez v1, :cond_af

    .line 1206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reparentChildrenTasksHierarchyOp currentParent detached="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    return v11

    .line 1210
    :cond_af
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v1

    if-nez v1, :cond_d5

    .line 1211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reparentChildrenTasksHierarchyOp newParent detached="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    return v11

    .line 1215
    :cond_d5
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_fb

    .line 1216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reparentChildrenTasksHierarchyOp newParent in PIP="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    return v11

    .line 1221
    :cond_fb
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->inMultiWindowMode()Z

    move-result v12

    .line 1222
    .local v12, "newParentInMultiWindow":Z
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_10f

    .line 1223
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    move-object v3, v1

    goto :goto_114

    .line 1224
    :cond_10f
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    move-object v3, v1

    :goto_114
    nop

    .line 1225
    .local v3, "newParentTda":Lcom/android/server/wm/TaskDisplayArea;
    move-object v1, v9

    .line 1226
    .local v1, "finalCurrentParent":Lcom/android/server/wm/WindowContainer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reparentChildrenTasksHierarchyOp currentParent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " newParent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 1232
    .local v13, "tasksToReparent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    new-instance v14, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda10;

    move-object v0, v14

    move v2, v12

    move-object/from16 v4, p1

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/wm/WindowContainer;ZLcom/android/server/wm/TaskDisplayArea;Landroid/window/WindowContainerTransaction$HierarchyOp;Ljava/util/ArrayList;)V

    invoke-virtual {v9, v14}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Predicate;)Z

    .line 1269
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1270
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_157
    if-ge v2, v0, :cond_19b

    .line 1271
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    .line 1272
    .local v4, "task":Lcom/android/server/wm/Task;
    if-ltz v8, :cond_167

    .line 1273
    move-object/from16 v5, p0

    invoke-virtual {v5, v8, v4}, Lcom/android/server/wm/WindowOrganizerController;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    goto :goto_169

    .line 1272
    :cond_167
    move-object/from16 v5, p0

    .line 1275
    :goto_169
    if-eqz v7, :cond_16e

    invoke-virtual {v7, v4}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 1277
    :cond_16e
    instance-of v14, v10, Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v14, :cond_17f

    .line 1279
    move-object v14, v10

    check-cast v14, Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v15

    invoke-virtual {v4, v14, v15}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    move/from16 v16, v0

    goto :goto_196

    .line 1281
    :cond_17f
    move-object v14, v10

    check-cast v14, Lcom/android/server/wm/Task;

    .line 1282
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v15

    if-eqz v15, :cond_18c

    const v15, 0x7fffffff

    goto :goto_18e

    :cond_18c
    const/high16 v15, -0x80000000

    .line 1281
    :goto_18e
    move/from16 v16, v0

    .end local v0    # "count":I
    .local v16, "count":I
    const-string/jumbo v0, "processChildrenTaskReparentHierarchyOp"

    invoke-virtual {v4, v14, v15, v11, v0}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;IZLjava/lang/String;)V

    .line 1270
    .end local v4    # "task":Lcom/android/server/wm/Task;
    :goto_196
    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v16

    goto :goto_157

    .end local v16    # "count":I
    .restart local v0    # "count":I
    :cond_19b
    move-object/from16 v5, p0

    move/from16 v16, v0

    .line 1287
    .end local v0    # "count":I
    .end local v2    # "i":I
    .restart local v16    # "count":I
    if-eqz v7, :cond_1a4

    invoke-virtual {v7, v10}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 1289
    :cond_1a4
    const/4 v0, 0x2

    return v0
.end method

.method private sanitizeAndApplyHierarchyOp(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$HierarchyOp;)I
    .registers 14
    .param p1, "container"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "hop"    # Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 1120
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1121
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_15b

    .line 1124
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 1125
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    const-string v2, "WindowOrganizerController"

    const/4 v3, 0x0

    if-nez v1, :cond_26

    .line 1126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Container is no longer attached: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    return v3

    .line 1129
    :cond_26
    move-object v4, v0

    .line 1131
    .local v4, "as":Lcom/android/server/wm/Task;
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->isReparent()Z

    move-result v5

    const v6, 0x7fffffff

    const/high16 v7, -0x80000000

    if-eqz v5, :cond_14a

    .line 1132
    nop

    .line 1133
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v5

    if-nez v5, :cond_48

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v5, :cond_46

    goto :goto_48

    :cond_46
    move v5, v3

    goto :goto_49

    :cond_48
    :goto_48
    const/4 v5, 0x1

    .line 1134
    .local v5, "isNonOrganizedRootableTask":Z
    :goto_49
    if-eqz v5, :cond_131

    .line 1135
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v8

    if-nez v8, :cond_56

    .line 1136
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v8

    goto :goto_5e

    .line 1137
    :cond_56
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v8

    :goto_5e
    nop

    .line 1138
    .local v8, "newParent":Lcom/android/server/wm/WindowContainer;
    if-nez v8, :cond_67

    .line 1139
    const-string v6, "Can\'t resolve parent window from token"

    invoke-static {v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    return v3

    .line 1142
    :cond_67
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    if-eq v9, v8, :cond_112

    .line 1143
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v9

    if-eqz v9, :cond_80

    .line 1145
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v3

    invoke-virtual {v4, v2, v3}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    goto/16 :goto_12f

    .line 1146
    :cond_80
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v9

    if-eqz v9, :cond_f9

    .line 1147
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->inMultiWindowMode()Z

    move-result v9

    if-eqz v9, :cond_e7

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v9

    if-eqz v9, :cond_e7

    .line 1148
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->inPinnedWindowingMode()Z

    move-result v9

    const-string v10, " task="

    if-eqz v9, :cond_b9

    .line 1149
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t support moving a task to another PIP window... newParent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    return v3

    .line 1153
    :cond_b9
    nop

    .line 1154
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v9

    .line 1153
    invoke-virtual {v0, v9}, Lcom/android/server/wm/Task;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v9

    if-nez v9, :cond_e7

    .line 1155
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t support task that doesn\'t support multi-window mode in multi-window mode... newParent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    return v3

    .line 1161
    :cond_e7
    move-object v2, v8

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1162
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v9

    if-eqz v9, :cond_f1

    goto :goto_f2

    :cond_f1
    move v6, v7

    .line 1161
    :goto_f2
    const-string/jumbo v7, "sanitizeAndApplyHierarchyOp"

    invoke-virtual {v0, v2, v6, v3, v7}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;IZLjava/lang/String;)V

    goto :goto_12f

    .line 1165
    :cond_f9
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can only reparent task to another task or taskDisplayArea, but not "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1170
    :cond_112
    if-eqz v8, :cond_11a

    instance-of v2, v8, Lcom/android/server/wm/TaskDisplayArea;

    if-nez v2, :cond_11a

    .line 1171
    move-object v2, v8

    goto :goto_11e

    :cond_11a
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    :goto_11e
    check-cast v2, Lcom/android/server/wm/Task;

    .line 1172
    .local v2, "rootTask":Lcom/android/server/wm/Task;
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v9

    .line 1173
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v10

    if-eqz v10, :cond_12b

    goto :goto_12c

    :cond_12b
    move v6, v7

    .line 1172
    :goto_12c
    invoke-virtual {v9, v6, v2, v3}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 1176
    .end local v2    # "rootTask":Lcom/android/server/wm/Task;
    .end local v8    # "newParent":Lcom/android/server/wm/WindowContainer;
    :goto_12f
    nop

    .line 1179
    .end local v5    # "isNonOrganizedRootableTask":Z
    goto :goto_159

    .line 1177
    .restart local v5    # "isNonOrganizedRootableTask":Z
    :cond_131
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reparenting leaf Tasks is not supported now. "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1180
    .end local v5    # "isNonOrganizedRootableTask":Z
    :cond_14a
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 1181
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v5

    if-eqz v5, :cond_155

    goto :goto_156

    :cond_155
    move v6, v7

    .line 1180
    :goto_156
    invoke-virtual {v2, v6, v0, v3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 1184
    :goto_159
    const/4 v2, 0x2

    return v2

    .line 1122
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "as":Lcom/android/server/wm/Task;
    :cond_15b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid container in hierarchy op"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private sanitizeWindowContainer(Lcom/android/server/wm/WindowContainer;)V
    .registers 4
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 1309
    instance-of v0, p1, Lcom/android/server/wm/TaskFragment;

    if-nez v0, :cond_11

    instance-of v0, p1, Lcom/android/server/wm/DisplayArea;

    if-eqz v0, :cond_9

    goto :goto_11

    .line 1310
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid token in task fragment or displayArea transaction"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1312
    :cond_11
    :goto_11
    return-void
.end method

.method private sendMinimumDimensionViolation(Lcom/android/server/wm/TaskFragment;Landroid/graphics/Point;Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 8
    .param p1, "taskFragment"    # Lcom/android/server/wm/TaskFragment;
    .param p2, "minDimensions"    # Landroid/graphics/Point;
    .param p3, "errorCallbackToken"    # Landroid/os/IBinder;
    .param p4, "reason"    # Ljava/lang/String;

    .line 1082
    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_3a

    .line 1085
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The task fragment\'s bounds:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1086
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not satisfy minimum dimensions:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 1091
    .local v0, "exception":Ljava/lang/Throwable;
    return-void

    .line 1083
    .end local v0    # "exception":Ljava/lang/Throwable;
    :cond_3a
    :goto_3a
    return-void
.end method

.method private setAdjacentRootsHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;)I
    .registers 7
    .param p1, "hop"    # Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 1293
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    .line 1294
    .local v0, "root1":Lcom/android/server/wm/TaskFragment;
    nop

    .line 1295
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getAdjacentRoot()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    .line 1296
    .local v1, "root2":Lcom/android/server/wm/TaskFragment;
    iget-boolean v2, v0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v2, :cond_40

    iget-boolean v2, v1, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v2, :cond_40

    .line 1300
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskFragmentInPip()Z

    move-result v2

    if-nez v2, :cond_37

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskFragmentInPip()Z

    move-result v2

    if-eqz v2, :cond_2e

    goto :goto_37

    .line 1304
    :cond_2e
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getMoveAdjacentTogether()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskFragment;->setAdjacentTaskFragment(Lcom/android/server/wm/TaskFragment;Z)V

    .line 1305
    const/4 v2, 0x2

    return v2

    .line 1301
    :cond_37
    :goto_37
    const-string v2, "WindowOrganizerController"

    const-string v3, "Attempt to set adjacent TaskFragment in PIP Task"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    const/4 v2, 0x0

    return v2

    .line 1297
    :cond_40
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAdjacentRootsHierarchyOp: Not created by organizer root1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " root2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private waitAsyncStart(Ljava/util/function/IntSupplier;)V
    .registers 6
    .param p1, "startActivity"    # Ljava/util/function/IntSupplier;

    .line 1098
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1099
    .local v0, "starterResult":[Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v3, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowOrganizerController;[Ljava/lang/Integer;Ljava/util/function/IntSupplier;)V

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 1110
    :goto_13
    aget-object v1, v0, v2

    if-nez v1, :cond_1f

    .line 1112
    :try_start_17
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1c} :catch_1d

    goto :goto_1e

    .line 1113
    :catch_1d
    move-exception v1

    .line 1114
    :goto_1e
    goto :goto_13

    .line 1116
    :cond_1f
    return-void
.end method


# virtual methods
.method addToSyncSet(ILcom/android/server/wm/WindowContainer;)V
    .registers 4
    .param p1, "syncId"    # I
    .param p2, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 1373
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/BLASTSyncEngine;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    .line 1374
    return-void
.end method

.method public applySyncTransaction(Landroid/window/WindowContainerTransaction;Landroid/window/IWindowContainerTransactionCallback;)I
    .registers 12
    .param p1, "t"    # Landroid/window/WindowContainerTransaction;
    .param p2, "callback"    # Landroid/window/IWindowContainerTransactionCallback;

    .line 199
    if-eqz p1, :cond_6d

    .line 202
    const-string v0, "applySyncTransaction()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    .line 203
    new-instance v0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    invoke-direct {v0}, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;-><init>()V

    .line 204
    .local v0, "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 206
    .local v1, "ident":J
    :try_start_10
    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_68

    :try_start_13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 207
    const/4 v4, 0x0

    if-nez p2, :cond_25

    .line 208
    const/4 v5, -0x1

    invoke-direct {p0, p1, v5, v4, v0}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    .line 209
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_62

    .line 243
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 209
    return v5

    .line 224
    :cond_25
    :try_start_25
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowOrganizerController;->prepareSyncWithOrganizer(Landroid/window/IWindowContainerTransactionCallback;)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object v5

    .line 225
    .local v5, "syncGroup":Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;
    iget v6, v5, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    .line 226
    .local v6, "syncId":I
    iget-object v7, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v7}, Lcom/android/server/wm/BLASTSyncEngine;->hasActiveSync()Z

    move-result v7

    if-nez v7, :cond_47

    .line 227
    iget-object v7, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v7, v5}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    .line 228
    invoke-direct {p0, p1, v6, v4, v0}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    .line 229
    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowOrganizerController;->setSyncReady(I)V

    goto :goto_5a

    .line 233
    :cond_47
    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    new-instance v7, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0, v5}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    new-instance v8, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda2;

    invoke-direct {v8, p0, p1, v6, v0}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    invoke-virtual {v4, v7, v8}, Lcom/android/server/wm/BLASTSyncEngine;->queueSyncSet(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 240
    :goto_5a
    monitor-exit v3
    :try_end_5b
    .catchall {:try_start_25 .. :try_end_5b} :catchall_62

    .line 243
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 240
    return v6

    .line 241
    .end local v5    # "syncGroup":Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;
    .end local v6    # "syncId":I
    :catchall_62
    move-exception v4

    :try_start_63
    monitor-exit v3
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    :try_start_64
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .end local v1    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .end local p1    # "t":Landroid/window/WindowContainerTransaction;
    .end local p2    # "callback":Landroid/window/IWindowContainerTransactionCallback;
    throw v4
    :try_end_68
    .catchall {:try_start_64 .. :try_end_68} :catchall_68

    .line 243
    .restart local v0    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .restart local p1    # "t":Landroid/window/WindowContainerTransaction;
    .restart local p2    # "callback":Landroid/window/IWindowContainerTransactionCallback;
    :catchall_68
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 244
    throw v3

    .line 200
    .end local v0    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .end local v1    # "ident":J
    :cond_6d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null transaction passed to applySyncTransaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public applyTransaction(Landroid/window/WindowContainerTransaction;)V
    .registers 8
    .param p1, "t"    # Landroid/window/WindowContainerTransaction;

    .line 181
    if-eqz p1, :cond_2f

    .line 184
    const-string v0, "applyTransaction()"

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskPermission(Ljava/lang/String;Landroid/window/WindowContainerTransaction;)V

    .line 185
    new-instance v0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    invoke-direct {v0}, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;-><init>()V

    .line 186
    .local v0, "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 188
    .local v1, "ident":J
    :try_start_10
    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_2a

    :try_start_13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 189
    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, v4, v5, v0}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    .line 190
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_24

    :try_start_1c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_2a

    .line 192
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 193
    nop

    .line 194
    return-void

    .line 190
    :catchall_24
    move-exception v4

    :try_start_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    :try_start_26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .end local v1    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .end local p1    # "t":Landroid/window/WindowContainerTransaction;
    throw v4
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_2a

    .line 192
    .restart local v0    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .restart local p1    # "t":Landroid/window/WindowContainerTransaction;
    :catchall_2a
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 193
    throw v3

    .line 182
    .end local v0    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .end local v1    # "ident":J
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null transaction passed to applyTransaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method cleanUpEmbeddedTaskFragment(Lcom/android/server/wm/TaskFragment;)V
    .registers 4
    .param p1, "taskFragment"    # Lcom/android/server/wm/TaskFragment;

    .line 1781
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1782
    return-void
.end method

.method createTaskFragment(Landroid/window/TaskFragmentCreationParams;Landroid/os/IBinder;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V
    .registers 13
    .param p1, "creationParams"    # Landroid/window/TaskFragmentCreationParams;
    .param p2, "errorCallbackToken"    # Landroid/os/IBinder;
    .param p3, "caller"    # Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    .line 1618
    nop

    .line 1619
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getOwnerToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1620
    .local v0, "ownerActivity":Lcom/android/server/wm/ActivityRecord;
    nop

    .line 1621
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getOrganizer()Landroid/window/TaskFragmentOrganizerToken;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/TaskFragmentOrganizerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1620
    invoke-static {v1}, Landroid/window/ITaskFragmentOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v1

    .line 1623
    .local v1, "organizer":Landroid/window/ITaskFragmentOrganizer;
    if-eqz v0, :cond_124

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-nez v2, :cond_20

    goto/16 :goto_124

    .line 1630
    :cond_20
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v2

    if-nez v2, :cond_36

    .line 1631
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not allowed to operate with non-resizable owner Activity"

    invoke-direct {v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1633
    .local v7, "exception":Ljava/lang/IllegalArgumentException;
    const/4 v5, 0x0

    const/4 v6, 0x7

    move-object v2, p0

    move-object v3, v1

    move-object v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 1635
    return-void

    .line 1638
    .end local v7    # "exception":Ljava/lang/IllegalArgumentException;
    :cond_36
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v8

    .line 1639
    .local v8, "ownerTask":Lcom/android/server/wm/Task;
    iget v2, v8, Lcom/android/server/wm/Task;->effectiveUid:I

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v3

    if-ne v2, v3, :cond_114

    iget v2, v8, Lcom/android/server/wm/Task;->effectiveUid:I

    iget v3, p3, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    if-eq v2, v3, :cond_4a

    goto/16 :goto_114

    .line 1648
    :cond_4a
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 1649
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not allowed to create TaskFragment in PIP Task"

    invoke-direct {v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1651
    .local v7, "exception":Ljava/lang/Throwable;
    const/4 v5, 0x0

    const/4 v6, 0x7

    move-object v2, p0

    move-object v3, v1

    move-object v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 1653
    return-void

    .line 1655
    .end local v7    # "exception":Ljava/lang/Throwable;
    :cond_60
    new-instance v2, Lcom/android/server/wm/TaskFragment;

    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1656
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/wm/TaskFragment;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;Z)V

    .line 1659
    .local v2, "taskFragment":Lcom/android/server/wm/TaskFragment;
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getOrganizer()Landroid/window/TaskFragmentOrganizerToken;

    move-result-object v3

    .line 1660
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v4

    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 1659
    invoke-virtual {v2, v3, v4, v6}, Lcom/android/server/wm/TaskFragment;->setTaskFragmentOrganizer(Landroid/window/TaskFragmentOrganizerToken;ILjava/lang/String;)V

    .line 1662
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getPairedPrimaryFragmentToken()Landroid/os/IBinder;

    move-result-object v3

    const v4, 0x7fffffff

    const/4 v6, -0x1

    if-eqz v3, :cond_9a

    .line 1665
    nop

    .line 1666
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getPairedPrimaryFragmentToken()Landroid/os/IBinder;

    move-result-object v3

    .line 1665
    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowOrganizerController;->getTaskFragment(Landroid/os/IBinder;)Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    .line 1667
    .local v3, "pairedPrimaryTaskFragment":Lcom/android/server/wm/TaskFragment;
    iget-object v7, v8, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v7, v3}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 1668
    .local v7, "pairedPosition":I
    if-eq v7, v6, :cond_98

    add-int/lit8 v4, v7, 0x1

    :cond_98
    move v3, v4

    .line 1669
    .end local v7    # "pairedPosition":I
    .local v3, "position":I
    goto :goto_b8

    .end local v3    # "position":I
    :cond_9a
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getPairedActivityToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_b5

    .line 1672
    nop

    .line 1673
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getPairedActivityToken()Landroid/os/IBinder;

    move-result-object v3

    .line 1672
    invoke-static {v3}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1674
    .local v3, "pairedActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v7, v8, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v7, v3}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 1675
    .restart local v7    # "pairedPosition":I
    if-eq v7, v6, :cond_b3

    add-int/lit8 v4, v7, 0x1

    :cond_b3
    move v3, v4

    .line 1676
    .end local v7    # "pairedPosition":I
    .local v3, "position":I
    goto :goto_b8

    .line 1677
    .end local v3    # "position":I
    :cond_b5
    const v3, 0x7fffffff

    .line 1681
    .restart local v3    # "position":I
    :goto_b8
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 1682
    .local v4, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_d9

    iget-object v6, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_d9

    iget-object v6, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1683
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_d9

    iget-object v6, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    goto :goto_da

    :cond_d9
    const/4 v6, 0x0

    .line 1684
    .local v6, "topPkg":Ljava/lang/String;
    :goto_da
    const-string v7, "com.android.packageinstaller.permission.ui.GrantPermissionsActivity"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_eb

    .line 1685
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-virtual {v8, v2, v7}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    goto :goto_ee

    .line 1687
    :cond_eb
    invoke-virtual {v8, v2, v3}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 1692
    :goto_ee
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getScale()F

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/server/wm/TaskFragment;->setScale(F)V

    .line 1693
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->isMiuiEmbedded()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/server/wm/TaskFragment;->setMiuiEmbedded(Z)V

    .line 1695
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getWindowingMode()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/server/wm/TaskFragment;->setWindowingMode(I)V

    .line 1696
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getInitialBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/wm/TaskFragment;->setBounds(Landroid/graphics/Rect;)I

    .line 1697
    iget-object v5, p0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v5, v7, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1698
    return-void

    .line 1641
    .end local v2    # "taskFragment":Lcom/android/server/wm/TaskFragment;
    .end local v3    # "position":I
    .end local v4    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v6    # "topPkg":Ljava/lang/String;
    :cond_114
    :goto_114
    new-instance v7, Ljava/lang/SecurityException;

    const-string v2, "Not allowed to operate with the ownerToken while the root activity of the target task belong to the different app"

    invoke-direct {v7, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 1644
    .local v7, "exception":Ljava/lang/Throwable;
    const/4 v5, 0x0

    const/4 v6, 0x7

    move-object v2, p0

    move-object v3, v1

    move-object v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 1646
    return-void

    .line 1624
    .end local v7    # "exception":Ljava/lang/Throwable;
    .end local v8    # "ownerTask":Lcom/android/server/wm/Task;
    :cond_124
    :goto_124
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not allowed to operate with invalid ownerToken"

    invoke-direct {v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1626
    .restart local v7    # "exception":Ljava/lang/Throwable;
    const/4 v5, 0x0

    const/4 v6, 0x7

    move-object v2, p0

    move-object v3, v1

    move-object v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 1628
    return-void
.end method

.method public finishTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/IWindowContainerTransactionCallback;)I
    .registers 14
    .param p1, "transitionToken"    # Landroid/os/IBinder;
    .param p2, "t"    # Landroid/window/WindowContainerTransaction;
    .param p3, "callback"    # Landroid/window/IWindowContainerTransactionCallback;

    .line 354
    const-string v0, "finishTransition()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    .line 355
    new-instance v5, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    invoke-direct {v5}, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;-><init>()V

    .line 356
    .local v5, "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 358
    .local v7, "ident":J
    :try_start_e
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_48

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 359
    const/4 v1, -0x1

    .line 360
    .local v1, "syncId":I
    if-eqz p2, :cond_20

    if-eqz p3, :cond_20

    .line 361
    invoke-virtual {p0, p3}, Lcom/android/server/wm/WindowOrganizerController;->startSyncWithOrganizer(Landroid/window/IWindowContainerTransactionCallback;)I

    move-result v2

    move v1, v2

    move v9, v1

    goto :goto_21

    .line 363
    :cond_20
    move v9, v1

    .end local v1    # "syncId":I
    .local v9, "syncId":I
    :goto_21
    invoke-static {p1}, Lcom/android/server/wm/Transition;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/Transition;

    move-result-object v6

    .line 366
    .local v6, "transition":Lcom/android/server/wm/Transition;
    if-eqz p2, :cond_2e

    .line 367
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p2

    move v3, v9

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition;)V

    .line 369
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrganizerController;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/TransitionController;->finishTransition(Landroid/os/IBinder;)V

    .line 370
    if-ltz v9, :cond_3a

    .line 371
    invoke-virtual {p0, v9}, Lcom/android/server/wm/WindowOrganizerController;->setSyncReady(I)V

    .line 373
    :cond_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_11 .. :try_end_3b} :catchall_42

    .line 376
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 373
    return v9

    .line 374
    .end local v6    # "transition":Lcom/android/server/wm/Transition;
    .end local v9    # "syncId":I
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    :try_start_44
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v5    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .end local v7    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .end local p1    # "transitionToken":Landroid/os/IBinder;
    .end local p2    # "t":Landroid/window/WindowContainerTransaction;
    .end local p3    # "callback":Landroid/window/IWindowContainerTransactionCallback;
    throw v1
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_48

    .line 376
    .restart local v5    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .restart local v7    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .restart local p1    # "transitionToken":Landroid/os/IBinder;
    .restart local p2    # "t":Landroid/window/WindowContainerTransaction;
    .restart local p3    # "callback":Landroid/window/IWindowContainerTransactionCallback;
    :catchall_48
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 377
    throw v0
.end method

.method public getDisplayAreaOrganizerController()Landroid/window/IDisplayAreaOrganizerController;
    .registers 2

    .line 1336
    const-string v0, "getDisplayAreaOrganizerController()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    .line 1337
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    return-object v0
.end method

.method getTaskFragment(Landroid/os/IBinder;)Lcom/android/server/wm/TaskFragment;
    .registers 3
    .param p1, "tfToken"    # Landroid/os/IBinder;

    .line 1777
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskFragment;

    return-object v0
.end method

.method public getTaskFragmentOrganizerController()Landroid/window/ITaskFragmentOrganizerController;
    .registers 2

    .line 1342
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    return-object v0
.end method

.method public getTaskOrganizerController()Landroid/window/ITaskOrganizerController;
    .registers 2

    .line 1330
    const-string v0, "getTaskOrganizerController()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    .line 1331
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    return-object v0
.end method

.method getTransitionController()Lcom/android/server/wm/TransitionController;
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    return-object v0
.end method

.method public getTransitionMetricsReporter()Landroid/window/ITransitionMetricsReporter;
    .registers 2

    .line 1416
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mTransitionMetricsReporter:Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;

    return-object v0
.end method

.method synthetic lambda$applyHierarchyOp$6$com-android-server-wm-WindowOrganizerController(Lcom/android/server/wm/WindowOrganizerController$CallerInfo;ILcom/android/server/wm/SafeActivityOptions;)I
    .registers 7
    .param p1, "caller"    # Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .param p2, "taskId"    # I
    .param p3, "safeOptions"    # Lcom/android/server/wm/SafeActivityOptions;

    .line 991
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v1, p1, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    iget v2, p1, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/android/server/wm/ActivityTaskSupervisor;->startActivityFromRecents(IIILcom/android/server/wm/SafeActivityOptions;)I

    move-result v0

    return v0
.end method

.method synthetic lambda$applyHierarchyOp$7$com-android-server-wm-WindowOrganizerController(Landroid/window/WindowContainerTransaction$HierarchyOp;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 14
    .param p1, "hop"    # Landroid/window/WindowContainerTransaction$HierarchyOp;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 1012
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 1013
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v2

    .line 1014
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getWhitelistToken()Landroid/os/IBinder;

    move-result-object v3

    .line 1015
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityIntent()Landroid/content/Intent;

    move-result-object v5

    .line 1012
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p2

    move-object v9, p3

    invoke-virtual/range {v1 .. v9}, Landroid/app/ActivityManagerInternal;->sendIntentSender(Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method synthetic lambda$applySyncTransaction$0$com-android-server-wm-WindowOrganizerController(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V
    .registers 3
    .param p1, "syncGroup"    # Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 234
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    return-void
.end method

.method synthetic lambda$applySyncTransaction$1$com-android-server-wm-WindowOrganizerController(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/WindowOrganizerController$CallerInfo;)V
    .registers 5
    .param p1, "t"    # Landroid/window/WindowContainerTransaction;
    .param p2, "syncId"    # I
    .param p3, "caller"    # Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    .line 236
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    .line 237
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowOrganizerController;->setSyncReady(I)V

    .line 238
    return-void
.end method

.method synthetic lambda$startTransition$2$com-android-server-wm-WindowOrganizerController(Lcom/android/server/wm/Transition;)V
    .registers 3
    .param p1, "nextTransition"    # Lcom/android/server/wm/Transition;

    .line 290
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TransitionController;->moveToCollecting(Lcom/android/server/wm/Transition;)V

    return-void
.end method

.method synthetic lambda$startTransition$3$com-android-server-wm-WindowOrganizerController(Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Z)V
    .registers 6
    .param p1, "nextTransition"    # Lcom/android/server/wm/Transition;
    .param p2, "wct"    # Landroid/window/WindowContainerTransaction;
    .param p3, "caller"    # Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .param p4, "needsSetReady"    # Z

    .line 292
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->start()V

    .line 293
    const/4 v0, -0x1

    invoke-direct {p0, p2, v0, p1, p3}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    .line 294
    if-eqz p4, :cond_c

    .line 295
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->setAllReady()V

    .line 297
    :cond_c
    return-void
.end method

.method synthetic lambda$waitAsyncStart$8$com-android-server-wm-WindowOrganizerController([Ljava/lang/Integer;Ljava/util/function/IntSupplier;)V
    .registers 6
    .param p1, "starterResult"    # [Ljava/lang/Integer;
    .param p2, "startActivity"    # Ljava/util/function/IntSupplier;

    .line 1101
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p2}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_c

    .line 1105
    goto :goto_1a

    .line 1102
    :catchall_c
    move-exception v1

    .line 1103
    .local v1, "t":Ljava/lang/Throwable;
    const/16 v2, -0x60

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v0

    .line 1104
    const-string v0, "WindowOrganizerController"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1106
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_1a
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_1d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1107
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1108
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1109
    return-void

    .line 1108
    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
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

    .line 173
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/window/IWindowOrganizerController$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 174
    :catch_5
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "WindowOrganizerController"

    invoke-static {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->logAndRethrowRuntimeExceptionOnTransact(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
    .registers 12
    .param p1, "syncId"    # I
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 1378
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v0, :cond_18

    int-to-long v0, p1

    .local v0, "protoLogParam0":J
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x1da914ac

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v2, v3, v5, v4, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1379
    .end local v0    # "protoLogParam0":J
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    .line 1380
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/IWindowContainerTransactionCallback;

    .line 1383
    .local v0, "callback":Landroid/window/IWindowContainerTransactionCallback;
    :try_start_24
    invoke-interface {v0, p1, p2}, Landroid/window/IWindowContainerTransactionCallback;->onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_27} :catch_28

    .line 1388
    goto :goto_2c

    .line 1384
    :catch_28
    move-exception v1

    .line 1387
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1390
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2c
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1391
    return-void
.end method

.method public registerTransitionPlayer(Landroid/window/ITransitionPlayer;)V
    .registers 10
    .param p1, "player"    # Landroid/window/ITransitionPlayer;

    .line 1395
    const-string/jumbo v0, "registerTransitionPlayer()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    .line 1396
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1397
    .local v0, "callerPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1398
    .local v1, "callerUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1400
    .local v2, "ident":J
    :try_start_12
    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_3a

    :try_start_15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1401
    iget-object v5, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1402
    invoke-virtual {v5, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v5

    .line 1403
    .local v5, "wpc":Lcom/android/server/wm/WindowProcessController;
    const/4 v6, 0x0

    .line 1404
    .local v6, "appThread":Landroid/app/IApplicationThread;
    if-eqz v5, :cond_26

    .line 1405
    invoke-virtual {v5}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v7

    move-object v6, v7

    .line 1407
    :cond_26
    iget-object v7, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v7, p1, v6}, Lcom/android/server/wm/TransitionController;->registerTransitionPlayer(Landroid/window/ITransitionPlayer;Landroid/app/IApplicationThread;)V

    .line 1408
    .end local v5    # "wpc":Lcom/android/server/wm/WindowProcessController;
    .end local v6    # "appThread":Landroid/app/IApplicationThread;
    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_15 .. :try_end_2c} :catchall_34

    :try_start_2c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_3a

    .line 1410
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1411
    nop

    .line 1412
    return-void

    .line 1408
    :catchall_34
    move-exception v5

    :try_start_35
    monitor-exit v4
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    :try_start_36
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "callerPid":I
    .end local v1    # "callerUid":I
    .end local v2    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .end local p1    # "player":Landroid/window/ITransitionPlayer;
    throw v5
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_3a

    .line 1410
    .restart local v0    # "callerPid":I
    .restart local v1    # "callerUid":I
    .restart local v2    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .restart local p1    # "player":Landroid/window/ITransitionPlayer;
    :catchall_3a
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1411
    throw v4
.end method

.method reparentTaskFragment(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/WindowContainer;Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;)V
    .registers 13
    .param p1, "oldParent"    # Lcom/android/server/wm/TaskFragment;
    .param p3, "organizer"    # Landroid/window/ITaskFragmentOrganizer;
    .param p4, "errorCallbackToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/TaskFragment;",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;",
            "Landroid/window/ITaskFragmentOrganizer;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .line 1704
    .local p2, "newParent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    if-nez p2, :cond_7

    .line 1706
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .local v0, "newParentTF":Lcom/android/server/wm/TaskFragment;
    goto :goto_b

    .line 1708
    .end local v0    # "newParentTF":Lcom/android/server/wm/TaskFragment;
    :cond_7
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    .line 1710
    .restart local v0    # "newParentTF":Lcom/android/server/wm/TaskFragment;
    :goto_b
    if-nez v0, :cond_1e

    .line 1711
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not allowed to operate with invalid container"

    invoke-direct {v6, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1713
    .local v6, "exception":Ljava/lang/Throwable;
    const/16 v5, 0xb

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 1715
    return-void

    .line 1717
    .end local v6    # "exception":Ljava/lang/Throwable;
    :cond_1e
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 1720
    new-instance v1, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/TaskFragment;)V

    invoke-virtual {p1, v1}, Lcom/android/server/wm/TaskFragment;->forAllActivities(Ljava/util/function/Predicate;)Z

    move-result v7

    .line 1722
    .local v7, "isEmbeddingDisallowed":Z
    if-eqz v7, :cond_40

    .line 1723
    new-instance v6, Ljava/lang/SecurityException;

    const-string v1, "The new parent is not allowed to embed the activities."

    invoke-direct {v6, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 1725
    .restart local v6    # "exception":Ljava/lang/Throwable;
    const/16 v5, 0xb

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 1727
    return-void

    .line 1730
    .end local v6    # "exception":Ljava/lang/Throwable;
    .end local v7    # "isEmbeddingDisallowed":Z
    :cond_40
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskFragmentInPip()Z

    move-result v1

    if-nez v1, :cond_7b

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskFragmentInPip()Z

    move-result v1

    if-eqz v1, :cond_4d

    goto :goto_7b

    .line 1737
    :cond_4d
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eq v1, v2, :cond_68

    .line 1738
    new-instance v6, Ljava/lang/SecurityException;

    const-string v1, "The new parent is not in the same Task as the old parent."

    invoke-direct {v6, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 1740
    .restart local v6    # "exception":Ljava/lang/Throwable;
    const/16 v5, 0xb

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 1742
    return-void

    .line 1744
    .end local v6    # "exception":Ljava/lang/Throwable;
    :cond_68
    :goto_68
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->hasChild()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 1745
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/server/wm/TaskFragment;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    const v2, 0x7fffffff

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    goto :goto_68

    .line 1747
    :cond_7a
    return-void

    .line 1731
    :cond_7b
    :goto_7b
    new-instance v6, Ljava/lang/SecurityException;

    const-string v1, "Not allow to reparent in TaskFragment in PIP Task."

    invoke-direct {v6, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 1733
    .restart local v6    # "exception":Ljava/lang/Throwable;
    const/16 v5, 0xb

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 1735
    return-void
.end method

.method sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V
    .registers 13
    .param p1, "organizer"    # Landroid/window/ITaskFragmentOrganizer;
    .param p2, "errorCallbackToken"    # Landroid/os/IBinder;
    .param p3, "taskFragment"    # Lcom/android/server/wm/TaskFragment;
    .param p4, "opType"    # I
    .param p5, "exception"    # Ljava/lang/Throwable;

    .line 1797
    if-eqz p1, :cond_f

    .line 1800
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 1801
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/TaskFragmentOrganizerController;->onTaskFragmentError(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 1802
    return-void

    .line 1798
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not allowed to operate with invalid organizer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setSyncReady(I)V
    .registers 11
    .param p1, "id"    # I

    .line 1367
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v0, :cond_18

    int-to-long v0, p1

    .local v0, "protoLogParam0":J
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x377c50a7

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v2, v3, v5, v4, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1368
    .end local v0    # "protoLogParam0":J
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/BLASTSyncEngine;->setReady(I)V

    .line 1369
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 5
    .param p1, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .line 161
    new-instance v0, Lcom/android/server/wm/TransitionController;

    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/TransitionController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/TaskSnapshotController;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 162
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mActivityManagerAppTransitionNotifier:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TransitionController;->registerLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 163
    return-void
.end method

.method public startLegacyTransition(ILandroid/view/RemoteAnimationAdapter;Landroid/window/IWindowContainerTransactionCallback;Landroid/window/WindowContainerTransaction;)I
    .registers 12
    .param p1, "type"    # I
    .param p2, "adapter"    # Landroid/view/RemoteAnimationAdapter;
    .param p3, "callback"    # Landroid/window/IWindowContainerTransactionCallback;
    .param p4, "t"    # Landroid/window/WindowContainerTransaction;

    .line 318
    const-string/jumbo v0, "startLegacyTransition()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    .line 319
    new-instance v0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    invoke-direct {v0}, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;-><init>()V

    .line 320
    .local v0, "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 323
    .local v1, "ident":J
    :try_start_f
    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_73

    :try_start_12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 324
    if-ltz p1, :cond_65

    .line 327
    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v4}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    move-result-object v4

    if-nez v4, :cond_5d

    .line 331
    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v5, 0x0

    .line 332
    invoke-virtual {v4, v5}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 333
    .local v4, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v5, v4, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 335
    const/4 v5, -0x1

    monitor-exit v3
    :try_end_32
    .catchall {:try_start_12 .. :try_end_32} :catchall_6d

    .line 345
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 335
    return v5

    .line 337
    :cond_39
    :try_start_39
    iget v5, v0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    iget v6, v0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    invoke-virtual {p2, v5, v6}, Landroid/view/RemoteAnimationAdapter;->setCallingPidUid(II)V

    .line 338
    invoke-virtual {v4, p1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 339
    iget-object v5, v4, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/4 v6, 0x1

    invoke-virtual {v5, p2, v6}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;Z)V

    .line 340
    invoke-virtual {p0, p3}, Lcom/android/server/wm/WindowOrganizerController;->startSyncWithOrganizer(Landroid/window/IWindowContainerTransactionCallback;)I

    move-result v5

    .line 341
    .local v5, "syncId":I
    const/4 v6, 0x0

    invoke-direct {p0, p4, v5, v6, v0}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    .line 342
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowOrganizerController;->setSyncReady(I)V

    .line 343
    .end local v4    # "dc":Lcom/android/server/wm/DisplayContent;
    monitor-exit v3
    :try_end_55
    .catchall {:try_start_39 .. :try_end_55} :catchall_6d

    :try_start_55
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_73

    .line 345
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 346
    nop

    .line 347
    return v5

    .line 328
    .end local v5    # "syncId":I
    :cond_5d
    :try_start_5d
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Can\'t use legacy transitions in when shell transitions are enabled."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .end local v1    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .end local p1    # "type":I
    .end local p2    # "adapter":Landroid/view/RemoteAnimationAdapter;
    .end local p3    # "callback":Landroid/window/IWindowContainerTransactionCallback;
    .end local p4    # "t":Landroid/window/WindowContainerTransaction;
    throw v4

    .line 325
    .restart local v0    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .restart local p1    # "type":I
    .restart local p2    # "adapter":Landroid/view/RemoteAnimationAdapter;
    .restart local p3    # "callback":Landroid/window/IWindowContainerTransactionCallback;
    .restart local p4    # "t":Landroid/window/WindowContainerTransaction;
    :cond_65
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Can\'t create transition with no type"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .end local v1    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .end local p1    # "type":I
    .end local p2    # "adapter":Landroid/view/RemoteAnimationAdapter;
    .end local p3    # "callback":Landroid/window/IWindowContainerTransactionCallback;
    .end local p4    # "t":Landroid/window/WindowContainerTransaction;
    throw v4

    .line 343
    .restart local v0    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .restart local p1    # "type":I
    .restart local p2    # "adapter":Landroid/view/RemoteAnimationAdapter;
    .restart local p3    # "callback":Landroid/window/IWindowContainerTransactionCallback;
    .restart local p4    # "t":Landroid/window/WindowContainerTransaction;
    :catchall_6d
    move-exception v4

    monitor-exit v3
    :try_end_6f
    .catchall {:try_start_5d .. :try_end_6f} :catchall_6d

    :try_start_6f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .end local v1    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .end local p1    # "type":I
    .end local p2    # "adapter":Landroid/view/RemoteAnimationAdapter;
    .end local p3    # "callback":Landroid/window/IWindowContainerTransactionCallback;
    .end local p4    # "t":Landroid/window/WindowContainerTransaction;
    throw v4
    :try_end_73
    .catchall {:try_start_6f .. :try_end_73} :catchall_73

    .line 345
    .restart local v0    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .restart local p1    # "type":I
    .restart local p2    # "adapter":Landroid/view/RemoteAnimationAdapter;
    .restart local p3    # "callback":Landroid/window/IWindowContainerTransactionCallback;
    .restart local p4    # "t":Landroid/window/WindowContainerTransaction;
    :catchall_73
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 346
    throw v3
.end method

.method startSyncWithOrganizer(Landroid/window/IWindowContainerTransactionCallback;)I
    .registers 4
    .param p1, "callback"    # Landroid/window/IWindowContainerTransactionCallback;

    .line 1360
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowOrganizerController;->prepareSyncWithOrganizer(Landroid/window/IWindowContainerTransactionCallback;)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object v0

    .line 1361
    .local v0, "s":Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    .line 1362
    iget v1, v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    return v1
.end method

.method public startTransition(ILandroid/os/IBinder;Landroid/window/WindowContainerTransaction;)Landroid/os/IBinder;
    .registers 23
    .param p1, "type"    # I
    .param p2, "transitionToken"    # Landroid/os/IBinder;
    .param p3, "t"    # Landroid/window/WindowContainerTransaction;

    .line 250
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p3

    const-string/jumbo v0, "startTransition()"

    invoke-direct {v7, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    .line 251
    new-instance v0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    invoke-direct {v0}, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;-><init>()V

    move-object v10, v0

    .line 252
    .local v10, "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 254
    .local v11, "ident":J
    :try_start_16
    iget-object v13, v7, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v13
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_fb

    :try_start_19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 255
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/Transition;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/Transition;

    move-result-object v0

    .line 256
    .local v0, "transition":Lcom/android/server/wm/Transition;
    iget-object v1, v7, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    move-result-object v1

    const/4 v2, -0x1

    if-nez v1, :cond_48

    if-nez v0, :cond_48

    .line 257
    const-string v1, "WindowOrganizerController"

    const-string v3, "Using shell transitions API for legacy transitions."

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    if-eqz v9, :cond_40

    .line 262
    const/4 v1, 0x0

    invoke-direct {v7, v9, v2, v1, v10}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    .line 263
    monitor-exit v13
    :try_end_39
    .catchall {:try_start_19 .. :try_end_39} :catchall_f5

    .line 310
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 263
    return-object v1

    .line 259
    :cond_40
    :try_start_40
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t use legacy transitions in compatibility mode with no WCT."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v10    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .end local v11    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .end local p1    # "type":I
    .end local p2    # "transitionToken":Landroid/os/IBinder;
    .end local p3    # "t":Landroid/window/WindowContainerTransaction;
    throw v1

    .line 269
    .restart local v10    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .restart local v11    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .restart local p1    # "type":I
    .restart local p2    # "transitionToken":Landroid/os/IBinder;
    .restart local p3    # "t":Landroid/window/WindowContainerTransaction;
    :cond_48
    const/4 v1, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_50

    if-eqz v9, :cond_50

    move v4, v1

    goto :goto_51

    :cond_50
    move v4, v3

    :goto_51
    move v14, v4

    .line 271
    .local v14, "needsSetReady":Z
    if-eqz v9, :cond_56

    move-object v4, v9

    goto :goto_5b

    :cond_56
    new-instance v4, Landroid/window/WindowContainerTransaction;

    invoke-direct {v4}, Landroid/window/WindowContainerTransaction;-><init>()V

    :goto_5b
    move-object v15, v4

    .line 272
    .local v15, "wct":Landroid/window/WindowContainerTransaction;
    if-nez v0, :cond_dc

    .line 273
    if-ltz v8, :cond_d0

    .line 280
    iget-object v4, v7, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v4}, Lcom/android/server/wm/BLASTSyncEngine;->hasActiveSync()Z

    move-result v4

    if-eqz v4, :cond_c5

    .line 281
    const-string v2, "WindowOrganizerController"

    const-string/jumbo v4, "startTransition() while one is already collecting."

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    new-instance v2, Lcom/android/server/wm/Transition;

    iget-object v4, v7, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v5, v7, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-direct {v2, v8, v3, v4, v5}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    move-object v6, v2

    .line 284
    .local v6, "nextTransition":Lcom/android/server/wm/Transition;
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v2, :cond_9b

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v5, "Creating Pending Transition: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v3

    move-object/from16 v17, v0

    const v0, 0x635ee10b

    .end local v0    # "transition":Lcom/android/server/wm/Transition;
    .local v17, "transition":Lcom/android/server/wm/Transition;
    invoke-static {v4, v0, v3, v5, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9d

    .end local v2    # "protoLogParam0":Ljava/lang/String;
    .end local v17    # "transition":Lcom/android/server/wm/Transition;
    .restart local v0    # "transition":Lcom/android/server/wm/Transition;
    :cond_9b
    move-object/from16 v17, v0

    .line 286
    .end local v0    # "transition":Lcom/android/server/wm/Transition;
    .restart local v17    # "transition":Lcom/android/server/wm/Transition;
    :goto_9d
    iget-object v0, v7, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    new-instance v5, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;

    invoke-direct {v5, v7, v6}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/Transition;)V

    new-instance v4, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;

    move-object v1, v4

    move-object/from16 v2, p0

    move-object v3, v6

    move-object v9, v4

    move-object v4, v15

    move-object/from16 v16, v15

    move-object v15, v5

    .end local v15    # "wct":Landroid/window/WindowContainerTransaction;
    .local v16, "wct":Landroid/window/WindowContainerTransaction;
    move-object v5, v10

    move-object/from16 v18, v6

    .end local v6    # "nextTransition":Lcom/android/server/wm/Transition;
    .local v18, "nextTransition":Lcom/android/server/wm/Transition;
    move v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Z)V

    invoke-virtual {v0, v15, v9}, Lcom/android/server/wm/BLASTSyncEngine;->queueSyncSet(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 298
    monitor-exit v13
    :try_end_be
    .catchall {:try_start_40 .. :try_end_be} :catchall_f5

    .line 310
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 298
    return-object v18

    .line 300
    .end local v16    # "wct":Landroid/window/WindowContainerTransaction;
    .end local v17    # "transition":Lcom/android/server/wm/Transition;
    .end local v18    # "nextTransition":Lcom/android/server/wm/Transition;
    .restart local v0    # "transition":Lcom/android/server/wm/Transition;
    .restart local v15    # "wct":Landroid/window/WindowContainerTransaction;
    :cond_c5
    move-object/from16 v17, v0

    move-object/from16 v16, v15

    .end local v0    # "transition":Lcom/android/server/wm/Transition;
    .end local v15    # "wct":Landroid/window/WindowContainerTransaction;
    .restart local v16    # "wct":Landroid/window/WindowContainerTransaction;
    .restart local v17    # "transition":Lcom/android/server/wm/Transition;
    :try_start_c9
    iget-object v0, v7, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, v8}, Lcom/android/server/wm/TransitionController;->createTransition(I)Lcom/android/server/wm/Transition;

    move-result-object v0

    .end local v17    # "transition":Lcom/android/server/wm/Transition;
    .restart local v0    # "transition":Lcom/android/server/wm/Transition;
    goto :goto_e0

    .line 274
    .end local v16    # "wct":Landroid/window/WindowContainerTransaction;
    .restart local v15    # "wct":Landroid/window/WindowContainerTransaction;
    :cond_d0
    move-object/from16 v17, v0

    move-object/from16 v16, v15

    .end local v0    # "transition":Lcom/android/server/wm/Transition;
    .end local v15    # "wct":Landroid/window/WindowContainerTransaction;
    .restart local v16    # "wct":Landroid/window/WindowContainerTransaction;
    .restart local v17    # "transition":Lcom/android/server/wm/Transition;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t create transition with no type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v10    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .end local v11    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .end local p1    # "type":I
    .end local p2    # "transitionToken":Landroid/os/IBinder;
    .end local p3    # "t":Landroid/window/WindowContainerTransaction;
    throw v0

    .line 272
    .end local v16    # "wct":Landroid/window/WindowContainerTransaction;
    .end local v17    # "transition":Lcom/android/server/wm/Transition;
    .restart local v0    # "transition":Lcom/android/server/wm/Transition;
    .restart local v10    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .restart local v11    # "ident":J
    .restart local v15    # "wct":Landroid/window/WindowContainerTransaction;
    .restart local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .restart local p1    # "type":I
    .restart local p2    # "transitionToken":Landroid/os/IBinder;
    .restart local p3    # "t":Landroid/window/WindowContainerTransaction;
    :cond_dc
    move-object/from16 v17, v0

    move-object/from16 v16, v15

    .line 302
    .end local v15    # "wct":Landroid/window/WindowContainerTransaction;
    .restart local v16    # "wct":Landroid/window/WindowContainerTransaction;
    :goto_e0
    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->start()V

    .line 303
    move-object/from16 v1, v16

    .end local v16    # "wct":Landroid/window/WindowContainerTransaction;
    .local v1, "wct":Landroid/window/WindowContainerTransaction;
    invoke-direct {v7, v1, v2, v0, v10}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    .line 304
    if-eqz v14, :cond_ed

    .line 305
    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->setAllReady()V

    .line 307
    :cond_ed
    monitor-exit v13
    :try_end_ee
    .catchall {:try_start_c9 .. :try_end_ee} :catchall_f5

    .line 310
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 307
    return-object v0

    .line 308
    .end local v0    # "transition":Lcom/android/server/wm/Transition;
    .end local v1    # "wct":Landroid/window/WindowContainerTransaction;
    .end local v14    # "needsSetReady":Z
    :catchall_f5
    move-exception v0

    :try_start_f6
    monitor-exit v13
    :try_end_f7
    .catchall {:try_start_f6 .. :try_end_f7} :catchall_f5

    :try_start_f7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v10    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .end local v11    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .end local p1    # "type":I
    .end local p2    # "transitionToken":Landroid/os/IBinder;
    .end local p3    # "t":Landroid/window/WindowContainerTransaction;
    throw v0
    :try_end_fb
    .catchall {:try_start_f7 .. :try_end_fb} :catchall_fb

    .line 310
    .restart local v10    # "caller":Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    .restart local v11    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .restart local p1    # "type":I
    .restart local p2    # "transitionToken":Landroid/os/IBinder;
    .restart local p3    # "t":Landroid/window/WindowContainerTransaction;
    :catchall_fb
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 311
    throw v0
.end method
