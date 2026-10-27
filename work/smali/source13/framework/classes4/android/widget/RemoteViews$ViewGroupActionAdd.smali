.class Landroid/widget/RemoteViews$ViewGroupActionAdd;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewGroupActionAdd"
.end annotation


# static fields
.field static final blacklist NO_ID:I = -0x1


# instance fields
.field private greylist-max-o mIndex:I

.field private greylist-max-r mNestedViews:Landroid/widget/RemoteViews;

.field private blacklist mStableId:I

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V
    .registers 10
    .param p2, "viewId"    # I
    .param p3, "nestedViews"    # Landroid/widget/RemoteViews;

    .line 2415
    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;II)V

    .line 2416
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;I)V
    .registers 11
    .param p2, "viewId"    # I
    .param p3, "nestedViews"    # Landroid/widget/RemoteViews;
    .param p4, "index"    # I

    .line 2419
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;II)V

    .line 2420
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;II)V
    .registers 7
    .param p2, "viewId"    # I
    .param p3, "nestedViews"    # Landroid/widget/RemoteViews;
    .param p4, "index"    # I
    .param p5, "stableId"    # I

    .line 2422
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 2423
    iput p2, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->viewId:I

    .line 2424
    iput-object p3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    .line 2425
    iput p4, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    .line 2426
    iput p5, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    .line 2427
    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$mgetHierarchyRootData(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/widget/RemoteViews;->-$$Nest$mconfigureAsChild(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$HierarchyRootData;)V

    .line 2428
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;Landroid/content/pm/ApplicationInfo;I)V
    .registers 12
    .param p2, "parcel"    # Landroid/os/Parcel;
    .param p3, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "depth"    # I

    .line 2430
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 2431
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->viewId:I

    .line 2432
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    .line 2433
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    .line 2434
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$mgetHierarchyRootData(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object v3

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;ILandroid/widget/RemoteViews-IA;)V

    iput-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    .line 2435
    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmApplyFlags(Landroid/widget/RemoteViews;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->addFlags(I)V

    .line 2436
    return-void
.end method

.method private blacklist findViewIndexToRecycle(Landroid/view/ViewGroup;Landroid/widget/RemoteViews;)I
    .registers 7
    .param p1, "target"    # Landroid/view/ViewGroup;
    .param p2, "newContent"    # Landroid/widget/RemoteViews;

    .line 2451
    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$smgetNextRecyclableChild(Landroid/view/ViewGroup;)I

    move-result v0

    .local v0, "nextChild":I
    :goto_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 2453
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2454
    .local v1, "child":Landroid/view/View;
    invoke-static {v1}, Landroid/widget/RemoteViews;->-$$Nest$smgetStableId(Landroid/view/View;)I

    move-result v2

    iget v3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    if-ne v2, v3, :cond_17

    .line 2455
    return v0

    .line 2452
    .end local v1    # "child":Landroid/view/View;
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2458
    .end local v0    # "nextChild":I
    :cond_1a
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist insertNewView(Landroid/content/Context;Landroid/widget/RemoteViews$ViewTree;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;Ljava/lang/Runnable;)Landroid/widget/RemoteViews$Action;
    .registers 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/widget/RemoteViews$ViewTree;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;
    .param p5, "finalizeAction"    # Ljava/lang/Runnable;

    .line 2586
    move-object/from16 v7, p0

    invoke-static/range {p2 .. p2}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/view/ViewGroup;

    .line 2587
    .local v6, "targetVg":Landroid/view/ViewGroup;
    invoke-static {v6}, Landroid/widget/RemoteViews;->-$$Nest$smgetNextRecyclableChild(Landroid/view/ViewGroup;)I

    move-result v16

    .line 2588
    .local v16, "nextChild":I
    iget-object v8, v7, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p1

    move-object v10, v6

    move-object/from16 v12, p3

    move-object/from16 v14, p4

    invoke-static/range {v8 .. v15}, Landroid/widget/RemoteViews;->-$$Nest$mgetInternalAsyncApplyTask(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;Landroid/view/View;)Landroid/widget/RemoteViews$AsyncApplyTask;

    move-result-object v8

    .line 2591
    .local v8, "task":Landroid/widget/RemoteViews$AsyncApplyTask;
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v8, v0}, Landroid/widget/RemoteViews$AsyncApplyTask;->doInBackground([Ljava/lang/Void;)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v9

    .line 2593
    .local v9, "tree":Landroid/widget/RemoteViews$ViewTree;
    if-eqz v9, :cond_60

    .line 2596
    iget v0, v7, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_34

    .line 2597
    invoke-static {v8}, Landroid/widget/RemoteViews$AsyncApplyTask;->-$$Nest$fgetmResult(Landroid/widget/RemoteViews$AsyncApplyTask;)Landroid/view/View;

    move-result-object v0

    iget v1, v7, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    invoke-static {v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$smsetStableId(Landroid/view/View;I)V

    .line 2602
    :cond_34
    iget v0, v7, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    if-ltz v0, :cond_39

    goto :goto_3b

    :cond_39
    move/from16 v0, v16

    :goto_3b
    move v10, v0

    .line 2603
    .local v10, "insertIndex":I
    move-object/from16 v11, p2

    invoke-virtual {v11, v9, v10}, Landroid/widget/RemoteViews$ViewTree;->addChild(Landroid/widget/RemoteViews$ViewTree;I)V

    .line 2604
    if-ltz v16, :cond_50

    .line 2605
    add-int/lit8 v0, v16, 0x1

    invoke-static/range {p2 .. p2}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmChildren(Landroid/widget/RemoteViews$ViewTree;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v6, v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$smsetNextRecyclableChild(Landroid/view/ViewGroup;II)V

    .line 2608
    :cond_50
    new-instance v12, Landroid/widget/RemoteViews$ViewGroupActionAdd$2;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v8

    move-object v3, v9

    move-object/from16 v4, p5

    move-object v5, v6

    move-object v13, v6

    .end local v6    # "targetVg":Landroid/view/ViewGroup;
    .local v13, "targetVg":Landroid/view/ViewGroup;
    move v6, v10

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$ViewGroupActionAdd$2;-><init>(Landroid/widget/RemoteViews$ViewGroupActionAdd;Landroid/widget/RemoteViews$AsyncApplyTask;Landroid/widget/RemoteViews$ViewTree;Ljava/lang/Runnable;Landroid/view/ViewGroup;I)V

    return-object v12

    .line 2594
    .end local v10    # "insertIndex":I
    .end local v13    # "targetVg":Landroid/view/ViewGroup;
    .restart local v6    # "targetVg":Landroid/view/ViewGroup;
    :cond_60
    new-instance v0, Landroid/widget/RemoteViews$ActionException;

    invoke-static {v8}, Landroid/widget/RemoteViews$AsyncApplyTask;->-$$Nest$fgetmError(Landroid/widget/RemoteViews$AsyncApplyTask;)Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method static synthetic blacklist lambda$initActionAsync$1(Landroid/view/ViewGroup;II)V
    .registers 4
    .param p0, "targetVg"    # Landroid/view/ViewGroup;
    .param p1, "nextChild"    # I
    .param p2, "recycledViewIndex"    # I

    .line 2575
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->removeViews(II)V

    return-void
.end method

.method static synthetic blacklist lambda$initActionAsync$2()V
    .registers 0

    .line 2581
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .registers 22
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 2464
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 2465
    .local v8, "context":Landroid/content/Context;
    iget v1, v0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->viewId:I

    move-object/from16 v9, p1

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/view/ViewGroup;

    .line 2467
    .local v10, "target":Landroid/view/ViewGroup;
    if-nez v10, :cond_14

    .line 2468
    return-void

    .line 2474
    :cond_14
    invoke-static {v10}, Landroid/widget/RemoteViews;->-$$Nest$smgetNextRecyclableChild(Landroid/view/ViewGroup;)I

    move-result v11

    .line 2475
    .local v11, "nextChild":I
    iget-object v1, v0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-static {v1, v8}, Landroid/widget/RemoteViews;->-$$Nest$mgetRemoteViewsToApply(Landroid/widget/RemoteViews;Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v12

    .line 2477
    .local v12, "rvToApply":Landroid/widget/RemoteViews;
    iget-object v1, v0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmApplyFlags(Landroid/widget/RemoteViews;)I

    move-result v1

    and-int/lit8 v13, v1, 0x6

    .line 2478
    .local v13, "flagsToPropagate":I
    if-eqz v13, :cond_2b

    invoke-virtual {v12, v13}, Landroid/widget/RemoteViews;->addFlags(I)V

    .line 2480
    :cond_2b
    const/4 v14, -0x1

    if-ltz v11, :cond_6b

    iget v1, v0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    if-eq v1, v14, :cond_6b

    .line 2484
    invoke-direct {v0, v10, v12}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->findViewIndexToRecycle(Landroid/view/ViewGroup;Landroid/widget/RemoteViews;)I

    move-result v15

    .line 2485
    .local v15, "recycledViewIndex":I
    if-ltz v15, :cond_6b

    .line 2486
    invoke-virtual {v10, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2487
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v12, v7}, Landroid/widget/RemoteViews;->canRecycleView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 2488
    if-ge v11, v15, :cond_49

    .line 2489
    sub-int v1, v15, v11

    invoke-virtual {v10, v11, v1}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 2491
    :cond_49
    add-int/lit8 v1, v11, 0x1

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-static {v10, v1, v2}, Landroid/widget/RemoteViews;->-$$Nest$smsetNextRecyclableChild(Landroid/view/ViewGroup;II)V

    .line 2492
    const/4 v6, 0x0

    move-object v1, v12

    move-object v2, v8

    move-object v3, v7

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v16, v7

    .end local v7    # "child":Landroid/view/View;
    .local v16, "child":Landroid/view/View;
    move-object/from16 v7, p4

    invoke-static/range {v1 .. v7}, Landroid/widget/RemoteViews;->-$$Nest$mreapplyNestedViews(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)V

    .line 2494
    return-void

    .line 2498
    .end local v16    # "child":Landroid/view/View;
    .restart local v7    # "child":Landroid/view/View;
    :cond_62
    move-object/from16 v16, v7

    .end local v7    # "child":Landroid/view/View;
    .restart local v16    # "child":Landroid/view/View;
    sub-int v1, v15, v11

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v10, v11, v1}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 2504
    .end local v15    # "recycledViewIndex":I
    .end local v16    # "child":Landroid/view/View;
    :cond_6b
    const/4 v6, 0x0

    move-object v1, v12

    move-object v2, v8

    move-object v3, v10

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p4

    invoke-static/range {v1 .. v7}, Landroid/widget/RemoteViews;->-$$Nest$mapplyNestedViews(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/view/View;

    move-result-object v1

    .line 2506
    .local v1, "nestedView":Landroid/view/View;
    iget v2, v0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    if-eq v2, v14, :cond_80

    .line 2507
    invoke-static {v1, v2}, Landroid/widget/RemoteViews;->-$$Nest$smsetStableId(Landroid/view/View;I)V

    .line 2509
    :cond_80
    iget v2, v0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    if-ltz v2, :cond_85

    goto :goto_86

    :cond_85
    move v2, v11

    :goto_86
    invoke-virtual {v10, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 2510
    if-ltz v11, :cond_94

    .line 2512
    add-int/lit8 v2, v11, 0x1

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-static {v10, v2, v3}, Landroid/widget/RemoteViews;->-$$Nest$smsetNextRecyclableChild(Landroid/view/ViewGroup;II)V

    .line 2514
    :cond_94
    return-void
.end method

.method public greylist-max-o getActionTag()I
    .registers 2

    .line 2631
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)Landroid/widget/RemoteViews$Action;
    .registers 24
    .param p1, "root"    # Landroid/widget/RemoteViews$ViewTree;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 2521
    move-object/from16 v7, p0

    invoke-virtual/range {p1 .. p1}, Landroid/widget/RemoteViews$ViewTree;->createTree()V

    .line 2522
    iget v0, v7, Landroid/widget/RemoteViews$ViewGroupActionAdd;->viewId:I

    move-object/from16 v8, p1

    invoke-virtual {v8, v0}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v9

    .line 2523
    .local v9, "target":Landroid/widget/RemoteViews$ViewTree;
    if-eqz v9, :cond_e1

    invoke-static {v9}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_19

    goto/16 :goto_e1

    .line 2526
    :cond_19
    invoke-static {v9}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/view/ViewGroup;

    .line 2529
    .local v6, "targetVg":Landroid/view/ViewGroup;
    invoke-static/range {p1 .. p1}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 2534
    .local v5, "context":Landroid/content/Context;
    invoke-static {v6}, Landroid/widget/RemoteViews;->-$$Nest$smgetNextRecyclableChild(Landroid/view/ViewGroup;)I

    move-result v4

    .line 2535
    .local v4, "nextChild":I
    if-ltz v4, :cond_cb

    iget v0, v7, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_cb

    .line 2536
    iget-object v0, v7, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-static {v0, v5}, Landroid/widget/RemoteViews;->-$$Nest$mgetRemoteViewsToApply(Landroid/widget/RemoteViews;Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 2537
    .local v3, "rvToApply":Landroid/widget/RemoteViews;
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda0;

    invoke-direct {v0, v7}, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda0;-><init>(Landroid/widget/RemoteViews$ViewGroupActionAdd;)V

    invoke-virtual {v9, v4, v0}, Landroid/widget/RemoteViews$ViewTree;->findChildIndex(ILjava/util/function/Predicate;)I

    move-result v2

    .line 2539
    .local v2, "recycledViewIndex":I
    if-ltz v2, :cond_c5

    .line 2543
    invoke-static {v9}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmChildren(Landroid/widget/RemoteViews$ViewTree;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/widget/RemoteViews$ViewTree;

    .line 2545
    .local v18, "recycled":Landroid/widget/RemoteViews$ViewTree;
    invoke-static/range {v18 .. v18}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/RemoteViews;->canRecycleView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 2546
    if-le v2, v4, :cond_61

    .line 2547
    sub-int v0, v2, v4

    invoke-virtual {v9, v4, v0}, Landroid/widget/RemoteViews$ViewTree;->removeChildren(II)V

    .line 2549
    :cond_61
    add-int/lit8 v0, v4, 0x1

    invoke-static {v9}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmChildren(Landroid/widget/RemoteViews$ViewTree;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v6, v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$smsetNextRecyclableChild(Landroid/view/ViewGroup;II)V

    .line 2550
    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-static/range {v18 .. v18}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v17

    move-object v10, v3

    move-object v11, v5

    move-object v12, v6

    move-object/from16 v14, p3

    move-object/from16 v16, p4

    invoke-static/range {v10 .. v17}, Landroid/widget/RemoteViews;->-$$Nest$mgetInternalAsyncApplyTask(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;Landroid/view/View;)Landroid/widget/RemoteViews$AsyncApplyTask;

    move-result-object v10

    .line 2555
    .local v10, "reapplyTask":Landroid/widget/RemoteViews$AsyncApplyTask;
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v10, v0}, Landroid/widget/RemoteViews$AsyncApplyTask;->doInBackground([Ljava/lang/Void;)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v11

    .line 2556
    .local v11, "tree":Landroid/widget/RemoteViews$ViewTree;
    if-eqz v11, :cond_9c

    .line 2559
    new-instance v12, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;

    move-object v0, v12

    move-object/from16 v1, p0

    move v13, v2

    .end local v2    # "recycledViewIndex":I
    .local v13, "recycledViewIndex":I
    move-object v2, v10

    move-object v14, v3

    .end local v3    # "rvToApply":Landroid/widget/RemoteViews;
    .local v14, "rvToApply":Landroid/widget/RemoteViews;
    move-object v3, v11

    move v15, v4

    .end local v4    # "nextChild":I
    .local v15, "nextChild":I
    move v4, v13

    move-object/from16 v16, v5

    .end local v5    # "context":Landroid/content/Context;
    .local v16, "context":Landroid/content/Context;
    move v5, v15

    move-object/from16 v17, v6

    .end local v6    # "targetVg":Landroid/view/ViewGroup;
    .local v17, "targetVg":Landroid/view/ViewGroup;
    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;-><init>(Landroid/widget/RemoteViews$ViewGroupActionAdd;Landroid/widget/RemoteViews$AsyncApplyTask;Landroid/widget/RemoteViews$ViewTree;IILandroid/view/ViewGroup;)V

    return-object v12

    .line 2557
    .end local v13    # "recycledViewIndex":I
    .end local v14    # "rvToApply":Landroid/widget/RemoteViews;
    .end local v15    # "nextChild":I
    .end local v16    # "context":Landroid/content/Context;
    .end local v17    # "targetVg":Landroid/view/ViewGroup;
    .restart local v2    # "recycledViewIndex":I
    .restart local v3    # "rvToApply":Landroid/widget/RemoteViews;
    .restart local v4    # "nextChild":I
    .restart local v5    # "context":Landroid/content/Context;
    .restart local v6    # "targetVg":Landroid/view/ViewGroup;
    :cond_9c
    new-instance v0, Landroid/widget/RemoteViews$ActionException;

    invoke-static {v10}, Landroid/widget/RemoteViews$AsyncApplyTask;->-$$Nest$fgetmError(Landroid/widget/RemoteViews$AsyncApplyTask;)Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 2573
    .end local v10    # "reapplyTask":Landroid/widget/RemoteViews$AsyncApplyTask;
    .end local v11    # "tree":Landroid/widget/RemoteViews$ViewTree;
    :cond_a6
    move v13, v2

    move-object v14, v3

    move v15, v4

    move-object/from16 v16, v5

    .end local v2    # "recycledViewIndex":I
    .end local v3    # "rvToApply":Landroid/widget/RemoteViews;
    .end local v4    # "nextChild":I
    .end local v5    # "context":Landroid/content/Context;
    .restart local v13    # "recycledViewIndex":I
    .restart local v14    # "rvToApply":Landroid/widget/RemoteViews;
    .restart local v15    # "nextChild":I
    .restart local v16    # "context":Landroid/content/Context;
    sub-int v2, v13, v15

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v9, v15, v2}, Landroid/widget/RemoteViews$ViewTree;->removeChildren(II)V

    .line 2574
    new-instance v5, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda1;

    invoke-direct {v5, v6, v15, v13}, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda1;-><init>(Landroid/view/ViewGroup;II)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v9

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->insertNewView(Landroid/content/Context;Landroid/widget/RemoteViews$ViewTree;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;Ljava/lang/Runnable;)Landroid/widget/RemoteViews$Action;

    move-result-object v0

    return-object v0

    .line 2539
    .end local v13    # "recycledViewIndex":I
    .end local v14    # "rvToApply":Landroid/widget/RemoteViews;
    .end local v15    # "nextChild":I
    .end local v16    # "context":Landroid/content/Context;
    .end local v18    # "recycled":Landroid/widget/RemoteViews$ViewTree;
    .restart local v2    # "recycledViewIndex":I
    .restart local v3    # "rvToApply":Landroid/widget/RemoteViews;
    .restart local v4    # "nextChild":I
    .restart local v5    # "context":Landroid/content/Context;
    :cond_c5
    move v13, v2

    move-object v14, v3

    move v15, v4

    move-object/from16 v16, v5

    .end local v2    # "recycledViewIndex":I
    .end local v3    # "rvToApply":Landroid/widget/RemoteViews;
    .end local v4    # "nextChild":I
    .end local v5    # "context":Landroid/content/Context;
    .restart local v13    # "recycledViewIndex":I
    .restart local v14    # "rvToApply":Landroid/widget/RemoteViews;
    .restart local v15    # "nextChild":I
    .restart local v16    # "context":Landroid/content/Context;
    goto :goto_ce

    .line 2535
    .end local v13    # "recycledViewIndex":I
    .end local v14    # "rvToApply":Landroid/widget/RemoteViews;
    .end local v15    # "nextChild":I
    .end local v16    # "context":Landroid/content/Context;
    .restart local v4    # "nextChild":I
    .restart local v5    # "context":Landroid/content/Context;
    :cond_cb
    move v15, v4

    move-object/from16 v16, v5

    .line 2581
    .end local v4    # "nextChild":I
    .end local v5    # "context":Landroid/content/Context;
    .restart local v15    # "nextChild":I
    .restart local v16    # "context":Landroid/content/Context;
    :goto_ce
    new-instance v5, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda2;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v9

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->insertNewView(Landroid/content/Context;Landroid/widget/RemoteViews$ViewTree;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;Ljava/lang/Runnable;)Landroid/widget/RemoteViews$Action;

    move-result-object v0

    return-object v0

    .line 2524
    .end local v6    # "targetVg":Landroid/view/ViewGroup;
    .end local v15    # "nextChild":I
    .end local v16    # "context":Landroid/content/Context;
    :cond_e1
    :goto_e1
    invoke-static {}, Landroid/widget/RemoteViews;->-$$Nest$sfgetACTION_NOOP()Landroid/widget/RemoteViews$Action;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$initActionAsync$0$android-widget-RemoteViews$ViewGroupActionAdd(Landroid/view/View;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 2538
    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$smgetStableId(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public greylist-max-o mergeBehavior()I
    .registers 2

    .line 2621
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o prefersAsyncApply()Z
    .registers 2

    .line 2626
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->prefersAsyncApply()Z

    move-result v0

    return v0
.end method

.method public blacklist setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V
    .registers 3
    .param p1, "root"    # Landroid/widget/RemoteViews$HierarchyRootData;

    .line 2447
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->-$$Nest$mconfigureAsChild(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$HierarchyRootData;)V

    .line 2448
    return-void
.end method

.method public final blacklist visitUris(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 2636
    .local p1, "visitor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    .line 2637
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2439
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2440
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2441
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mStableId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2442
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd;->mNestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2443
    return-void
.end method
