.class public Lcom/android/server/pm/UserManagerService$WatchedUserStates;
.super Ljava/lang/Object;
.source "UserManagerService.java"


# instance fields
.field public final states:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .registers 2

    .line 976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 977
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    .line 978
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->invalidateIsUserUnlockedCache()V

    return-void
.end method


# virtual methods
.method public delete(I)V
    .registers 3

    .line 991
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 992
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->invalidateIsUserUnlockedCache()V

    return-void
.end method

.method public get(II)I
    .registers 4

    .line 984
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_f

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    return p0

    :cond_f
    return p2
.end method

.method public has(I)Z
    .registers 3

    .line 995
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    const/16 v0, -0x2710

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-eq p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final invalidateIsUserUnlockedCache()V
    .registers 1

    .line 1002
    invoke-static {}, Landroid/os/UserManager;->invalidateIsUserUnlockedCache()V

    return-void
.end method

.method public put(II)V
    .registers 4

    .line 987
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 988
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->invalidateIsUserUnlockedCache()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 999
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
