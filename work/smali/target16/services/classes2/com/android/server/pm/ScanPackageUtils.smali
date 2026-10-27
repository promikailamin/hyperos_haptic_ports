.class public abstract Lcom/android/server/pm/ScanPackageUtils;
.super Ljava/lang/Object;
.source "ScanPackageUtils.java"


# direct methods
.method public static adjustScanFlagsWithPackageSetting(ILcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Landroid/os/UserHandle;)I
    .registers 6

    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_f

    if-nez p2, :cond_f

    if-eqz p1, :cond_f

    .line 565
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_f

    move-object p2, p1

    :cond_f
    if-eqz p2, :cond_58

    const/high16 v0, 0x10000

    or-int/2addr v0, p0

    .line 571
    invoke-virtual {p2}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1f

    const/high16 v0, 0x30000

    or-int/2addr v0, p0

    .line 575
    :cond_1f
    invoke-virtual {p2}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p0

    const/high16 v1, 0x20000

    and-int/2addr p0, v1

    const/high16 v1, 0x40000

    if-eqz p0, :cond_2b

    or-int/2addr v0, v1

    .line 579
    :cond_2b
    invoke-virtual {p2}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p0

    and-int/2addr p0, v1

    const/high16 v1, 0x80000

    if-eqz p0, :cond_35

    or-int/2addr v0, v1

    .line 583
    :cond_35
    invoke-virtual {p2}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p0

    and-int/2addr p0, v1

    if-eqz p0, :cond_3f

    const/high16 p0, 0x100000

    or-int/2addr v0, p0

    .line 587
    :cond_3f
    invoke-virtual {p2}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p0

    const/high16 v1, 0x200000

    and-int/2addr p0, v1

    if-eqz p0, :cond_4b

    or-int p0, v0, v1

    goto :goto_4c

    :cond_4b
    move p0, v0

    .line 591
    :goto_4c
    invoke-virtual {p2}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p2, v0

    if-eqz p2, :cond_58

    const/high16 p2, 0x400000

    or-int/2addr p0, p2

    :cond_58
    if-eqz p1, :cond_74

    if-nez p3, :cond_5e

    const/4 p2, 0x0

    goto :goto_62

    .line 597
    :cond_5e
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 598
    :goto_62
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result p3

    if-eqz p3, :cond_6a

    or-int/lit16 p0, p0, 0x2000

    .line 601
    :cond_6a
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->getVirtualPreload(I)Z

    move-result p1

    if-eqz p1, :cond_74

    const p1, 0x8000

    or-int/2addr p0, p1

    :cond_74
    return p0
.end method

.method public static apkHasCode(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 827
    :try_start_2
    new-instance v2, Landroid/util/jar/StrictJarFile;

    invoke-direct {v2, p0, v0, v0}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_20
    .catchall {:try_start_2 .. :try_end_7} :catchall_19

    .line 829
    :try_start_7
    const-string p0, "classes.dex"

    invoke-virtual {v2, p0}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_d} :catch_17
    .catchall {:try_start_7 .. :try_end_d} :catchall_14

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    .line 834
    :cond_10
    :try_start_10
    invoke-virtual {v2}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_13

    :catch_13
    return v0

    :catchall_14
    move-exception p0

    move-object v1, v2

    goto :goto_1a

    :catch_17
    move-object v1, v2

    goto :goto_20

    :catchall_19
    move-exception p0

    :goto_1a
    if-eqz v1, :cond_1f

    :try_start_1c
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_1f

    .line 838
    :catch_1f
    :cond_1f
    throw p0

    :catch_20
    :goto_20
    if-eqz v1, :cond_25

    .line 834
    :try_start_22
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_25

    :catch_25
    :cond_25
    return v0
.end method

