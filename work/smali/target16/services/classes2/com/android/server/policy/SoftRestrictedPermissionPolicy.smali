.class public abstract Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
.super Ljava/lang/Object;
.source "SoftRestrictedPermissionPolicy.java"


# static fields
.field public static final DUMMY_POLICY:Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

.field public static final sForcedScopedStorageAppWhitelist:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 62
    new-instance v0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$1;

    invoke-direct {v0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$1;-><init>()V

    sput-object v0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->DUMMY_POLICY:Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    .line 70
    new-instance v0, Ljava/util/HashSet;

    .line 71
    invoke-static {}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->getForcedScopedStorageAppWhitelist()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->sForcedScopedStorageAppWhitelist:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/pkg/AndroidPackage;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 121
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_40

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 253
    sget-object v0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->DUMMY_POLICY:Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    return-object v0

    :cond_20
    if-eqz v1, :cond_39

    .line 236
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3, v7, v2}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v3

    and-int/lit16 v3, v3, 0x3800

    if-eqz v3, :cond_31

    goto :goto_32

    :cond_31
    move v5, v6

    .line 239
    :goto_32
    invoke-static {v0, v1, v2}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->getMinimumTargetSDK(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)I

    move-result v6

    move v0, v6

    move v6, v5

    goto :goto_3a

    :cond_39
    move v0, v6

    .line 245
    :goto_3a
    new-instance v1, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$3;

    invoke-direct {v1, v6, v0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$3;-><init>(ZI)V

    return-object v1

    :cond_40
    if-eqz v1, :cond_88

    .line 136
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 137
    const-class v7, Lcom/android/server/StorageManagerInternal;

    .line 138
    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/StorageManagerInternal;

    .line 139
    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3, v8, v2}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v3

    and-int/lit16 v3, v3, 0x3800

    if-eqz v3, :cond_59

    goto :goto_5a

    :cond_59
    move v5, v6

    .line 141
    :goto_5a
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v3}, Lcom/android/server/StorageManagerInternal;->hasLegacyExternalStorage(I)Z

    move-result v6

    .line 142
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->hasUidRequestedLegacyExternalStorage(ILandroid/content/Context;)Z

    move-result v3

    .line 144
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4, v0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->hasWriteMediaStorageGrantedForUid(ILandroid/content/Context;)Z

    move-result v4

    .line 147
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/AndroidPackage;->hasPreserveLegacyExternalStorage()Z

    move-result v7

    .line 148
    invoke-static {v0, v1, v2}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->getMinimumTargetSDK(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)I

    move-result v0

    xor-int/lit8 v2, v5, 0x1

    .line 151
    sget-object v8, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->sForcedScopedStorageAppWhitelist:Ljava/util/HashSet;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 152
    invoke-virtual {v8, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    move v10, v0

    move v12, v1

    move v11, v2

    move v15, v3

    move v13, v4

    move v9, v5

    move v14, v6

    move/from16 v16, v7

    goto :goto_91

    :cond_88
    move v9, v6

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    .line 168
    :goto_91
    new-instance v8, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;

    invoke-direct/range {v8 .. v16}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;-><init>(ZIZZZZZZ)V

    return-object v8
.end method

.method public static getForcedScopedStorageAppWhitelist()[Ljava/lang/String;
    .registers 3

    .line 295
    const-string/jumbo v0, "storage_native_boot"

    const-string v1, "forced_scoped_storage_whitelist"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 297
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_1b

    .line 300
    :cond_14
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    .line 298
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getMinimumTargetSDK(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)I
    .registers 10

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 87
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 89
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 91
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    if-ge v4, v2, :cond_2a

    aget-object v5, v1, v4

    .line 92
    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27

    .line 95
    :try_start_1d
    invoke-virtual {p0, v5, v3, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1d .. :try_end_21} :catch_27

    .line 100
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v0, v5}, Ljava/lang/Integer;->min(II)I

    move-result v0

    :catch_27
    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_2a
    return v0
.end method

.method public static hasUidRequestedLegacyExternalStorage(ILandroid/content/Context;)Z
    .registers 7

    .line 258
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 259
    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 263
    :cond_c
    invoke-static {p0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p0

    .line 264
    array-length v2, v0

    move v3, v1

    :goto_12
    if-ge v3, v2, :cond_25

    aget-object v4, v0, v3

    .line 267
    :try_start_16
    invoke-virtual {p1, v4, v1, p0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_1a} :catch_22

    .line 271
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->hasRequestedLegacyExternalStorage()Z

    move-result v4

    if-eqz v4, :cond_22

    const/4 p0, 0x1

    return p0

    :catch_22
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_25
    return v1
.end method

.method public static hasWriteMediaStorageGrantedForUid(ILandroid/content/Context;)Z
    .registers 7

    .line 279
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 280
    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_c

    return v0

    .line 285
    :cond_c
    array-length v1, p0

    move v2, v0

    :goto_e
    if-ge v2, v1, :cond_1f

    aget-object v3, p0, v2

    .line 286
    const-string v4, "android.permission.WRITE_MEDIA_STORAGE"

    invoke-virtual {p1, v4, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1f
    return v0
.end method


# virtual methods
.method public getExtraAppOpCode()I
    .registers 1

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public mayAllowExtraAppOp()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public mayDenyExtraAppOpIfGranted()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract mayGrantPermission()Z
.end method
