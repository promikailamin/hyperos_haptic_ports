.class public Lcom/android/server/display/DisplayTopologyXmlStore;
.super Ljava/lang/Object;
.source "DisplayTopologyXmlStore.java"

# interfaces
.implements Lcom/android/server/display/DisplayTopologyStore;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mImmutableTopologies:Ljava/util/List;

.field public final mInjector:Lcom/android/server/display/DisplayTopologyXmlStore$Injector;

.field public final mTopologies:Ljava/util/Map;

.field public mUserId:I


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/android/server/display/DisplayTopologyXmlStore;->DEBUG:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$smgetProductTopologyFile()Ljava/io/File;
    .registers 1

    .line 0
    invoke-static {}, Lcom/android/server/display/DisplayTopologyXmlStore;->getProductTopologyFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smgetVendorTopologyFile()Ljava/io/File;
    .registers 1

    .line 0
    invoke-static {}, Lcom/android/server/display/DisplayTopologyXmlStore;->getVendorTopologyFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 70
    const-string v0, "DisplayManager.DisplayTopologyXmlStore"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayTopologyXmlStore;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayTopologyXmlStore$Injector;)V
    .registers 3

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 128
    iput v0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mImmutableTopologies:Ljava/util/List;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    .line 133
    iput-object p1, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mInjector:Lcom/android/server/display/DisplayTopologyXmlStore$Injector;

    .line 134
    invoke-virtual {p0}, Lcom/android/server/display/DisplayTopologyXmlStore;->reloadImmutableTopologies()V

    return-void
.end method

.method public static getOrderOrDefault(Lcom/android/server/display/topology/Topology;I)I
    .registers 2

    if-eqz p0, :cond_7

    .line 124
    invoke-virtual {p0}, Lcom/android/server/display/topology/Topology;->getOrder()I

    move-result p0

    return p0

    :cond_7
    return p1
.end method

.method public static getProductTopologyFile()Ljava/io/File;
    .registers 4

    .line 93
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "displayconfig"

    const-string v2, "display_topology.xml"

    const-string v3, "etc"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getUserTopologyFile(I)Ljava/io/File;
    .registers 3

    .line 84
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string v1, "display_topology.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getVendorTopologyFile()Ljava/io/File;
    .registers 4

    .line 88
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "displayconfig"

    const-string v2, "display_topology.xml"

    const-string v3, "etc"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static readTopologiesFromInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .registers 5

    .line 100
    const-string v0, "DisplayManager.DisplayTopologyXmlStore"

    if-nez p0, :cond_10

    .line 101
    sget-boolean p0, Lcom/android/server/display/DisplayTopologyXmlStore;->DEBUG:Z

    if-eqz p0, :cond_d

    .line 102
    const-string p0, "iStream is null"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_d
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 107
    :cond_10
    invoke-static {p0}, Lcom/android/server/display/topology/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/display/topology/DisplayTopologyState;

    move-result-object p0

    .line 108
    invoke-virtual {p0}, Lcom/android/server/display/topology/DisplayTopologyState;->getVersion()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3e

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Topology version="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/display/topology/DisplayTopologyState;->getVersion()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not supported by DisplayTopologyXmlStore version="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 114
    :cond_3e
    sget-boolean v1, Lcom/android/server/display/DisplayTopologyXmlStore;->DEBUG:Z

    if-eqz v1, :cond_48

    .line 115
    const-string/jumbo v1, "readTopologiesFromInputStream: done"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_48
    invoke-virtual {p0}, Lcom/android/server/display/topology/DisplayTopologyState;->getTopology()Ljava/util/List;

    move-result-object p0

    .line 119
    new-instance v0, Lcom/android/server/display/DisplayTopologyXmlStore$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/display/DisplayTopologyXmlStore$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object p0
.end method


# virtual methods
.method public final appendTopologies(Ljava/util/List;)V
    .registers 3

    .line 269
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/topology/Topology;

    .line 270
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayTopologyXmlStore;->appendTopology(Lcom/android/server/display/topology/Topology;)V

    goto :goto_4

    :cond_14
    return-void
