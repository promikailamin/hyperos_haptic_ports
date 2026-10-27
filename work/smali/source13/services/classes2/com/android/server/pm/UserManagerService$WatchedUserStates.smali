.class Lcom/android/server/pm/UserManagerService$WatchedUserStates;
.super Ljava/lang/Object;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WatchedUserStates"
.end annotation


# instance fields
.field final states:Landroid/util/SparseIntArray;

.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .registers 2

    .line 581
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    .line 583
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->invalidateIsUserUnlockedCache()V

    .line 584
    return-void
.end method

.method private invalidateIsUserUnlockedCache()V
    .registers 1

    .line 607
    invoke-static {}, Landroid/os/UserManager;->invalidateIsUserUnlockedCache()V

    .line 608
    return-void
.end method


# virtual methods
.method public delete(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 596
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 597
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->invalidateIsUserUnlockedCache()V

    .line 598
    return-void
.end method

.method public get(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 586
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method public get(II)I
    .registers 4
    .param p1, "userId"    # I
    .param p2, "fallback"    # I

    .line 589
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    goto :goto_10

    :cond_f
    move v0, p2

    :goto_10
    return v0
.end method

.method public has(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 600
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    const/16 v1, -0x2710

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public put(II)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "state"    # I

    .line 592
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 593
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->invalidateIsUserUnlockedCache()V

    .line 594
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 604
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
