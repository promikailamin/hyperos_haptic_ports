.class Lcom/android/server/devicepolicy/Owners;
.super Ljava/lang/Object;
.source "Owners.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DevicePolicyManagerService"


# instance fields
.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field private final mData:Lcom/android/server/devicepolicy/OwnersData;

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private mSystemReady:Z

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method constructor <init>(Landroid/os/UserManager;Lcom/android/server/pm/UserManagerInternal;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/ActivityManagerInternal;Lcom/android/server/devicepolicy/PolicyPathProvider;)V
    .registers 8
    .param p1, "userManager"    # Landroid/os/UserManager;
    .param p2, "userManagerInternal"    # Lcom/android/server/pm/UserManagerInternal;
    .param p3, "packageManagerInternal"    # Landroid/content/pm/PackageManagerInternal;
    .param p4, "activityTaskManagerInternal"    # Lcom/android/server/wm/ActivityTaskManagerInternal;
    .param p5, "activityManagerInternal"    # Landroid/app/ActivityManagerInternal;
    .param p6, "pathProvider"    # Lcom/android/server/devicepolicy/PolicyPathProvider;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mUserManager:Landroid/os/UserManager;

    .line 86
    iput-object p2, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 87
    iput-object p3, p0, Lcom/android/server/devicepolicy/Owners;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 88
    iput-object p4, p0, Lcom/android/server/devicepolicy/Owners;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 89
    iput-object p5, p0, Lcom/android/server/devicepolicy/Owners;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 90
    new-instance v0, Lcom/android/server/devicepolicy/OwnersData;

    invoke-direct {v0, p6}, Lcom/android/server/devicepolicy/OwnersData;-><init>(Lcom/android/server/devicepolicy/PolicyPathProvider;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    .line 91
    return-void
.end method

.method static synthetic lambda$load$0(Landroid/content/pm/UserInfo;)I
    .registers 2
    .param p0, "u"    # Landroid/content/pm/UserInfo;

    .line 99
    iget v0, p0, Landroid/content/pm/UserInfo;->id:I

    return v0
.end method

.method private notifyChangeLocked()V
    .registers 1

    .line 116
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToDevicePolicyManager()V

    .line 117
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToPackageManagerLocked()V

    .line 118
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToActivityManagerLocked()V

    .line 119
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToAppOpsLocked()V

    .line 120
    return-void
.end method

.method private pushToActivityManagerLocked()V
    .registers 8

    .line 146
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUidLocked()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->setDeviceOwnerUid(I)V

    .line 148
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 149
    .local v0, "profileOwners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "poi":I
    :goto_18
    if-ltz v1, :cond_49

    .line 150
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v2, v2, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 151
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v4, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v4, v4, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    .line 152
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object v4, v4, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    const-wide/32 v5, 0x422000

    .line 151
    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    .line 155
    .local v3, "profileOwnerUid":I
    if-ltz v3, :cond_46

    .line 156
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 149
    .end local v2    # "userId":I
    .end local v3    # "profileOwnerUid":I
    :cond_46
    add-int/lit8 v1, v1, -0x1

    goto :goto_18

    .line 159
    .end local v1    # "poi":I
    :cond_49
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManagerInternal;->setProfileOwnerUid(Landroid/util/ArraySet;)V

    .line 160
    return-void
.end method

.method private pushToActivityTaskManagerLocked()V
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUidLocked()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setDeviceOwnerUid(I)V

    .line 142
    return-void
.end method

.method private pushToDevicePolicyManager()V
    .registers 1

    .line 125
    invoke-static {}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->invalidateBinderCaches()V

    .line 126
    return-void
.end method

.method private pushToPackageManagerLocked()V
    .registers 5

    .line 130
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 131
    .local v0, "po":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_f
    if-ltz v1, :cond_31

    .line 132
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

    .line 131
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 134
    .end local v1    # "i":I
    :cond_31
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x0

    .line 135
    .local v1, "doPackage":Ljava/lang/String;
    :goto_3f
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget v3, v3, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/pm/PackageManagerInternal;->setDeviceAndProfileOwnerPackages(ILjava/lang/String;Landroid/util/SparseArray;)V

    .line 137
    return-void
.end method


# virtual methods
.method clearDeviceOwner()V
    .registers 4

    .line 240
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 241
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerTypes:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v2, v2, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object v2, v2, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 243
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    const/16 v2, -0x2710

    iput v2, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    .line 245
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManagerInternal;->setDeviceManaged(Z)V

    .line 246
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->notifyChangeLocked()V

    .line 247
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToActivityTaskManagerLocked()V

    .line 248
    monitor-exit v0

    .line 249
    return-void

    .line 248
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method clearSystemUpdatePolicy()V
    .registers 4

    .line 369
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 370
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    .line 371
    monitor-exit v0

    .line 372
    return-void

    .line 371
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 566
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 567
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    invoke-virtual {v1, p1}, Lcom/android/server/devicepolicy/OwnersData;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 568
    monitor-exit v0

    .line 569
    return-void

    .line 568
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method getDeviceOwnerComponent()Landroid/content/ComponentName;
    .registers 3

    .line 203
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 204
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    monitor-exit v0

    return-object v1

    .line 205
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method getDeviceOwnerFile()Ljava/io/File;
    .registers 2

    .line 573
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/OwnersData;->getDeviceOwnerFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method getDeviceOwnerName()Ljava/lang/String;
    .registers 3

    .line 197
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 198
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->name:Ljava/lang/String;

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    monitor-exit v0

    return-object v1

    .line 199
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method getDeviceOwnerPackageName()Ljava/lang/String;
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 175
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    monitor-exit v0

    return-object v1

    .line 176
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method getDeviceOwnerRemoteBugreportHash()Ljava/lang/String;
    .registers 3

    .line 215
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 216
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    monitor-exit v0

    return-object v1

    .line 217
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method getDeviceOwnerRemoteBugreportUri()Ljava/lang/String;
    .registers 3

    .line 209
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 210
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    monitor-exit v0

    return-object v1

    .line 211
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method getDeviceOwnerType(Ljava/lang/String;)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 468
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 469
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/Owners;->isDeviceOwnerTypeSetForDeviceOwner(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 470
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerTypes:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v0

    return v1

    .line 472
    :cond_19
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 473
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method getDeviceOwnerUidLocked()I
    .registers 6

    .line 164
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v0, v0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz v0, :cond_1a

    .line 165
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    const-wide/32 v2, 0x422000

    iget-object v4, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget v4, v4, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    return v0

    .line 169
    :cond_1a
    const/4 v0, -0x1

    return v0
.end method

.method getDeviceOwnerUserId()I
    .registers 3

    .line 180
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 181
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    monitor-exit v0

    return v1

    .line 182
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method getDeviceOwnerUserIdAndComponent()Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 188
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-nez v1, :cond_c

    .line 189
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 191
    :cond_c
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v2, v2, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object v2, v2, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 193
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method getProfileOwnerComponent(I)Landroid/content/ComponentName;
    .registers 5
    .param p1, "userId"    # I

    .line 302
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 303
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 304
    .local v1, "profileOwner":Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;
    if-eqz v1, :cond_16

    iget-object v2, v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    monitor-exit v0

    return-object v2

    .line 305
    .end local v1    # "profileOwner":Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method getProfileOwnerFile(I)Ljava/io/File;
    .registers 3
    .param p1, "userId"    # I

    .line 578
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/OwnersData;->getProfileOwnerFile(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method getProfileOwnerKeys()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 335
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 336
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method getProfileOwnerName(I)Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I

    .line 309
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 310
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 311
    .local v1, "profileOwner":Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;
    if-eqz v1, :cond_16

    iget-object v2, v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->name:Ljava/lang/String;

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    monitor-exit v0

    return-object v2

    .line 312
    .end local v1    # "profileOwner":Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method getProfileOwnerPackage(I)Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I

    .line 316
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 317
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 318
    .local v1, "profileOwner":Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;
    if-eqz v1, :cond_16

    iget-object v2, v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    monitor-exit v0

    return-object v2

    .line 319
    .end local v1    # "profileOwner":Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method getSystemUpdateFreezePeriodRecord()Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/time/LocalDate;",
            "Ljava/time/LocalDate;",
            ">;"
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 376
    :try_start_3
    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v2, v2, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v3, v3, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 378
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method getSystemUpdateFreezePeriodRecordAsString()Ljava/lang/String;
    .registers 3

    .line 382
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 383
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/OwnersData;->getSystemUpdateFreezePeriodRecordAsString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 384
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getSystemUpdateInfo()Landroid/app/admin/SystemUpdateInfo;
    .registers 3

    .line 518
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 519
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    monitor-exit v0

    return-object v1

    .line 520
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;
    .registers 3

    .line 357
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 358
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    monitor-exit v0

    return-object v1

    .line 359
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method hasDeviceOwner()Z
    .registers 3

    .line 406
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 407
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    monitor-exit v0

    return v1

    .line 408
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method hasProfileOwner(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 418
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 419
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerComponent(I)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    monitor-exit v0

    return v1

    .line 420
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method isDeviceOwnerTypeSetForDeviceOwner(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 477
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 478
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerTypes:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerTypes:Landroid/util/ArrayMap;

    .line 479
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    monitor-exit v0

    .line 478
    return v1

    .line 480
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method isDeviceOwnerUserId(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 412
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 413
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    if-ne v1, p1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    monitor-exit v0

    return v1

    .line 414
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method isProfileOwnerOfOrganizationOwnedDevice(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 327
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 328
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 329
    .local v1, "profileOwner":Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;
    if-eqz v1, :cond_16

    iget-boolean v2, v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->isOrganizationOwnedDevice:Z

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    monitor-exit v0

    return v2

    .line 330
    .end local v1    # "profileOwner":Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method listAllOwners()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/devicepolicy/OwnerShellData;",
            ">;"
        }
    .end annotation

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v0, "owners":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/devicepolicy/OwnerShellData;>;"
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v1

    .line 342
    :try_start_8
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v2, v2, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz v2, :cond_1f

    .line 343
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget v2, v2, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v3, v3, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object v3, v3, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/OwnerShellData;->forDeviceOwner(ILandroid/content/ComponentName;)Lcom/android/server/devicepolicy/OwnerShellData;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_1f
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_20
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v3, v3, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_4f

    .line 347
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v3, v3, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 348
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v4, v4, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 349
    .local v4, "info":Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;
    iget-object v5, v4, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    invoke-static {v3, v5}, Lcom/android/server/devicepolicy/OwnerShellData;->forUserProfileOwner(ILandroid/content/ComponentName;)Lcom/android/server/devicepolicy/OwnerShellData;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    nop

    .end local v3    # "userId":I
    .end local v4    # "info":Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 351
    .end local v2    # "i":I
    :cond_4f
    monitor-exit v1

    .line 352
    return-object v0

    .line 351
    :catchall_51
    move-exception v2

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_8 .. :try_end_53} :catchall_51

    throw v2
.end method

.method load()V
    .registers 8

    .line 97
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 98
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mUserManager:Landroid/os/UserManager;

    .line 99
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

    .line 100
    .local v1, "usersIds":[I
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    invoke-virtual {v2, v1}, Lcom/android/server/devicepolicy/OwnersData;->load([I)V

    .line 102
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->hasDeviceOwner()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/UserManagerInternal;->setDeviceManaged(Z)V

    .line 103
    array-length v2, v1

    const/4 v3, 0x0

    :goto_2a
    if-ge v3, v2, :cond_3a

    aget v4, v1, v3

    .line 104
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/Owners;->hasProfileOwner(I)Z

    move-result v6

    invoke-virtual {v5, v4, v6}, Lcom/android/server/pm/UserManagerInternal;->setUserManaged(IZ)V

    .line 103
    .end local v4    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 107
    :cond_3a
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->notifyChangeLocked()V

    .line 108
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToActivityTaskManagerLocked()V

    .line 109
    .end local v1    # "usersIds":[I
    monitor-exit v0

    .line 110
    return-void

    .line 109
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw v1
.end method

.method pushToAppOpsLocked()V
    .registers 10

    .line 525
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/Owners;->mSystemReady:Z

    if-nez v0, :cond_5

    .line 526
    return-void

    .line 528
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 530
    .local v0, "ident":J
    :try_start_9
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 531
    .local v2, "owners":Landroid/util/SparseIntArray;
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v3, v3, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz v3, :cond_21

    .line 532
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUidLocked()I

    move-result v3

    .line 533
    .local v3, "uid":I
    if-ltz v3, :cond_21

    .line 534
    iget-object v4, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget v4, v4, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 537
    .end local v3    # "uid":I
    :cond_21
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v3, v3, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    if-eqz v3, :cond_6c

    .line 538
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v3, v3, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "poi":I
    :goto_31
    if-ltz v3, :cond_6c

    .line 539
    iget-object v4, p0, Lcom/android/server/devicepolicy/Owners;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v5, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v5, v5, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    .line 540
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object v5, v5, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    const-wide/32 v6, 0x422000

    iget-object v8, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v8, v8, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    .line 542
    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 539
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v4

    .line 543
    .local v4, "uid":I
    if-ltz v4, :cond_69

    .line 544
    iget-object v5, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v5, v5, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 538
    .end local v4    # "uid":I
    :cond_69
    add-int/lit8 v3, v3, -0x1

    goto :goto_31

    .line 548
    .end local v3    # "poi":I
    :cond_6c
    const-class v3, Landroid/app/AppOpsManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManagerInternal;

    .line 549
    .local v3, "appops":Landroid/app/AppOpsManagerInternal;
    if-eqz v3, :cond_82

    .line 550
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-lez v4, :cond_7e

    move-object v4, v2

    goto :goto_7f

    :cond_7e
    const/4 v4, 0x0

    :goto_7f
    invoke-virtual {v3, v4}, Landroid/app/AppOpsManagerInternal;->setDeviceAndProfileOwners(Landroid/util/SparseIntArray;)V
    :try_end_82
    .catchall {:try_start_9 .. :try_end_82} :catchall_87

    .line 553
    .end local v2    # "owners":Landroid/util/SparseIntArray;
    .end local v3    # "appops":Landroid/app/AppOpsManagerInternal;
    :cond_82
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 554
    nop

    .line 555
    return-void

    .line 553
    :catchall_87
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 554
    throw v2
.end method

.method removeProfileOwner(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 263
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 264
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/UserManagerInternal;->setUserManaged(IZ)V

    .line 266
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->notifyChangeLocked()V

    .line 267
    monitor-exit v0

    .line 268
    return-void

    .line 267
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method saveSystemUpdateInfo(Landroid/app/admin/SystemUpdateInfo;)Z
    .registers 4
    .param p1, "newInfo"    # Landroid/app/admin/SystemUpdateInfo;

    .line 504
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 506
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 507
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 510
    :cond_10
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iput-object p1, v1, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    .line 511
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/OwnersData;->writeDeviceOwner()Z

    .line 512
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 513
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .registers 13
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 221
    if-gez p3, :cond_1b

    .line 222
    const-string v0, "DevicePolicyManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid user id for device owner user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void

    .line 225
    :cond_1b
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 229
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    new-instance v8, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, v8

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v8, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 231
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iput p3, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    .line 233
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManagerInternal;->setDeviceManaged(Z)V

    .line 234
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->notifyChangeLocked()V

    .line 235
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToActivityTaskManagerLocked()V

    .line 236
    monitor-exit v0

    .line 237
    return-void

    .line 236
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_1e .. :try_end_41} :catchall_3f

    throw v1
.end method

.method setDeviceOwnerRemoteBugreportUriAndHash(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "remoteBugreportUri"    # Ljava/lang/String;
    .param p2, "remoteBugreportHash"    # Ljava/lang/String;

    .line 426
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 427
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz v1, :cond_15

    .line 428
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iput-object p1, v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    .line 429
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iput-object p2, v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    .line 431
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->writeDeviceOwner()V

    .line 432
    monitor-exit v0

    .line 433
    return-void

    .line 432
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method setDeviceOwnerType(Ljava/lang/String;IZ)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "deviceOwnerType"    # I
    .param p3, "isAdminTestOnly"    # Z

    .line 451
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 452
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->hasDeviceOwner()Z

    move-result v1

    if-nez v1, :cond_12

    .line 453
    const-string v1, "DevicePolicyManagerService"

    const-string v2, "Attempting to set a device owner type when there is no device owner"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    monitor-exit v0

    return-void

    .line 455
    :cond_12
    if-nez p3, :cond_23

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/Owners;->isDeviceOwnerTypeSetForDeviceOwner(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 456
    const-string v1, "DevicePolicyManagerService"

    const-string v2, "Setting the device owner type more than once is only allowed for test only admins"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    monitor-exit v0

    return-void

    .line 461
    :cond_23
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerTypes:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->writeDeviceOwner()V

    .line 463
    monitor-exit v0

    .line 464
    return-void

    .line 463
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method

.method setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .registers 14
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 252
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 254
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v9, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v9

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v2, 0x1

    invoke-virtual {v1, p3, v2}, Lcom/android/server/pm/UserManagerInternal;->setUserManaged(IZ)V

    .line 258
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->notifyChangeLocked()V

    .line 259
    monitor-exit v0

    .line 260
    return-void

    .line 259
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method setProfileOwnerOfOrganizationOwnedDevice(IZ)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "isOrganizationOwnedDevice"    # Z

    .line 437
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 438
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 439
    .local v1, "profileOwner":Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;
    if-eqz v1, :cond_16

    .line 440
    iput-boolean p2, v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->isOrganizationOwnedDevice:Z

    goto :goto_2b

    .line 442
    :cond_16
    const-string v2, "DevicePolicyManagerService"

    const-string v3, "No profile owner for user %d to set org-owned flag."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 443
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 442
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :goto_2b
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/Owners;->writeProfileOwner(I)V

    .line 446
    .end local v1    # "profileOwner":Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;
    monitor-exit v0

    .line 447
    return-void

    .line 446
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method setSystemUpdateFreezePeriodRecord(Ljava/time/LocalDate;Ljava/time/LocalDate;)Z
    .registers 6
    .param p1, "start"    # Ljava/time/LocalDate;
    .param p2, "end"    # Ljava/time/LocalDate;

    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v1

    .line 393
    :try_start_4
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v2, v2, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 394
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iput-object p1, v2, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    .line 395
    const/4 v0, 0x1

    .line 397
    :cond_13
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v2, v2, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    invoke-static {v2, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 398
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iput-object p2, v2, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    .line 399
    const/4 v0, 0x1

    .line 401
    :cond_22
    monitor-exit v1

    .line 402
    return v0

    .line 401
    :catchall_24
    move-exception v2

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_24

    throw v2
.end method

.method setSystemUpdatePolicy(Landroid/app/admin/SystemUpdatePolicy;)V
    .registers 4
    .param p1, "systemUpdatePolicy"    # Landroid/app/admin/SystemUpdatePolicy;

    .line 363
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 364
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iput-object p1, v1, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    .line 365
    monitor-exit v0

    .line 366
    return-void

    .line 365
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public systemReady()V
    .registers 3

    .line 558
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 559
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemReady:Z

    .line 560
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToActivityManagerLocked()V

    .line 561
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToAppOpsLocked()V

    .line 562
    monitor-exit v0

    .line 563
    return-void

    .line 562
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_e

    throw v1
.end method

.method transferDeviceOwnership(Landroid/content/ComponentName;)V
    .registers 12
    .param p1, "target"    # Landroid/content/ComponentName;

    .line 282
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 283
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerTypes:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v2, v2, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object v2, v2, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 287
    .local v1, "previousDeviceOwnerType":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    new-instance v9, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    const/4 v4, 0x0

    iget-object v3, v2, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object v6, v3, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v3, v3, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object v7, v3, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v3, v3, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-boolean v8, v3, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->isOrganizationOwnedDevice:Z

    move-object v3, v9

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v9, v2, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 292
    if-eqz v1, :cond_3e

    .line 293
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v2, v2, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerTypes:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v3, v3, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object v3, v3, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :cond_3e
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->notifyChangeLocked()V

    .line 297
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToActivityTaskManagerLocked()V

    .line 298
    .end local v1    # "previousDeviceOwnerType":Ljava/lang/Integer;
    monitor-exit v0

    .line 299
    return-void

    .line 298
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw v1
.end method

.method transferProfileOwner(Landroid/content/ComponentName;I)V
    .registers 12
    .param p1, "target"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 271
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 272
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 273
    .local v1, "ownerInfo":Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;
    new-instance v8, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    iget-boolean v7, v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->isOrganizationOwnedDevice:Z

    move-object v2, v8

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v2, v8

    .line 276
    .local v2, "newOwnerInfo":Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v3, v3, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->notifyChangeLocked()V

    .line 278
    .end local v1    # "ownerInfo":Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;
    .end local v2    # "newOwnerInfo":Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;
    monitor-exit v0

    .line 279
    return-void

    .line 278
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method

.method writeDeviceOwner()V
    .registers 3

    .line 484
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 485
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToDevicePolicyManager()V

    .line 486
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/OwnersData;->writeDeviceOwner()Z

    .line 487
    monitor-exit v0

    .line 488
    return-void

    .line 487
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method writeProfileOwner(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 491
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    monitor-enter v0

    .line 492
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToDevicePolicyManager()V

    .line 493
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mData:Lcom/android/server/devicepolicy/OwnersData;

    invoke-virtual {v1, p1}, Lcom/android/server/devicepolicy/OwnersData;->writeProfileOwner(I)Z

    .line 494
    monitor-exit v0

    .line 495
    return-void

    .line 494
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method