.end method

.method public final appendTopology(Lcom/android/server/display/topology/Topology;)V
    .registers 6

    .line 275
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/display/topology/Topology;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/topology/Topology;

    .line 276
    const-string v1, "DisplayManager.DisplayTopologyXmlStore"

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/android/server/display/topology/Topology;->getImmutable()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 277
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addTopology: can\'t override immutable topology "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {p1}, Lcom/android/server/display/topology/Topology;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 277
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2f
    if-nez v0, :cond_58

    .line 284
    iget-object v2, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_58

    .line 285
    sget-boolean p0, Lcom/android/server/display/DisplayTopologyXmlStore;->DEBUG:Z

    if-eqz p0, :cond_57

    .line 286
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "appendTopology: MAX_NUMBER_OF_TOPOLOGIES is reached, can\'t append topology"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {p1}, Lcom/android/server/display/topology/Topology;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 286
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    return-void

    .line 291
    :cond_58
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayTopologyXmlStore;->getOrderOrDefault(Lcom/android/server/display/topology/Topology;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/Topology;->setOrder(I)V

    .line 292
    iget-object p0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/display/topology/Topology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final convertPersistentDisplayToTreeNode(Lcom/android/server/display/topology/Display;Landroid/hardware/display/DisplayTopology;Ljava/util/Map;)Landroid/hardware/display/DisplayTopology$TreeNode;
    .registers 14

    .line 389
    invoke-virtual {p1}, Lcom/android/server/display/topology/Display;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_7d

    .line 395
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 396
    invoke-virtual {p2}, Landroid/hardware/display/DisplayTopology;->getRoot()Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v2

    .line 395
    invoke-static {v1, v2}, Landroid/hardware/display/DisplayTopology;->findDisplay(ILandroid/hardware/display/DisplayTopology$TreeNode;)Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v1

    if-eqz v1, :cond_61

    .line 402
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 403
    invoke-virtual {p1}, Lcom/android/server/display/topology/Display;->getChildren()Lcom/android/server/display/topology/Children;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/topology/Children;->getDisplay()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/topology/Display;

    .line 404
    invoke-virtual {p0, v3, p2, p3}, Lcom/android/server/display/DisplayTopologyXmlStore;->convertPersistentDisplayToTreeNode(Lcom/android/server/display/topology/Display;Landroid/hardware/display/DisplayTopology;Ljava/util/Map;)Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 408
    :cond_3f
    new-instance v2, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 409
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->getLogicalWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->getLogicalHeight()I

    move-result v5

    .line 410
    invoke-virtual {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->getLogicalDensity()I

    move-result v6

    .line 411
    invoke-virtual {p1}, Lcom/android/server/display/topology/Display;->getPosition()Lcom/android/server/display/topology/Position;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayTopologyXmlStore;->toDisplayTopologyPosition(Lcom/android/server/display/topology/Position;)I

    move-result v7

    .line 412
    invoke-virtual {p1}, Lcom/android/server/display/topology/Display;->getOffset()F

    move-result v8

    invoke-direct/range {v2 .. v9}, Landroid/hardware/display/DisplayTopology$TreeNode;-><init>(IIIIIFLjava/util/List;)V

    return-object v2

    .line 398
    :cond_61
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can\'t find displayId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " in current topology"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 391
    :cond_7d
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can\'t map uniqueId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {p1}, Lcom/android/server/display/topology/Display;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to displayId"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final convertPersistentTopologyToDisplayTopology(Landroid/hardware/display/DisplayTopology;Lcom/android/server/display/topology/Display;Ljava/util/Map;)Landroid/hardware/display/DisplayTopology;
    .registers 4

    .line 373
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/display/DisplayTopologyXmlStore;->convertPersistentDisplayToTreeNode(Lcom/android/server/display/topology/Display;Landroid/hardware/display/DisplayTopology;Ljava/util/Map;)Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object p1

    .line 375
    invoke-virtual {p0, p2, p3}, Lcom/android/server/display/DisplayTopologyXmlStore;->findPrimaryDisplayId(Lcom/android/server/display/topology/Display;Ljava/util/Map;)I

    move-result p0

    const/4 p2, -0x1

    if-ne p0, p2, :cond_13

    .line 378
    const-string p0, "DisplayManager.DisplayTopologyXmlStore"

    const-string p2, "Primary display id is not found in persistent topology"

    invoke-static {p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 381
    :cond_13
    new-instance p2, Landroid/hardware/display/DisplayTopology;

    invoke-direct {p2, p1, p0}, Landroid/hardware/display/DisplayTopology;-><init>(Landroid/hardware/display/DisplayTopology$TreeNode;I)V

    return-object p2
.end method

.method public final convertTopologyForPersistence(Landroid/hardware/display/DisplayTopology;Ljava/lang/String;)Lcom/android/server/display/topology/Topology;
    .registers 5

    .line 436
    invoke-virtual {p1}, Landroid/hardware/display/DisplayTopology;->getRoot()Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v0

    .line 437
    invoke-virtual {p1}, Landroid/hardware/display/DisplayTopology;->getPrimaryDisplayId()I

    move-result p1

    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mInjector:Lcom/android/server/display/DisplayTopologyXmlStore$Injector;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayTopologyXmlStore$Injector;->getDisplayIdToUniqueIdMapping()Landroid/util/SparseArray;

    move-result-object v1

    .line 436
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/display/DisplayTopologyXmlStore;->convertTreeNodeForPersistence(Landroid/hardware/display/DisplayTopology$TreeNode;ILandroid/util/SparseArray;)Lcom/android/server/display/topology/Display;

    move-result-object p0

    if-nez p0, :cond_16

    const/4 p0, 0x0

    return-object p0

    .line 442
    :cond_16
    new-instance p1, Lcom/android/server/display/topology/Topology;

    invoke-direct {p1}, Lcom/android/server/display/topology/Topology;-><init>()V

    .line 443
    invoke-virtual {p1, p0}, Lcom/android/server/display/topology/Topology;->setDisplay(Lcom/android/server/display/topology/Display;)V

    .line 444
    invoke-virtual {p1, p2}, Lcom/android/server/display/topology/Topology;->setId(Ljava/lang/String;)V

    return-object p1
.end method

.method public final convertTreeNodeForPersistence(Landroid/hardware/display/DisplayTopology$TreeNode;ILandroid/util/SparseArray;)Lcom/android/server/display/topology/Display;
    .registers 10

    .line 453
    const-string v0, "DisplayManager.DisplayTopologyXmlStore"

    const/4 v1, 0x0

    if-nez p1, :cond_b

    .line 454
    const-string p0, "Can\'t convertTreeNodeForPersistence, node == null"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 457
    :cond_b
    invoke-virtual {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->getDisplayId()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_30

    .line 459
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can\'t convertTreeNodeForPersistence, uniqueId is not found for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->getDisplayId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 459
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 463
    :cond_30
    new-instance v0, Lcom/android/server/display/topology/Children;

    invoke-direct {v0}, Lcom/android/server/display/topology/Children;-><init>()V

    .line 464
    invoke-virtual {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 465
    invoke-virtual {p0, v4, p2, p3}, Lcom/android/server/display/DisplayTopologyXmlStore;->convertTreeNodeForPersistence(Landroid/hardware/display/DisplayTopology$TreeNode;ILandroid/util/SparseArray;)Lcom/android/server/display/topology/Display;

    move-result-object v4

    if-nez v4, :cond_50

    return-object v1

    .line 469
    :cond_50
    invoke-virtual {v0}, Lcom/android/server/display/topology/Children;->getDisplay()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 471
    :cond_58
    new-instance p3, Lcom/android/server/display/topology/Display;

    invoke-direct {p3}, Lcom/android/server/display/topology/Display;-><init>()V

    .line 472
    invoke-virtual {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->getPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayTopologyXmlStore;->toPersistentPosition(I)Lcom/android/server/display/topology/Position;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/android/server/display/topology/Display;->setPosition(Lcom/android/server/display/topology/Position;)V

    .line 473
    invoke-virtual {p3, v2}, Lcom/android/server/display/topology/Display;->setId(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->getOffset()F

    move-result p0

    invoke-virtual {p3, p0}, Lcom/android/server/display/topology/Display;->setOffset(F)V

    .line 475
    invoke-virtual {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->getDisplayId()I

    move-result p0

    if-ne p0, p2, :cond_7a

    const/4 p0, 0x1

    goto :goto_7b

    :cond_7a
    const/4 p0, 0x0

    :goto_7b
    invoke-virtual {p3, p0}, Lcom/android/server/display/topology/Display;->setPrimary(Z)V

    .line 476
    invoke-virtual {p3, v0}, Lcom/android/server/display/topology/Display;->setChildren(Lcom/android/server/display/topology/Children;)V

    return-object p3
.end method

.method public final findMaxOrderMutableTopology()Lcom/android/server/display/topology/Topology;
    .registers 5

    .line 329
    iget-object p0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_b
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/topology/Topology;

    .line 330
    invoke-virtual {v1}, Lcom/android/server/display/topology/Topology;->getImmutable()Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_b

    :cond_1e
    if-eqz v0, :cond_2a

    .line 333
    invoke-virtual {v0}, Lcom/android/server/display/topology/Topology;->getOrder()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/display/topology/Topology;->getOrder()I

    move-result v3

    if-ge v2, v3, :cond_b

    :cond_2a
    move-object v0, v1

    goto :goto_b

    :cond_2c
    return-object v0
.end method

.method public final findPrimaryDisplayId(Lcom/android/server/display/topology/Display;Ljava/util/Map;)I
    .registers 5

    .line 417
    invoke-virtual {p1}, Lcom/android/server/display/topology/Display;->getPrimary()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 418
    invoke-virtual {p1}, Lcom/android/server/display/topology/Display;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_17

    .line 423
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 420
    :cond_17
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t map uniqueId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {p1}, Lcom/android/server/display/topology/Display;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to displayId"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 425
    :cond_37
    invoke-virtual {p1}, Lcom/android/server/display/topology/Display;->getChildren()Lcom/android/server/display/topology/Children;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/topology/Children;->getDisplay()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_43
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_57

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/topology/Display;

    .line 426
    invoke-virtual {p0, v0, p2}, Lcom/android/server/display/DisplayTopologyXmlStore;->findPrimaryDisplayId(Lcom/android/server/display/topology/Display;Ljava/util/Map;)I

    move-result v0

    if-eq v0, v1, :cond_43

    return v0

    :cond_57
    return v1
.end method

.method public final getTopologyId(Landroid/hardware/display/DisplayTopology;)Ljava/lang/String;
    .registers 4

    .line 514
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mInjector:Lcom/android/server/display/DisplayTopologyXmlStore$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayTopologyXmlStore$Injector;->getDisplayIdToUniqueIdMapping()Landroid/util/SparseArray;

    move-result-object v0

    .line 515
    invoke-virtual {p1}, Landroid/hardware/display/DisplayTopology;->getRoot()Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/display/DisplayTopologyXmlStore;->getUniqueIds(Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/util/SparseArray;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayTopologyXmlStore;->getTopologyId(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTopologyId(Ljava/util/List;)Ljava/lang/String;
    .registers 3

    .line 520
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_19

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_19

    .line 523
    :cond_e
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 524
    const-string/jumbo p0, "|"

    invoke-static {p0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_19
    :goto_19
    return-object v0
.end method

.method public final getUniqueIds(Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/util/SparseArray;Ljava/util/List;)Ljava/util/List;
    .registers 5

    if-nez p1, :cond_3

    return-object p3

    .line 505
    :cond_3
    invoke-virtual {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->getDisplayId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    invoke-virtual {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 507
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/display/DisplayTopologyXmlStore;->getUniqueIds(Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/util/SparseArray;Ljava/util/List;)Ljava/util/List;

    goto :goto_18

    :cond_28
    return-object p3
.end method

.method public final moveTopologyToHead(Lcom/android/server/display/topology/Topology;)V
    .registers 5

    .line 228
    invoke-virtual {p1}, Lcom/android/server/display/topology/Topology;->getOrder()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 231
    :cond_7
    iget-object p0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/topology/Topology;

    .line 232
    invoke-virtual {v0}, Lcom/android/server/display/topology/Topology;->getOrder()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/display/topology/Topology;->getOrder()I

    move-result v2

    if-ge v1, v2, :cond_11

    .line 233
    invoke-virtual {v0}, Lcom/android/server/display/topology/Topology;->getOrder()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/topology/Topology;->setOrder(I)V

    goto :goto_11

    :cond_31
    const/4 p0, 0x0

    .line 236
    invoke-virtual {p1, p0}, Lcom/android/server/display/topology/Topology;->setOrder(I)V

    return-void
.end method

.method public final prependTopology(Lcom/android/server/display/topology/Topology;)Z
    .registers 6

    .line 296
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/display/topology/Topology;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/topology/Topology;

    const/4 v1, 0x0

    .line 297
    const-string v2, "DisplayManager.DisplayTopologyXmlStore"

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Lcom/android/server/display/topology/Topology;->getImmutable()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 298
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "prependTopology: can\'t override immutable topology "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {p1}, Lcom/android/server/display/topology/Topology;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 298
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_31
    if-nez v0, :cond_70

    .line 305
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v3, 0x64

    if-lt v0, v3, :cond_70

    .line 306
    invoke-virtual {p0}, Lcom/android/server/display/DisplayTopologyXmlStore;->findMaxOrderMutableTopology()Lcom/android/server/display/topology/Topology;

    move-result-object v0

    if-nez v0, :cond_4a

    .line 308
    const-string/jumbo p0, "prependTopology: can\'t find a topology to remove to free up space"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 311
    :cond_4a
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/server/display/topology/Topology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-boolean v1, Lcom/android/server/display/DisplayTopologyXmlStore;->DEBUG:Z

    if-eqz v1, :cond_70

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prependTopology: remove topology "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/display/topology/Topology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    const v0, 0x7fffffff

    .line 317
    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/Topology;->setOrder(I)V

    .line 318
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayTopologyXmlStore;->moveTopologyToHead(Lcom/android/server/display/topology/Topology;)V

    .line 319
    iget-object p0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/display/topology/Topology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method public final reloadImmutableTopologies()V
    .registers 5

    .line 240
    const-string v0, "DisplayManager.DisplayTopologyXmlStore"

    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mImmutableTopologies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 241
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mInjector:Lcom/android/server/display/DisplayTopologyXmlStore$Injector;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayTopologyXmlStore$Injector;->readProductTopologies()Ljava/io/InputStream;

    move-result-object v1
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_d} :catch_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_d} :catch_1c
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_7 .. :try_end_d} :catch_1c

    .line 242
    :try_start_d
    iget-object v2, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mImmutableTopologies:Ljava/util/List;

    invoke-static {v1}, Lcom/android/server/display/DisplayTopologyXmlStore;->readTopologiesFromInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1e

    if-eqz v1, :cond_30

    .line 243
    :try_start_18
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_1b} :catch_1c
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_30

    :catch_1c
    move-exception v1

    goto :goto_2a

    :catchall_1e
    move-exception v2

    if-eqz v1, :cond_29

    .line 241
    :try_start_21
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_29

    :catchall_25
    move-exception v1

    :try_start_26
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_29
    :goto_29
    throw v2
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2a} :catch_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_26 .. :try_end_2a} :catch_1c
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_26 .. :try_end_2a} :catch_1c

    .line 244
    :goto_2a
    const-string/jumbo v2, "reloadImmutableTopologies for product topologies failed"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    :cond_30
    :goto_30
    :try_start_30
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mInjector:Lcom/android/server/display/DisplayTopologyXmlStore$Injector;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayTopologyXmlStore$Injector;->readVendorTopologies()Ljava/io/InputStream;

    move-result-object v1
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_36} :catch_45
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_30 .. :try_end_36} :catch_45
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_30 .. :try_end_36} :catch_45

    .line 247
    :try_start_36
    iget-object v2, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mImmutableTopologies:Ljava/util/List;

    invoke-static {v1}, Lcom/android/server/display/DisplayTopologyXmlStore;->readTopologiesFromInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_47

    if-eqz v1, :cond_59

    .line 248
    :try_start_41
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_41 .. :try_end_44} :catch_45
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_59

    :catch_45
    move-exception v1

    goto :goto_53

    :catchall_47
    move-exception v2

    if-eqz v1, :cond_52

    .line 246
    :try_start_4a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_52

    :catchall_4e
    move-exception v1

    :try_start_4f
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_52
    :goto_52
    throw v2
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_53} :catch_45
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4f .. :try_end_53} :catch_45
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_4f .. :try_end_53} :catch_45

    .line 249
    :goto_53
    const-string/jumbo v2, "reloadImmutableTopologies for vendor topologies failed"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    :cond_59
    :goto_59
    iget-object p0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mImmutableTopologies:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/topology/Topology;

    const/4 v1, 0x1

    .line 252
    invoke-virtual {v0, v1}, Lcom/android/server/display/topology/Topology;->setImmutable(Z)V

    goto :goto_5f

    :cond_70
    return-void
