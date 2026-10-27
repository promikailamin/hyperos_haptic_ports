.class public Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;
.super Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;
.source "PackageManagerLocalImpl.java"

# interfaces
.implements Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;


# instance fields
.field public mCachedUnmodifiableDisabledSystemPackageStates:Ljava/util/Map;

.field public mCachedUnmodifiablePackageStates:Ljava/util/Map;

.field public mCachedUnmodifiableSharedUsers:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/snapshot/PackageDataSnapshot;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 189
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;-><init>(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ZLcom/android/server/pm/local/PackageManagerLocalImpl-IA;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/local/PackageManagerLocalImpl-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;-><init>(Lcom/android/server/pm/snapshot/PackageDataSnapshot;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 239
    invoke-super {p0}, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->close()V

    const/4 v0, 0x0

    .line 240
    iput-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiablePackageStates:Ljava/util/Map;

    .line 241
    iput-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiableDisabledSystemPackageStates:Ljava/util/Map;

    return-void
.end method

.method public filtered(ILandroid/os/UserHandle;)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    .registers 11

    .line 194
    new-instance v0, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;

    iget-object v3, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->mSnapshot:Lcom/android/server/pm/Computer;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v4, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;-><init>(ILandroid/os/UserHandle;Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;Lcom/android/server/pm/pkg/PackageState;ZLcom/android/server/pm/local/PackageManagerLocalImpl-IA;)V

    return-object v0
.end method

.method public getDisabledSystemPackageStates()Ljava/util/Map;
    .registers 2

    .line 228
    invoke-virtual {p0}, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->checkClosed()V

    .line 230
    iget-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiableDisabledSystemPackageStates:Ljava/util/Map;

    if-nez v0, :cond_13

    .line 231
    iget-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->mSnapshot:Lcom/android/server/pm/Computer;

    .line 232
    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getDisabledSystemPackageStates()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiableDisabledSystemPackageStates:Ljava/util/Map;

    .line 234
    :cond_13
    iget-object p0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiableDisabledSystemPackageStates:Ljava/util/Map;

    return-object p0
.end method

.method public getPackageStates()Ljava/util/Map;
    .registers 2

    .line 202
    invoke-virtual {p0}, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->checkClosed()V

    .line 204
    iget-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiablePackageStates:Ljava/util/Map;

    if-nez v0, :cond_13

    .line 205
    iget-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->mSnapshot:Lcom/android/server/pm/Computer;

    .line 206
    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiablePackageStates:Ljava/util/Map;

    .line 208
    :cond_13
    iget-object p0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiablePackageStates:Ljava/util/Map;

    return-object p0
.end method

.method public getSharedUsers()Ljava/util/Map;
    .registers 2

    .line 215
    invoke-virtual {p0}, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->checkClosed()V

    .line 217
    iget-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiableSharedUsers:Ljava/util/Map;

    if-nez v0, :cond_13

    .line 218
    iget-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$BaseSnapshotImpl;->mSnapshot:Lcom/android/server/pm/Computer;

    .line 219
    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getSharedUsers()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiableSharedUsers:Ljava/util/Map;

    .line 221
    :cond_13
    iget-object p0, p0, Lcom/android/server/pm/local/PackageManagerLocalImpl$UnfilteredSnapshotImpl;->mCachedUnmodifiableSharedUsers:Ljava/util/Map;

    return-object p0
.end method
