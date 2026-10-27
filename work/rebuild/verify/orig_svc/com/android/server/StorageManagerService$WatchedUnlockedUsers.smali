.class public Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;
.super Ljava/lang/Object;
.source "StorageManagerService.java"


# instance fields
.field public users:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->users:[I

    .line 414
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->invalidateIsUserUnlockedCache()V

    return-void
.end method


# virtual methods
.method public append(I)V
    .registers 3

    .line 417
    iget-object v0, p0, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->users:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->users:[I

    .line 418
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->invalidateIsUserUnlockedCache()V

    .line 419
    invoke-static {}, Landroid/os/storage/StorageManager;->invalidateVolumeListCache()V

    return-void
.end method

.method public appendAll([I)V
    .registers 6

    .line 422
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_11

    aget v2, p1, v1

    .line 423
    iget-object v3, p0, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->users:[I

    invoke-static {v3, v2}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->users:[I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 425
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->invalidateIsUserUnlockedCache()V

    .line 426
    invoke-static {}, Landroid/os/storage/StorageManager;->invalidateVolumeListCache()V

    return-void
.end method

.method public contains(I)Z
    .registers 2

    .line 434
    iget-object p0, p0, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->users:[I

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p0

    return p0
.end method

.method public final invalidateIsUserUnlockedCache()V
    .registers 1

    .line 444
    invoke-static {}, Landroid/os/UserManager;->invalidateIsUserUnlockedCache()V

    return-void
.end method

.method public remove(I)V
    .registers 3

    .line 429
    iget-object v0, p0, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->users:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->users:[I

    .line 430
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->invalidateIsUserUnlockedCache()V

    .line 431
    invoke-static {}, Landroid/os/storage/StorageManager;->invalidateVolumeListCache()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 441
    iget-object p0, p0, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->users:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