.end method

.method public final reloadTopologies()V
    .registers 4

    .line 257
    iget v0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    const-string v1, "DisplayManager.DisplayTopologyXmlStore"

    if-gez v0, :cond_1d

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t reload topologies for userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 261
    :cond_1d
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mInjector:Lcom/android/server/display/DisplayTopologyXmlStore$Injector;

    invoke-virtual {v2, v0}, Lcom/android/server/display/DisplayTopologyXmlStore$Injector;->readUserTopologies(I)Ljava/io/InputStream;

    move-result-object v0
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_23} :catch_30
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d .. :try_end_23} :catch_30
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_1d .. :try_end_23} :catch_30

    .line 262
    :try_start_23
    invoke-static {v0}, Lcom/android/server/display/DisplayTopologyXmlStore;->readTopologiesFromInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayTopologyXmlStore;->appendTopologies(Ljava/util/List;)V
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_33

    if-eqz v0, :cond_32

    .line 263
    :try_start_2c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2c .. :try_end_2f} :catch_30
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_2c .. :try_end_2f} :catch_30

    return-void

    :catch_30
    move-exception p0

    goto :goto_3f

    :cond_32
    return-void

    :catchall_33
    move-exception p0

    if-eqz v0, :cond_3e

    .line 261
    :try_start_36
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_3e

    :catchall_3a
    move-exception v0

    :try_start_3b
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3e
    :goto_3e
    throw p0
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3f} :catch_30
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3b .. :try_end_3f} :catch_30
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_3b .. :try_end_3f} :catch_30

    .line 264
    :goto_3f
    const-string/jumbo v0, "reloadTopologies failed"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public reloadTopologies(I)V
    .registers 4

    .line 208
    sget-boolean v0, Lcom/android/server/display/DisplayTopologyXmlStore;->DEBUG:Z

    if-eqz v0, :cond_25

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reloadTopologies mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManager.DisplayTopologyXmlStore"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_25
    iget v0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    if-eq v0, p1, :cond_2e

    .line 212
    iput p1, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    .line 213
    invoke-virtual {p0}, Lcom/android/server/display/DisplayTopologyXmlStore;->resetTopologies()V

    .line 215
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/display/DisplayTopologyXmlStore;->reloadTopologies()V

    return-void
