.class public Lcom/android/server/devicepolicy/PolicyVersionUpgrader;
.super Ljava/lang/Object;
.source "PolicyVersionUpgrader.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DevicePolicyManager"

.field private static final VERBOSE_LOG:Z = false


# instance fields
.field private final mPathProvider:Lcom/android/server/devicepolicy/PolicyPathProvider;

.field private final mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;Lcom/android/server/devicepolicy/PolicyPathProvider;)V
    .registers 3
    .param p1, "provider"    # Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;
    .param p2, "pathProvider"    # Lcom/android/server/devicepolicy/PolicyPathProvider;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    .line 63
    iput-object p2, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mPathProvider:Lcom/android/server/devicepolicy/PolicyPathProvider;

    .line 64
    return-void
.end method

.method private getOwnerForUser(Lcom/android/server/devicepolicy/OwnersData;I)Landroid/content/ComponentName;
    .registers 6
    .param p1, "ownersData"    # Lcom/android/server/devicepolicy/OwnersData;
    .param p2, "user"    # I

    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "owner":Landroid/content/ComponentName;
    iget v1, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    if-ne v1, p2, :cond_e

    iget-object v1, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz v1, :cond_e

    .line 214
    iget-object v1, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object v0, v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    goto :goto_28

    .line 215
    :cond_e
    iget-object v1, p1, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 216
    iget-object v1, p1, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object v0, v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    .line 218
    :cond_28
    :goto_28
    return-object v0
.end method

.method private getVersionFile()Lcom/android/internal/util/JournaledFile;
    .registers 3

    .line 240
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;->makePoliciesVersionJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v0

    return-object v0
.end method

.method private loadAllUsersData([IILcom/android/server/devicepolicy/OwnersData;)Landroid/util/SparseArray;
    .registers 10
    .param p1, "allUsers"    # [I
    .param p2, "loadVersion"    # I
    .param p3, "ownersData"    # Lcom/android/server/devicepolicy/OwnersData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II",
            "Lcom/android/server/devicepolicy/OwnersData;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/devicepolicy/DevicePolicyData;",
            ">;"
        }
    .end annotation

    .line 202
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 203
    .local v0, "allUsersData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/devicepolicy/DevicePolicyData;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_19

    aget v3, p1, v2

    .line 204
    .local v3, "user":I
    invoke-direct {p0, p3, v3}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->getOwnerForUser(Lcom/android/server/devicepolicy/OwnersData;I)Landroid/content/ComponentName;

    move-result-object v4

    .line 205
    .local v4, "owner":Landroid/content/ComponentName;
    invoke-direct {p0, v3, p2, v4}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->loadDataForUser(IILandroid/content/ComponentName;)Lcom/android/server/devicepolicy/DevicePolicyData;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 203
    .end local v3    # "user":I
    .end local v4    # "owner":Landroid/content/ComponentName;
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 207
    :cond_19
    return-object v0
.end method

