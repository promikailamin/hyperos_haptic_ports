.class public Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;
.super Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;
.source "PackageManagerLocalImpl.java"

# interfaces
.implements Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;


# instance fields
.field public final mCallingUid:I

.field public mFilteredPackageStates:Ljava/util/Map;

.field public final mParentSnapshot:Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;

.field public final mUncommitPackageState:Lcom/android/server/pm/pkg/PackageState;

.field public final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/os/UserHandle;Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;Lcom/android/server/pm/pkg/PackageState;Z)V
    .registers 8

    const/4 v0, 0x0

    .line 266
    invoke-direct {p0, p3, p6, v0}, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;-><init>(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ZLcom/android/server/pm/local/PackageManagerLocalImpl-IA;)V

    .line 267
    iput p1, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mCallingUid:I

    .line 268
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    iput p1, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mUserId:I

    .line 269
    iput-object p4, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mParentSnapshot:Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;

    .line 270
    iput-object p5, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mUncommitPackageState:Lcom/android/server/pm/pkg/PackageState;

    return-void
.end method

.method public synthetic constructor <init>(ILandroid/os/UserHandle;Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;Lcom/android/server/pm/pkg/PackageState;ZLcom/android/server/pm/local/PackageManagerLocalImpl-IA;)V
    .registers 8

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;-><init>(ILandroid/os/UserHandle;Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;Lcom/android/server/pm/pkg/PackageState;Z)V

    return-void
.end method


# virtual methods
.method public checkClosed()V
    .registers 2

    .line 275
    iget-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mParentSnapshot:Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;

    if-eqz v0, :cond_7

    .line 276
    invoke-virtual {v0}, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->checkClosed()V

    .line 279
    :cond_7
    invoke-super {p0}, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->checkClosed()V

    return-void
.end method

.method public close()V
    .registers 2

    .line 284
    invoke-super {p0}, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->close()V

    const/4 v0, 0x0

    .line 285
    iput-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mFilteredPackageStates:Ljava/util/Map;

    return-void
.end method

.method public getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;
    .registers 4

    .line 291
    invoke-virtual {p0}, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->checkClosed()V

    .line 292
    iget-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mUncommitPackageState:Lcom/android/server/pm/pkg/PackageState;

    if-eqz v0, :cond_14

    .line 293
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 294
    iget-object p0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mUncommitPackageState:Lcom/android/server/pm/pkg/PackageState;

    return-object p0

    .line 296
    :cond_14
    iget-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->mSnapshot:Lcom/android/server/pm/Computer;

    iget v1, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mCallingUid:I

    iget p0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mUserId:I

    invoke-interface {v0, p1, v1, p0}, Lcom/android/server/pm/Computer;->getPackageStateFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    return-object p0
.end method

.method public getPackageStates()Ljava/util/Map;
    .registers 9

    .line 302
    invoke-virtual {p0}, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->checkClosed()V

    .line 304
    iget-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mFilteredPackageStates:Ljava/util/Map;

    if-nez v0, :cond_55

    .line 305
    iget-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->mSnapshot:Lcom/android/server/pm/Computer;

    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v0

    .line 306
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 307
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_4f

    .line 308
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 309
    iget-object v5, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mUncommitPackageState:Lcom/android/server/pm/pkg/PackageState;

    if-eqz v5, :cond_37

    .line 310
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mUncommitPackageState:Lcom/android/server/pm/pkg/PackageState;

    .line 311
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 310
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 312
    iget-object v4, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mUncommitPackageState:Lcom/android/server/pm/pkg/PackageState;

    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 314
    :cond_37
    iget-object v5, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->mSnapshot:Lcom/android/server/pm/Computer;

    iget v6, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mCallingUid:I

    iget v7, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mUserId:I

    invoke-interface {v5, v4, v6, v7}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v5

    if-nez v5, :cond_4c

    .line 315
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 318
    :cond_4f
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mFilteredPackageStates:Ljava/util/Map;

    .line 321
    :cond_55
    iget-object p0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->mFilteredPackageStates:Ljava/util/Map;

    return-object p0
.end method
