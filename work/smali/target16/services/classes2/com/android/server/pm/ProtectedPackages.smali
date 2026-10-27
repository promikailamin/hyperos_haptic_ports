.class public Lcom/android/server/pm/ProtectedPackages;
.super Ljava/lang/Object;
.source "ProtectedPackages.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDeviceOwnerPackage:Ljava/lang/String;

.field public mDeviceOwnerUserId:I

.field public final mDeviceProvisioningPackage:Ljava/lang/String;

.field public final mOwnerProtectedPackages:Landroid/util/SparseArray;

.field public mProfileOwnerPackages:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$R08eHOLjoPmm6XiCb6QafN4z0F0(Landroid/app/supervision/SupervisionManager;ILandroid/app/role/RoleManager;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 5

    .line 213
    invoke-virtual {p0, p1}, Landroid/app/supervision/SupervisionManager;->isSupervisionEnabledForUser(I)Z

    move-result p0

    if-nez p0, :cond_9

    .line 214
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 216
    :cond_9
    const-string p0, "android.app.role.SYSTEM_SUPERVISION"

    .line 218
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 217
    invoke-virtual {p2, p0, v0}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    .line 219
    const-string v0, "android.app.role.SUPERVISION"

    .line 221
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 220
    invoke-virtual {p2, v0, p1}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    .line 222
    invoke-interface {p0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    .line 223
    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2a

    goto :goto_2c

    :cond_2a
    const/4 p0, 0x0

    goto :goto_2d

    :cond_2c
    :goto_2c
    const/4 p0, 0x1

    .line 222
    :goto_2d
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mOwnerProtectedPackages:Landroid/util/SparseArray;

    .line 72
    iput-object p1, p0, Lcom/android/server/pm/ProtectedPackages;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1040285

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceProvisioningPackage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized getDeviceOwnerOrProfileOwnerPackage(I)Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 120
    :try_start_1
    iget v0, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerUserId:I

    if-ne v0, p1, :cond_b

    .line 121
    iget-object p1, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerPackage:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    goto :goto_1a

    .line 123
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mProfileOwnerPackages:Landroid/util/SparseArray;
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_9

    if-nez v0, :cond_12

    .line 124
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    .line 126
    :cond_12
    :try_start_12
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_9

    monitor-exit p0

    return-object p1

    :goto_1a
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_9

    throw p1
.end method

.method public final declared-synchronized hasDeviceOwnerOrProfileOwner(ILjava/lang/String;)Z
    .registers 7

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p2, :cond_6

    .line 103
    monitor-exit p0

    return v0

    .line 105
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerPackage:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    .line 106
    iget v3, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerUserId:I

    if-ne v3, p1, :cond_19

    .line 107
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_17

    if-eqz v1, :cond_19

    .line 108
    monitor-exit p0

    return v2

    :catchall_17
    move-exception p1

    goto :goto_2b

    .line 111
    :cond_19
    :try_start_19
    iget-object v1, p0, Lcom/android/server/pm/ProtectedPackages;->mProfileOwnerPackages:Landroid/util/SparseArray;

    if-eqz v1, :cond_29

    .line 112
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_17

    if-eqz p1, :cond_29

    .line 113
    monitor-exit p0

    return v2

    .line 116
    :cond_29
    monitor-exit p0

    return v0

    :goto_2b
    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_17

    throw p1
.end method

.method public final declared-synchronized hasProtectedPackages(I)Z
    .registers 3

    monitor-enter p0

    .line 167
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mOwnerProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_e

    if-ltz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    monitor-exit p0

    return p1

    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

.method public declared-synchronized isDeviceProvisioningPackage(Ljava/lang/String;)Z
    .registers 3

    monitor-enter p0

    .line 195
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceProvisioningPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceProvisioningPackage:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_13

    if-eqz p1, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :catchall_13
    move-exception p1

    goto :goto_18

    :cond_15
    const/4 p1, 0x0

    :goto_16
    monitor-exit p0

    return p1

    :goto_18
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_13

    throw p1
.end method

.method public final declared-synchronized isOwnerProtectedPackage(ILjava/lang/String;)Z
    .registers 4

    monitor-enter p0

    .line 155
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ProtectedPackages;->hasProtectedPackages(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 156
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->isPackageProtectedForUser(ILjava/lang/String;)Z

    move-result p1

    goto :goto_13

    :catchall_c
    move-exception p1

    goto :goto_15

    :cond_e
    const/4 p1, -0x1

    .line 157
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->isPackageProtectedForUser(ILjava/lang/String;)Z

    move-result p1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_c

    .line 155
    :goto_13
    monitor-exit p0

    return p1

    :goto_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_c

    throw p1
.end method

.method public isPackageDataProtected(ILjava/lang/String;)Z
    .registers 4

    .line 186
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->hasDeviceOwnerOrProfileOwner(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 187
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->isProtectedPackage(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public final declared-synchronized isPackageProtectedForUser(ILjava/lang/String;)Z
    .registers 4

    monitor-enter p0

    .line 162
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mOwnerProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_1b

    .line 163
    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mOwnerProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_19

    if-eqz p1, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :catchall_19
    move-exception p1

    goto :goto_1e

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    monitor-exit p0

    return p1

    :goto_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_19

    throw p1
.end method

.method public isPackageStateProtected(ILjava/lang/String;)Z
    .registers 4

    .line 177
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->hasDeviceOwnerOrProfileOwner(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 178
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->isProtectedPackage(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public final declared-synchronized isProtectedPackage(ILjava/lang/String;)Z
    .registers 6

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p2, :cond_6

    .line 137
    monitor-exit p0

    return v0

    .line 139
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceProvisioningPackage:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_22

    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->isOwnerProtectedPackage(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_22

    .line 143
    :cond_16
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->isSupervisionPackage(ILjava/lang/String;)Z

    move-result p1
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_20

    if-eqz p1, :cond_1e

    .line 144
    monitor-exit p0

    return v2

    .line 146
    :cond_1e
    monitor-exit p0

    return v0

    :catchall_20
    move-exception p1

    goto :goto_24

    .line 141
    :cond_22
    :goto_22
    monitor-exit p0

    return v2

    :goto_24
    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_20

    throw p1
.end method

.method public final isSupervisionPackage(ILjava/lang/String;)Z
    .registers 7

    .line 201
    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/supervision/SupervisionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/supervision/SupervisionManager;

    const/4 v1, 0x0

    .line 202
    const-string v2, "PackageManager"

    if-nez v0, :cond_15

    .line 203
    const-string p0, "Failed to get SupervisionManager."

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 206
    :cond_15
    iget-object p0, p0, Lcom/android/server/pm/ProtectedPackages;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/role/RoleManager;

    if-nez p0, :cond_27

    .line 208
    const-string p0, "Failed to get RoleManager. Assuming package isn\'t role holder."

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 211
    :cond_27
    new-instance v1, Lcom/android/server/pm/ProtectedPackages$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1, p0, p2}, Lcom/android/server/pm/ProtectedPackages$$ExternalSyntheticLambda0;-><init>(Landroid/app/supervision/SupervisionManager;ILandroid/app/role/RoleManager;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public declared-synchronized setDeviceAndProfileOwnerPackages(ILjava/lang/String;Landroid/util/SparseArray;)V
    .registers 6

    monitor-enter p0

    .line 83
    :try_start_1
    iput p1, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerUserId:I

    const/16 v0, -0x2710

    const/4 v1, 0x0

    if-ne p1, v0, :cond_9

    move-object p2, v1

    .line 85
    :cond_9
    iput-object p2, p0, Lcom/android/server/pm/ProtectedPackages;->mDeviceOwnerPackage:Ljava/lang/String;

    if-nez p3, :cond_e

    goto :goto_12

    .line 87
    :cond_e
    invoke-virtual {p3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    :goto_12
    iput-object v1, p0, Lcom/android/server/pm/ProtectedPackages;->mProfileOwnerPackages:Landroid/util/SparseArray;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 88
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public declared-synchronized setOwnerProtectedPackages(ILjava/util/List;)V
    .registers 5

    monitor-enter p0

    if-nez p2, :cond_b

    .line 94
    :try_start_3
    iget-object p2, p0, Lcom/android/server/pm/ProtectedPackages;->mOwnerProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_15

    :catchall_9
    move-exception p1

    goto :goto_17

    .line 96
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/ProtectedPackages;->mOwnerProtectedPackages:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_9

    .line 98
    :goto_15
    monitor-exit p0

    return-void

    :goto_17
    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_9

    throw p1
.end method
