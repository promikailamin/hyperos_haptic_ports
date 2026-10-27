.class public Lcom/android/server/pm/ProtectedPackages;
.super Ljava/lang/Object;
.source "ProtectedPackages.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeviceOwnerPackage:Ljava/lang/String;

.field private mDeviceOwnerUserId:I

.field private final mDeviceProvisioningPackage:Ljava/lang/String;

.field private final mOwnerProtectedPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mProfileOwnerPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mOwnerProtectedPackages:Landroid/util/SparseArray;

    .line 64
    iput-object p1, p0, Lcom/android/server/pm/ProtectedPackages;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104026a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceProvisioningPackage:Ljava/lang/String;

    .line 67
    return-void
.end method

.method private declared-synchronized hasDeviceOwnerOrProfileOwner(ILjava/lang/String;)Z
    .registers 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 93
    const/4 v0, 0x0

    if-nez p2, :cond_6

    .line 94
    monitor-exit p0

    return v0

    .line 96
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerPackage:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    .line 97
    iget v3, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerUserId:I

    if-ne v3, p1, :cond_17

    .line 98
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_29

    if-eqz v1, :cond_17

    .line 99
    monitor-exit p0

    return v2

    .line 102
    .end local p0    # "this":Lcom/android/server/pm/ProtectedPackages;
    :cond_17
    :try_start_17
    iget-object v1, p0, Lcom/android/server/pm/ProtectedPackages;->mProfileOwnerPackages:Landroid/util/SparseArray;

    if-eqz v1, :cond_27

    .line 103
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_29

    if-eqz v1, :cond_27

    .line 104
    monitor-exit p0

    return v2

    .line 107
    :cond_27
    monitor-exit p0

    return v0

    .line 92
    .end local p1    # "userId":I
    .end local p2    # "packageName":Ljava/lang/String;
    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized isOwnerProtectedPackage(ILjava/lang/String;)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 142
    const/4 v0, -0x1

    :try_start_2
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/ProtectedPackages;->isPackageProtectedForUser(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->isPackageProtectedForUser(ILjava/lang/String;)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_14

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    .end local p0    # "this":Lcom/android/server/pm/ProtectedPackages;
    :cond_11
    :goto_11
    const/4 v0, 0x1

    .line 142
    :goto_12
    monitor-exit p0

    return v0

    .line 141
    .end local p1    # "userId":I
    .end local p2    # "packageName":Ljava/lang/String;
    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized isPackageProtectedForUser(ILjava/lang/String;)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 147
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mOwnerProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 148
    .local v0, "userIdx":I
    if-ltz v0, :cond_19

    iget-object v1, p0, Lcom/android/server/pm/ProtectedPackages;->mOwnerProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1c

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    .end local p0    # "this":Lcom/android/server/pm/ProtectedPackages;
    :cond_19
    const/4 v1, 0x0

    :goto_1a
    monitor-exit p0

    return v1

    .line 146
    .end local v0    # "userIdx":I
    .end local p1    # "userId":I
    .end local p2    # "packageName":Ljava/lang/String;
    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized isProtectedPackage(ILjava/lang/String;)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 128
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/miui/enterprise/ApplicationHelper;->shouldKeeAlive(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_20

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 129
    monitor-exit p0

    return v1

    .line 132
    :cond_c
    if-eqz p2, :cond_1d

    :try_start_e
    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceProvisioningPackage:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->isOwnerProtectedPackage(ILjava/lang/String;)Z

    move-result v0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_20

    if-eqz v0, :cond_1d

    .end local p0    # "this":Lcom/android/server/pm/ProtectedPackages;
    :cond_1c
    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    .line 132
    :goto_1e
    monitor-exit p0

    return v1

    .line 127
    .end local p1    # "userId":I
    .end local p2    # "packageName":Ljava/lang/String;
    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized getDeviceOwnerOrProfileOwnerPackage(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    monitor-enter p0

    .line 111
    :try_start_1
    iget v0, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerUserId:I

    if-ne v0, p1, :cond_9

    .line 112
    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerPackage:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_18

    monitor-exit p0

    return-object v0

    .line 114
    .end local p0    # "this":Lcom/android/server/pm/ProtectedPackages;
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mProfileOwnerPackages:Landroid/util/SparseArray;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_18

    if-nez v0, :cond_10

    .line 115
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 117
    .restart local p0    # "this":Lcom/android/server/pm/ProtectedPackages;
    :cond_10
    :try_start_10
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-object v0

    .line 110
    .end local p0    # "this":Lcom/android/server/pm/ProtectedPackages;
    .end local p1    # "userId":I
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isPackageDataProtected(ILjava/lang/String;)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 167
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->hasDeviceOwnerOrProfileOwner(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->isProtectedPackage(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 167
    :goto_10
    return v0
.end method

.method public isPackageStateProtected(ILjava/lang/String;)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 158
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->hasDeviceOwnerOrProfileOwner(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->isProtectedPackage(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 158
    :goto_10
    return v0
.end method

.method public declared-synchronized setDeviceAndProfileOwnerPackages(ILjava/lang/String;Landroid/util/SparseArray;)V
    .registers 6
    .param p1, "deviceOwnerUserId"    # I
    .param p2, "deviceOwnerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .local p3, "profileOwnerPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    monitor-enter p0

    .line 75
    :try_start_1
    iput p1, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerUserId:I

    .line 76
    nop

    .line 77
    const/16 v0, -0x2710

    const/4 v1, 0x0

    if-ne p1, v0, :cond_b

    move-object v0, v1

    goto :goto_c

    :cond_b
    move-object v0, p2

    :goto_c
    iput-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerPackage:Ljava/lang/String;

    .line 78
    if-nez p3, :cond_11

    goto :goto_15

    .line 79
    :cond_11
    invoke-virtual {p3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    :goto_15
    iput-object v1, p0, Lcom/android/server/pm/ProtectedPackages;->mProfileOwnerPackages:Landroid/util/SparseArray;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 80
    monitor-exit p0

    return-void

    .line 74
    .end local p0    # "this":Lcom/android/server/pm/ProtectedPackages;
    .end local p1    # "deviceOwnerUserId":I
    .end local p2    # "deviceOwnerPackage":Ljava/lang/String;
    .end local p3    # "profileOwnerPackages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setOwnerProtectedPackages(ILjava/util/List;)V
    .registers 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 85
    :try_start_1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 86
    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mOwnerProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_17

    .line 88
    .end local p0    # "this":Lcom/android/server/pm/ProtectedPackages;
    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mOwnerProtectedPackages:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 90
    :goto_17
    monitor-exit p0

    return-void

    .line 84
    .end local p1    # "userId":I
    .end local p2    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method
