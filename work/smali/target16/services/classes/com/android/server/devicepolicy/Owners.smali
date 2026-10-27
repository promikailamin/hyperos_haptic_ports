.class public Lcom/android/server/devicepolicy/Owners;
.super Ljava/lang/Object;
.source "Owners.java"


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mData:Lcom/android/server/devicepolicy/OwnersData;

.field public final mDeviceStateCache:Lcom/android/server/devicepolicy/DeviceStateCacheImpl;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mSystemReady:Z

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$6w4HWUbvXPWGKa7vKtQD2v4JRdk(Landroid/content/pm/UserInfo;)I
    .registers 1

    .line 102
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    return p0
.end method

.method public constructor <init>(Landroid/os/UserManager;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/ActivityManagerInternal;Lcom/android/server/pm/UserManagerInternal;Lcom/android/server/devicepolicy/DeviceStateCacheImpl;Lcom/android/server/devicepolicy/PolicyPathProvider;)V
    .registers 8

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mUserManager:Landroid/os/UserManager;

    .line 88
    iput-object p2, p0, Lcom/android/server/devicepolicy/Owners;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 89
    iput-object p3, p0, Lcom/android/server/devicepolicy/Owners;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 90
    iput-object p4, p0, Lcom/android/server/devicepolicy/Owners;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 91
    iput-object p5, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 92
    iput-object p6, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceStateCache:Lcom/android/server/devicepolicy/DeviceStateCacheImpl;

    .line 93
    new-instance p1, Lcom/android/server/devicepolicy/OwnersData;

    invoke-direct {p1, p7}, Lcom/android/server/devicepolicy/OwnersData;-><init>(Lcom/android/server/devicepolicy/PolicyPathProvider;)V

    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    return-void
.end method


# virtual methods
.method public clearDeviceOwner()V
    .registers 4

    .line 274
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 275
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v2, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerTypes:Landroid/util/ArrayMap;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    const/16 v2, -0x2710

    .line 277
    iput v2, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    .line 279
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceStateCache:Lcom/android/server/devicepolicy/DeviceStateCacheImpl;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->setDeviceOwnerType(I)V

    .line 280
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->notifyChangeLocked()V

    .line 281
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushDeviceOwnerUidToActivityTaskManagerLocked()V

    .line 282
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public clearSystemUpdatePolicy()V
    .registers 3

    .line 381
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 382
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    .line 383
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 3

    .line 752
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 753
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/OwnersData;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 754
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public getDeviceOwnerComponent()Landroid/content/ComponentName;
    .registers 2

    .line 233
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 234
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz p0, :cond_e

    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    goto :goto_f

    :catchall_c
    move-exception p0

    goto :goto_11

    :cond_e
    const/4 p0, 0x0

    :goto_f
    monitor-exit v0

    return-object p0

    .line 235
    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_c

    throw p0
.end method

.method public getDeviceOwnerFile()Ljava/io/File;
    .registers 1

    .line 759
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/OwnersData;->getDeviceOwnerFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceOwnerPackageName()Ljava/lang/String;
    .registers 2

    .line 210
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 211
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz p0, :cond_e

    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    goto :goto_f

    :catchall_c
    move-exception p0

    goto :goto_11

    :cond_e
    const/4 p0, 0x0

    :goto_f
    monitor-exit v0

    return-object p0

    .line 212
    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_c

    throw p0
.end method

.method public getDeviceOwnerRemoteBugreportHash()Ljava/lang/String;
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 246
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz p0, :cond_e

    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    goto :goto_f

    :catchall_c
    move-exception p0

    goto :goto_11

    :cond_e
    const/4 p0, 0x0

    :goto_f
    monitor-exit v0

    return-object p0

    .line 247
    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_c

    throw p0
.end method