.end method

.method public final resetTopologies()V
    .registers 2

    .line 219
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 220
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mImmutableTopologies:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayTopologyXmlStore;->appendTopologies(Ljava/util/List;)V

    return-void
.end method

.method public restoreTopology(Landroid/hardware/display/DisplayTopology;)Landroid/hardware/display/DisplayTopology;
    .registers 9

    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayTopologyXmlStore;->getTopologyId(Landroid/hardware/display/DisplayTopology;)Ljava/lang/String;

    move-result-object v0

    .line 179
    sget-boolean v1, Lcom/android/server/display/DisplayTopologyXmlStore;->DEBUG:Z

    const-string v2, ", topologyId="

    const-string/jumbo v3, "restoreTopology userId="

    const-string v4, "DisplayManager.DisplayTopologyXmlStore"

    if-eqz v1, :cond_29

    .line 180
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    const/4 v5, 0x0

    if-nez v0, :cond_42

    .line 183
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "restoreTopology cancelled: topology id is null for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    .line 187
    :cond_42
    iget-object v6, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/topology/Topology;

    if-nez v6, :cond_6e

    if-eqz v1, :cond_6d

    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not found"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6d
    return-object v5

    .line 198
    :cond_6e
    invoke-virtual {v6}, Lcom/android/server/display/topology/Topology;->getOrder()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_7c

    .line 199
    invoke-virtual {p0, v6}, Lcom/android/server/display/DisplayTopologyXmlStore;->moveTopologyToHead(Lcom/android/server/display/topology/Topology;)V

    .line 200
    invoke-virtual {p0}, Lcom/android/server/display/DisplayTopologyXmlStore;->saveTopologiesToFile()V

    .line 202
    :cond_7c
    invoke-virtual {v6}, Lcom/android/server/display/topology/Topology;->getDisplay()Lcom/android/server/display/topology/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mInjector:Lcom/android/server/display/DisplayTopologyXmlStore$Injector;

    .line 203
    invoke-virtual {v1}, Lcom/android/server/display/DisplayTopologyXmlStore$Injector;->getUniqueIdToDisplayIdMapping()Ljava/util/Map;

    move-result-object v1

    .line 202
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/display/DisplayTopologyXmlStore;->convertPersistentTopologyToDisplayTopology(Landroid/hardware/display/DisplayTopology;Lcom/android/server/display/topology/Display;Ljava/util/Map;)Landroid/hardware/display/DisplayTopology;

    move-result-object p0

    return-object p0
