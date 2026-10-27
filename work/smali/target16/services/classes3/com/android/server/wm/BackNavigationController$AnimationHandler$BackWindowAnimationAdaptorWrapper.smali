.class public Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;
.super Ljava/lang/Object;
.source "BackNavigationController.java"


# instance fields
.field public final mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

.field public mCloseTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mPreparedOpenTransition:Lcom/android/server/wm/Transition;

.field public final mRemoteAnimationTarget:Landroid/view/RemoteAnimationTarget;

.field public mRequestedStartingSurfaceId:I

.field public mStartingSurface:Landroid/view/SurfaceControl;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPreparedOpenTransition(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;)Lcom/android/server/wm/Transition;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mPreparedOpenTransition:Lcom/android/server/wm/Transition;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRequestedStartingSurfaceId(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mRequestedStartingSurfaceId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStartingSurface(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;)Landroid/view/SurfaceControl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mStartingSurface:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmPreparedOpenTransition(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;Lcom/android/server/wm/Transition;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mPreparedOpenTransition:Lcom/android/server/wm/Transition;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmStartingSurface(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;Landroid/view/SurfaceControl;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mStartingSurface:Landroid/view/SurfaceControl;

    return-void
.end method

.method public varargs constructor <init>(ZILandroid/view/SurfaceControl$Transaction;[Lcom/android/server/wm/WindowContainer;)V
    .registers 9

    .line 1581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1575
    iput v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mRequestedStartingSurfaceId:I

    .line 1582
    array-length v0, p4

    new-array v0, v0, [Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    .line 1583
    array-length v0, p4

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_e
    if-ltz v0, :cond_1d

    .line 1584
    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    aget-object v3, p4, v0

    invoke-static {v3, p1, p2, p3}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->-$$Nest$smcreateAdaptor(Lcom/android/server/wm/WindowContainer;ZILandroid/view/SurfaceControl$Transaction;)Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 1586
    :cond_1d
    array-length p1, p4

    if-le p1, v1, :cond_25

    invoke-virtual {p0, p3}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->createWrapTarget(Landroid/view/SurfaceControl$Transaction;)Landroid/view/RemoteAnimationTarget;

    move-result-object p1

    goto :goto_2e

    .line 1587
    :cond_25
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-static {p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmAnimationTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Landroid/view/RemoteAnimationTarget;

    move-result-object p1

    :goto_2e
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mRemoteAnimationTarget:Landroid/view/RemoteAnimationTarget;

    return-void
.end method


# virtual methods
.method public cleanUp(Z)V
    .registers 3

    .line 1600
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->cleanUpWindowlessSurface(Z)V

    .line 1601
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    :goto_8
    if-ltz p1, :cond_18

    .line 1602
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_8

    .line 1604
    :cond_18
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mCloseTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x0

    if-eqz p1, :cond_22

    .line 1605
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1606
    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mCloseTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1608
    :cond_22
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mRemoteAnimationTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz p1, :cond_29

    .line 1609
    invoke-virtual {p1}, Landroid/view/RemoteAnimationTarget;->release()V

    .line 1612
    :cond_29
    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mPreparedOpenTransition:Lcom/android/server/wm/Transition;

    return-void
.end method

.method public cleanUpWindowlessSurface(Z)V
    .registers 5

    .line 1732
    iget v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mRequestedStartingSurfaceId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    goto :goto_30

    .line 1735
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    iget v2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mRequestedStartingSurfaceId:I

    xor-int/lit8 p1, p1, 0x1

    .line 1736
    invoke-virtual {v0, v2, p1}, Lcom/android/server/wm/TaskOrganizerController;->removeWindowlessStartingSurface(IZ)V

    .line 1738
    iput v1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mRequestedStartingSurfaceId:I

    .line 1739
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mStartingSurface:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_30

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 1740
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mStartingSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V

    const/4 p1, 0x0

    .line 1741
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mStartingSurface:Landroid/view/SurfaceControl;

    :cond_30
    :goto_30
    return-void
.end method

.method public createStartingSurface(Landroid/window/TaskSnapshot;)V
    .registers 13

    if-nez p1, :cond_3

    goto :goto_4d

    .line 1666
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmSwitchType(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_10

    goto :goto_4d

    .line 1669
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1670
    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmSwitchType(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)I

    move-result v2

    .line 1671
    iget-object v3, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->getTopTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-nez v5, :cond_2b

    goto :goto_4d

    :cond_2b
    const/4 v3, 0x2

    if-ne v2, v3, :cond_43

    .line 1677
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_44

    .line 1678
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v6

    if-eqz v6, :cond_44

    .line 1679
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    goto :goto_44

    :cond_43
    const/4 v4, 0x0

    :cond_44
    :goto_44
    if-nez v4, :cond_4a

    .line 1683
    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    :cond_4a
    move-object v6, v4

    if-nez v6, :cond_4e

    :goto_4d
    return-void

    .line 1692
    :cond_4e
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    array-length v0, v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_5f

    if-eq v2, v3, :cond_5e

    iget-object v0, v6, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1694
    invoke-virtual {v0, v6}, Lcom/android/server/wm/DisplayContent;->isFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_5f

    :cond_5e
    move v1, v4

    :cond_5f
    if-eqz v1, :cond_67

    .line 1696
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    :goto_65
    move-object v9, v0

    goto :goto_6c

    :cond_67
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    goto :goto_65

    .line 1697
    :goto_6c
    iget-object v0, v5, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    if-eqz v1, :cond_78

    .line 1699
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    :goto_76
    move-object v7, v0

    goto :goto_7d

    .line 1700
    :cond_78
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mRemoteAnimationTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    goto :goto_76

    :goto_7d
    new-instance v10, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper$1;

    invoke-direct {v10, p0, v5}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper$1;-><init>(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;Lcom/android/server/wm/Task;)V

    move-object v8, p1

    .line 1698
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/TaskOrganizerController;->addWindowlessStartingSurface(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/view/SurfaceControl;Landroid/window/TaskSnapshot;Landroid/content/res/Configuration;Landroid/window/IWindowlessStartingSurfaceCallback;)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mRequestedStartingSurfaceId:I

    return-void
.end method

.method public final createWrapTarget(Landroid/view/SurfaceControl$Transaction;)Landroid/view/RemoteAnimationTarget;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1621
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 1622
    iget-object v2, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    :goto_e
    if-ltz v2, :cond_20

    .line 1623
    iget-object v3, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmAnimationTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Landroid/view/RemoteAnimationTarget;

    move-result-object v3

    iget-object v3, v3, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    invoke-virtual {v9, v3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 1625
    :cond_20
    iget-object v2, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 1626
    iget-object v4, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->getTopTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 1627
    iget-object v5, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    aget-object v5, v5, v3

    invoke-static {v5}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmAnimationTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Landroid/view/RemoteAnimationTarget;

    move-result-object v5

    .line 1628
    new-instance v6, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v6}, Landroid/view/SurfaceControl$Builder;-><init>()V

    const-string v7, "cross-animation-leash"

    .line 1629
    invoke-virtual {v6, v7}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    .line 1630
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    .line 1631
    invoke-virtual {v6, v3}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 1632
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    const-string v4, "BackWindowAnimationAdaptorWrapper.getOrCreateAnimationTarget"

    .line 1633
    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 1635
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v3

    .line 1636
    new-instance v4, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v4}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mCloseTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v6, 0x0

    .line 1637
    invoke-virtual {v4, v3, v6}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1638
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1639
    iget-object v2, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    :goto_75
    if-ltz v2, :cond_bd

    .line 1640
    iget-object v4, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    aget-object v4, v4, v2

    .line 1641
    invoke-static {v4}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmAnimationTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Landroid/view/RemoteAnimationTarget;

    move-result-object v6

    iget-object v6, v6, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v6, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1642
    invoke-static {v4}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmAnimationTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Landroid/view/RemoteAnimationTarget;

    move-result-object v6

    iget-object v6, v6, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-static {v4}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmAnimationTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Landroid/view/RemoteAnimationTarget;

    move-result-object v7

    iget-object v7, v7, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    invoke-static {v4}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmAnimationTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Landroid/view/RemoteAnimationTarget;

    move-result-object v8

    iget-object v8, v8, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual {v1, v6, v7, v8}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1647
    invoke-static {v4}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    if-eqz v6, :cond_ba

    .line 1649
    iget-object v7, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mCloseTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v4}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    .line 1650
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v6

    .line 1649
    invoke-virtual {v7, v4, v6}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_ba
    add-int/lit8 v2, v2, -0x1

    goto :goto_75

    .line 1653
    :cond_bd
    new-instance v0, Landroid/view/RemoteAnimationTarget;

    iget v1, v5, Landroid/view/RemoteAnimationTarget;->taskId:I

    iget v2, v5, Landroid/view/RemoteAnimationTarget;->mode:I

    iget-boolean v4, v5, Landroid/view/RemoteAnimationTarget;->isTranslucent:Z

    iget-object v6, v5, Landroid/view/RemoteAnimationTarget;->clipRect:Landroid/graphics/Rect;

    move-object v7, v6

    iget-object v6, v5, Landroid/view/RemoteAnimationTarget;->contentInsets:Landroid/graphics/Rect;

    move-object v8, v7

    iget v7, v5, Landroid/view/RemoteAnimationTarget;->prefixOrderIndex:I

    move-object v10, v8

    new-instance v8, Landroid/graphics/Point;

    iget v11, v9, Landroid/graphics/Rect;->left:I

    iget v12, v9, Landroid/graphics/Rect;->top:I

    invoke-direct {v8, v11, v12}, Landroid/graphics/Point;-><init>(II)V

    iget-object v11, v5, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v15, v5, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v5, v5, Landroid/view/RemoteAnimationTarget;->allowEnterPip:Z

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v16, v5

    move-object v5, v10

    move-object v10, v9

    invoke-direct/range {v0 .. v16}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    return-object v0
.end method

.method public isValid()Z
    .registers 4

    .line 1591
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_5
    if-ltz v0, :cond_16

    .line 1592
    iget-object v2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->-$$Nest$fgetmAnimationTarget(Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;)Landroid/view/RemoteAnimationTarget;

    move-result-object v2

    if-nez v2, :cond_13

    const/4 p0, 0x0

    return p0

    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_16
    return v1
.end method
