.class public final Lcom/android/server/pm/permission/PermissionState;
.super Ljava/lang/Object;
.source "PermissionState.java"


# instance fields
.field private mFlags:I

.field private mGranted:Z

.field private final mLock:Ljava/lang/Object;

.field private final mPermission:Lcom/android/server/pm/permission/Permission;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/Permission;)V
    .registers 3
    .param p1, "permission"    # Lcom/android/server/pm/permission/Permission;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    .line 41
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionState;->mPermission:Lcom/android/server/pm/permission/Permission;

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/permission/PermissionState;)V
    .registers 3
    .param p1, "other"    # Lcom/android/server/pm/permission/PermissionState;

    .line 45
    iget-object v0, p1, Lcom/android/server/pm/permission/PermissionState;->mPermission:Lcom/android/server/pm/permission/Permission;

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionState;-><init>(Lcom/android/server/pm/permission/Permission;)V

    .line 47
    iget-boolean v0, p1, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    iput-boolean v0, p0, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    .line 48
    iget v0, p1, Lcom/android/server/pm/permission/PermissionState;->mFlags:I

    iput v0, p0, Lcom/android/server/pm/permission/PermissionState;->mFlags:I

    .line 49
    return-void
.end method


# virtual methods
.method public computeGids(I)[I
    .registers 3
    .param p1, "userId"    # I

    .line 63
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mPermission:Lcom/android/server/pm/permission/Permission;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/Permission;->computeGids(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getFlags()I
    .registers 3

    .line 95
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_3
    iget v1, p0, Lcom/android/server/pm/permission/PermissionState;->mFlags:I

    monitor-exit v0

    return v1

    .line 97
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mPermission:Lcom/android/server/pm/permission/Permission;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPermission()Lcom/android/server/pm/permission/Permission;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mPermission:Lcom/android/server/pm/permission/Permission;

    return-object v0
.end method

.method public grant()Z
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    if-eqz v1, :cond_a

    .line 75
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 77
    :cond_a
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    .line 78
    invoke-static {}, Lcom/android/server/pm/permission/UidPermissionState;->invalidateCache()V

    .line 79
    monitor-exit v0

    return v1

    .line 80
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public isDefault()Z
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    if-nez v1, :cond_d

    iget v1, p0, Lcom/android/server/pm/permission/PermissionState;->mFlags:I

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    .line 116
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public isGranted()Z
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    monitor-exit v0

    return v1

    .line 69
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public revoke()Z
    .registers 4

    .line 84
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 86
    monitor-exit v0

    return v2

    .line 88
    :cond_a
    iput-boolean v2, p0, Lcom/android/server/pm/permission/PermissionState;->mGranted:Z

    .line 89
    invoke-static {}, Lcom/android/server/pm/permission/UidPermissionState;->invalidateCache()V

    .line 90
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 91
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public updateFlags(II)Z
    .registers 8
    .param p1, "flagMask"    # I
    .param p2, "flagValues"    # I

    .line 101
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    and-int v1, p2, p1

    .line 105
    .local v1, "newFlags":I
    :try_start_5
    invoke-static {}, Lcom/android/server/pm/permission/UidPermissionState;->invalidateCache()V

    .line 107
    iget v2, p0, Lcom/android/server/pm/permission/PermissionState;->mFlags:I

    move v3, v2

    .line 108
    .local v3, "oldFlags":I
    not-int v4, p1

    and-int/2addr v2, v4

    or-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/pm/permission/PermissionState;->mFlags:I

    .line 109
    if-eq v2, v3, :cond_14

    const/4 v2, 0x1

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    monitor-exit v0

    return v2

    .line 110
    .end local v1    # "newFlags":I
    .end local v3    # "oldFlags":I
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_17

    throw v1
.end method