.method public static applyAdjustedAbiToSharedUser(Lcom/android/server/pm/SharedUserSetting;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)Ljava/util/List;
    .registers 8

    if-eqz p1, :cond_5

    .line 990
    invoke-interface {p1, p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 994
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->getPackageSettings()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 995
    :goto_b
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_59

    .line 996
    invoke-virtual {p0, v1}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    if-eqz p1, :cond_27

    .line 998
    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    .line 999
    :cond_27
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2e

    goto :goto_56

    .line 1003
    :cond_2e
    invoke-virtual {v2, p2}, Lcom/android/server/pm/PackageSetting;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 1004
    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1005
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    if-eqz v3, :cond_56

    .line 1007
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v3

    .line 1006
    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_56

    if-nez v0, :cond_4f

    .line 1016
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1018
    :cond_4f
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_56
    :goto_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_59
    return-object v0
.end method

.method public static applyPolicy(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ILcom/android/server/pm/pkg/AndroidPackage;Z)V
    .registers 9

    const/high16 v0, 0x10000

    and-int/2addr v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    .line 923
    invoke-interface {p0, v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSystem(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 926
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isDirectBootAware()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 927
    invoke-interface {p0, v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setAllComponentsDirectBootAware(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 929
    :cond_13
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->compressedFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 930
    invoke-interface {p0, v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setStub(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    :cond_20
    move v0, v2

    goto :goto_3a

    .line 935
    :cond_22
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->clearProtectedBroadcasts()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    .line 937
    invoke-interface {v0, v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setCoreApp(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    .line 939
    invoke-interface {v0, v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPersistent(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    .line 940
    invoke-interface {v0, v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    .line 941
    invoke-interface {v0, v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setDirectBootAware(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    .line 943
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->capPermissionPriorities()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move v0, p3

    :goto_3a
    const/high16 v3, 0x20000

    and-int/2addr v3, p1

    if-nez v3, :cond_42

    .line 947
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->markNotActivitiesAsNotExportedIfSingleUser()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    :cond_42
    const/high16 v4, 0x4000000

    and-int/2addr v4, p1

    if-eqz v4, :cond_49

    move v4, v2

    goto :goto_4a

    :cond_49
    move v4, v1

    .line 950
    :goto_4a
    invoke-interface {p0, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setApex(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    if-eqz v3, :cond_51

    move v3, v2

    goto :goto_52

    :cond_51
    move v3, v1

    .line 952
    :goto_52
    invoke-interface {p0, v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrivileged(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v3

    const/high16 v4, 0x40000

    and-int/2addr v4, p1

    if-eqz v4, :cond_5d

    move v4, v2

    goto :goto_5e

    :cond_5d
    move v4, v1

    .line 953
    :goto_5e
    invoke-interface {v3, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setOem(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v3

    const/high16 v4, 0x80000

    and-int/2addr v4, p1

    if-eqz v4, :cond_69

    move v4, v2

    goto :goto_6a

    :cond_69
    move v4, v1

    .line 954
    :goto_6a
    invoke-interface {v3, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setVendor(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v3

    const/high16 v4, 0x100000

    and-int/2addr v4, p1

    if-eqz v4, :cond_75

    move v4, v2

    goto :goto_76

    :cond_75
    move v4, v1

    .line 955
    :goto_76
    invoke-interface {v3, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setProduct(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v3

    const/high16 v4, 0x200000

    and-int/2addr v4, p1

    if-eqz v4, :cond_81

    move v4, v2

    goto :goto_82

    :cond_81
    move v4, v1

    .line 956
    :goto_82
    invoke-interface {v3, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSystemExt(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v3

    const/high16 v4, 0x400000

    and-int/2addr p1, v4

    if-eqz p1, :cond_8d

    move p1, v2

    goto :goto_8e

    :cond_8d
    move p1, v1

    .line 957
    :goto_8e
    invoke-interface {v3, p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setOdm(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 960
    const-string p1, "android"

    .line 961
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ad

    if-eqz p2, :cond_ae

    .line 963
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p1

    .line 964
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    .line 962
    invoke-static {p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatures(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I

    move-result p1

    if-nez p1, :cond_ae

    :cond_ad
    move v1, v2

    .line 960
    :cond_ae
    invoke-interface {p0, v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSignedWithPlatformKey(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    if-nez v0, :cond_ba

    .line 970
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->clearOriginalPackages()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object p1

    .line 971
    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->clearAdoptPermissions()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 974
    :cond_ba
    invoke-static {p0, v0, p3}, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->modifySharedLibraries(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ZZ)V

    return-void
.end method

.method public static assertCodePolicy(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .registers 7

    .line 618
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isDeclaredHavingCode()Z

    move-result v0

    .line 619
    const-string v1, " code is missing"

    const-string v2, "Package "

    const/4 v3, -0x2

    if-eqz v0, :cond_32

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/ScanPackageUtils;->apkHasCode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_32

    .line 620
    :cond_16
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v3, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 624
    :cond_32
    :goto_32
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c

    const/4 v0, 0x0

    .line 625
    :goto_3d
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-ge v0, v4, :cond_7c

    .line 627
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitFlags()[I

    move-result-object v4

    aget v4, v4, v0

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_79

    .line 628
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-static {v4}, Lcom/android/server/pm/ScanPackageUtils;->apkHasCode(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5b

    goto :goto_79

    .line 629
    :cond_5b
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, v3, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v4

    :cond_79
    :goto_79
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    :cond_7c
    return-void
.end method

.method public static assertMinSignatureSchemeIsValid(Lcom/android/server/pm/pkg/AndroidPackage;I)V
    .registers 5

    .line 779
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result p1

    .line 778
    invoke-static {p1}, Landroid/util/apk/ApkSignatureVerifier;->getMinimumSignatureSchemeVersionForTargetSdk(I)I

    move-result p1

    .line 780
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result v0

    if-lt v0, p1, :cond_13

    return-void

    .line 782
    :cond_13
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No signature found in package of version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " or newer for package "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, -0x67

    invoke-direct {v0, p1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static assertPackageProcesses(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V
    .registers 7

    if-nez p1, :cond_3

    goto :goto_60

    .line 762
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_60

    .line 763
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    .line 764
    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 765
    :cond_1e
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t install because "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getClassName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\'s process attribute "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getProcessName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " (in package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") is not included in the <processes> list"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p2, -0x7a

    invoke-direct {p1, p2, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_60
    :goto_60
    return-void
.end method

.method public static assertProcessesAreValid(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .registers 4

    .line 739
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProcesses()Ljava/util/Map;

    move-result-object v0

    .line 740
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6a

    .line 741
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 749
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v1

    const-string v2, "activity"

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/pm/ScanPackageUtils;->assertPackageProcesses(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    .line 750
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "service"

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/pm/ScanPackageUtils;->assertPackageProcesses(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    .line 751
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "receiver"

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/pm/ScanPackageUtils;->assertPackageProcesses(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    .line 752
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "provider"

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/pm/ScanPackageUtils;->assertPackageProcesses(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    return-void

    .line 742
    :cond_3c
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t install because application tag\'s process attribute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (in package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") is not included in the <processes> list"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, -0x7a

    invoke-direct {v0, v1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_6a
    return-void
.end method

.method public static assertStaticSharedLibraryIsValid(Lcom/android/server/pm/pkg/AndroidPackage;I)V
    .registers 4

    .line 639
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_f2

    and-int/lit16 p1, p1, 0x2000

    if-nez p1, :cond_e9

    .line 654
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getOriginalPackages()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_e0

    .line 661
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_d7

    .line 668
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_ce

    .line 675
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c5

    .line 682
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_bc

    .line 689
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b3

    .line 696
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_aa

    .line 703
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissionGroups()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a1

    .line 710
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_98

    .line 717
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8f

    .line 724
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProtectedBroadcasts()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_86

    .line 731
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_7d

    return-void

    .line 732
    :cond_7d
    const-string p0, "Static shared libs cannot be overlay targets"

    const/16 p1, -0x23

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    .line 725
    :cond_86
    const-string p0, "Static shared libs cannot declare protected broadcasts"

    const/16 p1, -0x22

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    .line 718
    :cond_8f
    const-string p0, "Static shared libs cannot declare permissions"

    const/16 p1, -0x21

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    .line 711
    :cond_98
    const-string p0, "Static shared libs cannot declare features"

    const/16 p1, -0x20

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    .line 704
    :cond_a1
    const-string p0, "Static shared libs cannot declare permission groups"

    const/16 p1, -0x1f

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    .line 697
    :cond_aa
    const-string p0, "Static shared libs cannot declare broadcast receivers"

    const/16 p1, -0x1e

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    .line 690
    :cond_b3
    const-string p0, "Static shared libs cannot declare content providers"

    const/16 p1, -0x1d

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    .line 683
    :cond_bc
    const-string p0, "Static shared libs cannot declare services"

    const/16 p1, -0x1c

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    .line 676
    :cond_c5
    const-string p0, "Static shared libs cannot declare activities"

    const/16 p1, -0x1b

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    .line 669
    :cond_ce
    const-string p0, "Packages declaring static-shared libs cannot declare shared users"

    const/16 p1, -0x1a

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    .line 662
    :cond_d7
    const-string p0, "Packages declaring static-shared libs cannot declare dynamic libs"

    const/16 p1, -0x19

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    .line 655
    :cond_e0
    const-string p0, "Packages declaring static-shared libs cannot be renamed"

    const/16 p1, -0x18

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    .line 647
    :cond_e9
    const-string p0, "Packages declaring static-shared libs cannot be instant apps"

    const/16 p1, -0x17

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    .line 640
    :cond_f2
    const-string p0, "Packages declaring static-shared libs must target O SDK or higher"

    const/16 p1, -0x16

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0
.end method

.method public static collectCertificatesLI(Lcom/android/server/pm/PackageSetting;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Lcom/android/server/pm/Settings$VersionInfo;ZZZ)V
    .registers 10

    if-eqz p5, :cond_10

    .line 1033
    new-instance p5, Ljava/io/File;

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    goto :goto_14

    .line 1034
    :cond_10
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->getLastModifiedTime(Lcom/android/server/pm/pkg/AndroidPackage;)J

    move-result-wide v0

    .line 1035
    :goto_14
    const-string p5, "PackageManager"

    if-eqz p0, :cond_86

    if-nez p3, :cond_86

    .line 1036
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 1037
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getLastModifiedTime()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_86

    .line 1038
    invoke-static {p2}, Lcom/android/server/pm/ReconcilePackageUtils;->isCompatSignatureUpdateNeeded(Lcom/android/server/pm/Settings$VersionInfo;)Z

    move-result v0

    if-nez v0, :cond_86

    .line 1039
    invoke-static {p2}, Lcom/android/server/pm/ReconcilePackageUtils;->isRecoverSignatureUpdateNeeded(Lcom/android/server/pm/Settings$VersionInfo;)Z

    move-result p2

    if-nez p2, :cond_86

    .line 1041
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p2

    if-eqz p2, :cond_68

    .line 1042
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p2

    array-length p2, p2

    if-eqz p2, :cond_68

    .line 1043
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result p2

    if-eqz p2, :cond_68

    .line 1047
    new-instance p2, Landroid/content/pm/SigningDetails;

    .line 1048
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    invoke-direct {p2, p0}, Landroid/content/pm/SigningDetails;-><init>(Landroid/content/pm/SigningDetails;)V

    .line 1047
    invoke-interface {p1, p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    return-void

    .line 1052
    :cond_68
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "PackageSetting for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is missing signatures.  Collecting certs again to recover them."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    .line 1055
    :cond_86
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " changed; collecting certs"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_9c

    .line 1056
    const-string p2, " (forced)"

    goto :goto_9e

    :cond_9c
    const-string p2, ""

    :goto_9e
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1055
    invoke-static {p5, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a8
    const-wide/32 p2, 0x40000

    .line 1060
    :try_start_ab
    const-string p0, "collectCertificates"

    invoke-static {p2, p3, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1061
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object p0

    .line 1062
    invoke-static {p0, p1, p4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 1064
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p4

    if-nez p4, :cond_cd

    .line 1068
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/SigningDetails;

    invoke-interface {p1, p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    :try_end_c7
    .catchall {:try_start_ab .. :try_end_c7} :catchall_cb

    .line 1070
    invoke-static {p2, p3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_cb
    move-exception p0

    goto :goto_df

    .line 1065
    :cond_cd
    :try_start_cd
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    .line 1066
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result p4

    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {p1, p4, p5, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_df
    .catchall {:try_start_cd .. :try_end_df} :catchall_cb

    .line 1070
    :goto_df
    invoke-static {p2, p3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1071
    throw p0
.end method

.method public static configurePackageComponents(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .registers 5

    .line 849
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 850
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getComponentsEnabledStates(Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v0

    if-nez v0, :cond_10

    goto/16 :goto_c0

    .line 855
    :cond_10
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1a
    if-ltz v1, :cond_3c

    .line 856
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 857
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_39

    .line 859
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setEnabled(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    :cond_39
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 863
    :cond_3c
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_46
    if-ltz v1, :cond_68

    .line 864
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 865
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_65

    .line 867
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setEnabled(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    :cond_65
    add-int/lit8 v1, v1, -0x1

    goto :goto_46

    .line 871
    :cond_68
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_72
    if-ltz v1, :cond_94

    .line 872
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 873
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_91

    .line 875
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setEnabled(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    :cond_91
    add-int/lit8 v1, v1, -0x1

    goto :goto_72

    .line 879
    :cond_94
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_9e
    if-ltz v1, :cond_c0

    .line 880
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedService;

    .line 881
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedService;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_bd

    .line 883
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setEnabled(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    :cond_bd
    add-int/lit8 v1, v1, -0x1

    goto :goto_9e

    :cond_c0
    :goto_c0
    return-void
.end method

.method public static enableAlignmentChecks(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Landroid/content/Context;Ljava/lang/String;ZZI)Z
    .registers 10

    const/high16 v0, 0x4000000

    and-int/2addr v0, p5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    :goto_a
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_10

    move p5, v1

    goto :goto_11

    :cond_10
    move p5, v2

    .line 1107
    :goto_11
    sget-object v3, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v3, v3

    if-eqz v3, :cond_4c

    if-nez p3, :cond_4c

    if-nez v0, :cond_4c

    if-nez p4, :cond_4c

    if-nez p5, :cond_1f

    goto :goto_4c

    .line 1115
    :cond_1f
    const-string p3, "PackageManager"

    if-nez p1, :cond_29

    .line 1116
    const-string p0, "Provided context is null!"

    invoke-static {p3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1120
    :cond_29
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-nez p1, :cond_35

    .line 1122
    const-string p0, "Content resolver not available!"

    invoke-static {p3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1126
    :cond_35
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isDebuggable()Z

    move-result p0

    if-nez p0, :cond_3c

    return v2

    .line 1130
    :cond_3c
    invoke-static {p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->isInstalledByAdb(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_43

    return v2

    .line 1134
    :cond_43
    const-string p0, "development_settings_enabled"

    invoke-static {p1, p0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_4c

    return v1

    :cond_4c
    :goto_4c
    return v2
.end method

.method public static ensurePackageRenamed(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V
    .registers 3

    .line 814
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getOriginalPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 815
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_18

    .line 818
    :cond_15
    invoke-interface {p0, p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPackageName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    :cond_18
    :goto_18
    return-void
.end method

.method public static getAppLib32InstallDir()Ljava/io/File;
    .registers 3

    .line 1141
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "app-lib"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getRealPackageName(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    .line 795
    invoke-static {p0, p1}, Lcom/android/server/pm/ScanPackageUtils;->isPackageRenamed(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 796
    invoke-static {p0, p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRealPackageOrNull(Lcom/android/server/pm/pkg/AndroidPackage;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getVendorPartitionVersion()I
    .registers 2

    .line 889
    const-string/jumbo v0, "ro.vndk.version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 890
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 892
    :try_start_d
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_11} :catch_12

    return v0

    .line 894
    :catch_12
    sget-object v1, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/16 v0, 0x2710

    return v0

    :cond_1d
    const/16 v0, 0x1c

    return v0
.end method

.method public static isPackageRenamed(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z
    .registers 2

    .line 804
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getOriginalPackages()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static scanPackageOnly(Lcom/android/server/pm/ScanRequest;Lcom/android/server/pm/PackageManagerServiceInjector;ZJ)Lcom/android/server/pm/ScanResult;
    .registers 52
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p3

    .line 130
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getAbiHelper()Lcom/android/server/pm/PackageAbiHelper;

    move-result-object v4

    .line 131
    iget-object v5, v1, Lcom/android/server/pm/ScanRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 132
    iget-object v0, v1, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 133
    iget-object v7, v1, Lcom/android/server/pm/ScanRequest;->mDisabledPkgSetting:Lcom/android/server/pm/PackageSetting;

    move-object v8, v7

    .line 134
    iget-object v7, v1, Lcom/android/server/pm/ScanRequest;->mOriginalPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 135
    iget v6, v1, Lcom/android/server/pm/ScanRequest;->mParseFlags:I

    .line 136
    iget v9, v1, Lcom/android/server/pm/ScanRequest;->mScanFlags:I

    .line 137
    iget-object v10, v1, Lcom/android/server/pm/ScanRequest;->mRealPkgName:Ljava/lang/String;

    move-object v11, v8

    .line 138
    iget-object v8, v1, Lcom/android/server/pm/ScanRequest;->mOldSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    move-object v12, v10

    .line 139
    iget-object v10, v1, Lcom/android/server/pm/ScanRequest;->mSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    .line 140
    iget-object v13, v1, Lcom/android/server/pm/ScanRequest;->mUser:Landroid/os/UserHandle;

    .line 141
    iget-boolean v14, v1, Lcom/android/server/pm/ScanRequest;->mIsPlatformPackage:Z

    move-object v15, v11

    .line 150
    new-instance v11, Ljava/io/File;

    move-object/from16 v16, v0

    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    and-int/lit16 v0, v9, 0x1000

    const/16 v34, 0x0

    move/from16 v17, v0

    if-eqz v17, :cond_38

    const/16 v17, 0x1

    goto :goto_3a

    :cond_38
    move/from16 v17, v34

    :goto_3a
    const/high16 v18, 0x4000000

    and-int v18, v9, v18

    if-eqz v18, :cond_43

    const/16 v35, 0x1

    goto :goto_45

    :cond_43
    move/from16 v35, v34

    :goto_45
    if-nez v17, :cond_6f

    if-eqz v16, :cond_59

    .line 165
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v18

    if-eqz v18, :cond_60

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isStub()Z

    move-result v18

    if-eqz v18, :cond_60

    :cond_59
    const/16 v37, 0x1

    :goto_5b
    const/16 v38, 0x0

    const/16 v39, 0x0

    goto :goto_72

    .line 168
    :cond_60
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v18

    .line 169
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v19

    move/from16 v37, v17

    move-object/from16 v38, v18

    move-object/from16 v39, v19

    goto :goto_72

    :cond_6f
    move/from16 v37, v17

    goto :goto_5b

    .line 178
    :goto_72
    const-string v0, " to "

    move-object/from16 v41, v4

    if-eqz v16, :cond_c2

    if-eq v8, v10, :cond_c2

    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v6

    const-string v6, "Package "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " shared user changed from "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string v6, "<nothing>"

    if-eqz v8, :cond_9b

    move-object/from16 v18, v6

    .line 182
    iget-object v6, v8, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    goto :goto_9d

    :cond_9b
    move-object/from16 v18, v6

    :goto_9d
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_a8

    .line 184
    iget-object v6, v10, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    goto :goto_aa

    :cond_a8
    move-object/from16 v6, v18

    :goto_aa
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; replacing with new"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x5

    .line 179
    invoke-static {v6, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 188
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/PackageSetting;->isPendingRestore()Z

    move-result v4

    move/from16 v42, v4

    const/4 v4, 0x0

    goto :goto_c8

    :cond_c2
    move/from16 v17, v6

    move-object/from16 v4, v16

    move/from16 v42, v34

    .line 193
    :goto_c8
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_e8

    .line 194
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    move-object/from16 v16, v7

    .line 195
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v25, v6

    goto :goto_ec

    :cond_e8
    move-object/from16 v16, v7

    const/16 v25, 0x0

    .line 199
    :goto_ec
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_10a

    .line 200
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    .line 201
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v28, v6

    goto :goto_10c

    :cond_10a
    const/16 v28, 0x0

    .line 204
    :goto_10c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDomainVerificationManagerInternal()Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->generateNewId()Ljava/util/UUID;

    move-result-object v31

    if-nez v4, :cond_119

    const/16 v43, 0x1

    goto :goto_11b

    :cond_119
    move/from16 v43, v34

    :goto_11b
    if-eqz v43, :cond_1b3

    and-int/lit16 v4, v9, 0x2000

    if-eqz v4, :cond_124

    const/16 v21, 0x1

    goto :goto_126

    :cond_124
    move/from16 v21, v34

    :goto_126
    const v4, 0x8000

    and-int/2addr v4, v9

    if-eqz v4, :cond_12f

    const/16 v22, 0x1

    goto :goto_131

    :cond_12f
    move/from16 v22, v34

    :goto_131
    const/high16 v4, 0x8000000

    and-int/2addr v4, v9

    if-eqz v4, :cond_13c

    const/16 v23, 0x1

    :goto_138
    move/from16 v6, v17

    const/4 v4, 0x0

    goto :goto_13f

    :cond_13c
    move/from16 v23, v34

    goto :goto_138

    .line 218
    :goto_13f
    invoke-static {v5, v4}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v17

    .line 219
    invoke-static {v5, v4}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v18

    move v7, v6

    .line 222
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move v8, v9

    move-object v9, v12

    .line 224
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getNativeLibraryRootDir()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v19, v13

    .line 225
    invoke-static {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v13

    move/from16 v20, v14

    .line 226
    invoke-static {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawSecondaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v14

    move/from16 v24, v7

    move/from16 v26, v8

    move-object v8, v15

    move-object/from16 v7, v16

    .line 227
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    move-result-wide v15

    move/from16 v27, v24

    .line 229
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v24

    move/from16 v29, v26

    .line 230
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v26

    move/from16 v30, v27

    .line 231
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesSdkLibrariesOptional()[Z

    move-result-object v27

    move/from16 v32, v29

    .line 232
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesStaticLibrariesVersions()[J

    move-result-object v29

    move/from16 v33, v30

    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getMimeGroups()Ljava/util/Set;

    move-result-object v30

    move/from16 v40, v32

    .line 234
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    move-result v32

    move/from16 v44, v33

    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getRestrictUpdateHash()[B

    move-result-object v33

    move/from16 v45, v20

    const/16 v20, 0x1

    move/from16 v46, v40

    move-object/from16 v40, v0

    move/from16 v0, v46

    .line 222
    invoke-static/range {v6 .. v33}, Lcom/android/server/pm/Settings;->createNewSetting(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILandroid/os/UserHandle;ZZZZLcom/android/server/pm/UserManagerService;[Ljava/lang/String;[J[Z[Ljava/lang/String;[JLjava/util/Set;Ljava/util/UUID;I[B)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    move-object/from16 v27, v7

    move-object v11, v8

    move-object v9, v10

    move-object/from16 v28, v19

    if-eqz v42, :cond_1ad

    const/4 v7, 0x1

    .line 238
    invoke-virtual {v6, v7}, Lcom/android/server/pm/PackageSetting;->setPendingRestore(Z)Lcom/android/server/pm/PackageSetting;

    :cond_1ad
    move-object/from16 v29, v4

    move-object v8, v11

    :goto_1b0
    move-object v10, v6

    goto/16 :goto_212

    :cond_1b3
    move-object/from16 v40, v0

    move v0, v9

    move-object v9, v10

    move-object v10, v11

    move/from16 v45, v14

    move-object v11, v15

    move-object/from16 v27, v16

    move/from16 v44, v17

    move-object/from16 v17, v25

    move-object/from16 v20, v28

    const/16 v29, 0x0

    move-object/from16 v28, v13

    .line 242
    new-instance v6, Lcom/android/server/pm/PackageSetting;

    invoke-direct {v6, v4}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;)V

    .line 243
    invoke-virtual {v6, v5}, Lcom/android/server/pm/PackageSetting;->setPkg(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/PackageSetting;

    and-int/lit16 v4, v0, 0x400

    if-eqz v4, :cond_1d7

    const/16 v26, 0x1

    :goto_1d5
    move-object v15, v11

    goto :goto_1da

    :cond_1d7
    move/from16 v26, v34

    goto :goto_1d5

    .line 252
    :goto_1da
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getNativeLibraryDir()Ljava/lang/String;

    move-result-object v11

    .line 253
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v12

    .line 254
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v13

    .line 255
    invoke-static {v5, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v14

    move-object v7, v15

    .line 256
    invoke-static {v5, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v15

    .line 257
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v16

    .line 258
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v18

    .line 259
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesSdkLibrariesOptional()[Z

    move-result-object v19

    .line 260
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesStaticLibrariesVersions()[J

    move-result-object v21

    .line 261
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getMimeGroups()Ljava/util/Set;

    move-result-object v22

    .line 262
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    move-result v24

    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getRestrictUpdateHash()[B

    move-result-object v25

    move-object/from16 v23, v31

    .line 251
    invoke-static/range {v6 .. v26}, Lcom/android/server/pm/Settings;->updatePackageSetting(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/pm/UserManagerService;[Ljava/lang/String;[J[Z[Ljava/lang/String;[JLjava/util/Set;Ljava/util/UUID;I[BZ)V

    move-object v8, v7

    goto :goto_1b0

    :goto_212
    if-eqz v43, :cond_242

    if-eqz v27, :cond_242

    .line 271
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPackageName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 274
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New package "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " renamed to replace old package "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x5

    .line 276
    invoke-static {v6, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :cond_242
    if-nez v28, :cond_247

    move/from16 v11, v34

    goto :goto_24c

    .line 279
    :cond_247
    invoke-virtual/range {v28 .. v28}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    move v11, v4

    :goto_24c
    if-nez v43, :cond_265

    and-int/lit16 v4, v0, 0x2000

    if-eqz v4, :cond_254

    const/4 v4, 0x1

    goto :goto_256

    :cond_254
    move/from16 v4, v34

    :goto_256
    and-int/lit16 v6, v0, 0x4000

    if-eqz v6, :cond_25e

    const/4 v6, 0x1

    :goto_25b
    move-object/from16 v7, p1

    goto :goto_261

    :cond_25e
    move/from16 v6, v34

    goto :goto_25b

    .line 284
    :goto_261
    invoke-static {v7, v10, v11, v4, v6}, Lcom/android/server/pm/ScanPackageUtils;->setInstantAppForUser(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageSetting;IZZ)V

    goto :goto_267

    :cond_265
    move-object/from16 v7, p1

    :goto_267
    if-nez v8, :cond_275

    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_27d

    if-eqz v10, :cond_27d

    .line 289
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v4

    if-eqz v4, :cond_27d

    .line 290
    :cond_275
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUpdatedSystemApp(Z)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 293
    :cond_27d
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v4

    .line 294
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v6

    .line 293
    invoke-static {v10, v5, v9, v6}, Lcom/android/server/pm/SELinuxMMAC;->getSeInfo(Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/SharedUserApi;Lcom/android/server/compat/PlatformCompat;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setSeInfo(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 296
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v4

    if-eqz v4, :cond_295

    .line 297
    invoke-static {v5}, Lcom/android/server/pm/ScanPackageUtils;->configurePackageComponents(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 300
    :cond_295
    iget-object v4, v1, Lcom/android/server/pm/ScanRequest;->mCpuAbiOverride:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->deriveAbiOverride(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 301
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v6

    .line 302
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->isUpdatedSystemApp()Z

    move-result v7

    .line 304
    invoke-static {}, Lcom/android/server/pm/ScanPackageUtils;->getAppLib32InstallDir()Ljava/io/File;

    move-result-object v9

    if-nez v35, :cond_339

    and-int/lit8 v4, v0, 0x4

    if-nez v4, :cond_304

    if-eqz v37, :cond_2ef

    .line 310
    const-string v4, "derivePackageAbi"

    const-wide/32 v12, 0x40000

    invoke-static {v12, v13, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v4, v41

    .line 314
    :try_start_2b9
    invoke-interface/range {v4 .. v9}, Lcom/android/server/pm/PackageAbiHelper;->derivePackageAbi(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/lang/String;Ljava/io/File;)Landroid/util/Pair;

    move-result-object v14

    .line 320
    iget-object v15, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-virtual {v15, v5}, Lcom/android/server/pm/PackageAbiHelper$Abis;->applyTo(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    .line 321
    iget-object v14, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    invoke-virtual {v14, v5}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->applyTo(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V
    :try_end_2cb
    .catchall {:try_start_2b9 .. :try_end_2cb} :catchall_2ea

    .line 323
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 330
    invoke-static {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v12

    if-eqz v6, :cond_320

    if-nez v7, :cond_320

    if-nez v12, :cond_320

    .line 333
    invoke-interface {v4, v5}, Lcom/android/server/pm/PackageAbiHelper;->getBundledAppAbis(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/PackageAbiHelper$Abis;

    move-result-object v12

    .line 335
    invoke-virtual {v12, v5}, Lcom/android/server/pm/PackageAbiHelper$Abis;->applyTo(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    .line 336
    invoke-virtual {v12, v10}, Lcom/android/server/pm/PackageAbiHelper$Abis;->applyTo(Lcom/android/server/pm/PackageSetting;)V

    .line 338
    invoke-interface {v4, v5, v6, v7, v9}, Lcom/android/server/pm/PackageAbiHelper;->deriveNativeLibraryPaths(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/io/File;)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v7

    .line 340
    invoke-virtual {v7, v5}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->applyTo(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    goto :goto_320

    :catchall_2ea
    move-exception v0

    .line 323
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 324
    throw v0

    :cond_2ef
    move-object/from16 v12, v38

    move-object/from16 v4, v41

    .line 346
    invoke-interface {v5, v12}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v12

    move-object/from16 v13, v39

    .line 347
    invoke-interface {v12, v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 350
    invoke-interface {v4, v5, v6, v7, v9}, Lcom/android/server/pm/PackageAbiHelper;->deriveNativeLibraryPaths(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/io/File;)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v7

    .line 352
    invoke-virtual {v7, v5}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->applyTo(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    goto :goto_320

    :cond_304
    move-object/from16 v4, v41

    and-int/lit16 v12, v0, 0x100

    if-eqz v12, :cond_319

    .line 368
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v12}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v12

    .line 369
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 377
    :cond_319
    invoke-interface {v4, v5, v6, v7, v9}, Lcom/android/server/pm/PackageAbiHelper;->deriveNativeLibraryPaths(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/io/File;)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v7

    .line 379
    invoke-virtual {v7, v5}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->applyTo(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    :cond_320
    :goto_320
    if-eqz v45, :cond_33b

    .line 387
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->is64Bit()Z

    move-result v7

    if-eqz v7, :cond_331

    .line 388
    sget-object v7, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v7, v7, v34

    goto :goto_335

    :cond_331
    sget-object v7, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v7, v7, v34

    .line 387
    :goto_335
    invoke-interface {v5, v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    goto :goto_33b

    :cond_339
    move-object/from16 v4, v41

    :cond_33b
    :goto_33b
    and-int/lit8 v7, v0, 0x1

    .line 396
    const-string v9, "PackageManager"

    if-nez v7, :cond_35f

    and-int/lit8 v7, v0, 0x4

    if-eqz v7, :cond_35f

    if-nez v8, :cond_35f

    .line 398
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignoring persisted ABI override for package "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 398
    invoke-static {v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_35f
    invoke-static {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Lcom/android/server/pm/PackageSetting;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    .line 404
    invoke-static {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawSecondaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/android/server/pm/PackageSetting;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    .line 405
    invoke-virtual {v7, v8}, Lcom/android/server/pm/PackageSetting;->setCpuAbiOverride(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 416
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getNativeLibraryRootDir()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Lcom/android/server/pm/PackageSetting;->setLegacyNativeLibraryPath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 425
    sget v7, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v7}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v7

    const-wide/16 v12, 0x4000

    cmp-long v7, v7, v12

    if-nez v7, :cond_387

    const/4 v7, 0x1

    goto :goto_389

    :cond_387
    move/from16 v7, v34

    :goto_389
    if-nez v43, :cond_38e

    .line 430
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->clearPageSizeAppCompatFlags()Lcom/android/server/pm/PackageSetting;

    :cond_38e
    if-nez v7, :cond_394

    .line 433
    iget-boolean v7, v1, Lcom/android/server/pm/ScanRequest;->mEnableAlignmentChecks:Z

    if-eqz v7, :cond_3e7

    .line 437
    :cond_394
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPageSizeAppCompatFlags()I

    move-result v7

    if-lez v7, :cond_3a1

    .line 439
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPageSizeAppCompatFlags()I

    move-result v7

    invoke-virtual {v10, v7}, Lcom/android/server/pm/PackageSetting;->setPageSizeAppCompatFlags(I)Lcom/android/server/pm/PackageSetting;

    .line 444
    :cond_3a1
    sget-object v7, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v7, v7

    if-lez v7, :cond_3e7

    if-nez v6, :cond_3e7

    if-nez v35, :cond_3e7

    if-nez v45, :cond_3e7

    .line 451
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getLegacyNativeLibraryPath()Ljava/lang/String;

    move-result-object v7

    .line 452
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isNativeLibraryRootRequiresIsa()Z

    move-result v8

    .line 453
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getCpuAbiOverride()Ljava/lang/String;

    move-result-object v12

    .line 449
    invoke-interface {v4, v5, v7, v8, v12}, Lcom/android/server/pm/PackageAbiHelper;->checkPackageAlignment(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;ZLjava/lang/String;)Lcom/android/internal/content/NativeLibraryHelper$AlignmentResult;

    move-result-object v4

    if-eqz v4, :cond_3cf

    .line 454
    iget-object v7, v4, Lcom/android/internal/content/NativeLibraryHelper$AlignmentResult;->unalignedLibraries:[Lcom/android/internal/content/LibraryAlignmentInfo;

    if-eqz v7, :cond_3cf

    iget v7, v4, Lcom/android/internal/content/NativeLibraryHelper$AlignmentResult;->flags:I

    if-ltz v7, :cond_3cf

    .line 456
    invoke-virtual {v10, v7}, Lcom/android/server/pm/PackageSetting;->setPageSizeAppCompatFlags(I)Lcom/android/server/pm/PackageSetting;

    .line 457
    iget-object v4, v4, Lcom/android/internal/content/NativeLibraryHelper$AlignmentResult;->unalignedLibraries:[Lcom/android/internal/content/LibraryAlignmentInfo;

    invoke-virtual {v10, v4}, Lcom/android/server/pm/PackageSetting;->setLibraryAlignmentInfo([Lcom/android/internal/content/LibraryAlignmentInfo;)Lcom/android/server/pm/PackageSetting;

    goto :goto_3e7

    .line 459
    :cond_3cf
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error occurred while checking alignment of package : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 459
    invoke-static {v9, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e7
    :goto_3e7
    if-eqz p2, :cond_3f7

    .line 465
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v4

    const-string v7, "android.permission.FACTORY_TEST"

    .line 466
    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f7

    const/4 v4, 0x1

    goto :goto_3f9

    :cond_3f7
    move/from16 v4, v34

    .line 465
    :goto_3f9
    invoke-interface {v5, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setFactoryTest(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    if-eqz v6, :cond_402

    const/4 v6, 0x1

    .line 469
    invoke-virtual {v10, v6}, Lcom/android/server/pm/PackageSetting;->setIsOrphaned(Z)Lcom/android/server/pm/PackageSetting;

    .line 473
    :cond_402
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isDebuggable()Z

    move-result v4

    invoke-virtual {v10, v4}, Lcom/android/server/pm/PackageSetting;->setDebuggable(Z)Lcom/android/server/pm/PackageSetting;

    .line 474
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getBaseRevisionCode()I

    move-result v4

    invoke-virtual {v10, v4}, Lcom/android/server/pm/PackageSetting;->setBaseRevisionCode(I)Lcom/android/server/pm/PackageSetting;

    .line 477
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->getLastModifiedTime(Lcom/android/server/pm/pkg/AndroidPackage;)J

    move-result-wide v6

    .line 479
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getUserStates()Landroid/util/SparseArray;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/pm/pkg/PackageStateUtils;->getEarliestFirstInstallTime(Landroid/util/SparseArray;)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v4, v2, v14

    if-eqz v4, :cond_436

    cmp-long v4, v12, v14

    if-nez v4, :cond_42e

    .line 482
    invoke-virtual {v10, v2, v3, v11}, Lcom/android/server/pm/PackageSetting;->setFirstInstallTime(JI)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 483
    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)Lcom/android/server/pm/PackageSetting;

    goto :goto_451

    :cond_42e
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_451

    .line 485
    invoke-virtual {v10, v2, v3}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)Lcom/android/server/pm/PackageSetting;

    goto :goto_451

    :cond_436
    cmp-long v0, v12, v14

    if-nez v0, :cond_442

    .line 489
    invoke-virtual {v10, v6, v7, v11}, Lcom/android/server/pm/PackageSetting;->setFirstInstallTime(JI)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 490
    invoke-virtual {v0, v6, v7}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)Lcom/android/server/pm/PackageSetting;

    goto :goto_451

    :cond_442
    and-int/lit8 v0, v44, 0x10

    if-eqz v0, :cond_451

    .line 492
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getLastModifiedTime()J

    move-result-wide v2

    cmp-long v0, v6, v2

    if-eqz v0, :cond_451

    .line 495
    invoke-virtual {v10, v6, v7}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)Lcom/android/server/pm/PackageSetting;

    .line 498
    :cond_451
    :goto_451
    invoke-virtual {v10, v6, v7}, Lcom/android/server/pm/PackageSetting;->setLastModifiedTime(J)Lcom/android/server/pm/PackageSetting;

    .line 500
    invoke-virtual {v10, v5}, Lcom/android/server/pm/PackageSetting;->setPkg(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 501
    invoke-static {v5, v10}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/SettingBase;->setFlags(I)Lcom/android/server/pm/SettingBase;

    move-result-object v0

    .line 502
    invoke-static {v5, v10}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/SettingBase;->setPrivateFlags(I)Lcom/android/server/pm/SettingBase;

    .line 503
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    move-result-wide v2

    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-eqz v0, :cond_47a

    .line 504
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    move-result-wide v2

    invoke-virtual {v10, v2, v3}, Lcom/android/server/pm/PackageSetting;->setLongVersionCode(J)Lcom/android/server/pm/PackageSetting;

    .line 507
    :cond_47a
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    .line 508
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4ca

    .line 509
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_49b

    const-string v3, " system"

    goto :goto_49d

    :cond_49b
    const-string v3, ""

    :goto_49d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " volume from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v40

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 509
    invoke-static {v9, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    invoke-virtual {v10, v0}, Lcom/android/server/pm/PackageSetting;->setVolumeUuid(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 516
    :cond_4ca
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isLeavingSharedUser()Z

    move-result v0

    invoke-virtual {v10, v0}, Lcom/android/server/pm/PackageSetting;->setLeavingSharedUser(Z)Lcom/android/server/pm/PackageSetting;

    .line 519
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4e0

    .line 520
    invoke-static {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->createSharedLibraryForSdk(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v4

    goto :goto_4e2

    :cond_4e0
    move-object/from16 v4, v29

    .line 523
    :goto_4e2
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f2

    .line 525
    invoke-static {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->createSharedLibraryForStatic(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v0

    move-object v6, v0

    goto :goto_4f4

    :cond_4f2
    move-object/from16 v6, v29

    .line 528
    :goto_4f4
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_529

    .line 529
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 530
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_513
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_527

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 532
    invoke-static {v5, v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->createSharedLibraryForDynamic(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v3

    .line 531
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_513

    :cond_527
    move-object v7, v0

    goto :goto_52b

    :cond_529
    move-object/from16 v7, v29

    .line 536
    :goto_52b
    new-instance v0, Lcom/android/server/pm/ScanResult;

    const/16 v36, 0x1

    xor-int/lit8 v3, v43, 0x1

    move-object v5, v4

    const/4 v4, -0x1

    move-object v2, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/ScanResult;-><init>(Lcom/android/server/pm/ScanRequest;Lcom/android/server/pm/PackageSetting;ZILandroid/content/pm/SharedLibraryInfo;Landroid/content/pm/SharedLibraryInfo;Ljava/util/List;)V

    return-object v0
.end method

.method public static setInstantAppForUser(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageSetting;IZZ)V
    .registers 10

    if-nez p3, :cond_5

    if-nez p4, :cond_5

    goto :goto_4a

    :cond_5
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_22

    if-eqz p3, :cond_16

    .line 1081
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result p0

    if-nez p0, :cond_16

    .line 1082
    invoke-virtual {p1, v2, p2}, Lcom/android/server/pm/PackageSetting;->setInstantApp(ZI)V

    return-void

    :cond_16
    if-eqz p4, :cond_4a

    .line 1083
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result p0

    if-eqz p0, :cond_4a

    .line 1084
    invoke-virtual {p1, v1, p2}, Lcom/android/server/pm/PackageSetting;->setInstantApp(ZI)V

    return-void

    .line 1087
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object p0

    array-length p2, p0

    move v0, v1

    :goto_2c
    if-ge v0, p2, :cond_4a

    aget v3, p0, v0

    if-eqz p3, :cond_3c

    .line 1088
    invoke-virtual {p1, v3}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v4

    if-nez v4, :cond_3c

    .line 1089
    invoke-virtual {p1, v2, v3}, Lcom/android/server/pm/PackageSetting;->setInstantApp(ZI)V

    goto :goto_47

    :cond_3c
    if-eqz p4, :cond_47

    .line 1090
    invoke-virtual {p1, v3}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 1091
    invoke-virtual {p1, v1, v3}, Lcom/android/server/pm/PackageSetting;->setInstantApp(ZI)V

    :cond_47
    :goto_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_4a
    :goto_4a
    return-void
.end method
