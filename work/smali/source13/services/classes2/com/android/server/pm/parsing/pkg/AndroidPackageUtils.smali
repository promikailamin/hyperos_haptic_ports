.class public Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;
.super Ljava/lang/Object;
.source "AndroidPackageUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static canHaveOatDir(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)Z
    .registers 4
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "isUpdatedSystemApp"    # Z

    .line 167
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    if-nez p1, :cond_a

    .line 168
    return v1

    .line 170
    :cond_a
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 171
    return v1

    .line 173
    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method public static createNativeLibraryHandle(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .registers 5
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    nop

    .line 156
    invoke-static {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v0

    .line 157
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isMultiArch()Z

    move-result v1

    .line 158
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isExtractNativeLibs()Z

    move-result v2

    .line 159
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isDebuggable()Z

    move-result v3

    .line 155
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/util/List;ZZZ)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v0

    return-object v0
.end method

.method public static createSharedLibraryForDynamic(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Landroid/content/pm/SharedLibraryInfo;
    .registers 15
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "name"    # Ljava/lang/String;

    .line 113
    new-instance v12, Landroid/content/pm/SharedLibraryInfo;

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-static {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v3

    new-instance v8, Landroid/content/pm/VersionedPackage;

    .line 116
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v4

    invoke-direct {v8, v0, v4, v5}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    const/4 v1, 0x0

    const-wide/16 v5, -0x1

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v12

    move-object v4, p1

    invoke-direct/range {v0 .. v11}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    .line 113
    return-object v12
.end method

.method public static createSharedLibraryForSdk(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/content/pm/SharedLibraryInfo;
    .registers 14
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 91
    new-instance v12, Landroid/content/pm/SharedLibraryInfo;

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-static {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v3

    .line 93
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSdkLibName()Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSdkLibVersionMajor()I

    move-result v0

    int-to-long v5, v0

    new-instance v8, Landroid/content/pm/VersionedPackage;

    .line 96
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v9

    invoke-direct {v8, v0, v9, v10}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    const/4 v1, 0x0

    const/4 v7, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    .line 91
    return-object v12
.end method

.method public static createSharedLibraryForStatic(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/content/pm/SharedLibraryInfo;
    .registers 14
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 102
    new-instance v12, Landroid/content/pm/SharedLibraryInfo;

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-static {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v3

    .line 104
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v4

    .line 105
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibVersion()J

    move-result-wide v5

    new-instance v8, Landroid/content/pm/VersionedPackage;

    .line 107
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v9

    invoke-direct {v8, v0, v9, v10}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    const/4 v1, 0x0

    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    .line 102
    return-object v12
.end method

.method public static generateAppInfoWithoutState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/content/pm/ApplicationInfo;
    .registers 2
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 326
    move-object v0, p0

    check-cast v0, Lcom/android/server/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageHidden;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getAllCodePaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;
    .registers 5
    .param p0, "aPkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    move-object v0, p0

    check-cast v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;

    .line 80
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/PackageImpl;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v1, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "splitCodePaths":[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 85
    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 87
    :cond_1c
    return-object v1
.end method

.method public static getAllCodePathsExcludingResourceOnly(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;
    .registers 6
    .param p0, "aPkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    move-object v0, p0

    check-cast v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;

    .line 60
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/PackageImpl;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v1, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->isHasCode()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 62
    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_15
    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "splitCodePaths":[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    .line 66
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    array-length v4, v2

    if-ge v3, v4, :cond_35

    .line 67
    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getSplitFlags()[I

    move-result-object v4

    aget v4, v4, v3

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_32

    .line 68
    aget-object v4, v2, v3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 72
    .end local v3    # "i":I
    :cond_35
    return-object v1
.end method

.method public static getHiddenApiEnforcementPolicy(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I
    .registers 5
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 239
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSignedWithPlatformKey()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 240
    const/4 v0, 0x1

    .local v0, "isAllowedToUseHiddenApis":Z
    goto :goto_38

    .line 241
    .end local v0    # "isAllowedToUseHiddenApis":Z
    :cond_9
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_1c

    .line 246
    :cond_1a
    const/4 v0, 0x0

    .restart local v0    # "isAllowedToUseHiddenApis":Z
    goto :goto_38

    .line 242
    .end local v0    # "isAllowedToUseHiddenApis":Z
    :cond_1c
    :goto_1c
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isUsesNonSdkApi()Z

    move-result v0

    if-nez v0, :cond_37

    .line 243
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getHiddenApiWhitelistedApps()Landroid/util/ArraySet;

    move-result-object v0

    .line 244
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 243
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_37

    :cond_35
    move v0, v1

    goto :goto_38

    :cond_37
    :goto_37
    const/4 v0, 0x1

    .line 249
    .restart local v0    # "isAllowedToUseHiddenApis":Z
    :goto_38
    if-eqz v0, :cond_3b

    .line 250
    return v1

    .line 259
    :cond_3b
    const/4 v1, 0x2

    return v1
.end method

.method public static getIcon(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;)I
    .registers 2
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;

    .line 263
    sget-boolean v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    if-eqz v0, :cond_f

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getRoundIconRes()I

    move-result v0

    if-eqz v0, :cond_f

    .line 264
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getRoundIconRes()I

    move-result v0

    goto :goto_13

    :cond_f
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getIconRes()I

    move-result v0

    .line 263
    :goto_13
    return v0
.end method

.method public static getPackageDexMetadata(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/Map;
    .registers 2
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 128
    nop

    .line 129
    invoke-static {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/dex/DexMetadataHelper;->buildPackageApkToDexMetadataMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 128
    return-object v0
.end method

.method public static getPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;
    .registers 3
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 280
    if-eqz p1, :cond_12

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_12

    .line 284
    :cond_d
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 281
    :cond_12
    :goto_12
    invoke-static {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRawPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;
    .registers 2
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 301
    move-object v0, p0

    check-cast v0, Lcom/android/server/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageHidden;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRawSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;
    .registers 2
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 310
    move-object v0, p0

    check-cast v0, Lcom/android/server/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageHidden;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRealPackageOrNull(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;
    .registers 2
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 335
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOriginalPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_16

    .line 339
    :cond_11
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 336
    :cond_16
    :goto_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;
    .registers 4
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 314
    if-eqz p1, :cond_11

    .line 315
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getOverrideSeInfo()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "overrideSeInfo":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 317
    return-object v0

    .line 320
    .end local v0    # "overrideSeInfo":Ljava/lang/String;
    :cond_11
    move-object v0, p0

    check-cast v0, Lcom/android/server/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageHidden;->getSeInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;
    .registers 3
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 289
    if-eqz p1, :cond_12

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_12

    .line 293
    :cond_d
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 290
    :cond_12
    :goto_12
    invoke-static {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasComponentClassName(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z
    .registers 15
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "className"    # Ljava/lang/String;

    .line 177
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    .line 178
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedActivity;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 179
    .local v1, "activitiesSize":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_9
    const/4 v3, 0x1

    if-ge v2, v1, :cond_20

    .line 180
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/component/ParsedActivity;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 181
    return v3

    .line 179
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 185
    .end local v2    # "index":I
    :cond_20
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v2

    .line 186
    .local v2, "receivers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedActivity;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 187
    .local v4, "receiversSize":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_29
    if-ge v5, v4, :cond_3f

    .line 188
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/component/ParsedActivity;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 189
    return v3

    .line 187
    :cond_3c
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    .line 193
    .end local v5    # "index":I
    :cond_3f
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v5

    .line 194
    .local v5, "providers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedProvider;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 195
    .local v6, "providersSize":I
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_48
    if-ge v7, v6, :cond_5e

    .line 196
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/pkg/component/ParsedProvider;

    invoke-interface {v8}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 197
    return v3

    .line 195
    :cond_5b
    add-int/lit8 v7, v7, 0x1

    goto :goto_48

    .line 201
    .end local v7    # "index":I
    :cond_5e
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v7

    .line 202
    .local v7, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedService;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 203
    .local v8, "servicesSize":I
    const/4 v9, 0x0

    .local v9, "index":I
    :goto_67
    if-ge v9, v8, :cond_7d

    .line 204
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/pkg/component/ParsedService;

    invoke-interface {v10}, Lcom/android/server/pm/pkg/component/ParsedService;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7a

    .line 205
    return v3

    .line 203
    :cond_7a
    add-int/lit8 v9, v9, 0x1

    goto :goto_67

    .line 209
    .end local v9    # "index":I
    :cond_7d
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v9

    .line 210
    .local v9, "instrumentations":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedInstrumentation;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 211
    .local v10, "instrumentationsSize":I
    const/4 v11, 0x0

    .local v11, "index":I
    :goto_86
    if-ge v11, v10, :cond_9c

    .line 212
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;

    invoke-interface {v12}, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {p1, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_99

    .line 213
    return v3

    .line 211
    :cond_99
    add-int/lit8 v11, v11, 0x1

    goto :goto_86

    .line 217
    .end local v11    # "index":I
    :cond_9c
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBackupAgentName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_ad

    .line 218
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBackupAgentName()Ljava/lang/String;

    move-result-object v11

    invoke-static {p1, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ad

    .line 219
    return v3

    .line 223
    :cond_ad
    const/4 v3, 0x0

    return v3
.end method

.method public static isEncryptionAware(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 2
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 227
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isDirectBootAware()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isPartiallyDirectBootAware()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public static isLibrary(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 2
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 232
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSdkLibName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    .line 233
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    .line 232
    :goto_1a
    return v0
.end method

.method public static isMatchForSystemOnly(Lcom/android/server/pm/parsing/pkg/AndroidPackage;J)Z
    .registers 7
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "flags"    # J

    .line 272
    const-wide/32 v0, 0x100000

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 273
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v0

    return v0

    .line 275
    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method public static validatePackageDexMetadata(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 12
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 139
    invoke-static {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getPackageDexMetadata(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 140
    .local v0, "apkToDexMetadataList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "packageName":Ljava/lang/String;
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v2

    .line 142
    .local v2, "versionCode":J
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v4

    .line 143
    .local v4, "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_18
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_46

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 144
    .local v6, "dexMetadata":Ljava/lang/String;
    nop

    .line 145
    invoke-virtual {v4}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v7

    .line 144
    invoke-static {v7, v6, v1, v2, v3}, Landroid/content/pm/dex/DexMetadataHelper;->validateDexMetadataFile(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    .line 146
    .local v7, "result":Landroid/content/pm/parsing/result/ParseResult;
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v8

    if-nez v8, :cond_34

    .line 150
    .end local v6    # "dexMetadata":Ljava/lang/String;
    .end local v7    # "result":Landroid/content/pm/parsing/result/ParseResult;
    goto :goto_18

    .line 147
    .restart local v6    # "dexMetadata":Ljava/lang/String;
    .restart local v7    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_34
    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    .line 148
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v8

    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v10

    invoke-direct {v5, v8, v9, v10}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 151
    .end local v6    # "dexMetadata":Ljava/lang/String;
    .end local v7    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_46
    return-void
.end method