.end method

.method public final saveTopologiesToFile()V
    .registers 6

    .line 341
    iget v0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    const-string v1, "DisplayManager.DisplayTopologyXmlStore"

    if-gez v0, :cond_1d

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t save topologies for userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 345
    :cond_1d
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 346
    sget-boolean v0, Lcom/android/server/display/DisplayTopologyXmlStore;->DEBUG:Z

    if-eqz v0, :cond_3f

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No topologies to save for userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    return-void

    .line 351
    :cond_40
    new-instance v0, Lcom/android/server/display/topology/DisplayTopologyState;

    invoke-direct {v0}, Lcom/android/server/display/topology/DisplayTopologyState;-><init>()V

    const/4 v2, 0x1

    .line 352
    invoke-virtual {v0, v2}, Lcom/android/server/display/topology/DisplayTopologyState;->setVersion(I)V

    .line 353
    iget-object v2, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_53
    :goto_53
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/topology/Topology;

    .line 354
    invoke-virtual {v3}, Lcom/android/server/display/topology/Topology;->getImmutable()Z

    move-result v4

    if-nez v4, :cond_53

    .line 355
    invoke-virtual {v0}, Lcom/android/server/display/topology/DisplayTopologyState;->getTopology()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 359
    :cond_6d
    :try_start_6d
    iget-object v2, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mInjector:Lcom/android/server/display/DisplayTopologyXmlStore$Injector;

    iget p0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    invoke-virtual {v2, p0}, Lcom/android/server/display/DisplayTopologyXmlStore$Injector;->getTopologyFilePrintWriter(I)Landroid/util/AtomicFilePrintWriter;

    move-result-object p0
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_75} :catch_a0

    .line 361
    :try_start_75
    new-instance v2, Lcom/android/server/display/topology/XmlWriter;

    invoke-direct {v2, p0}, Lcom/android/server/display/topology/XmlWriter;-><init>(Ljava/io/PrintWriter;)V

    invoke-static {v2, v0}, Lcom/android/server/display/topology/XmlWriter;->write(Lcom/android/server/display/topology/XmlWriter;Lcom/android/server/display/topology/DisplayTopologyState;)V

    .line 362
    invoke-virtual {p0}, Landroid/util/AtomicFilePrintWriter;->markSuccess()V

    .line 363
    sget-boolean v0, Lcom/android/server/display/DisplayTopologyXmlStore;->DEBUG:Z

    if-eqz v0, :cond_9c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveTopologiesToFile "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catchall {:try_start_75 .. :try_end_99} :catchall_9a

    goto :goto_9c

    :catchall_9a
    move-exception v0

    goto :goto_a2

    .line 364
    :cond_9c
    :goto_9c
    :try_start_9c
    invoke-virtual {p0}, Landroid/util/AtomicFilePrintWriter;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_a0

    return-void

    :catch_a0
    move-exception p0

    goto :goto_ad

    :goto_a2
    if-eqz p0, :cond_ac

    .line 359
    :try_start_a4
    invoke-virtual {p0}, Landroid/util/AtomicFilePrintWriter;->close()V
    :try_end_a7
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_a8

    goto :goto_ac

    :catchall_a8
    move-exception p0

    :try_start_a9
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_ac
    :goto_ac
    throw v0
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ad} :catch_a0

    .line 365
    :goto_ad
    const-string/jumbo v0, "saveTopologiesToFile failed"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public saveTopology(Landroid/hardware/display/DisplayTopology;)Z
    .registers 6

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayTopologyXmlStore;->getTopologyId(Landroid/hardware/display/DisplayTopology;)Ljava/lang/String;

    move-result-object v0

    .line 145
    sget-boolean v1, Lcom/android/server/display/DisplayTopologyXmlStore;->DEBUG:Z

    const-string v2, "DisplayManager.DisplayTopologyXmlStore"

    if-eqz v1, :cond_29

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveTopology userId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", topologyId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    const/4 v1, 0x0

    if-nez v0, :cond_42

    .line 149
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "saveTopology cancelled: topology id is null for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 153
    :cond_42
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayTopologyXmlStore;->convertTopologyForPersistence(Landroid/hardware/display/DisplayTopology;Ljava/lang/String;)Lcom/android/server/display/topology/Topology;

    move-result-object v0

    if-nez v0, :cond_5e

    .line 155
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "saveTopology cancelled: can\'t convert topology "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 159
    :cond_5e
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayTopologyXmlStore;->prependTopology(Lcom/android/server/display/topology/Topology;)Z

    move-result p1

    if-nez p1, :cond_6b

    .line 160
    const-string/jumbo p0, "saveTopology cancelled: can\'t prependTopology"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 163
    :cond_6b
    invoke-virtual {p0}, Lcom/android/server/display/DisplayTopologyXmlStore;->saveTopologiesToFile()V

    const/4 p0, 0x1

    return p0