.method public getDeviceOwnerRemoteBugreportUri()Ljava/lang/String;
    .registers 2

    .line 239
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 240
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz p0, :cond_e

    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    goto :goto_f

    :catchall_c
    move-exception p0

    goto :goto_11

    :cond_e
    const/4 p0, 0x0

    :goto_f
    monitor-exit v0

    return-object p0

    .line 241
    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_c

    throw p0
.end method

.method public getDeviceOwnerType(Ljava/lang/String;)I
    .registers 4

    .line 509
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 510
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/Owners;->isDeviceOwnerTypeSetForDeviceOwner(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 511
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerTypes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_19
    move-exception p0

    goto :goto_1e

    :cond_1b
    const/4 p0, 0x0

    .line 513
    monitor-exit v0

    return p0

    .line 514
    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_19

    throw p0
.end method

.method public getDeviceOwnerUidLocked()I
    .registers 5

    .line 187
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz v1, :cond_14

    .line 188
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    const-wide/32 v2, 0x422000

    iget v0, v0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    return p0

    :cond_14
    const/4 p0, -0x1

    return p0
.end method

.method public getDeviceOwnerUserId()I
    .registers 2

    .line 216
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 217
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 218
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public getDeviceOwnerUserIdAndComponent()Landroid/util/Pair;
    .registers 4

    .line 223
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 224
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v2, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-nez v2, :cond_e

    const/4 p0, 0x0

    .line 225
    monitor-exit v0

    return-object p0

    :catchall_c
    move-exception p0

    goto :goto_20

    .line 227
    :cond_e
    iget v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    invoke-static {v1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 229
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_c

    throw p0
.end method

.method public getProfileOwnerComponent(I)Landroid/content/ComponentName;
    .registers 3

    .line 338
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 339
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz p0, :cond_18

    .line 340
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    goto :goto_19

    :catchall_16
    move-exception p0

    goto :goto_1b

    :cond_18
    const/4 p0, 0x0

    :goto_19
    monitor-exit v0

    return-object p0

    .line 341
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_16

    throw p0
.end method

.method public getProfileOwnerFile(I)Ljava/io/File;
    .registers 2

    .line 764
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/OwnersData;->getProfileOwnerFile(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getProfileOwnerKeys()Ljava/util/Set;
    .registers 2

    .line 363
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 364
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 365
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public getProfileOwnerPackage(I)Ljava/lang/String;
    .registers 3

    .line 345
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 346
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz p0, :cond_18

    .line 347
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    goto :goto_19

    :catchall_16
    move-exception p0

    goto :goto_1b

    :cond_18
    const/4 p0, 0x0

    :goto_19
    monitor-exit v0

    return-object p0

    .line 348
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_16

    throw p0
.end method

.method public getProfileOwnerUidsLocked()Ljava/util/Set;
    .registers 8

    .line 198
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const/4 v1, 0x0

    .line 199
    :goto_6
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v2, v2, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_3d

    .line 200
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v2, v2, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 201
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v3, v3, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 202
    iget-object v4, p0, Lcom/android/server/devicepolicy/Owners;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v3, v3, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    const-wide/32 v5, 0x422000

    invoke-virtual {v4, v3, v5, v6, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_3d
    return-object v0
.end method

.method public getSystemUpdateFreezePeriodRecord()Landroid/util/Pair;
    .registers 4

    .line 387
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 388
    :try_start_3
    new-instance v1, Landroid/util/Pair;

    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v2, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    invoke-direct {v1, v2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    :catchall_10
    move-exception p0

    .line 390
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public getSystemUpdateFreezePeriodRecordAsString()Ljava/lang/String;
    .registers 2

    .line 394
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 395
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/OwnersData;->getSystemUpdateFreezePeriodRecordAsString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 396
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getSystemUpdateInfo()Landroid/app/admin/SystemUpdateInfo;
    .registers 2

    .line 559
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 560
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    monitor-exit v0

    return-object p0

    :catchall_9
    move-exception p0

    .line 561
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;
    .registers 2

    .line 369
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 370
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    monitor-exit v0

    return-object p0

    :catchall_9
    move-exception p0

    .line 371
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public hasDeviceOwner()Z
    .registers 2

    .line 418
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 419
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    monitor-exit v0

    return p0

    :catchall_e
    move-exception p0

    .line 420
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public hasProfileOwner(I)Z
    .registers 3

    .line 459
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 460
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerComponent(I)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    monitor-exit v0

    return p0

    :catchall_e
    move-exception p0

    .line 461
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public isDefaultDeviceOwnerUserId(I)Z
    .registers 5

    .line 442
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 443
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v2, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz v2, :cond_1b

    iget v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    if-ne v1, p1, :cond_1b

    .line 445
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerType(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :catchall_19
    move-exception p0

    goto :goto_1e

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    monitor-exit v0

    return p0

    .line 446
    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_19

    throw p0
.end method

.method public isDeviceManaged()Z
    .registers 2

    .line 424
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 425
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-boolean p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceManaged:Z

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 426
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public isDeviceOwnerTypeSetForDeviceOwner(Ljava/lang/String;)Z
    .registers 4

    .line 518
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 519
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerTypes:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerTypes:Landroid/util/ArrayMap;

    .line 520
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :catchall_19
    move-exception p0

    goto :goto_1e

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    monitor-exit v0

    return p0

    .line 521
    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_19

    throw p0
.end method

.method public isFinancedDeviceOwnerUserId(I)Z
    .registers 5

    .line 450
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 451
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v2, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz v2, :cond_1b

    iget v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    if-ne v1, p1, :cond_1b

    .line 453
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerType(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1b

    goto :goto_1c

    :catchall_19
    move-exception p0

    goto :goto_1e

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    monitor-exit v0

    return p1

    .line 455
    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_19

    throw p0
.end method

.method public isMemoryTaggingMigrated()Z
    .registers 2

    .line 651
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 652
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-boolean p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mMemoryTaggingMigrated:Z

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 653
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public isMigratedPostUpdate()Z
    .registers 2

    .line 625
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 626
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-boolean p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mPoliciesMigratedPostUpdate:Z

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 627
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public isMigratedToPolicyEngine()Z
    .registers 2

    .line 572
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 573
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-boolean p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mMigratedToPolicyEngine:Z

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 574
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public isPermissionGrantStateMigrated()Z
    .registers 2

    .line 677
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 678
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-boolean p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mPermissionGrantStateMigrated:Z

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 679
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public isProfileOwnerOfOrganizationOwnedDevice(I)Z
    .registers 3

    .line 356
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 357
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz p0, :cond_18

    .line 358
    iget-boolean p0, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->isOrganizationOwnedDevice:Z

    goto :goto_19

    :catchall_16
    move-exception p0

    goto :goto_1b

    :cond_18
    const/4 p0, 0x0

    :goto_19
    monitor-exit v0

    return p0

    .line 359
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_16

    throw p0
.end method

.method public isResetPasswordWithTokenMigrated()Z
    .registers 2

    .line 638
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 639
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-boolean p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mResetPasswordWithTokenMigrated:Z

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 640
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public isSecurityLoggingMigrated()Z
    .registers 2

    .line 592
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 593
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-boolean p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mSecurityLoggingMigrated:Z

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 594
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public isSetApplicationRestrictionsMigrated()Z
    .registers 2

    .line 690
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 691
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-boolean p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mSetApplicationRestrictionsMigrated:Z

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 692
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public isSetKeyguardDisabledFeaturesMigrated()Z
    .registers 2

    .line 703
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 704
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-boolean p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mSetKeyguardDisabledFeaturesMigrated:Z

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 705
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public isSuspendedPackagesMigrated()Z
    .registers 2

    .line 612
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 613
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-boolean p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mSuspendedPackagesMigrated:Z

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 614
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public load()V
    .registers 8

    .line 100
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 101
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mUserManager:Landroid/os/UserManager;

    .line 102
    invoke-virtual {v1}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/devicepolicy/Owners$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/devicepolicy/Owners$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    .line 103
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    invoke-virtual {v2, v1}, Lcom/android/server/devicepolicy/OwnersData;->load([I)V

    .line 105
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->hasDeviceOwner()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_44

    .line 106
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v4, v2, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerTypes:Landroid/util/ArrayMap;

    iget-object v2, v2, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object v2, v2, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    .line 108
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 106
    invoke-virtual {v4, v2, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 109
    iget-object v4, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceStateCache:Lcom/android/server/devicepolicy/DeviceStateCacheImpl;

    invoke-virtual {v4, v2}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->setDeviceOwnerType(I)V

    goto :goto_4a

    :catchall_42
    move-exception p0

    goto :goto_66

    .line 111
    :cond_44
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceStateCache:Lcom/android/server/devicepolicy/DeviceStateCacheImpl;

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->setDeviceOwnerType(I)V

    .line 113
    :goto_4a
    array-length v2, v1

    :goto_4b
    if-ge v3, v2, :cond_5b

    aget v4, v1, v3

    .line 114
    iget-object v5, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceStateCache:Lcom/android/server/devicepolicy/DeviceStateCacheImpl;

    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/Owners;->hasProfileOwner(I)Z

    move-result v6

    invoke-virtual {v5, v4, v6}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->setHasProfileOwner(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 117
    :cond_5b
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->notifyChangeLocked()V

    .line 118
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushDeviceOwnerUidToActivityTaskManagerLocked()V

    .line 119
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushProfileOwnerUidsToActivityTaskManagerLocked()V

    .line 120
    monitor-exit v0

    return-void

    :goto_66
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_3 .. :try_end_67} :catchall_42

    throw p0
.end method

.method public markMemoryTaggingMigrated()V
    .registers 3

    .line 644
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 645
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/OwnersData;->mMemoryTaggingMigrated:Z

    .line 646
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/OwnersData;->writeDeviceOwner()Z

    .line 647
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public markMigrationToPolicyEngine()V
    .registers 3

    .line 565
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 566
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/OwnersData;->mMigratedToPolicyEngine:Z

    .line 567
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/OwnersData;->writeDeviceOwner()Z

    .line 568
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public markPermissionGrantStateMigrated()V
    .registers 3

    .line 670
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 671
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/OwnersData;->mPermissionGrantStateMigrated:Z

    .line 672
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/OwnersData;->writeDeviceOwner()Z

    .line 673
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public markPostUpgradeMigration()V
    .registers 3

    .line 585
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 586
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/OwnersData;->mPoliciesMigratedPostUpdate:Z

    .line 587
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/OwnersData;->writeDeviceOwner()Z

    .line 588
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public markResetPasswordWithTokenMigrated()V
    .registers 3

    .line 631
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 632
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/OwnersData;->mResetPasswordWithTokenMigrated:Z

    .line 633
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/OwnersData;->writeDeviceOwner()Z

    .line 634
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public markSecurityLoggingMigrated()V
    .registers 3

    .line 578
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 579
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/OwnersData;->mSecurityLoggingMigrated:Z

    .line 580
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/OwnersData;->writeDeviceOwner()Z

    .line 581
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public markSetApplicationRestrictionsMigrated()V
    .registers 3

    .line 683
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 684
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/OwnersData;->mSetApplicationRestrictionsMigrated:Z

    .line 685
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/OwnersData;->writeDeviceOwner()Z

    .line 686
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public markSetKeyguardDisabledFeaturesMigrated()V
    .registers 3

    .line 696
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 697
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/OwnersData;->mSetKeyguardDisabledFeaturesMigrated:Z

    .line 698
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/OwnersData;->writeDeviceOwner()Z

    .line 699
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public markSuspendedPackagesMigrated()V
    .registers 3

    .line 618
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 619
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/OwnersData;->mSuspendedPackagesMigrated:Z

    .line 620
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/OwnersData;->writeDeviceOwner()Z

    .line 621
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final notifyChangeLocked()V
    .registers 3

    .line 127
    const-string v0, "DevicePolicyManagerService"

    const-string/jumbo v1, "notifyChangeLocked()"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToDevicePolicyManager()V

    .line 129
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToPackageManagerLocked()V

    .line 130
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToActivityManagerLocked()V

    .line 131
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToUserManagerLocked()V

    .line 132
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToAppOpsLocked()V

    return-void
.end method

.method public final pushDeviceOwnerUidToActivityTaskManagerLocked()V
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUidLocked()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setDeviceOwnerUid(I)V

    return-void
.end method

.method public final pushProfileOwnerUidsToActivityTaskManagerLocked()V
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerUidsLocked()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setProfileOwnerUids(Ljava/util/Set;)V

    return-void
.end method

.method public final pushToActivityManagerLocked()V
    .registers 8

    .line 164
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUidLocked()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->setDeviceOwnerUid(I)V

    .line 166
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 167
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_18
    if-ltz v1, :cond_49

    .line 168
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v2, v2, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 169
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v4, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v4, v4, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    .line 170
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object v4, v4, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    const-wide/32 v5, 0x422000

    .line 169
    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    if-ltz v2, :cond_46

    .line 174
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_46
    add-int/lit8 v1, v1, -0x1

    goto :goto_18

    .line 177
    :cond_49
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, v0}, Landroid/app/ActivityManagerInternal;->setProfileOwnerUid(Landroid/util/ArraySet;)V

    return-void
.end method

.method public pushToAppOpsLocked()V
    .registers 10

    .line 710
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/Owners;->mSystemReady:Z

    if-nez v0, :cond_5

    return-void

    .line 713
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 715
    :try_start_9
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 716
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v3, v3, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz v3, :cond_24

    .line 717
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUidLocked()I

    move-result v3

    if-ltz v3, :cond_24

    .line 719
    iget-object v4, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget v4, v4, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_24

    :catchall_22
    move-exception p0

    goto :goto_84

    .line 722
    :cond_24
    :goto_24
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v3, v3, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    if-eqz v3, :cond_6b

    .line 723
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_30
    if-ltz v3, :cond_6b

    .line 724
    iget-object v4, p0, Lcom/android/server/devicepolicy/Owners;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v5, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v5, v5, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    .line 725
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object v5, v5, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v6, v6, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    .line 727
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-wide/32 v7, 0x422000

    .line 724
    invoke-virtual {v4, v5, v7, v8, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v4

    if-ltz v4, :cond_68

    .line 729
    iget-object v5, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v5, v5, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    :cond_68
    add-int/lit8 v3, v3, -0x1

    goto :goto_30

    .line 733
    :cond_6b
    const-class p0, Landroid/app/AppOpsManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManagerInternal;

    if-eqz p0, :cond_80

    .line 735
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-lez v3, :cond_7c

    goto :goto_7d

    :cond_7c
    const/4 v2, 0x0

    :goto_7d
    invoke-virtual {p0, v2}, Landroid/app/AppOpsManagerInternal;->setDeviceAndProfileOwners(Landroid/util/SparseIntArray;)V
    :try_end_80
    .catchall {:try_start_9 .. :try_end_80} :catchall_22

    .line 738
    :cond_80
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_84
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 739
    throw p0
.end method

.method public final pushToDevicePolicyManager()V
    .registers 1

    .line 138
    invoke-static {}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->invalidateBinderCaches()V

    return-void
.end method

.method public final pushToPackageManagerLocked()V
    .registers 5

    .line 143
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 144
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_f
    if-ltz v1, :cond_31

    .line 145
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v2, v2, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v3, v3, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object v3, v3, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 147
    :cond_31
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v2, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz v2, :cond_3a

    iget-object v2, v2, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    goto :goto_3b

    :cond_3a
    const/4 v2, 0x0

    .line 148
    :goto_3b
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/pm/PackageManagerInternal;->setDeviceAndProfileOwnerPackages(ILjava/lang/String;Landroid/util/SparseArray;)V

    return-void
.end method

.method public final pushToUserManagerLocked()V
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/UserManagerInternal;->setDeviceOwnerUserId(I)V

    return-void
.end method

.method public removeProfileOwner(I)V
    .registers 5

    .line 299
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 300
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceStateCache:Lcom/android/server/devicepolicy/DeviceStateCacheImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->setHasProfileOwner(IZ)V

    .line 302
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->notifyChangeLocked()V

    .line 303
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushProfileOwnerUidsToActivityTaskManagerLocked()V

    .line 304
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public saveSystemUpdateInfo(Landroid/app/admin/SystemUpdateInfo;)Z
    .registers 4

    .line 545
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 547
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 p0, 0x0

    .line 548
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    goto :goto_1c

    .line 551
    :cond_12
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iput-object p1, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    .line 552
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/OwnersData;->writeDeviceOwner()Z

    const/4 p0, 0x1

    .line 553
    monitor-exit v0

    return p0

    .line 554
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_10

    throw p0
.end method

.method public setDeviceManaged(Z)V
    .registers 3

    .line 430
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 431
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iput-boolean p1, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceManaged:Z

    .line 432
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public setDeviceOwner(Landroid/content/ComponentName;I)V
    .registers 8

    if-gez p2, :cond_19

    .line 252
    const-string p0, "DevicePolicyManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid user id for device owner user: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 255
    :cond_19
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 259
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    new-instance v2, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, p1, v4, v4, v3}, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v2, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 261
    iget-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iput p2, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    .line 263
    iget-object p2, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerTypes:Landroid/util/ArrayMap;

    iget-object p1, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object p1, p1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 265
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 263
    invoke-virtual {p2, p1, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 266
    iget-object p2, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceStateCache:Lcom/android/server/devicepolicy/DeviceStateCacheImpl;

    invoke-virtual {p2, p1}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->setDeviceOwnerType(I)V

    .line 268
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->notifyChangeLocked()V

    .line 269
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushDeviceOwnerUidToActivityTaskManagerLocked()V

    .line 270
    monitor-exit v0

    return-void

    :catchall_4d
    move-exception p0

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_1c .. :try_end_4f} :catchall_4d

    throw p0
.end method

.method public setDeviceOwnerRemoteBugreportUriAndHash(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 467
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 468
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz v1, :cond_10

    .line 469
    iput-object p1, v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    .line 470
    iput-object p2, v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    goto :goto_10

    :catchall_e
    move-exception p0

    goto :goto_15

    .line 472
    :cond_10
    :goto_10
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->writeDeviceOwner()V

    .line 473
    monitor-exit v0

    return-void

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_e

    throw p0
.end method

.method public setDeviceOwnerType(Ljava/lang/String;IZ)V
    .registers 6

    .line 492
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 493
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->hasDeviceOwner()Z

    move-result v1

    if-nez v1, :cond_14

    .line 494
    const-string p0, "DevicePolicyManagerService"

    const-string p1, "Attempting to set a device owner type when there is no device owner"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    goto :goto_35

    :cond_14
    if-nez p3, :cond_25

    .line 496
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/Owners;->isDeviceOwnerTypeSetForDeviceOwner(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_25

    .line 497
    const-string p0, "DevicePolicyManagerService"

    const-string p1, "Setting the device owner type more than once is only allowed for test only admins"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    monitor-exit v0

    return-void

    .line 502
    :cond_25
    iget-object p3, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object p3, p3, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerTypes:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->writeDeviceOwner()V

    .line 504
    monitor-exit v0

    return-void

    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_12

    throw p0
.end method

.method public setProfileOwner(Landroid/content/ComponentName;I)V
    .registers 9

    .line 286
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 288
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, p1, v5, v5, v4}, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceStateCache:Lcom/android/server/devicepolicy/DeviceStateCacheImpl;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->setHasProfileOwner(IZ)V

    .line 293
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->notifyChangeLocked()V

    .line 294
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushProfileOwnerUidsToActivityTaskManagerLocked()V

    .line 295
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public setProfileOwnerOfOrganizationOwnedDevice(IZ)V
    .registers 6

    .line 478
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 479
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz v1, :cond_18

    .line 481
    iput-boolean p2, v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->isOrganizationOwnedDevice:Z

    goto :goto_2b

    :catchall_16
    move-exception p0

    goto :goto_30

    .line 483
    :cond_18
    const-string p2, "DevicePolicyManagerService"

    const-string v1, "No profile owner for user %d to set org-owned flag."

    .line 484
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 483
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :goto_2b
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/Owners;->writeProfileOwner(I)V

    .line 487
    monitor-exit v0

    return-void

    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_16

    throw p0
.end method

.method public setSystemUpdateFreezePeriodRecord(Ljava/time/LocalDate;Ljava/time/LocalDate;)Z
    .registers 6

    .line 404
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 405
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_16

    .line 406
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iput-object p1, v1, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    move p1, v2

    goto :goto_17

    :catchall_14
    move-exception p0

    goto :goto_29

    :cond_16
    const/4 p1, 0x0

    .line 409
    :goto_17
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 410
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iput-object p2, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    goto :goto_27

    :cond_26
    move v2, p1

    .line 413
    :goto_27
    monitor-exit v0

    return v2

    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_14

    throw p0
.end method

.method public setSystemUpdatePolicy(Landroid/app/admin/SystemUpdatePolicy;)V
    .registers 3

    .line 375
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 376
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iput-object p1, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    .line 377
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public systemReady()V
    .registers 3

    .line 743
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    const/4 v1, 0x1

    .line 744
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemReady:Z

    .line 745
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToActivityManagerLocked()V

    .line 746
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToUserManagerLocked()V

    .line 747
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToAppOpsLocked()V

    .line 748
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public transferDeviceOwnership(Landroid/content/ComponentName;)V
    .registers 9

    .line 320
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 321
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v2, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerTypes:Landroid/util/ArrayMap;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 323
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    new-instance v3, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object v4, v2, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object v5, v4, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    iget-boolean v4, v4, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->isOrganizationOwnedDevice:Z

    invoke-direct {v3, p1, v5, v6, v4}, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v3, v2, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz v1, :cond_32

    .line 329
    iget-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v2, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerTypes:Landroid/util/ArrayMap;

    iget-object p1, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object p1, p1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    :catchall_30
    move-exception p0

    goto :goto_3a

    .line 332
    :cond_32
    :goto_32
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->notifyChangeLocked()V

    .line 333
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushDeviceOwnerUidToActivityTaskManagerLocked()V

    .line 334
    monitor-exit v0

    return-void

    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_30

    throw p0
.end method

.method public transferProfileOwner(Landroid/content/ComponentName;I)V
    .registers 8

    .line 308
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 309
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 310
    new-instance v2, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object v3, v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    iget-boolean v1, v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->isOrganizationOwnedDevice:Z

    invoke-direct {v2, p1, v3, v4, v1}, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 313
    iget-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object p1, p1, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->notifyChangeLocked()V

    .line 315
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushProfileOwnerUidsToActivityTaskManagerLocked()V

    .line 316
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public writeDeviceOwner()V
    .registers 2

    .line 525
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 526
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToDevicePolicyManager()V

    .line 527
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/OwnersData;->writeDeviceOwner()Z

    .line 528
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public writeProfileOwner(I)V
    .registers 3

    .line 532
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 533
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToDevicePolicyManager()V

    .line 534
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/OwnersData;->writeProfileOwner(I)Z

    .line 535
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method
