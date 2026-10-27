.class Lcom/android/server/StorageManagerService$WatchedLockedUsers;
.super Ljava/lang/Object;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WatchedLockedUsers"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;

.field private users:[I


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;)V
    .registers 2

    .line 431
    iput-object p1, p0, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    sget-object p1, Llibcore/util/EmptyArray;->INT:[I

    iput-object p1, p0, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->users:[I

    .line 432
    invoke-direct {p0}, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->invalidateIsUserUnlockedCache()V

    .line 433
    return-void
.end method

.method private invalidateIsUserUnlockedCache()V
    .registers 1

    .line 459
    invoke-static {}, Landroid/os/UserManager;->invalidateIsUserUnlockedCache()V

    .line 460
    return-void
.end method


# virtual methods
.method public all()[I
    .registers 2

    .line 452
    iget-object v0, p0, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->users:[I

    return-object v0
.end method

.method public append(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 435
    iget-object v0, p0, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->users:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->users:[I

    .line 436
    invoke-direct {p0}, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->invalidateIsUserUnlockedCache()V

    .line 437
    return-void
.end method

.method public appendAll([I)V
    .registers 6
    .param p1, "userIds"    # [I

    .line 439
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_11

    aget v2, p1, v1

    .line 440
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->users:[I

    invoke-static {v3, v2}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->users:[I

    .line 439
    .end local v2    # "userId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 442
    :cond_11
    invoke-direct {p0}, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->invalidateIsUserUnlockedCache()V

    .line 443
    return-void
.end method

.method public contains(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 449
    iget-object v0, p0, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->users:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    return v0
.end method

.method public remove(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 445
    iget-object v0, p0, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->users:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->users:[I

    .line 446
    invoke-direct {p0}, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->invalidateIsUserUnlockedCache()V

    .line 447
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 456
    iget-object v0, p0, Lcom/android/server/StorageManagerService$WatchedLockedUsers;->users:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
