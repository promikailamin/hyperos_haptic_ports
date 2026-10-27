.class public Lcom/android/server/display/DisplayTopologyCoordinator;
.super Ljava/lang/Object;
.source "DisplayTopologyCoordinator.java"


# instance fields
.field public final mDisplayIdToUniqueIdMapping:Landroid/util/SparseArray;

.field public final mDisplayInfoProvider:Lcom/android/server/display/DisplayManagerService$DisplayInfoProvider;

.field public final mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public final mIsExtendedDisplayAllowed:Ljava/util/function/BooleanSupplier;

.field public final mOnTopologyChangedCallback:Ljava/util/function/Consumer;

.field public final mShouldIncludeDefaultDisplayInTopology:Ljava/util/function/BooleanSupplier;

.field public final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

.field public mTopology:Landroid/hardware/display/DisplayTopology;

.field public final mTopologyChangeExecutor:Ljava/util/concurrent/Executor;

.field public final mTopologySavedCallback:Ljava/lang/Runnable;

.field public final mTopologyStore:Lcom/android/server/display/DisplayTopologyStore;

.field public final mUniqueIdToDisplayIdMapping:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$yeLmWp-Z0us8U_m8qEp2lHYutjc(Lcom/android/server/display/DisplayTopologyCoordinator;Landroid/hardware/display/DisplayTopology;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayTopologyCoordinator;->lambda$sendTopologyUpdateLocked$0(Landroid/hardware/display/DisplayTopology;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayTopologyCoordinator$Injector;Ljava/util/function/BooleanSupplier;Ljava/util/function/BooleanSupplier;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Lcom/android/server/display/DisplayManagerService$SyncRoot;Ljava/lang/Runnable;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/DisplayManagerService$DisplayInfoProvider;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/display/DisplayTopologyCoordinator$Injector;",
            "Ljava/util/function/BooleanSupplier;",
            "Ljava/util/function/BooleanSupplier;",
            "Ljava/util/function/Consumer<",
            "Landroid/util/Pair<",
            "Landroid/hardware/display/DisplayTopology;",
            "Landroid/hardware/display/DisplayTopologyGraph;",
            ">;>;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/server/display/DisplayManagerService$SyncRoot;",
            "Ljava/lang/Runnable;",
            "Lcom/android/server/display/feature/DisplayManagerFlags;",
            "Lcom/android/server/display/DisplayManagerService$DisplayInfoProvider;",
            ")V"
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mUniqueIdToDisplayIdMapping:Ljava/util/Map;

    .line 65
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mDisplayIdToUniqueIdMapping:Landroid/util/SparseArray;

    .line 110
    invoke-virtual {p1}, Lcom/android/server/display/DisplayTopologyCoordinator$Injector;->getTopology()Landroid/hardware/display/DisplayTopology;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    .line 111
    iput-object p2, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mIsExtendedDisplayAllowed:Ljava/util/function/BooleanSupplier;

    .line 112
    iput-object p3, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mShouldIncludeDefaultDisplayInTopology:Ljava/util/function/BooleanSupplier;

    .line 113
    iput-object p4, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mOnTopologyChangedCallback:Ljava/util/function/Consumer;

    .line 114
    iput-object p5, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopologyChangeExecutor:Ljava/util/concurrent/Executor;

    .line 115
    iput-object p6, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 116
    invoke-virtual {p1, v1, v0}, Lcom/android/server/display/DisplayTopologyCoordinator$Injector;->createTopologyStore(Landroid/util/SparseArray;Ljava/util/Map;)Lcom/android/server/display/DisplayTopologyStore;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopologyStore:Lcom/android/server/display/DisplayTopologyStore;

    .line 118
    iput-object p7, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopologySavedCallback:Ljava/lang/Runnable;

    .line 119
    iput-object p8, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 120
    iput-object p9, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mDisplayInfoProvider:Lcom/android/server/display/DisplayManagerService$DisplayInfoProvider;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/BooleanSupplier;Ljava/util/function/BooleanSupplier;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Lcom/android/server/display/DisplayManagerService$SyncRoot;Ljava/lang/Runnable;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/DisplayManagerService$DisplayInfoProvider;)V
    .registers 19

    .line 98
    new-instance v1, Lcom/android/server/display/DisplayTopologyCoordinator$Injector;

    invoke-direct {v1}, Lcom/android/server/display/DisplayTopologyCoordinator$Injector;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/display/DisplayTopologyCoordinator;-><init>(Lcom/android/server/display/DisplayTopologyCoordinator$Injector;Ljava/util/function/BooleanSupplier;Ljava/util/function/BooleanSupplier;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Lcom/android/server/display/DisplayManagerService$SyncRoot;Ljava/lang/Runnable;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/DisplayManagerService$DisplayInfoProvider;)V

    return-void
.end method

.method public static getUniqueId(Landroid/view/DisplayInfo;)Ljava/lang/String;
    .registers 3

    .line 50
    iget v0, p0, Landroid/view/DisplayInfo;->displayId:I

    if-nez v0, :cond_c

    iget v0, p0, Landroid/view/DisplayInfo;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 51
    const-string p0, "internal"

    return-object p0

    .line 53
    :cond_c
    iget-object p0, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final addDisplayIdMappingLocked(Landroid/view/DisplayInfo;)V
    .registers 5

    .line 287
    invoke-static {p1}, Lcom/android/server/display/DisplayTopologyCoordinator;->getUniqueId(Landroid/view/DisplayInfo;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 289
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t find uniqueId for displayId="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/view/DisplayInfo;->displayId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayTopologyCoordinator"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 292
    :cond_1f
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mUniqueIdToDisplayIdMapping:Ljava/util/Map;

    iget v2, p1, Landroid/view/DisplayInfo;->displayId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object p0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mDisplayIdToUniqueIdMapping:Landroid/util/SparseArray;

    iget p1, p1, Landroid/view/DisplayInfo;->displayId:I

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    .line 262
    const-string v0, "Display Topology Coordinator:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    const-string v0, "----------------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 264
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 265
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 266
    iget-object p1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter p1

    .line 267
    :try_start_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isExtendedDisplayAllowed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mIsExtendedDisplayAllowed:Ljava/util/function/BooleanSupplier;

    invoke-interface {v2}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldIncludeDefaultDisplayInTopology="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mShouldIncludeDefaultDisplayInTopology:Ljava/util/function/BooleanSupplier;

    .line 269
    invoke-interface {v2}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 268
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 270
    iget-object p0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayTopology;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 271
    monitor-exit p1

    return-void

    :catchall_52
    move-exception p0

    monitor-exit p1
    :try_end_54
    .catchall {:try_start_15 .. :try_end_54} :catchall_52

    throw p0
.end method

.method public getTopology()Landroid/hardware/display/DisplayTopology;
    .registers 2

    .line 233
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 234
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayTopology;->copy()Landroid/hardware/display/DisplayTopology;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 235
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public isDisplayAllowedInTopology(Landroid/view/DisplayInfo;)Z
    .registers 3

    const/4 v0, 0x0

    .line 297
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayTopologyCoordinator;->isDisplayAllowedInTopology(Landroid/view/DisplayInfo;Z)Z

    move-result p0

    return p0
.end method

.method public final isDisplayAllowedInTopology(Landroid/view/DisplayInfo;Z)Z
    .registers 11

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 304
    :cond_4
    iget v1, p1, Landroid/view/DisplayInfo;->type:I

    const/4 v2, 0x4

    const/4 v3, 0x2

    const-string v4, "Display "

    const-string v5, "DisplayTopologyCoordinator"

    const/4 v6, 0x1

    if-eq v1, v6, :cond_2f

    if-eq v1, v3, :cond_2f

    if-eq v1, v2, :cond_2f

    if-eqz p2, :cond_2e

    .line 307
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/view/DisplayInfo;->displayId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not allowed in topology because type is not INTERNAL, EXTERNAL or OVERLAY"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    return v0

    :cond_2f
    if-ne v1, v6, :cond_51

    .line 312
    iget v7, p1, Landroid/view/DisplayInfo;->displayId:I

    if-eqz v7, :cond_51

    if-eqz p2, :cond_50

    .line 314
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/view/DisplayInfo;->displayId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not allowed in topology because it is a non-default internal display"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    return v0

    :cond_51
    if-eq v1, v3, :cond_55

    if-ne v1, v2, :cond_79

    .line 319
    :cond_55
    iget-object p0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mIsExtendedDisplayAllowed:Ljava/util/function/BooleanSupplier;

    .line 320
    invoke-interface {p0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result p0

    if-nez p0, :cond_79

    if-eqz p2, :cond_78

    .line 322
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/view/DisplayInfo;->displayId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not allowed in topology because type is EXTERNAL or OVERLAY and !mIsExtendedDisplayAllowed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_78
    return v0

    :cond_79
    return v6
.end method

.method public final synthetic lambda$sendTopologyUpdateLocked$0(Landroid/hardware/display/DisplayTopology;)V
    .registers 6

    .line 349
    const-string/jumbo v0, "sendTopologyUpdateLocked"

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 351
    :try_start_9
    iget-object p0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mOnTopologyChangedCallback:Ljava/util/function/Consumer;

    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p1}, Landroid/hardware/display/DisplayTopology;->getGraph()Landroid/hardware/display/DisplayTopologyGraph;

    move-result-object v3

    invoke-direct {v0, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_1b

    .line 353
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_1b
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 354
    throw p0
.end method

.method public onDisplayAdded(Landroid/view/DisplayInfo;)V
    .registers 8

    const/4 v0, 0x1

    .line 128
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayTopologyCoordinator;->isDisplayAllowedInTopology(Landroid/view/DisplayInfo;Z)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_64

    .line 131
    :cond_8
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 132
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayTopologyCoordinator;->addDisplayIdMappingLocked(Landroid/view/DisplayInfo;)V

    .line 133
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    iget v2, p1, Landroid/view/DisplayInfo;->displayId:I

    iget v3, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v5, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/display/DisplayTopology;->addDisplay(IIII)V

    .line 135
    const-string v1, "DisplayTopologyCoordinator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/view/DisplayInfo;->displayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " added, new topology: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p0}, Lcom/android/server/display/DisplayTopologyCoordinator;->restoreTopologyLocked()Z

    .line 137
    invoke-virtual {p0}, Lcom/android/server/display/DisplayTopologyCoordinator;->sendTopologyUpdateLocked()V

    .line 138
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_b .. :try_end_44} :catchall_65

    .line 140
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDefaultDisplayInTopologySwitchEnabled()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 143
    iget p1, p1, Landroid/view/DisplayInfo;->displayId:I

    if-eqz p1, :cond_64

    iget-object p1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mShouldIncludeDefaultDisplayInTopology:Ljava/util/function/BooleanSupplier;

    .line 144
    invoke-interface {p1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result p1

    if-nez p1, :cond_64

    iget-object p1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    .line 145
    invoke-virtual {p1}, Landroid/hardware/display/DisplayTopology;->hasMultipleDisplays()Z

    move-result p1

    if-eqz p1, :cond_64

    const/4 p1, 0x0

    .line 146
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayTopologyCoordinator;->onDisplayRemoved(I)V

    :cond_64
    :goto_64
    return-void

    :catchall_65
    move-exception p0

    .line 138
    :try_start_66
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw p0
.end method

.method public onDisplayChanged(Landroid/view/DisplayInfo;)V
    .registers 8

    .line 156
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayTopologyCoordinator;->isDisplayAllowedInTopology(Landroid/view/DisplayInfo;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 159
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 160
    :try_start_a
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    iget v2, p1, Landroid/view/DisplayInfo;->displayId:I

    iget v3, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v5, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/display/DisplayTopology;->updateDisplay(IIII)Z

    move-result v1

    .line 163
    invoke-static {p1}, Lcom/android/server/display/DisplayTopologyCoordinator;->getUniqueId(Landroid/view/DisplayInfo;)Ljava/lang/String;

    move-result-object v2

    .line 164
    iget-object v3, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mDisplayIdToUniqueIdMapping:Landroid/util/SparseArray;

    iget v4, p1, Landroid/view/DisplayInfo;->displayId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v2, :cond_3b

    if-eqz v3, :cond_3b

    .line 165
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 166
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayTopologyCoordinator;->addDisplayIdMappingLocked(Landroid/view/DisplayInfo;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/server/display/DisplayTopologyCoordinator;->restoreTopologyLocked()Z

    move-result p1

    or-int/2addr v1, p1

    goto :goto_3b

    :catchall_39
    move-exception p0

    goto :goto_42

    :cond_3b
    :goto_3b
    if-eqz v1, :cond_40

    .line 173
    invoke-virtual {p0}, Lcom/android/server/display/DisplayTopologyCoordinator;->sendTopologyUpdateLocked()V

    .line 175
    :cond_40
    monitor-exit v0

    return-void

    :goto_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_a .. :try_end_43} :catchall_39

    throw p0
.end method

.method public onDisplayRemoved(I)V
    .registers 6

    .line 183
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 184
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayTopology;->removeDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 185
    const-string v1, "DisplayTopologyCoordinator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " removed, new topology: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayTopologyCoordinator;->removeDisplayIdMappingLocked(I)V

    .line 187
    invoke-virtual {p0}, Lcom/android/server/display/DisplayTopologyCoordinator;->restoreTopologyLocked()Z

    .line 188
    invoke-virtual {p0}, Lcom/android/server/display/DisplayTopologyCoordinator;->sendTopologyUpdateLocked()V

    goto :goto_37

    :catchall_35
    move-exception p0

    goto :goto_5d

    .line 190
    :cond_37
    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_35

    .line 194
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDefaultDisplayInTopologySwitchEnabled()Z

    move-result v0

    if-eqz v0, :cond_5c

    if-eqz p1, :cond_5c

    .line 195
    iget-object p1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mShouldIncludeDefaultDisplayInTopology:Ljava/util/function/BooleanSupplier;

    .line 196
    invoke-interface {p1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result p1

    if-nez p1, :cond_5c

    iget-object p1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    .line 197
    invoke-virtual {p1}, Landroid/hardware/display/DisplayTopology;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 198
    iget-object p1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mDisplayInfoProvider:Lcom/android/server/display/DisplayManagerService$DisplayInfoProvider;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/server/display/DisplayManagerService$DisplayInfoProvider;->get(I)Landroid/view/DisplayInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayTopologyCoordinator;->onDisplayAdded(Landroid/view/DisplayInfo;)V

    :cond_5c
    return-void

    .line 190
    :goto_5d
    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_35

    throw p0
.end method

.method public reloadTopologies(IZ)V
    .registers 5

    .line 211
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 212
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopologyStore:Lcom/android/server/display/DisplayTopologyStore;

    invoke-interface {v1, p1}, Lcom/android/server/display/DisplayTopologyStore;->reloadTopologies(I)V

    .line 213
    invoke-virtual {p0}, Lcom/android/server/display/DisplayTopologyCoordinator;->restoreTopologyLocked()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 215
    invoke-virtual {p0}, Lcom/android/server/display/DisplayTopologyCoordinator;->sendTopologyUpdateLocked()V

    goto :goto_14

    :catchall_12
    move-exception p0

    goto :goto_2b

    :cond_14
    :goto_14
    if-eqz p2, :cond_21

    if-nez p1, :cond_21

    .line 220
    iget-object p1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopologyStore:Lcom/android/server/display/DisplayTopologyStore;

    iget-object p2, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    invoke-interface {p1, p2}, Lcom/android/server/display/DisplayTopologyStore;->saveTopology(Landroid/hardware/display/DisplayTopology;)Z

    move-result p1

    goto :goto_22

    :cond_21
    const/4 p1, 0x0

    .line 222
    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_12

    if-eqz p1, :cond_2a

    .line 225
    iget-object p0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopologySavedCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2a
    return-void

    .line 222
    :goto_2b
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_12

    throw p0
.end method

.method public final removeDisplayIdMappingLocked(I)V
    .registers 4

    .line 276
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mDisplayIdToUniqueIdMapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_21

    .line 278
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t find uniqueId for displayId="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayTopologyCoordinator"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 281
    :cond_21
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mDisplayIdToUniqueIdMapping:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 282
    iget-object p0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mUniqueIdToDisplayIdMapping:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final restoreTopologyLocked()Z
    .registers 3

    .line 336
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopologyStore:Lcom/android/server/display/DisplayTopologyStore;

    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    invoke-interface {v0, v1}, Lcom/android/server/display/DisplayTopologyStore;->restoreTopology(Landroid/hardware/display/DisplayTopology;)Landroid/hardware/display/DisplayTopology;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 340
    :cond_c
    iput-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    .line 341
    invoke-virtual {v0}, Landroid/hardware/display/DisplayTopology;->normalize()V

    const/4 p0, 0x1

    return p0
.end method

.method public final sendTopologyUpdateLocked()V
    .registers 4

    .line 347
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayTopology;->copy()Landroid/hardware/display/DisplayTopology;

    move-result-object v0

    .line 348
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopologyChangeExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/display/DisplayTopologyCoordinator$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/server/display/DisplayTopologyCoordinator$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/DisplayTopologyCoordinator;Landroid/hardware/display/DisplayTopology;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTopology(Landroid/hardware/display/DisplayTopology;)V
    .registers 6

    .line 240
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 241
    :try_start_3
    const-string/jumbo v1, "setTopology"

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_26

    .line 243
    :try_start_c
    invoke-virtual {p1}, Landroid/hardware/display/DisplayTopology;->normalize()V

    .line 244
    iput-object p1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    .line 245
    invoke-virtual {p0}, Lcom/android/server/display/DisplayTopologyCoordinator;->sendTopologyUpdateLocked()V

    .line 246
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopologyStore:Lcom/android/server/display/DisplayTopologyStore;

    invoke-interface {v1, p1}, Lcom/android/server/display/DisplayTopologyStore;->saveTopology(Landroid/hardware/display/DisplayTopology;)Z

    move-result p1
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_28

    .line 248
    :try_start_1a
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 250
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_26

    if-eqz p1, :cond_25

    .line 253
    iget-object p0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopologySavedCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_25
    return-void

    :catchall_26
    move-exception p0

    goto :goto_2d

    :catchall_28
    move-exception p0

    .line 248
    :try_start_29
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 249
    throw p0

    .line 250
    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_26

    throw p0
.end method