.end method

.method public final toDisplayTopologyPosition(Lcom/android/server/display/topology/Position;)I
    .registers 3

    .line 492
    sget-object p0, Lcom/android/server/display/DisplayTopologyXmlStore$1;->$SwitchMap$com$android$server$display$topology$Position:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1d

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1c

    const/4 v0, 0x4

    if-ne p0, v0, :cond_15

    return p1

    :cond_15
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_1c
    return v0

    :cond_1d
    return p1

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public final toPersistentPosition(I)Lcom/android/server/display/topology/Position;
    .registers 4

    if-eqz p1, :cond_2b

    const/4 p0, 0x1

    if-eq p1, p0, :cond_28

    const/4 p0, 0x2

    if-eq p1, p0, :cond_25

    const/4 p0, 0x3

    if-ne p1, p0, :cond_e

    .line 485
    sget-object p0, Lcom/android/server/display/topology/Position;->bottom:Lcom/android/server/display/topology/Position;

    return-object p0

    .line 486
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 484
    :cond_25
    sget-object p0, Lcom/android/server/display/topology/Position;->right:Lcom/android/server/display/topology/Position;

    return-object p0

    .line 483
    :cond_28
    sget-object p0, Lcom/android/server/display/topology/Position;->top:Lcom/android/server/display/topology/Position;

    return-object p0

    .line 482
    :cond_2b
    sget-object p0, Lcom/android/server/display/topology/Position;->left:Lcom/android/server/display/topology/Position;

    return-object p0
.end method
