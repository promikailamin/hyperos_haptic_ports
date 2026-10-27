.class public Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;
.super Ljava/lang/Object;
.source "DisplayAreaPolicyBuilder.java"


# instance fields
.field public final mFeatures:Ljava/util/ArrayList;

.field public mImeContainer:Lcom/android/server/wm/DisplayArea$Tokens;

.field public final mRoot:Lcom/android/server/wm/RootDisplayArea;

.field public final mTaskDisplayAreas:Ljava/util/ArrayList;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmFeatures(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmImeContainer(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Lcom/android/server/wm/DisplayArea$Tokens;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mImeContainer:Lcom/android/server/wm/DisplayArea$Tokens;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRoot(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Lcom/android/server/wm/RootDisplayArea;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTaskDisplayAreas(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mbuild(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->build()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbuild(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->build(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/RootDisplayArea;)V
    .registers 3

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    .line 480
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    .line 486
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/RootDisplayArea;

    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    return-void
.end method

.method public static typeOfLayer(Lcom/android/server/policy/WindowManagerPolicy;I)I
    .registers 4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    const/16 v1, 0x7db

    .line 670
    invoke-interface {p0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v1

    if-eq p1, v1, :cond_18

    const/16 v1, 0x7dc

    .line 671
    invoke-interface {p0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result p0

    if-ne p1, p0, :cond_16

    goto :goto_18

    :cond_16
    const/4 p0, 0x0

    return p0

    :cond_18
    :goto_18
    return v0
.end method


# virtual methods
.method public final addDisplayAreaGroupsToApplicationLayer(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;Ljava/util/List;)V
    .registers 7

    if-nez p2, :cond_3

    goto :goto_29

    .line 651
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_8
    if-ge v0, p0, :cond_29

    .line 654
    new-instance v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, p1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;-><init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    .line 656
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    iget-object v2, v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    invoke-static {v1, v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->-$$Nest$fputmExisting(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;Lcom/android/server/wm/DisplayArea;)V

    .line 657
    invoke-static {v1, v3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->-$$Nest$fputmMaxLayer(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;I)V

    .line 658
    invoke-static {p1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->-$$Nest$fgetmChildren(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_29
    :goto_29
    return-void
.end method

.method public addFeature(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;
    .registers 3

    .line 492
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addTaskDisplayAreasToApplicationLayer(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V
    .registers 7

    .line 634
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_28

    .line 636
    new-instance v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, p1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;-><init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    .line 638
    iget-object v3, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayArea;

    invoke-static {v2, v3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->-$$Nest$fputmExisting(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;Lcom/android/server/wm/DisplayArea;)V

    .line 639
    invoke-static {v2, v4}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->-$$Nest$fputmMaxLayer(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;I)V

    .line 640
    invoke-static {p1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->-$$Nest$fgetmChildren(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_28
    return-void
.end method

.method public final build()V
    .registers 2

    const/4 v0, 0x0

    .line 516
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->build(Ljava/util/List;)V

    return-void
.end method

.method public final build(Ljava/util/List;)V
    .registers 18

    move-object/from16 v0, p0

    .line 524
    iget-object v1, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 525
    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->getMaxWindowLayer()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 526
    new-array v4, v2, [Lcom/android/server/wm/DisplayArea$Tokens;

    .line 528
    new-instance v5, Landroid/util/ArrayMap;

    iget-object v6, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    .line 529
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v6, 0x0

    move v7, v6

    .line 530
    :goto_1d
    iget-object v8, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_38

    .line 531
    iget-object v8, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1d

    .line 555
    :cond_38
    new-array v7, v2, [Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    .line 556
    new-instance v8, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v6, v9}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;-><init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    .line 557
    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 560
    iget-object v10, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v11, v6

    :goto_4a
    if-ge v11, v10, :cond_86

    .line 564
    iget-object v12, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    move v13, v6

    move-object v14, v9

    :goto_56
    if-ge v13, v2, :cond_82

    .line 567
    invoke-static {v12}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->-$$Nest$fgetmWindowLayers(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)[Z

    move-result-object v15

    aget-boolean v15, v15, v13

    if-eqz v15, :cond_7d

    if-eqz v14, :cond_6a

    .line 575
    invoke-static {v14}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->-$$Nest$fgetmParent(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    move-result-object v15

    aget-object v6, v7, v13

    if-eq v15, v6, :cond_7a

    .line 578
    :cond_6a
    new-instance v14, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    aget-object v6, v7, v13

    invoke-direct {v14, v12, v13, v6}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;-><init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    .line 579
    aget-object v6, v7, v13

    invoke-static {v6}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->-$$Nest$fgetmChildren(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    :cond_7a
    aput-object v14, v7, v13

    goto :goto_7e

    :cond_7d
    move-object v14, v9

    :goto_7e
    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x0

    goto :goto_56

    :cond_82
    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x0

    goto :goto_4a

    :cond_86
    move-object v10, v9

    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_89
    if-ge v6, v2, :cond_d5

    .line 595
    invoke-static {v1, v6}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->typeOfLayer(Lcom/android/server/policy/WindowManagerPolicy;I)I

    move-result v12

    if-eqz v10, :cond_9f

    .line 599
    invoke-static {v10}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->-$$Nest$fgetmParent(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    move-result-object v13

    aget-object v14, v7, v6

    if-ne v13, v14, :cond_9f

    if-eq v12, v11, :cond_9c

    goto :goto_9f

    :cond_9c
    move-object/from16 v13, p1

    goto :goto_cf

    .line 602
    :cond_9f
    :goto_9f
    new-instance v10, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    aget-object v11, v7, v6

    invoke-direct {v10, v9, v6, v11}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;-><init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    .line 603
    aget-object v11, v7, v6

    invoke-static {v11}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->-$$Nest$fgetmChildren(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v12, v3, :cond_c1

    .line 608
    aget-object v11, v7, v6

    invoke-virtual {v0, v11}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->addTaskDisplayAreasToApplicationLayer(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    .line 609
    aget-object v11, v7, v6

    move-object/from16 v13, p1

    invoke-virtual {v0, v11, v13}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->addDisplayAreaGroupsToApplicationLayer(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;Ljava/util/List;)V

    .line 611
    invoke-static {v10, v3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->-$$Nest$fputmSkipTokens(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;Z)V

    goto :goto_ce

    :cond_c1
    move-object/from16 v13, p1

    const/4 v11, 0x2

    if-ne v12, v11, :cond_ce

    .line 615
    iget-object v11, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mImeContainer:Lcom/android/server/wm/DisplayArea$Tokens;

    invoke-static {v10, v11}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->-$$Nest$fputmExisting(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;Lcom/android/server/wm/DisplayArea;)V

    .line 616
    invoke-static {v10, v3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->-$$Nest$fputmSkipTokens(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;Z)V

    :cond_ce
    :goto_ce
    move v11, v12

    .line 619
    :goto_cf
    invoke-static {v10, v6}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->-$$Nest$fputmMaxLayer(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_89

    .line 621
    :cond_d5
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->computeMaxLayer()I

    .line 625
    iget-object v1, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v4, v2, v5}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->instantiateChildren(Lcom/android/server/wm/DisplayArea;[Lcom/android/server/wm/DisplayArea$Tokens;ILjava/util/Map;)V

    .line 629
    iget-object v1, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    iget-object v0, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/wm/RootDisplayArea;->onHierarchyBuilt(Ljava/util/ArrayList;[Lcom/android/server/wm/DisplayArea$Tokens;Ljava/util/Map;)V

    return-void
.end method

.method public hasValidWindowingLayer()Z
    .registers 3

    .line 664
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1d

    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    invoke-static {p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->-$$Nest$fgetmId(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)I

    move-result p0

    invoke-static {p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->-$$Nest$smcanBeWindowingLayer(I)Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    return v1
.end method

.method public setImeContainer(Lcom/android/server/wm/DisplayArea$Tokens;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;
    .registers 2

    .line 510
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mImeContainer:Lcom/android/server/wm/DisplayArea$Tokens;

    return-object p0
.end method

.method public setTaskDisplayAreas(Ljava/util/List;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;
    .registers 3

    .line 502
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 503
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method