.method private loadDataForUser(IILandroid/content/ComponentName;)Lcom/android/server/devicepolicy/DevicePolicyData;
    .registers 8
    .param p1, "userId"    # I
    .param p2, "loadVersion"    # I
    .param p3, "ownerComponent"    # Landroid/content/ComponentName;

    .line 223
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyData;

    invoke-direct {v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyData;-><init>(I)V

    .line 224
    .local v0, "policy":Lcom/android/server/devicepolicy/DevicePolicyData;
    iget-object v1, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    .line 225
    invoke-interface {v1}, Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;->storageManagerIsFileBasedEncryptionEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    .line 226
    invoke-interface {v2, p1}, Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;->makeDevicePoliciesJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    .line 227
    invoke-interface {v3, p1}, Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;->getAdminInfoSupplier(I)Ljava/util/function/Function;

    move-result-object v3

    .line 224
    invoke-static {v0, v1, v2, v3, p3}, Lcom/android/server/devicepolicy/DevicePolicyData;->load(Lcom/android/server/devicepolicy/DevicePolicyData;ZLcom/android/internal/util/JournaledFile;Ljava/util/function/Function;Landroid/content/ComponentName;)V

    .line 229
    return-object v0
.end method

.method private loadOwners([I)Lcom/android/server/devicepolicy/OwnersData;
    .registers 4
    .param p1, "allUsers"    # [I

    .line 174
    new-instance v0, Lcom/android/server/devicepolicy/OwnersData;

    iget-object v1, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mPathProvider:Lcom/android/server/devicepolicy/PolicyPathProvider;

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/OwnersData;-><init>(Lcom/android/server/devicepolicy/PolicyPathProvider;)V

    .line 175
    .local v0, "ownersData":Lcom/android/server/devicepolicy/OwnersData;
    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/OwnersData;->load([I)V

    .line 176
    return-object v0
.end method

.method private readVersion()I
    .registers 7

    .line 244
    invoke-direct {p0}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->getVersionFile()Lcom/android/internal/util/JournaledFile;

    move-result-object v0

    .line 246
    .local v0, "versionFile":Lcom/android/internal/util/JournaledFile;
    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v1

    .line 251
    .local v1, "file":Ljava/io/File;
    nop

    .line 252
    const/4 v2, 0x0

    :try_start_a
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    .line 251
    invoke-static {v3, v4}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v3

    .line 252
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 253
    .local v3, "versionString":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_20} :catch_21
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_20} :catch_21
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_20} :catch_21

    return v2

    .line 254
    .end local v3    # "versionString":Ljava/lang/String;
    :catch_21
    move-exception v3

    .line 255
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "DevicePolicyManager"

    const-string v5, "Error reading version"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    return v2
.end method

.method private upgradeProtectedPackages(Lcom/android/server/devicepolicy/OwnersData;Landroid/util/SparseArray;)V
    .registers 9
    .param p1, "ownersData"    # Lcom/android/server/devicepolicy/OwnersData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/devicepolicy/OwnersData;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/devicepolicy/DevicePolicyData;",
            ">;)V"
        }
    .end annotation

    .line 140
    .local p2, "allUsersData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/devicepolicy/DevicePolicyData;>;"
    iget-object v0, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-nez v0, :cond_5

    .line 141
    return-void

    .line 143
    :cond_5
    const/4 v0, 0x0

    .line 144
    .local v0, "protectedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v1, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyData;

    .line 145
    .local v1, "doUserData":Lcom/android/server/devicepolicy/DevicePolicyData;
    const-string v2, "DevicePolicyManager"

    if-nez v1, :cond_18

    .line 146
    const-string v3, "No policy data for do user"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void

    .line 149
    :cond_18
    iget-object v3, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerProtectedPackages:Landroid/util/ArrayMap;

    const/4 v4, 0x0

    if-eqz v3, :cond_34

    .line 150
    iget-object v3, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerProtectedPackages:Landroid/util/ArrayMap;

    iget-object v5, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object v5, v5, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    .line 151
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/List;

    .line 152
    if-eqz v0, :cond_31

    .line 153
    const-string v3, "Found protected packages in Owners"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_31
    iput-object v4, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerProtectedPackages:Landroid/util/ArrayMap;

    goto :goto_41

    .line 156
    :cond_34
    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    if-eqz v3, :cond_41

    .line 157
    const-string v3, "Found protected packages in DevicePolicyData"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    .line 159
    iput-object v4, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    .line 162
    :cond_41
    :goto_41
    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    iget-object v4, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object v4, v4, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 163
    .local v3, "doAdmin":Lcom/android/server/devicepolicy/ActiveAdmin;
    if-nez v3, :cond_55

    .line 164
    const-string v4, "DO admin not found in DO user"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void

    .line 168
    :cond_55
    if-eqz v0, :cond_5e

    .line 169
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v3, Lcom/android/server/devicepolicy/ActiveAdmin;->protectedPackages:Ljava/util/List;

    .line 171
    :cond_5e
    return-void
.end method

