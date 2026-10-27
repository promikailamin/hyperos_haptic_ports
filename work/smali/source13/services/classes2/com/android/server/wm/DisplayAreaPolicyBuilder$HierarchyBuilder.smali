.class Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;
.super Ljava/lang/Object;
.source "DisplayAreaPolicyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayAreaPolicyBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HierarchyBuilder"
.end annotation


# static fields
.field private static final LEAF_TYPE_IME_CONTAINERS:I = 0x2

.field private static final LEAF_TYPE_TASK_CONTAINERS:I = 0x1

.field private static final LEAF_TYPE_TOKENS:I


# instance fields
.field private final mFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;",
            ">;"
        }
    .end annotation
.end field

.field private mImeContainer:Lcom/android/server/wm/DisplayArea$Tokens;

.field private final mRoot:Lcom/android/server/wm/RootDisplayArea;

.field private final mTaskDisplayAreas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmFeatures(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImeContainer(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Lcom/android/server/wm/DisplayArea$Tokens;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mImeContainer:Lcom/android/server/wm/DisplayArea$Tokens;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRoot(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Lcom/android/server/wm/RootDisplayArea;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTaskDisplayAreas(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mbuild(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->build()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbuild(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->build(Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/RootDisplayArea;)V
    .registers 3
    .param p1, "root"    # Lcom/android/server/wm/RootDisplayArea;

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    .line 447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    .line 452
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    .line 453
    return-void
.end method

.method private addDisplayAreaGroupsToApplicationLayer(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;Ljava/util/List;)V
    .registers 8
    .param p1, "parentPendingArea"    # Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;",
            "Ljava/util/List<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;",
            ">;)V"
        }
    .end annotation

    .line 611
    .local p2, "displayAreaGroupHierarchyBuilders":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;>;"
    if-nez p2, :cond_3

    .line 612
    return-void

    .line 614
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 615
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_25

    .line 617
    new-instance v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, p1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;-><init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    .line 619
    .local v2, "leafArea":Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    iget-object v3, v3, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    iput-object v3, v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mExisting:Lcom/android/server/wm/DisplayArea;

    .line 620
    iput v4, v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    .line 621
    iget-object v3, p1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    .end local v2    # "leafArea":Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 623
    .end local v1    # "i":I
    :cond_25
    return-void
.end method

.method private addTaskDisplayAreasToApplicationLayer(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V
    .registers 7
    .param p1, "parentPendingArea"    # Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    .line 597
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 598
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_24

    .line 599
    new-instance v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, p1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;-><init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    .line 601
    .local v2, "leafArea":Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;
    iget-object v3, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayArea;

    iput-object v3, v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mExisting:Lcom/android/server/wm/DisplayArea;

    .line 602
    iput v4, v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    .line 603
    iget-object v3, p1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    .end local v2    # "leafArea":Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 605
    .end local v1    # "i":I
    :cond_24
    return-void
.end method

.method private build()V
    .registers 2

    .line 479
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->build(Ljava/util/List;)V

    .line 480
    return-void
.end method

.method private build(Ljava/util/List;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;",
            ">;)V"
        }
    .end annotation

    .line 487
    .local p1, "displayAreaGroupHierarchyBuilders":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    iget-object v1, v1, Lcom/android/server/wm/RootDisplayArea;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 488
    .local v1, "policy":Lcom/android/server/policy/WindowManagerPolicy;
    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->getMaxWindowLayer()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 489
    .local v2, "maxWindowLayerCount":I
    new-array v4, v2, [Lcom/android/server/wm/DisplayArea$Tokens;

    .line 491
    .local v4, "displayAreaForLayer":[Lcom/android/server/wm/DisplayArea$Tokens;
    new-instance v5, Landroid/util/ArrayMap;

    iget-object v6, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    .line 492
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/util/ArrayMap;-><init>(I)V

    .line 493
    .local v5, "featureAreas":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;Ljava/util/List<Lcom/android/server/wm/DisplayArea<Lcom/android/server/wm/WindowContainer;>;>;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1c
    iget-object v7, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_37

    .line 494
    iget-object v7, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    .line 518
    .end local v6    # "i":I
    :cond_37
    new-array v6, v2, [Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    .line 519
    .local v6, "areaForLayer":[Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;
    new-instance v7, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9, v8}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;-><init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    .line 520
    .local v7, "root":Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;
    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 523
    iget-object v10, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 524
    .local v10, "size":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4a
    if-ge v11, v10, :cond_84

    .line 527
    iget-object v12, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    .line 528
    .local v12, "feature":Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;
    const/4 v13, 0x0

    .line 529
    .local v13, "featureArea":Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;
    const/4 v14, 0x0

    .local v14, "layer":I
    :goto_56
    if-ge v14, v2, :cond_80

    .line 530
    invoke-static {v12}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->-$$Nest$fgetmWindowLayers(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)[Z

    move-result-object v15

    aget-boolean v15, v15, v14

    if-eqz v15, :cond_7a

    .line 538
    if-eqz v13, :cond_68

    iget-object v15, v13, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mParent:Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    aget-object v9, v6, v14

    if-eq v15, v9, :cond_77

    .line 541
    :cond_68
    new-instance v9, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    aget-object v15, v6, v14

    invoke-direct {v9, v12, v14, v15}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;-><init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    move-object v13, v9

    .line 542
    aget-object v9, v6, v14

    iget-object v9, v9, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    :cond_77
    aput-object v13, v6, v14

    goto :goto_7c

    .line 549
    :cond_7a
    const/4 v9, 0x0

    move-object v13, v9

    .line 529
    :goto_7c
    add-int/lit8 v14, v14, 0x1

    const/4 v9, 0x0

    goto :goto_56

    .line 524
    .end local v12    # "feature":Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;
    .end local v13    # "featureArea":Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;
    .end local v14    # "layer":I
    :cond_80
    add-int/lit8 v11, v11, 0x1

    const/4 v9, 0x0

    goto :goto_4a

    .line 555
    .end local v11    # "i":I
    :cond_84
    const/4 v9, 0x0

    .line 556
    .local v9, "leafArea":Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;
    const/4 v11, 0x0

    .line 557
    .local v11, "leafType":I
    const/4 v12, 0x0

    .local v12, "layer":I
    :goto_87
    if-ge v12, v2, :cond_cc

    .line 558
    invoke-static {v1, v12}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->typeOfLayer(Lcom/android/server/policy/WindowManagerPolicy;I)I

    move-result v13

    .line 562
    .local v13, "type":I
    if-eqz v9, :cond_9b

    iget-object v14, v9, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mParent:Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    aget-object v15, v6, v12

    if-ne v14, v15, :cond_9b

    if-eq v13, v11, :cond_98

    goto :goto_9b

    :cond_98
    move-object/from16 v15, p1

    goto :goto_c7

    .line 565
    :cond_9b
    :goto_9b
    new-instance v14, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    aget-object v15, v6, v12

    invoke-direct {v14, v8, v12, v15}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;-><init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    move-object v9, v14

    .line 566
    aget-object v14, v6, v12

    iget-object v14, v14, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    move v11, v13

    .line 568
    if-ne v11, v3, :cond_bc

    .line 571
    aget-object v14, v6, v12

    invoke-direct {v0, v14}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->addTaskDisplayAreasToApplicationLayer(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    .line 572
    aget-object v14, v6, v12

    move-object/from16 v15, p1

    invoke-direct {v0, v14, v15}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->addDisplayAreaGroupsToApplicationLayer(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;Ljava/util/List;)V

    .line 574
    iput-boolean v3, v9, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mSkipTokens:Z

    goto :goto_c7

    .line 575
    :cond_bc
    move-object/from16 v15, p1

    const/4 v14, 0x2

    if-ne v11, v14, :cond_c7

    .line 578
    iget-object v14, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mImeContainer:Lcom/android/server/wm/DisplayArea$Tokens;

    iput-object v14, v9, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mExisting:Lcom/android/server/wm/DisplayArea;

    .line 579
    iput-boolean v3, v9, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mSkipTokens:Z

    .line 582
    :cond_c7
    :goto_c7
    iput v12, v9, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    .line 557
    .end local v13    # "type":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_87

    :cond_cc
    move-object/from16 v15, p1

    .line 584
    .end local v12    # "layer":I
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->computeMaxLayer()I

    .line 588
    iget-object v3, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    const/4 v8, 0x0

    invoke-virtual {v7, v3, v4, v8, v5}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->instantiateChildren(Lcom/android/server/wm/DisplayArea;[Lcom/android/server/wm/DisplayArea$Tokens;ILjava/util/Map;)V

    .line 592
    iget-object v3, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    iget-object v8, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v3, v8, v4, v5}, Lcom/android/server/wm/RootDisplayArea;->onHierarchyBuilt(Ljava/util/ArrayList;[Lcom/android/server/wm/DisplayArea$Tokens;Ljava/util/Map;)V

    .line 593
    return-void
.end method

.method private static typeOfLayer(Lcom/android/server/policy/WindowManagerPolicy;I)I
    .registers 4
    .param p0, "policy"    # Lcom/android/server/policy/WindowManagerPolicy;
    .param p1, "layer"    # I

    .line 626
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 627
    const/4 v0, 0x1

    return v0

    .line 628
    :cond_5
    const/16 v1, 0x7db

    invoke-interface {p0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v1

    if-eq p1, v1, :cond_18

    const/16 v1, 0x7dc

    .line 629
    invoke-interface {p0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v1

    if-ne p1, v1, :cond_16

    goto :goto_18

    .line 632
    :cond_16
    const/4 v0, 0x0

    return v0

    .line 630
    :cond_18
    :goto_18
    return v0
.end method


# virtual methods
.method addFeature(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;
    .registers 3
    .param p1, "feature"    # Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    .line 457
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    return-object p0
.end method

.method setImeContainer(Lcom/android/server/wm/DisplayArea$Tokens;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;
    .registers 2
    .param p1, "imeContainer"    # Lcom/android/server/wm/DisplayArea$Tokens;

    .line 473
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mImeContainer:Lcom/android/server/wm/DisplayArea$Tokens;

    .line 474
    return-object p0
.end method

.method setTaskDisplayAreas(Ljava/util/List;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ">;)",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;"
        }
    .end annotation

    .line 466
    .local p1, "taskDisplayAreas":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/TaskDisplayArea;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 467
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 468
    return-object p0
.end method
