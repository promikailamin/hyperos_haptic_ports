.class public Lcom/android/server/devicepolicy/PolicyVersionUpgrader;
.super Ljava/lang/Object;
.source "PolicyVersionUpgrader.java"


# instance fields
.field public final mPathProvider:Lcom/android/server/devicepolicy/PolicyPathProvider;

.field public final mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;Lcom/android/server/devicepolicy/PolicyPathProvider;)V
    .registers 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    .line 65
    iput-object p2, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mPathProvider:Lcom/android/server/devicepolicy/PolicyPathProvider;

    return-void
.end method


# virtual methods
.method public final getOwnerForUser(Lcom/android/server/devicepolicy/OwnersData;I)Landroid/content/ComponentName;
    .registers 4

    .line 288
    iget p0, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    if-ne p0, p2, :cond_b

    iget-object p0, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz p0, :cond_b

    .line 289
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    return-object p0

    .line 290
    :cond_b
    iget-object p0, p1, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 291
    iget-object p0, p1, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    return-object p0

    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getVersionFile()Lcom/android/internal/util/JournaledFile;
    .registers 2

    .line 315
    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;->makePoliciesVersionJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object p0

    return-object p0
.end method

.method public final initializeEffectiveKeepProfilesRunning(Landroid/util/SparseArray;)V
    .registers 2

    const/4 p0, 0x0

    .line 240
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyData;

    if-nez p1, :cond_a

    return-void

    .line 244
    :cond_a
    iput-boolean p0, p1, Lcom/android/server/devicepolicy/DevicePolicyData;->mEffectiveKeepProfilesRunning:Z

    .line 245
    const-string p0, "DevicePolicyManager"

    const-string p1, "Keep profile running effective state set to false"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final loadAllUsersData([IILcom/android/server/devicepolicy/OwnersData;)Landroid/util/SparseArray;
    .registers 9

    .line 277
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 278
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_19

    aget v3, p1, v2

    .line 279
    invoke-virtual {p0, p3, v3}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->getOwnerForUser(Lcom/android/server/devicepolicy/OwnersData;I)Landroid/content/ComponentName;

    move-result-object v4

    .line 280
    invoke-virtual {p0, v3, p2, v4}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->loadDataForUser(IILandroid/content/ComponentName;)Lcom/android/server/devicepolicy/DevicePolicyData;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_19
    return-object v0
.end method

.method public final loadDataForUser(IILandroid/content/ComponentName;)Lcom/android/server/devicepolicy/DevicePolicyData;
    .registers 6

    .line 298
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyData;

    invoke-direct {v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyData;-><init>(I)V

    const/4 v1, 0x5

    if-ne p2, v1, :cond_d

    if-nez p1, :cond_d

    const/4 p2, 0x1

    .line 301
    iput-boolean p2, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mEffectiveKeepProfilesRunning:Z

    .line 303
    :cond_d
    iget-object p2, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    .line 304
    invoke-interface {p2, p1}, Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;->makeDevicePoliciesJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    .line 305
    invoke-interface {p0, p1}, Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;->getAdminInfoSupplier(I)Ljava/util/function/Function;

    move-result-object p0

    .line 303
    invoke-static {v0, p2, p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyData;->load(Lcom/android/server/devicepolicy/DevicePolicyData;Lcom/android/internal/util/JournaledFile;Ljava/util/function/Function;Landroid/content/ComponentName;)V

    return-object v0
.end method

.method public final loadOwners([I)Lcom/android/server/devicepolicy/OwnersData;
    .registers 3

    .line 249
    new-instance v0, Lcom/android/server/devicepolicy/OwnersData;

    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mPathProvider:Lcom/android/server/devicepolicy/PolicyPathProvider;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/OwnersData;-><init>(Lcom/android/server/devicepolicy/PolicyPathProvider;)V

    .line 250
    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/OwnersData;->load([I)V

    return-object v0
.end method

.method public final readVersion()I
    .registers 4

    .line 319
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->getVersionFile()Lcom/android/internal/util/JournaledFile;

    move-result-object p0

    .line 321
    invoke-virtual {p0}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    .line 327
    :try_start_9
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    .line 326
    invoke-static {p0, v1}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object p0

    .line 327
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 328
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1f
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_9 .. :try_end_1f} :catch_28
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1f} :catch_20
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_1f} :catch_20
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_1f} :catch_20

    return p0

    :catch_20
    move-exception p0

    .line 332
    const-string v1, "DevicePolicyManager"

    const-string v2, "Error reading version"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_28
    return v0
.end method

.method public final saveSuspendedPackages(Landroid/util/SparseArray;ILandroid/content/ComponentName;)V
    .registers 5

    .line 221
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyData;

    .line 222
    const-string v0, "DevicePolicyManager"

    if-nez p1, :cond_10

    .line 223
    const-string p0, "No policy data for owner user, cannot migrate suspended packages"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 227
    :cond_10
    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/devicepolicy/ActiveAdmin;

    if-nez p1, :cond_20

    .line 229
    const-string p0, "No admin for owner, cannot migrate suspended packages"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 233
    :cond_20
    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    invoke-interface {p0, p2}, Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;->getPlatformSuspendedPackages(I)Ljava/util/List;

    move-result-object p0

    iput-object p0, p1, Lcom/android/server/devicepolicy/ActiveAdmin;->suspendedPackages:Ljava/util/List;

    .line 235
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p3, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 234
    const-string p1, "Saved %d packages suspended by %s in user %d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final upgradePackageSuspension([ILcom/android/server/devicepolicy/OwnersData;Landroid/util/SparseArray;)V
    .registers 6

    .line 207
    iget-object p1, p2, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz p1, :cond_b

    .line 208
    iget v0, p2, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    iget-object p1, p1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    invoke-virtual {p0, p3, v0, p1}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->saveSuspendedPackages(Landroid/util/SparseArray;ILandroid/content/ComponentName;)V

    :cond_b
    const/4 p1, 0x0

    .line 212
    :goto_c
    iget-object v0, p2, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge p1, v0, :cond_30

    .line 213
    iget-object v0, p2, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 214
    iget-object v1, p2, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 215
    iget-object v1, v1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    invoke-virtual {p0, p3, v0, v1}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->saveSuspendedPackages(Landroid/util/SparseArray;ILandroid/content/ComponentName;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    :cond_30
    return-void
.end method

.method public upgradePolicy(I)V
    .registers 9

    .line 73
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->readVersion()I

    move-result v0

    .line 74
    const-string v1, "DevicePolicyManager"

    if-lt v0, p1, :cond_1e

    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 75
    const-string p1, "Current version %d, latest version %d, not upgrading."

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 80
    :cond_1e
    iget-object p1, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    invoke-interface {p1}, Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;->getUsersForUpgrade()[I

    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->loadOwners([I)Lcom/android/server/devicepolicy/OwnersData;

    move-result-object v2

    .line 87
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->loadAllUsersData([IILcom/android/server/devicepolicy/OwnersData;)Landroid/util/SparseArray;

    move-result-object v3

    const/4 v4, 0x1

    .line 90
    const-string v5, "Upgrading from version %d"

    if-nez v0, :cond_41

    .line 91
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    :cond_41
    const/4 v6, 0x2

    if-ne v0, v4, :cond_57

    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->upgradeSensorPermissionsAccess([ILcom/android/server/devicepolicy/OwnersData;Landroid/util/SparseArray;)V

    move v0, v6

    :cond_57
    const/4 v4, 0x3

    if-ne v0, v6, :cond_6d

    .line 104
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0, v2, v3}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->upgradeProtectedPackages(Lcom/android/server/devicepolicy/OwnersData;Landroid/util/SparseArray;)V

    move v0, v4

    :cond_6d
    const/4 v6, 0x4

    if-ne v0, v4, :cond_83

    .line 110
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->upgradePackageSuspension([ILcom/android/server/devicepolicy/OwnersData;Landroid/util/SparseArray;)V

    move v0, v6

    :cond_83
    const/4 v4, 0x5

    if-ne v0, v6, :cond_99

    .line 116
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0, v3}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->initializeEffectiveKeepProfilesRunning(Landroid/util/SparseArray;)V

    move v0, v4

    :cond_99
    if-ne v0, v4, :cond_ab

    .line 122
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    .line 134
    :cond_ab
    invoke-virtual {p0, p1, v3, v2, v0}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->writePoliciesAndVersion([ILandroid/util/SparseArray;Lcom/android/server/devicepolicy/OwnersData;I)V

    return-void
.end method

.method public final upgradeProtectedPackages(Lcom/android/server/devicepolicy/OwnersData;Landroid/util/SparseArray;)V
    .registers 6

    .line 167
    iget-object p0, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-nez p0, :cond_5

    goto :goto_5c

    .line 171
    :cond_5
    iget p0, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyData;

    .line 172
    const-string p2, "DevicePolicyManager"

    if-nez p0, :cond_17

    .line 173
    const-string p0, "No policy data for do user"

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 176
    :cond_17
    iget-object v0, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerProtectedPackages:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    .line 177
    iget-object v2, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object v2, v2, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    .line 178
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2d

    .line 180
    const-string v2, "Found protected packages in Owners"

    invoke-static {p2, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_2d
    iput-object v1, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerProtectedPackages:Landroid/util/ArrayMap;

    :goto_2f
    move-object v1, v0

    goto :goto_3f

    .line 183
    :cond_31
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    if-eqz v0, :cond_3f

    .line 184
    const-string v0, "Found protected packages in DevicePolicyData"

    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    .line 186
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    goto :goto_2f

    .line 189
    :cond_3f
    :goto_3f
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    iget-object p1, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object p1, p1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/devicepolicy/ActiveAdmin;

    if-nez p0, :cond_53

    .line 191
    const-string p0, "DO admin not found in DO user"

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_53
    if-eqz v1, :cond_5c

    .line 196
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->protectedPackages:Ljava/util/List;

    :cond_5c
    :goto_5c
    return-void
.end method

.method public final upgradeSensorPermissionsAccess([ILcom/android/server/devicepolicy/OwnersData;Landroid/util/SparseArray;)V
    .registers 13

    .line 143
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_51

    aget v2, p1, v1

    .line 144
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyData;

    if-nez v3, :cond_10

    goto :goto_4e

    .line 148
    :cond_10
    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v0

    :cond_17
    :goto_17
    if-ge v5, v4, :cond_4e

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 149
    iget v7, p2, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    if-ne v7, v2, :cond_17

    iget-object v7, p2, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz v7, :cond_17

    iget-object v7, v7, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    iget-object v8, v6, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 151
    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 153
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 152
    const-string v8, "Marking Device Owner in user %d for permission grant "

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "DevicePolicyManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    .line 154
    iput-boolean v7, v6, Lcom/android/server/devicepolicy/ActiveAdmin;->mAdminCanGrantSensorsPermissions:Z

    goto :goto_17

    :cond_4e
    :goto_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_51
    return-void
.end method

.method public final writeDataForUser(ILcom/android/server/devicepolicy/DevicePolicyData;)Z
    .registers 3

    .line 311
    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    invoke-interface {p0, p1}, Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;->makeDevicePoliciesJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/server/devicepolicy/DevicePolicyData;->store(Lcom/android/server/devicepolicy/DevicePolicyData;Lcom/android/internal/util/JournaledFile;)Z

    move-result p0

    return p0
.end method

.method public final writePoliciesAndVersion([ILandroid/util/SparseArray;Lcom/android/server/devicepolicy/OwnersData;I)V
    .registers 11

    .line 257
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_5
    if-ge v3, v0, :cond_1d

    aget v5, p1, v3

    if-eqz v4, :cond_19

    .line 259
    invoke-virtual {p2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/DevicePolicyData;

    invoke-virtual {p0, v5, v4}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->writeDataForUser(ILcom/android/server/devicepolicy/DevicePolicyData;)Z

    move-result v4

    if-eqz v4, :cond_19

    move v4, v1

    goto :goto_1a

    :cond_19
    move v4, v2

    :goto_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_1d
    if-eqz v4, :cond_27

    .line 262
    invoke-virtual {p3}, Lcom/android/server/devicepolicy/OwnersData;->writeDeviceOwner()Z

    move-result p2

    if-eqz p2, :cond_27

    move p2, v1

    goto :goto_28

    :cond_27
    move p2, v2

    .line 263
    :goto_28
    array-length v0, p1

    move v3, v2

    :goto_2a
    if-ge v3, v0, :cond_3c

    aget v4, p1, v3

    if-eqz p2, :cond_38

    .line 264
    invoke-virtual {p3, v4}, Lcom/android/server/devicepolicy/OwnersData;->writeProfileOwner(I)Z

    move-result p2

    if-eqz p2, :cond_38

    move p2, v1

    goto :goto_39

    :cond_38
    move p2, v2

    :goto_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_3c
    if-eqz p2, :cond_42

    .line 268
    invoke-virtual {p0, p4}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->writeVersion(I)V

    return-void

    .line 271
    :cond_42
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 270
    const-string p1, "Error: Failed upgrading policies to version %d"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "DevicePolicyManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final writeVersion(I)V
    .registers 5

    .line 338
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->getVersionFile()Lcom/android/internal/util/JournaledFile;

    move-result-object p0

    .line 340
    invoke-virtual {p0}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v0

    .line 346
    :try_start_8
    const-string v1, "%d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 347
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1, v2}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;

    .line 348
    invoke-virtual {p0}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_27} :catch_28

    return-void

    :catch_28
    move-exception v0

    .line 350
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Writing version %d failed"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "DevicePolicyManager"

    invoke-static {v1, p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 351
    invoke-virtual {p0}, Lcom/android/internal/util/JournaledFile;->rollback()V

    return-void
.end method