.method private upgradeSensorPermissionsAccess([ILcom/android/server/devicepolicy/OwnersData;Landroid/util/SparseArray;)V
    .registers 14
    .param p1, "allUsers"    # [I
    .param p2, "ownersData"    # Lcom/android/server/devicepolicy/OwnersData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Lcom/android/server/devicepolicy/OwnersData;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/devicepolicy/DevicePolicyData;",
            ">;)V"
        }
    .end annotation

    .line 116
    .local p3, "allUsersData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/devicepolicy/DevicePolicyData;>;"
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_54

    aget v3, p1, v2

    .line 117
    .local v3, "userId":I
    invoke-virtual {p3, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/DevicePolicyData;

    .line 118
    .local v4, "userData":Lcom/android/server/devicepolicy/DevicePolicyData;
    if-nez v4, :cond_10

    .line 119
    goto :goto_51

    .line 121
    :cond_10
    iget-object v5, v4, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_51

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 122
    .local v6, "admin":Lcom/android/server/devicepolicy/ActiveAdmin;
    iget v7, p2, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    if-ne v7, v3, :cond_50

    iget-object v7, p2, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz v7, :cond_50

    iget-object v7, p2, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object v7, v7, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    iget-object v8, v6, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 124
    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_50

    .line 125
    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    .line 126
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    .line 125
    const-string v9, "Marking Device Owner in user %d for permission grant "

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "DevicePolicyManager"

    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iput-boolean v7, v6, Lcom/android/server/devicepolicy/ActiveAdmin;->mAdminCanGrantSensorsPermissions:Z

    .line 129
    .end local v6    # "admin":Lcom/android/server/devicepolicy/ActiveAdmin;
    :cond_50
    goto :goto_16

    .line 116
    .end local v3    # "userId":I
    .end local v4    # "userData":Lcom/android/server/devicepolicy/DevicePolicyData;
    :cond_51
    :goto_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 131
    :cond_54
    return-void
.end method

.method private writeDataForUser(ILcom/android/server/devicepolicy/DevicePolicyData;)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyData;

    .line 233
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    .line 235
    invoke-interface {v0, p1}, Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;->makeDevicePoliciesJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    .line 236
    invoke-interface {v1}, Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;->storageManagerIsFileBasedEncryptionEnabled()Z

    move-result v1

    .line 233
    xor-int/lit8 v1, v1, 0x1

    invoke-static {p2, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyData;->store(Lcom/android/server/devicepolicy/DevicePolicyData;Lcom/android/internal/util/JournaledFile;Z)Z

    move-result v0

    return v0
.end method

.method private writePoliciesAndVersion([ILandroid/util/SparseArray;Lcom/android/server/devicepolicy/OwnersData;I)V
    .registers 12
    .param p1, "allUsers"    # [I
    .param p3, "ownersData"    # Lcom/android/server/devicepolicy/OwnersData;
    .param p4, "currentVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/devicepolicy/DevicePolicyData;",
            ">;",
            "Lcom/android/server/devicepolicy/OwnersData;",
            "I)V"
        }
    .end annotation

    .line 181
    .local p2, "allUsersData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/devicepolicy/DevicePolicyData;>;"
    const/4 v0, 0x1

    .line 182
    .local v0, "allWritesSuccessful":Z
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_4
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1d

    aget v5, p1, v3

    .line 183
    .local v5, "user":I
    if-eqz v0, :cond_18

    .line 184
    invoke-virtual {p2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/devicepolicy/DevicePolicyData;

    invoke-direct {p0, v5, v6}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->writeDataForUser(ILcom/android/server/devicepolicy/DevicePolicyData;)Z

    move-result v6

    if-eqz v6, :cond_18

    goto :goto_19

    :cond_18
    move v4, v2

    :goto_19
    move v0, v4

    .line 182
    .end local v5    # "user":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 187
    :cond_1d
    if-eqz v0, :cond_27

    invoke-virtual {p3}, Lcom/android/server/devicepolicy/OwnersData;->writeDeviceOwner()Z

    move-result v1

    if-eqz v1, :cond_27

    move v1, v4

    goto :goto_28

    :cond_27
    move v1, v2

    :goto_28
    move v0, v1

    .line 188
    array-length v1, p1

    move v3, v2

    :goto_2b
    if-ge v3, v1, :cond_3e

    aget v5, p1, v3

    .line 189
    .restart local v5    # "user":I
    if-eqz v0, :cond_39

    invoke-virtual {p3, v5}, Lcom/android/server/devicepolicy/OwnersData;->writeProfileOwner(I)Z

    move-result v6

    if-eqz v6, :cond_39

    move v6, v4

    goto :goto_3a

    :cond_39
    move v6, v2

    :goto_3a
    move v0, v6

    .line 188
    .end local v5    # "user":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 192
    :cond_3e
    if-eqz v0, :cond_44

    .line 193
    invoke-direct {p0, p4}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->writeVersion(I)V

    goto :goto_57

    .line 195
    :cond_44
    new-array v1, v4, [Ljava/lang/Object;

    .line 196
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 195
    const-string v2, "Error: Failed upgrading policies to version %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DevicePolicyManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :goto_57
    return-void
.end method

.method private writeVersion(I)V
    .registers 9
    .param p1, "version"    # I

    .line 261
    invoke-direct {p0}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->getVersionFile()Lcom/android/internal/util/JournaledFile;

    move-result-object v0

    .line 263
    .local v0, "versionFile":Lcom/android/internal/util/JournaledFile;
    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v1

    .line 269
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_a
    const-string v4, "%d"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 270
    .local v4, "versionBytes":[B
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    new-array v6, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v5, v4, v6}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;

    .line 271
    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_28} :catch_29

    .line 275
    .end local v4    # "versionBytes":[B
    goto :goto_40

    .line 272
    :catch_29
    move-exception v4

    .line 273
    .local v4, "e":Ljava/io/IOException;
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v3, "Writing version %d failed"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DevicePolicyManager"

    invoke-static {v3, v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 276
    .end local v4    # "e":Ljava/io/IOException;
    :goto_40
    return-void
.end method


# virtual methods
.method public upgradePolicy(I)V
    .registers 14
    .param p1, "dpmsVersion"    # I

    .line 71
    invoke-direct {p0}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->readVersion()I

    move-result v0

    .line 72
    .local v0, "oldVersion":I
    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "DevicePolicyManager"

    const/4 v4, 0x1

    if-lt v0, p1, :cond_23

    .line 73
    new-array v1, v1, [Ljava/lang/Object;

    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 73
    const-string v2, "Current version %d, latest version %d, not upgrading."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void

    .line 78
    :cond_23
    iget-object v5, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    invoke-interface {v5}, Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;->getUsersForUpgrade()[I

    move-result-object v5

    .line 79
    .local v5, "allUsers":[I
    invoke-direct {p0, v5}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->loadOwners([I)Lcom/android/server/devicepolicy/OwnersData;

    move-result-object v6

    .line 84
    .local v6, "ownersData":Lcom/android/server/devicepolicy/OwnersData;
    nop

    .line 85
    invoke-direct {p0, v5, v0, v6}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->loadAllUsersData([IILcom/android/server/devicepolicy/OwnersData;)Landroid/util/SparseArray;

    move-result-object v7

    .line 87
    .local v7, "allUsersData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/devicepolicy/DevicePolicyData;>;"
    move v8, v0

    .line 88
    .local v8, "currentVersion":I
    const-string v9, "Upgrading from version %d"

    if-nez v8, :cond_47

    .line 89
    new-array v10, v4, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v2

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v8, 0x1

    .line 95
    :cond_47
    if-ne v8, v4, :cond_5c

    .line 96
    new-array v10, v4, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v2

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->upgradeSensorPermissionsAccess([ILcom/android/server/devicepolicy/OwnersData;Landroid/util/SparseArray;)V

    .line 98
    const/4 v8, 0x2

    .line 101
    :cond_5c
    if-ne v8, v1, :cond_71

    .line 102
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v9, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-direct {p0, v6, v7}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->upgradeProtectedPackages(Lcom/android/server/devicepolicy/OwnersData;Landroid/util/SparseArray;)V

    .line 104
    const/4 v8, 0x3

    .line 107
    :cond_71
    invoke-direct {p0, v5, v7, v6, v8}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->writePoliciesAndVersion([ILandroid/util/SparseArray;Lcom/android/server/devicepolicy/OwnersData;I)V

    .line 108
    return-void
.end method
