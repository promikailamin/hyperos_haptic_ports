.class final Lcom/android/server/pm/ScanPackageUtils;
.super Ljava/lang/Object;
.source "ScanPackageUtils.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustScanFlagsWithPackageSetting(ILcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Landroid/os/UserHandle;)I
    .registers 7
    .param p0, "scanFlags"    # I
    .param p1, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "disabledPkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 500
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_10

    if-nez p2, :cond_10

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 501
    move-object v0, p1

    goto :goto_11

    .line 502
    :cond_10
    move-object v0, p2

    :goto_11
    nop

    .line 503
    .local v0, "systemPkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_56

    .line 505
    const/high16 v1, 0x10000

    or-int/2addr p0, v1

    .line 506
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPrivateFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    const/high16 v2, 0x20000

    if-eqz v1, :cond_22

    .line 508
    or-int/2addr p0, v2

    .line 510
    :cond_22
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPrivateFlags()I

    move-result v1

    and-int/2addr v1, v2

    const/high16 v2, 0x40000

    if-eqz v1, :cond_2c

    .line 512
    or-int/2addr p0, v2

    .line 514
    :cond_2c
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPrivateFlags()I

    move-result v1

    and-int/2addr v1, v2

    const/high16 v2, 0x80000

    if-eqz v1, :cond_36

    .line 516
    or-int/2addr p0, v2

    .line 518
    :cond_36
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPrivateFlags()I

    move-result v1

    and-int/2addr v1, v2

    if-eqz v1, :cond_40

    .line 520
    const/high16 v1, 0x100000

    or-int/2addr p0, v1

    .line 522
    :cond_40
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPrivateFlags()I

    move-result v1

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-eqz v1, :cond_4a

    .line 524
    or-int/2addr p0, v2

    .line 526
    :cond_4a
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPrivateFlags()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-eqz v1, :cond_56

    .line 528
    const/high16 v1, 0x400000

    or-int/2addr p0, v1

    .line 531
    :cond_56
    if-eqz p1, :cond_72

    .line 532
    if-nez p3, :cond_5c

    const/4 v1, 0x0

    goto :goto_60

    :cond_5c
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 533
    .local v1, "userId":I
    :goto_60
    invoke-virtual {p1, v1}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 534
    or-int/lit16 p0, p0, 0x2000

    .line 536
    :cond_68
    invoke-virtual {p1, v1}, Lcom/android/server/pm/PackageSetting;->getVirtualPreload(I)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 537
    const v2, 0x8000

    or-int/2addr p0, v2

    .line 541
    .end local v1    # "userId":I
    :cond_72
    return p0
.end method

.method public static apkHasCode(Ljava/lang/String;)Z
    .registers 4
    .param p0, "fileName"    # Ljava/lang/String;

    .line 746
    const/4 v0, 0x0

    .line 748
    .local v0, "jarFile":Landroid/util/jar/StrictJarFile;
    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Landroid/util/jar/StrictJarFile;

    invoke-direct {v2, p0, v1, v1}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V

    move-object v0, v2

    .line 750
    const-string v2, "classes.dex"

    invoke-virtual {v0, v2}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_e} :catch_23
    .catchall {:try_start_2 .. :try_end_e} :catchall_18

    if-eqz v2, :cond_11

    const/4 v1, 0x1

    .line 754
    :cond_11
    nop

    .line 755
    :try_start_12
    invoke-virtual {v0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_16

    .line 758
    goto :goto_17

    .line 757
    :catch_16
    move-exception v2

    .line 750
    :goto_17
    return v1

    .line 753
    :catchall_18
    move-exception v1

    .line 754
    if-eqz v0, :cond_21

    .line 755
    :try_start_1b
    invoke-virtual {v0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_1f

    goto :goto_21

    .line 757
    :catch_1f
    move-exception v2

    goto :goto_22

    .line 758
    :cond_21
    :goto_21
    nop

    .line 759
    :goto_22
    throw v1

    .line 751
    :catch_23
    move-exception v2

    .line 754
    if-eqz v0, :cond_2c

    .line 755
    :try_start_26
    invoke-virtual {v0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_2c

    .line 757
    :catch_2a
    move-exception v2

    .line 759
    goto :goto_2d

    .line 758
    :cond_2c
    :goto_2c
    nop

    .line 760
    :goto_2d
    return v1
.end method

.method public static applyAdjustedAbiToSharedUser(Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .param p0, "sharedUserSetting"    # Lcom/android/server/pm/SharedUserSetting;
    .param p1, "scannedPackage"    # Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .param p2, "adjustedAbi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/SharedUserSetting;",
            "Lcom/android/server/pm/parsing/pkg/ParsedPackage;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 897
    if-eqz p1, :cond_5

    .line 898
    invoke-interface {p1, p2}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 900
    :cond_5
    const/4 v0, 0x0

    .line 901
    .local v0, "changedAbiCodePath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 902
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting;->getPackageSettings()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v1

    .line 903
    .local v1, "sharedUserPackageSettings":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<Lcom/android/server/pm/PackageSetting;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_5c

    .line 904
    invoke-virtual {v1, v2}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 905
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz p1, :cond_28

    .line 906
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_59

    .line 907
    :cond_28
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2f

    .line 908
    goto :goto_59

    .line 911
    :cond_2f
    invoke-virtual {v3, p2}, Lcom/android/server/pm/PackageSetting;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 912
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->onChanged()V

    .line 913
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    if-eqz v4, :cond_59

    .line 914
    nop

    .line 915
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v4

    .line 914
    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_59

    .line 923
    if-nez v0, :cond_52

    .line 924
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    .line 926
    :cond_52
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 903
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_59
    :goto_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 931
    .end local v2    # "i":I
    :cond_5c
    return-object v0
.end method

.method public static applyPolicy(Lcom/android/server/pm/parsing/pkg/ParsedPackage;ILcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .registers 8
    .param p0, "parsedPackage"    # Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .param p1, "scanFlags"    # I
    .param p2, "platformPkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "isUpdatedSystemApp"    # Z

    .line 833
    const/high16 v0, 0x10000

    and-int/2addr v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_21

    .line 834
    invoke-interface {p0, v1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setSystem(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 837
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->isDirectBootAware()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 838
    invoke-interface {p0, v1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setAllComponentsDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 840
    :cond_13
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->compressedFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 841
    invoke-interface {p0, v1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setStub(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    goto :goto_39

    .line 844
    :cond_21
    nop

    .line 846
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->clearProtectedBroadcasts()Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    .line 848
    invoke-interface {v0, v2}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setCoreApp(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    .line 850
    invoke-interface {v0, v2}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setPersistent(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    .line 851
    invoke-interface {v0, v2}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    .line 852
    invoke-interface {v0, v2}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    .line 854
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->capPermissionPriorities()Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 856
    :cond_39
    :goto_39
    const/high16 v0, 0x20000

    and-int v3, p1, v0

    if-nez v3, :cond_43

    .line 857
    nop

    .line 858
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->markNotActivitiesAsNotExportedIfSingleUser()Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 861
    :cond_43
    and-int/2addr v0, p1

    if-eqz v0, :cond_48

    move v0, v1

    goto :goto_49

    :cond_48
    move v0, v2

    :goto_49
    invoke-interface {p0, v0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setPrivileged(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    const/high16 v3, 0x40000

    and-int/2addr v3, p1

    if-eqz v3, :cond_54

    move v3, v1

    goto :goto_55

    :cond_54
    move v3, v2

    .line 862
    :goto_55
    invoke-interface {v0, v3}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setOem(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    const/high16 v3, 0x80000

    and-int/2addr v3, p1

    if-eqz v3, :cond_60

    move v3, v1

    goto :goto_61

    :cond_60
    move v3, v2

    .line 863
    :goto_61
    invoke-interface {v0, v3}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setVendor(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    const/high16 v3, 0x100000

    and-int/2addr v3, p1

    if-eqz v3, :cond_6c

    move v3, v1

    goto :goto_6d

    :cond_6c
    move v3, v2

    .line 864
    :goto_6d
    invoke-interface {v0, v3}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setProduct(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    const/high16 v3, 0x200000

    and-int/2addr v3, p1

    if-eqz v3, :cond_78

    move v3, v1

    goto :goto_79

    :cond_78
    move v3, v2

    .line 865
    :goto_79
    invoke-interface {v0, v3}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setSystemExt(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    const/high16 v3, 0x400000

    and-int/2addr v3, p1

    if-eqz v3, :cond_84

    move v3, v1

    goto :goto_85

    :cond_84
    move v3, v2

    .line 866
    :goto_85
    invoke-interface {v0, v3}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setOdm(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 869
    nop

    .line 870
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b0

    if-eqz p2, :cond_ae

    .line 872
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v0

    .line 873
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v3

    .line 871
    invoke-static {v0, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v0

    if-nez v0, :cond_ae

    goto :goto_b0

    :cond_ae
    move v1, v2

    goto :goto_b1

    :cond_b0
    :goto_b0
    nop

    .line 869
    :goto_b1
    invoke-interface {p0, v1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setSignedWithPlatformKey(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 877
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->isSystem()Z

    move-result v0

    if-nez v0, :cond_c1

    .line 879
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->clearOriginalPackages()Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    .line 880
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->clearAdoptPermissions()Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 883
    :cond_c1
    invoke-static {p0, p3}, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->modifySharedLibraries(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Z)V

    .line 884
    return-void
.end method

.method public static assertCodePolicy(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 9
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 553
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isHasCode()Z

    move-result v0

    .line 554
    .local v0, "shouldHaveCode":Z
    const-string v1, " code is missing"

    const-string v2, "Package "

    const/4 v3, -0x2

    if-eqz v0, :cond_35

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/pm/ScanPackageUtils;->apkHasCode(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    goto :goto_35

    .line 555
    :cond_16
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 556
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v3, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 559
    :cond_35
    :goto_35
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_88

    .line 560
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_40
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_88

    .line 561
    nop

    .line 562
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitFlags()[I

    move-result-object v5

    aget v5, v5, v4

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_54

    const/4 v5, 0x1

    goto :goto_55

    :cond_54
    const/4 v5, 0x0

    .line 563
    .local v5, "splitShouldHaveCode":Z
    :goto_55
    if-eqz v5, :cond_85

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-static {v6}, Lcom/android/server/pm/ScanPackageUtils;->apkHasCode(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_64

    goto :goto_85

    .line 564
    :cond_64
    new-instance v6, Lcom/android/server/pm/PackageManagerException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 565
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v4

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v3, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 560
    .end local v5    # "splitShouldHaveCode":Z
    :cond_85
    :goto_85
    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    .line 569
    .end local v4    # "i":I
    :cond_88
    return-void
.end method

.method public static assertMinSignatureSchemeIsValid(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    .registers 7
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "parseFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 698
    nop

    .line 700
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    .line 699
    invoke-static {v0}, Landroid/util/apk/ApkSignatureVerifier;->getMinimumSignatureSchemeVersionForTargetSdk(I)I

    move-result v0

    .line 701
    .local v0, "minSignatureSchemeVersion":I
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result v1

    if-lt v1, v0, :cond_14

    .line 707
    return-void

    .line 703
    :cond_14
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/16 v2, -0x67

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No signature found in package of version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " or newer for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 705
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private static assertPackageProcesses(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V
    .registers 10
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "compName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/server/pm/pkg/component/ParsedMainComponent;",
            ">(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/component/ParsedProcess;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 680
    .local p1, "components":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "procs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedProcess;>;"
    if-nez p1, :cond_3

    .line 681
    return-void

    .line 683
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_69

    .line 684
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedMainComponent;

    .line 685
    .local v1, "component":Lcom/android/server/pm/pkg/component/ParsedMainComponent;
    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 683
    .end local v1    # "component":Lcom/android/server/pm/pkg/component/ParsedMainComponent;
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 686
    .restart local v1    # "component":Lcom/android/server/pm/pkg/component/ParsedMainComponent;
    :cond_1e
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const/16 v3, -0x7a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t install because "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 688
    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'s process attribute "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 689
    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 690
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is not included in the <processes> list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 694
    .end local v0    # "i":I
    .end local v1    # "component":Lcom/android/server/pm/pkg/component/ParsedMainComponent;
    :cond_69
    return-void
.end method

.method public static assertProcessesAreValid(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 6
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 660
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProcesses()Ljava/util/Map;

    move-result-object v0

    .line 661
    .local v0, "procs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedProcess;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6f

    .line 662
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 670
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v1

    const-string v2, "activity"

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/pm/ScanPackageUtils;->assertPackageProcesses(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    .line 671
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "service"

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/pm/ScanPackageUtils;->assertPackageProcesses(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    .line 672
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "receiver"

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/pm/ScanPackageUtils;->assertPackageProcesses(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    .line 673
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "provider"

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/pm/ScanPackageUtils;->assertPackageProcesses(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_6f

    .line 663
    :cond_3c
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/16 v2, -0x7a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t install because application tag\'s process attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 666
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProcessName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 667
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is not included in the <processes> list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 675
    :cond_6f
    :goto_6f
    return-void
.end method

.method public static assertStaticSharedLibraryIsValid(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    .registers 4
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "scanFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 574
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_e5

    .line 580
    and-int/lit16 v0, p1, 0x2000

    if-nez v0, :cond_dd

    .line 587
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOriginalPackages()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 593
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 599
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c5

    .line 605
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 611
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 617
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 623
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 629
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissionGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 635
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_95

    .line 641
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 647
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProtectedBroadcasts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 653
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7d

    .line 657
    return-void

    .line 654
    :cond_7d
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Static shared libs cannot be overlay targets"

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 648
    :cond_85
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Static shared libs cannot declare protected broadcasts"

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 642
    :cond_8d
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Static shared libs cannot declare permissions"

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 636
    :cond_95
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Static shared libs cannot declare features"

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 630
    :cond_9d
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Static shared libs cannot declare permission groups"

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 624
    :cond_a5
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Static shared libs cannot declare broadcast receivers"

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 618
    :cond_ad
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Static shared libs cannot declare content providers"

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :cond_b5
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Static shared libs cannot declare services"

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 606
    :cond_bd
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Static shared libs cannot declare activities"

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 600
    :cond_c5
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Packages declaring static-shared libs cannot declare shared users"

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 594
    :cond_cd
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Packages declaring static-shared libs cannot declare dynamic libs"

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 588
    :cond_d5
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Packages declaring static-shared libs cannot be renamed"

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :cond_dd
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Packages declaring static-shared libs cannot be instant apps"

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 575
    :cond_e5
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Packages declaring static-shared libs must target O SDK or higher"

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static collectCertificatesLI(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/parsing/pkg/ParsedPackage;Lcom/android/server/pm/Settings$VersionInfo;ZZZ)V
    .registers 16
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "parsedPackage"    # Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .param p2, "settingsVersionForPackage"    # Lcom/android/server/pm/Settings$VersionInfo;
    .param p3, "forceCollect"    # Z
    .param p4, "skipVerify"    # Z
    .param p5, "isPreNMR1Upgrade"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 940
    if-eqz p5, :cond_10

    .line 941
    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    goto :goto_14

    .line 942
    :cond_10
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->getLastModifiedTime(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)J

    move-result-wide v0

    :goto_14
    nop

    .line 943
    .local v0, "lastModifiedTime":J
    const-string v2, "PackageManager"

    if-eqz p0, :cond_8a

    if-nez p3, :cond_8a

    .line 944
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 945
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getLastModifiedTime()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-nez v3, :cond_8a

    .line 946
    invoke-static {p2}, Lcom/android/server/pm/ReconcilePackageUtils;->isCompatSignatureUpdateNeeded(Lcom/android/server/pm/Settings$VersionInfo;)Z

    move-result v3

    if-nez v3, :cond_8a

    .line 947
    invoke-static {p2}, Lcom/android/server/pm/ReconcilePackageUtils;->isRecoverSignatureUpdateNeeded(Lcom/android/server/pm/Settings$VersionInfo;)Z

    move-result v3

    if-nez v3, :cond_8a

    .line 949
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v3

    if-eqz v3, :cond_69

    .line 950
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v3

    array-length v3, v3

    if-eqz v3, :cond_69

    .line 951
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result v3

    if-eqz v3, :cond_69

    .line 955
    new-instance v2, Landroid/content/pm/SigningDetails;

    .line 956
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/SigningDetails;-><init>(Landroid/content/pm/SigningDetails;)V

    .line 955
    invoke-interface {p1, v2}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 957
    return-void

    .line 960
    :cond_69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PackageSetting for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is missing signatures.  Collecting certs again to recover them."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_af

    .line 963
    :cond_8a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " changed; collecting certs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 964
    if-eqz p3, :cond_a2

    const-string v4, " (forced)"

    goto :goto_a4

    :cond_a2
    const-string v4, ""

    :goto_a4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 963
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    :goto_af
    const-wide/32 v2, 0x40000

    :try_start_b2
    const-string v4, "collectCertificates"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 969
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v4

    .line 970
    .local v4, "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    invoke-static {v4, p1, p4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    .line 972
    .local v5, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v6

    if-nez v6, :cond_d4

    .line 976
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/SigningDetails;

    invoke-interface {p1, v6}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    :try_end_ce
    .catchall {:try_start_b2 .. :try_end_ce} :catchall_e6

    .line 978
    nop

    .end local v4    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    .end local v5    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 979
    nop

    .line 980
    return-void

    .line 973
    .restart local v4    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    .restart local v5    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    :cond_d4
    :try_start_d4
    new-instance v6, Lcom/android/server/pm/PackageManagerException;

    .line 974
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v7

    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "lastModifiedTime":J
    .end local p0    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local p1    # "parsedPackage":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .end local p2    # "settingsVersionForPackage":Lcom/android/server/pm/Settings$VersionInfo;
    .end local p3    # "forceCollect":Z
    .end local p4    # "skipVerify":Z
    .end local p5    # "isPreNMR1Upgrade":Z
    throw v6
    :try_end_e6
    .catchall {:try_start_d4 .. :try_end_e6} :catchall_e6

    .line 978
    .end local v4    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    .end local v5    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    .restart local v0    # "lastModifiedTime":J
    .restart local p0    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local p1    # "parsedPackage":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .restart local p2    # "settingsVersionForPackage":Lcom/android/server/pm/Settings$VersionInfo;
    .restart local p3    # "forceCollect":Z
    .restart local p4    # "skipVerify":Z
    .restart local p5    # "isPreNMR1Upgrade":Z
    :catchall_e6
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 979
    throw v4
.end method

.method public static configurePackageComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 6
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 770
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 771
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getComponentsEnabledStates(Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 772
    .local v0, "componentsEnabledStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-nez v0, :cond_f

    .line 773
    return-void

    .line 776
    :cond_f
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_19
    if-ltz v1, :cond_3b

    .line 777
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 778
    .local v2, "component":Lcom/android/server/pm/pkg/component/ParsedActivity;
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 779
    .local v3, "enabled":Ljava/lang/Boolean;
    if-eqz v3, :cond_38

    .line 780
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v2, v4}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setEnabled(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Z)V

    .line 776
    .end local v2    # "component":Lcom/android/server/pm/pkg/component/ParsedActivity;
    .end local v3    # "enabled":Ljava/lang/Boolean;
    :cond_38
    add-int/lit8 v1, v1, -0x1

    goto :goto_19

    .line 784
    .end local v1    # "i":I
    :cond_3b
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_45
    if-ltz v1, :cond_67

    .line 785
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 786
    .restart local v2    # "component":Lcom/android/server/pm/pkg/component/ParsedActivity;
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 787
    .restart local v3    # "enabled":Ljava/lang/Boolean;
    if-eqz v3, :cond_64

    .line 788
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v2, v4}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setEnabled(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Z)V

    .line 784
    .end local v2    # "component":Lcom/android/server/pm/pkg/component/ParsedActivity;
    .end local v3    # "enabled":Ljava/lang/Boolean;
    :cond_64
    add-int/lit8 v1, v1, -0x1

    goto :goto_45

    .line 792
    .end local v1    # "i":I
    :cond_67
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_71
    if-ltz v1, :cond_93

    .line 793
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedProvider;

    .line 794
    .local v2, "component":Lcom/android/server/pm/pkg/component/ParsedProvider;
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 795
    .restart local v3    # "enabled":Ljava/lang/Boolean;
    if-eqz v3, :cond_90

    .line 796
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v2, v4}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setEnabled(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Z)V

    .line 792
    .end local v2    # "component":Lcom/android/server/pm/pkg/component/ParsedProvider;
    .end local v3    # "enabled":Ljava/lang/Boolean;
    :cond_90
    add-int/lit8 v1, v1, -0x1

    goto :goto_71

    .line 800
    .end local v1    # "i":I
    :cond_93
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_9d
    if-ltz v1, :cond_bf

    .line 801
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedService;

    .line 802
    .local v2, "component":Lcom/android/server/pm/pkg/component/ParsedService;
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedService;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 803
    .restart local v3    # "enabled":Ljava/lang/Boolean;
    if-eqz v3, :cond_bc

    .line 804
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v2, v4}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setEnabled(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Z)V

    .line 800
    .end local v2    # "component":Lcom/android/server/pm/pkg/component/ParsedService;
    .end local v3    # "enabled":Ljava/lang/Boolean;
    :cond_bc
    add-int/lit8 v1, v1, -0x1

    goto :goto_9d

    .line 807
    .end local v1    # "i":I
    :cond_bf
    return-void
.end method

.method public static ensurePackageRenamed(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V
    .registers 3
    .param p0, "parsedPackage"    # Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .param p1, "renamedPackageName"    # Ljava/lang/String;

    .line 735
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getOriginalPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 736
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_19

    .line 739
    :cond_15
    invoke-interface {p0, p1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setPackageName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 740
    return-void

    .line 737
    :cond_19
    :goto_19
    return-void
.end method

.method public static getAppLib32InstallDir()Ljava/io/File;
    .registers 3

    .line 1007
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "app-lib"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getRealPackageName(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "renamedPkgName"    # Ljava/lang/String;

    .line 716
    invoke-static {p0, p1}, Lcom/android/server/pm/ScanPackageUtils;->isPackageRenamed(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 717
    invoke-static {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRealPackageOrNull(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 719
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getVendorPartitionVersion()I
    .registers 3

    .line 810
    const-string/jumbo v0, "ro.vndk.version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 811
    .local v0, "version":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 813
    :try_start_d
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_11} :catch_12

    return v1

    .line 814
    :catch_12
    move-exception v1

    .line 815
    .local v1, "ignore":Ljava/lang/NumberFormatException;
    sget-object v2, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 816
    const/16 v2, 0x2710

    return v2

    .line 820
    .end local v1    # "ignore":Ljava/lang/NumberFormatException;
    :cond_1e
    const/16 v1, 0x1c

    return v1
.end method

.method public static isPackageRenamed(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z
    .registers 3
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "renamedPkgName"    # Ljava/lang/String;

    .line 725
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOriginalPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static scanPackageOnlyLI(Lcom/android/server/pm/ScanRequest;Lcom/android/server/pm/PackageManagerServiceInjector;ZJ)Lcom/android/server/pm/ScanResult;
    .registers 56
    .param p0, "request"    # Lcom/android/server/pm/ScanRequest;
    .param p1, "injector"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p2, "isUnderFactoryTest"    # Z
    .param p3, "currentTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 121
    move-object/from16 v10, p0

    move-wide/from16 v11, p3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getAbiHelper()Lcom/android/server/pm/PackageAbiHelper;

    move-result-object v13

    .line 122
    .local v13, "packageAbiHelper":Lcom/android/server/pm/PackageAbiHelper;
    iget-object v14, v10, Lcom/android/server/pm/ScanRequest;->mParsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 123
    .local v14, "parsedPackage":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    iget-object v0, v10, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 124
    .local v0, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    iget-object v9, v10, Lcom/android/server/pm/ScanRequest;->mDisabledPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 125
    .local v9, "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    iget-object v8, v10, Lcom/android/server/pm/ScanRequest;->mOriginalPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 126
    .local v8, "originalPkgSetting":Lcom/android/server/pm/PackageSetting;
    iget v7, v10, Lcom/android/server/pm/ScanRequest;->mParseFlags:I

    .line 127
    .local v7, "parseFlags":I
    iget v6, v10, Lcom/android/server/pm/ScanRequest;->mScanFlags:I

    .line 128
    .local v6, "scanFlags":I
    iget-object v5, v10, Lcom/android/server/pm/ScanRequest;->mRealPkgName:Ljava/lang/String;

    .line 129
    .local v5, "realPkgName":Ljava/lang/String;
    iget-object v4, v10, Lcom/android/server/pm/ScanRequest;->mOldSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    .line 130
    .local v4, "oldSharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    iget-object v3, v10, Lcom/android/server/pm/ScanRequest;->mSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    .line 131
    .local v3, "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    iget-object v2, v10, Lcom/android/server/pm/ScanRequest;->mUser:Landroid/os/UserHandle;

    .line 132
    .local v2, "user":Landroid/os/UserHandle;
    iget-boolean v1, v10, Lcom/android/server/pm/ScanRequest;->mIsPlatformPackage:Z

    .line 134
    .local v1, "isPlatformPackage":Z
    const/16 v39, 0x0

    .line 136
    .local v39, "changedAbiCodePath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v15, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    const-string v11, "PackageManager"

    if-eqz v15, :cond_45

    .line 137
    const/high16 v12, -0x80000000

    and-int/2addr v12, v7

    if-eqz v12, :cond_45

    .line 138
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Scanning package "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_45
    new-instance v12, Ljava/io/File;

    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v12

    .line 147
    .local v20, "destCodeFile":Ljava/io/File;
    const/4 v12, 0x0

    .line 148
    .local v12, "primaryCpuAbiFromSettings":Ljava/lang/String;
    const/4 v15, 0x0

    .line 149
    .local v15, "secondaryCpuAbiFromSettings":Ljava/lang/String;
    move-object/from16 v16, v12

    .end local v12    # "primaryCpuAbiFromSettings":Ljava/lang/String;
    .local v16, "primaryCpuAbiFromSettings":Ljava/lang/String;
    and-int/lit16 v12, v6, 0x1000

    move/from16 v40, v7

    .end local v7    # "parseFlags":I
    .local v40, "parseFlags":I
    const/16 v41, 0x0

    if-eqz v12, :cond_5e

    const/4 v12, 0x1

    goto :goto_60

    :cond_5e
    move/from16 v12, v41

    .line 150
    .local v12, "needToDeriveAbi":Z
    :goto_60
    if-nez v12, :cond_8d

    .line 151
    if-eqz v0, :cond_87

    .line 156
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v17

    if-eqz v17, :cond_7a

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isStub()Z

    move-result v17

    if-eqz v17, :cond_7a

    .line 157
    const/4 v12, 0x1

    move-object/from16 v42, v15

    move-object/from16 v15, v16

    goto :goto_91

    .line 159
    :cond_7a
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v16

    .line 160
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v42, v15

    move-object/from16 v15, v16

    goto :goto_91

    .line 164
    :cond_87
    const/4 v12, 0x1

    move-object/from16 v42, v15

    move-object/from16 v15, v16

    goto :goto_91

    .line 150
    :cond_8d
    move-object/from16 v42, v15

    move-object/from16 v15, v16

    .line 168
    .end local v16    # "primaryCpuAbiFromSettings":Ljava/lang/String;
    .local v15, "primaryCpuAbiFromSettings":Ljava/lang/String;
    .local v42, "secondaryCpuAbiFromSettings":Ljava/lang/String;
    :goto_91
    const-string v7, " to "

    move-object/from16 v44, v11

    if-eqz v0, :cond_e2

    if-eq v4, v3, :cond_e2

    .line 169
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .local v16, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    const-string v0, "Package "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 170
    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, " shared user changed from "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 171
    const-string v11, "<nothing>"

    if-eqz v4, :cond_bd

    .line 172
    move-object/from16 v17, v11

    iget-object v11, v4, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    goto :goto_bf

    :cond_bd
    move-object/from16 v17, v11

    :goto_bf
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 174
    if-eqz v3, :cond_cc

    iget-object v11, v3, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    goto :goto_ce

    :cond_cc
    move-object/from16 v11, v17

    :goto_ce
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, "; replacing with new"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    const/4 v11, 0x5

    invoke-static {v11, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 176
    const/4 v0, 0x0

    .end local v16    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v0    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    goto :goto_e6

    .line 168
    :cond_e2
    move-object/from16 v16, v0

    .line 179
    .end local v0    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v16    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v0, v16

    .end local v16    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v0    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :goto_e6
    const/4 v11, 0x0

    .line 180
    .local v11, "usesSdkLibraries":[Ljava/lang/String;
    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_107

    .line 181
    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v16

    move-object/from16 v17, v11

    .end local v11    # "usesSdkLibraries":[Ljava/lang/String;
    .local v17, "usesSdkLibraries":[Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    .line 182
    .end local v17    # "usesSdkLibraries":[Ljava/lang/String;
    .restart local v11    # "usesSdkLibraries":[Ljava/lang/String;
    move-object/from16 v16, v15

    .end local v15    # "primaryCpuAbiFromSettings":Ljava/lang/String;
    .local v16, "primaryCpuAbiFromSettings":Ljava/lang/String;
    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_10b

    .line 180
    .end local v16    # "primaryCpuAbiFromSettings":Ljava/lang/String;
    .restart local v15    # "primaryCpuAbiFromSettings":Ljava/lang/String;
    :cond_107
    move-object/from16 v17, v11

    move-object/from16 v16, v15

    .line 185
    .end local v15    # "primaryCpuAbiFromSettings":Ljava/lang/String;
    .restart local v16    # "primaryCpuAbiFromSettings":Ljava/lang/String;
    :goto_10b
    const/4 v15, 0x0

    .line 186
    .local v15, "usesStaticLibraries":[Ljava/lang/String;
    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_12e

    .line 187
    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v17

    move-object/from16 v18, v15

    .end local v15    # "usesStaticLibraries":[Ljava/lang/String;
    .local v18, "usesStaticLibraries":[Ljava/lang/String;
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v15

    new-array v15, v15, [Ljava/lang/String;

    .line 188
    .end local v18    # "usesStaticLibraries":[Ljava/lang/String;
    .restart local v15    # "usesStaticLibraries":[Ljava/lang/String;
    move-object/from16 v45, v7

    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v46, v15

    goto :goto_134

    .line 186
    :cond_12e
    move-object/from16 v45, v7

    move-object/from16 v18, v15

    .end local v15    # "usesStaticLibraries":[Ljava/lang/String;
    .restart local v18    # "usesStaticLibraries":[Ljava/lang/String;
    move-object/from16 v46, v18

    .line 191
    .end local v18    # "usesStaticLibraries":[Ljava/lang/String;
    .local v46, "usesStaticLibraries":[Ljava/lang/String;
    :goto_134
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDomainVerificationManagerInternal()Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->generateNewId()Ljava/util/UUID;

    move-result-object v47

    .line 196
    .local v47, "newDomainSetId":Ljava/util/UUID;
    if-nez v0, :cond_140

    const/4 v7, 0x1

    goto :goto_142

    :cond_140
    move/from16 v7, v41

    :goto_142
    move/from16 v48, v7

    .line 197
    .local v48, "createNewPackage":Z
    if-eqz v48, :cond_1a7

    .line 198
    and-int/lit16 v7, v6, 0x2000

    if-eqz v7, :cond_14d

    const/16 v30, 0x1

    goto :goto_14f

    :cond_14d
    move/from16 v30, v41

    .line 199
    .local v30, "instantApp":Z
    :goto_14f
    const v7, 0x8000

    and-int/2addr v7, v6

    if-eqz v7, :cond_158

    const/16 v31, 0x1

    goto :goto_15a

    :cond_158
    move/from16 v31, v41

    .line 204
    .local v31, "virtualPreload":Z
    :goto_15a
    const/4 v7, 0x0

    invoke-static {v14, v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v49

    .local v49, "pkgFlags":I
    move/from16 v26, v49

    .line 205
    invoke-static {v14, v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v7

    .local v7, "pkgPrivateFlags":I
    move/from16 v27, v7

    .line 208
    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move/from16 v50, v7

    move-object/from16 v7, v16

    .line 210
    .end local v16    # "primaryCpuAbiFromSettings":Ljava/lang/String;
    .local v7, "primaryCpuAbiFromSettings":Ljava/lang/String;
    .local v50, "pkgPrivateFlags":I
    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getNativeLibraryRootDir()Ljava/lang/String;

    move-result-object v21

    .line 211
    invoke-static {v14}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v22

    .line 212
    invoke-static {v14}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v23

    .line 213
    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    move-result-wide v24

    const/16 v29, 0x1

    .line 215
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v32

    .line 216
    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v34

    .line 217
    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getUsesStaticLibrariesVersions()[J

    move-result-object v36

    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getMimeGroups()Ljava/util/Set;

    move-result-object v37

    .line 208
    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v5

    move-object/from16 v19, v3

    move-object/from16 v28, v2

    move-object/from16 v33, v11

    move-object/from16 v35, v46

    move-object/from16 v38, v47

    invoke-static/range {v15 .. v38}, Lcom/android/server/pm/Settings;->createNewSetting(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILandroid/os/UserHandle;ZZZLcom/android/server/pm/UserManagerService;[Ljava/lang/String;[J[Ljava/lang/String;[JLjava/util/Set;Ljava/util/UUID;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 219
    .end local v30    # "instantApp":Z
    .end local v31    # "virtualPreload":Z
    .end local v49    # "pkgFlags":I
    .end local v50    # "pkgPrivateFlags":I
    move-object v15, v0

    goto :goto_1ea

    .line 221
    .end local v7    # "primaryCpuAbiFromSettings":Ljava/lang/String;
    .restart local v16    # "primaryCpuAbiFromSettings":Ljava/lang/String;
    :cond_1a7
    move-object/from16 v7, v16

    .end local v16    # "primaryCpuAbiFromSettings":Ljava/lang/String;
    .restart local v7    # "primaryCpuAbiFromSettings":Ljava/lang/String;
    new-instance v15, Lcom/android/server/pm/PackageSetting;

    invoke-direct {v15, v0}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;)V

    move-object v0, v15

    move-object/from16 v21, v0

    .line 222
    invoke-virtual {v0, v14}, Lcom/android/server/pm/PackageSetting;->setPkg(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/PackageSetting;

    .line 229
    nop

    .line 230
    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getNativeLibraryDir()Ljava/lang/String;

    move-result-object v26

    .line 231
    invoke-static {v14, v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v27

    .line 232
    invoke-static {v14, v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/lang/String;

    move-result-object v28

    .line 233
    invoke-static {v14, v0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v29

    .line 234
    invoke-static {v14, v0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v30

    .line 235
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v31

    .line 236
    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v33

    .line 237
    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getUsesStaticLibrariesVersions()[J

    move-result-object v35

    .line 238
    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getMimeGroups()Ljava/util/Set;

    move-result-object v36

    .line 229
    move-object/from16 v22, v9

    move-object/from16 v23, v4

    move-object/from16 v24, v3

    move-object/from16 v25, v20

    move-object/from16 v32, v11

    move-object/from16 v34, v46

    move-object/from16 v37, v47

    invoke-static/range {v21 .. v37}, Lcom/android/server/pm/Settings;->updatePackageSetting(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/pm/UserManagerService;[Ljava/lang/String;[J[Ljava/lang/String;[JLjava/util/Set;Ljava/util/UUID;)V

    .line 240
    .end local v0    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .local v15, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :goto_1ea
    if-eqz v48, :cond_221

    if-eqz v8, :cond_221

    .line 245
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setPackageName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v5

    .end local v5    # "realPkgName":Ljava/lang/String;
    .local v16, "realPkgName":Ljava/lang/String;
    const-string v5, "New package "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " renamed to replace old package "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 249
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "msg":Ljava/lang/String;
    const/4 v5, 0x5

    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_223

    .line 240
    .end local v0    # "msg":Ljava/lang/String;
    .end local v16    # "realPkgName":Ljava/lang/String;
    .restart local v5    # "realPkgName":Ljava/lang/String;
    :cond_221
    move-object/from16 v16, v5

    .line 253
    .end local v5    # "realPkgName":Ljava/lang/String;
    .restart local v16    # "realPkgName":Ljava/lang/String;
    :goto_223
    if-nez v2, :cond_228

    move/from16 v0, v41

    goto :goto_22c

    :cond_228
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    :goto_22c
    move v5, v0

    .line 255
    .local v5, "userId":I
    if-nez v48, :cond_249

    .line 256
    and-int/lit16 v0, v6, 0x2000

    if-eqz v0, :cond_235

    const/4 v0, 0x1

    goto :goto_237

    :cond_235
    move/from16 v0, v41

    .line 257
    .local v0, "instantApp":Z
    :goto_237
    move-object/from16 v17, v2

    .end local v2    # "user":Landroid/os/UserHandle;
    .local v17, "user":Landroid/os/UserHandle;
    and-int/lit16 v2, v6, 0x4000

    if-eqz v2, :cond_23f

    const/4 v2, 0x1

    goto :goto_241

    :cond_23f
    move/from16 v2, v41

    .line 258
    .local v2, "fullApp":Z
    :goto_241
    move-object/from16 v18, v11

    move-object/from16 v11, p1

    .end local v11    # "usesSdkLibraries":[Ljava/lang/String;
    .local v18, "usesSdkLibraries":[Ljava/lang/String;
    invoke-static {v11, v15, v5, v0, v2}, Lcom/android/server/pm/ScanPackageUtils;->setInstantAppForUser(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageSetting;IZZ)V

    goto :goto_24f

    .line 255
    .end local v0    # "instantApp":Z
    .end local v17    # "user":Landroid/os/UserHandle;
    .end local v18    # "usesSdkLibraries":[Ljava/lang/String;
    .local v2, "user":Landroid/os/UserHandle;
    .restart local v11    # "usesSdkLibraries":[Ljava/lang/String;
    :cond_249
    move-object/from16 v17, v2

    move-object/from16 v18, v11

    move-object/from16 v11, p1

    .line 261
    .end local v2    # "user":Landroid/os/UserHandle;
    .end local v11    # "usesSdkLibraries":[Ljava/lang/String;
    .restart local v17    # "user":Landroid/os/UserHandle;
    .restart local v18    # "usesSdkLibraries":[Ljava/lang/String;
    :goto_24f
    if-nez v9, :cond_25d

    and-int/lit8 v0, v6, 0x4

    if-eqz v0, :cond_265

    if-eqz v15, :cond_265

    .line 263
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_265

    .line 264
    :cond_25d
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUpdatedSystemApp(Z)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 267
    :cond_265
    nop

    .line 268
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v0

    .line 267
    invoke-static {v14, v3, v0}, Lcom/android/server/pm/SELinuxMMAC;->getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/SharedUserApi;Lcom/android/server/compat/PlatformCompat;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setSeInfo(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 270
    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_27a

    .line 271
    invoke-static {v14}, Lcom/android/server/pm/ScanPackageUtils;->configurePackageComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 274
    :cond_27a
    iget-object v0, v10, Lcom/android/server/pm/ScanRequest;->mCpuAbiOverride:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->deriveAbiOverride(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, "cpuAbiOverride":Ljava/lang/String;
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v0

    .line 277
    .local v0, "isUpdatedSystemApp":Z
    invoke-static {}, Lcom/android/server/pm/ScanPackageUtils;->getAppLib32InstallDir()Ljava/io/File;

    move-result-object v10

    .line 278
    .local v10, "appLib32InstallDir":Ljava/io/File;
    and-int/lit8 v19, v6, 0x4

    if-nez v19, :cond_2f9

    .line 279
    if-eqz v12, :cond_2e1

    .line 280
    move-object/from16 v21, v8

    move-object/from16 v19, v9

    .end local v8    # "originalPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v9    # "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .local v19, "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .local v21, "originalPkgSetting":Lcom/android/server/pm/PackageSetting;
    const-wide/32 v8, 0x40000

    move-object/from16 v22, v3

    .end local v3    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .local v22, "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    const-string v3, "derivePackageAbi"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 281
    nop

    .line 282
    invoke-interface {v13, v14, v0, v2, v10}, Lcom/android/server/pm/PackageAbiHelper;->derivePackageAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Ljava/io/File;)Landroid/util/Pair;

    move-result-object v3

    .line 284
    .local v3, "derivedAbi":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/PackageAbiHelper$Abis;Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;>;"
    iget-object v8, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-virtual {v8, v14}, Lcom/android/server/pm/PackageAbiHelper$Abis;->applyTo(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)V

    .line 285
    iget-object v8, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    invoke-virtual {v8, v14}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->applyTo(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)V

    .line 286
    const-wide/32 v8, 0x40000

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 292
    invoke-static {v14}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v8

    .line 293
    .local v8, "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->isSystem()Z

    move-result v9

    if-eqz v9, :cond_2dc

    if-nez v0, :cond_2dc

    if-nez v8, :cond_2dc

    .line 295
    invoke-interface {v13, v14}, Lcom/android/server/pm/PackageAbiHelper;->getBundledAppAbis(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/PackageAbiHelper$Abis;

    move-result-object v9

    .line 297
    .local v9, "abis":Lcom/android/server/pm/PackageAbiHelper$Abis;
    invoke-virtual {v9, v14}, Lcom/android/server/pm/PackageAbiHelper$Abis;->applyTo(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)V

    .line 298
    invoke-virtual {v9, v15}, Lcom/android/server/pm/PackageAbiHelper$Abis;->applyTo(Lcom/android/server/pm/PackageSetting;)V

    .line 299
    nop

    .line 300
    move-object/from16 v23, v3

    .end local v3    # "derivedAbi":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/PackageAbiHelper$Abis;Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;>;"
    .local v23, "derivedAbi":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/PackageAbiHelper$Abis;Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;>;"
    invoke-interface {v13, v14, v0, v10}, Lcom/android/server/pm/PackageAbiHelper;->deriveNativeLibraryPaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/io/File;)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v3

    .line 302
    .local v3, "nativeLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    invoke-virtual {v3, v14}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->applyTo(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)V

    goto :goto_2de

    .line 293
    .end local v9    # "abis":Lcom/android/server/pm/PackageAbiHelper$Abis;
    .end local v23    # "derivedAbi":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/PackageAbiHelper$Abis;Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;>;"
    .local v3, "derivedAbi":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/PackageAbiHelper$Abis;Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;>;"
    :cond_2dc
    move-object/from16 v23, v3

    .line 304
    .end local v3    # "derivedAbi":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/PackageAbiHelper$Abis;Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;>;"
    .end local v8    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    :goto_2de
    move-object/from16 v9, v42

    goto :goto_32b

    .line 308
    .end local v19    # "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v21    # "originalPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v22    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .local v3, "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .local v8, "originalPkgSetting":Lcom/android/server/pm/PackageSetting;
    .local v9, "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    :cond_2e1
    move-object/from16 v22, v3

    move-object/from16 v21, v8

    move-object/from16 v19, v9

    .end local v3    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .end local v8    # "originalPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v9    # "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v19    # "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v21    # "originalPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v22    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    invoke-interface {v14, v7}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v3

    .line 309
    move-object/from16 v9, v42

    .end local v42    # "secondaryCpuAbiFromSettings":Ljava/lang/String;
    .local v9, "secondaryCpuAbiFromSettings":Ljava/lang/String;
    invoke-interface {v3, v9}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 311
    nop

    .line 312
    invoke-interface {v13, v14, v0, v10}, Lcom/android/server/pm/PackageAbiHelper;->deriveNativeLibraryPaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/io/File;)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v3

    .line 314
    .local v3, "nativeLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    invoke-virtual {v3, v14}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->applyTo(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)V

    .line 323
    .end local v3    # "nativeLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    goto :goto_32b

    .line 325
    .end local v19    # "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v21    # "originalPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v22    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .local v3, "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .restart local v8    # "originalPkgSetting":Lcom/android/server/pm/PackageSetting;
    .local v9, "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v42    # "secondaryCpuAbiFromSettings":Ljava/lang/String;
    :cond_2f9
    move-object/from16 v22, v3

    move-object/from16 v21, v8

    move-object/from16 v19, v9

    move-object/from16 v9, v42

    .end local v3    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .end local v8    # "originalPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v42    # "secondaryCpuAbiFromSettings":Ljava/lang/String;
    .local v9, "secondaryCpuAbiFromSettings":Ljava/lang/String;
    .restart local v19    # "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v21    # "originalPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v22    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    and-int/lit16 v3, v6, 0x100

    if-eqz v3, :cond_314

    .line 329
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14, v3}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v3

    .line 330
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 335
    :cond_314
    invoke-static {v14}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/android/server/pm/PackageSetting;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    .line 336
    invoke-static {v14}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/server/pm/PackageSetting;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 343
    nop

    .line 344
    invoke-interface {v13, v14, v0, v10}, Lcom/android/server/pm/PackageAbiHelper;->deriveNativeLibraryPaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/io/File;)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v3

    .line 346
    .local v3, "nativeLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    invoke-virtual {v3, v14}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->applyTo(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)V

    .line 353
    .end local v3    # "nativeLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    :goto_32b
    if-eqz v1, :cond_343

    .line 354
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->is64Bit()Z

    move-result v3

    if-eqz v3, :cond_33c

    .line 355
    sget-object v3, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v3, v3, v41

    goto :goto_340

    :cond_33c
    sget-object v3, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v3, v3, v41

    .line 354
    :goto_340
    invoke-interface {v14, v3}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 362
    :cond_343
    and-int/lit8 v3, v6, 0x1

    if-nez v3, :cond_36d

    and-int/lit8 v3, v6, 0x4

    if-eqz v3, :cond_36d

    .line 363
    if-nez v2, :cond_36a

    .line 364
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring persisted ABI override for package "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 365
    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 364
    move-object/from16 v8, v44

    invoke-static {v8, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36f

    .line 363
    :cond_36a
    move-object/from16 v8, v44

    goto :goto_36f

    .line 362
    :cond_36d
    move-object/from16 v8, v44

    .line 369
    :goto_36f
    invoke-static {v14}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/android/server/pm/PackageSetting;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    .line 370
    move/from16 v23, v0

    .end local v0    # "isUpdatedSystemApp":Z
    .local v23, "isUpdatedSystemApp":Z
    invoke-static {v14}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/server/pm/PackageSetting;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 371
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageSetting;->setCpuAbiOverride(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 382
    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getNativeLibraryRootDir()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/android/server/pm/PackageSetting;->setLegacyNativeLibraryPath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 391
    and-int/lit8 v0, v6, 0x10

    if-nez v0, :cond_39e

    if-eqz v4, :cond_39e

    .line 398
    nop

    .line 400
    invoke-virtual {v4}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v0

    .line 399
    invoke-interface {v13, v0, v14}, Lcom/android/server/pm/PackageAbiHelper;->getAdjustedAbiForSharedUser(Landroid/util/ArraySet;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v0

    .line 398
    invoke-static {v4, v14, v0}, Lcom/android/server/pm/ScanPackageUtils;->applyAdjustedAbiToSharedUser(Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)Ljava/util/List;

    move-result-object v39

    .line 403
    :cond_39e
    if-eqz p2, :cond_3ae

    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    .line 404
    const-string v3, "android.permission.FACTORY_TEST"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3ae

    const/4 v0, 0x1

    goto :goto_3b0

    :cond_3ae
    move/from16 v0, v41

    .line 403
    :goto_3b0
    invoke-interface {v14, v0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setFactoryTest(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 406
    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_3be

    .line 407
    const/4 v0, 0x1

    invoke-virtual {v15, v0}, Lcom/android/server/pm/PackageSetting;->setIsOrphaned(Z)Lcom/android/server/pm/PackageSetting;

    goto :goto_3bf

    .line 406
    :cond_3be
    const/4 v0, 0x1

    .line 411
    :goto_3bf
    move-object/from16 v24, v2

    .end local v2    # "cpuAbiOverride":Ljava/lang/String;
    .local v24, "cpuAbiOverride":Ljava/lang/String;
    invoke-static {v14}, Lcom/android/server/pm/PackageManagerServiceUtils;->getLastModifiedTime(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)J

    move-result-wide v2

    .line 412
    .local v2, "scanFileTime":J
    const/4 v0, -0x1

    if-ne v5, v0, :cond_3d1

    .line 413
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getUserStates()Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/pkg/PackageStateUtils;->getEarliestFirstInstallTime(Landroid/util/SparseArray;)J

    move-result-wide v25

    goto :goto_3d9

    .line 414
    :cond_3d1
    invoke-virtual {v15, v5}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getFirstInstallTime()J

    move-result-wide v25

    :goto_3d9
    nop

    .line 415
    .local v25, "existingFirstInstallTime":J
    const-wide/16 v27, 0x0

    move-object v0, v8

    move-object/from16 v29, v10

    move-wide/from16 v10, p3

    .end local v10    # "appLib32InstallDir":Ljava/io/File;
    .local v29, "appLib32InstallDir":Ljava/io/File;
    cmp-long v8, v10, v27

    if-eqz v8, :cond_3f9

    .line 416
    cmp-long v8, v25, v27

    if-nez v8, :cond_3f1

    .line 417
    invoke-virtual {v15, v10, v11, v5}, Lcom/android/server/pm/PackageSetting;->setFirstInstallTime(JI)Lcom/android/server/pm/PackageSetting;

    move-result-object v8

    .line 418
    invoke-virtual {v8, v10, v11}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)Lcom/android/server/pm/PackageSetting;

    goto :goto_414

    .line 419
    :cond_3f1
    and-int/lit8 v8, v6, 0x8

    if-eqz v8, :cond_414

    .line 420
    invoke-virtual {v15, v10, v11}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)Lcom/android/server/pm/PackageSetting;

    goto :goto_414

    .line 422
    :cond_3f9
    cmp-long v8, v25, v27

    if-nez v8, :cond_405

    .line 424
    invoke-virtual {v15, v2, v3, v5}, Lcom/android/server/pm/PackageSetting;->setFirstInstallTime(JI)Lcom/android/server/pm/PackageSetting;

    move-result-object v8

    .line 425
    invoke-virtual {v8, v2, v3}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)Lcom/android/server/pm/PackageSetting;

    goto :goto_414

    .line 426
    :cond_405
    and-int/lit8 v8, v40, 0x10

    if-eqz v8, :cond_414

    .line 427
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getLastModifiedTime()J

    move-result-wide v27

    cmp-long v8, v2, v27

    if-eqz v8, :cond_414

    .line 430
    invoke-virtual {v15, v2, v3}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)Lcom/android/server/pm/PackageSetting;

    .line 433
    :cond_414
    :goto_414
    invoke-virtual {v15, v2, v3}, Lcom/android/server/pm/PackageSetting;->setLastModifiedTime(J)Lcom/android/server/pm/PackageSetting;

    .line 435
    invoke-virtual {v15, v14}, Lcom/android/server/pm/PackageSetting;->setPkg(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/PackageSetting;

    move-result-object v8

    .line 436
    move/from16 v27, v1

    .end local v1    # "isPlatformPackage":Z
    .local v27, "isPlatformPackage":Z
    invoke-static {v14, v15}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v1

    .line 437
    move-wide/from16 v30, v2

    .end local v2    # "scanFileTime":J
    .local v30, "scanFileTime":J
    invoke-static {v14, v15}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v2

    .line 436
    invoke-virtual {v8, v1, v2}, Lcom/android/server/pm/PackageSetting;->setPkgFlags(II)Lcom/android/server/pm/SettingBase;

    .line 438
    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    move-result-wide v1

    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v32

    cmp-long v1, v1, v32

    if-eqz v1, :cond_43d

    .line 439
    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    move-result-wide v1

    invoke-virtual {v15, v1, v2}, Lcom/android/server/pm/PackageSetting;->setLongVersionCode(J)Lcom/android/server/pm/PackageSetting;

    .line 442
    :cond_43d
    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v8

    .line 443
    .local v8, "volumeUuid":Ljava/lang/String;
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_495

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 445
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_45f

    const-string v2, " system"

    goto :goto_461

    :cond_45f
    const-string v2, ""

    :goto_461
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 446
    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " volume from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 447
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v45

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 444
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-virtual {v15, v8}, Lcom/android/server/pm/PackageSetting;->setVolumeUuid(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 452
    :cond_495
    const/4 v0, 0x0

    .line 453
    .local v0, "sdkLibraryInfo":Landroid/content/pm/SharedLibraryInfo;
    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getSdkLibName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4a7

    .line 454
    invoke-static {v14}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->createSharedLibraryForSdk(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v0

    move-object/from16 v28, v0

    goto :goto_4a9

    .line 453
    :cond_4a7
    move-object/from16 v28, v0

    .line 456
    .end local v0    # "sdkLibraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .local v28, "sdkLibraryInfo":Landroid/content/pm/SharedLibraryInfo;
    :goto_4a9
    const/4 v0, 0x0

    .line 457
    .local v0, "staticSharedLibraryInfo":Landroid/content/pm/SharedLibraryInfo;
    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4bc

    .line 458
    nop

    .line 459
    invoke-static {v14}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->createSharedLibraryForStatic(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v0

    move-object/from16 v32, v0

    goto :goto_4be

    .line 457
    :cond_4bc
    move-object/from16 v32, v0

    .line 461
    .end local v0    # "staticSharedLibraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .local v32, "staticSharedLibraryInfo":Landroid/content/pm/SharedLibraryInfo;
    :goto_4be
    const/4 v0, 0x0

    .line 462
    .local v0, "dynamicSharedLibraryInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_4f7

    .line 463
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v1

    .line 464
    invoke-interface {v14}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4df
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 465
    .local v2, "name":Ljava/lang/String;
    nop

    .line 466
    invoke-static {v14, v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->createSharedLibraryForDynamic(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v3

    .line 465
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    .end local v2    # "name":Ljava/lang/String;
    goto :goto_4df

    .line 464
    :cond_4f4
    move-object/from16 v33, v0

    goto :goto_4f9

    .line 462
    :cond_4f7
    move-object/from16 v33, v0

    .line 470
    .end local v0    # "dynamicSharedLibraryInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v33, "dynamicSharedLibraryInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :goto_4f9
    new-instance v34, Lcom/android/server/pm/ScanResult;

    const/4 v2, 0x1

    if-nez v48, :cond_501

    const/16 v43, 0x1

    goto :goto_503

    :cond_501
    move/from16 v43, v41

    :goto_503
    const/16 v35, -0x1

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object v3, v15

    move-object/from16 v36, v4

    .end local v4    # "oldSharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .local v36, "oldSharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    move-object/from16 v4, v39

    move/from16 v37, v5

    .end local v5    # "userId":I
    .local v37, "userId":I
    move/from16 v5, v43

    move/from16 v38, v6

    .end local v6    # "scanFlags":I
    .local v38, "scanFlags":I
    move/from16 v6, v35

    move/from16 v35, v40

    move-object/from16 v40, v7

    .end local v7    # "primaryCpuAbiFromSettings":Ljava/lang/String;
    .local v35, "parseFlags":I
    .local v40, "primaryCpuAbiFromSettings":Ljava/lang/String;
    move-object/from16 v7, v28

    move-object/from16 v41, v8

    .end local v8    # "volumeUuid":Ljava/lang/String;
    .local v41, "volumeUuid":Ljava/lang/String;
    move-object/from16 v8, v32

    move-object/from16 v42, v9

    .end local v9    # "secondaryCpuAbiFromSettings":Ljava/lang/String;
    .restart local v42    # "secondaryCpuAbiFromSettings":Ljava/lang/String;
    move-object/from16 v9, v33

    invoke-direct/range {v0 .. v9}, Lcom/android/server/pm/ScanResult;-><init>(Lcom/android/server/pm/ScanRequest;ZLcom/android/server/pm/PackageSetting;Ljava/util/List;ZILandroid/content/pm/SharedLibraryInfo;Landroid/content/pm/SharedLibraryInfo;Ljava/util/List;)V

    return-object v34
.end method

.method public static setInstantAppForUser(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageSetting;IZZ)V
    .registers 12
    .param p0, "injector"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "userId"    # I
    .param p3, "instantApp"    # Z
    .param p4, "fullApp"    # Z

    .line 985
    if-nez p3, :cond_5

    if-nez p4, :cond_5

    .line 986
    return-void

    .line 988
    :cond_5
    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v0, :cond_22

    .line 989
    if-eqz p3, :cond_16

    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 990
    invoke-virtual {p1, v1, p2}, Lcom/android/server/pm/PackageSetting;->setInstantApp(ZI)V

    goto :goto_4a

    .line 991
    :cond_16
    if-eqz p4, :cond_4a

    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 992
    invoke-virtual {p1, v2, p2}, Lcom/android/server/pm/PackageSetting;->setInstantApp(ZI)V

    goto :goto_4a

    .line 995
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    array-length v3, v0

    move v4, v2

    :goto_2c
    if-ge v4, v3, :cond_4a

    aget v5, v0, v4

    .line 996
    .local v5, "currentUserId":I
    if-eqz p3, :cond_3c

    invoke-virtual {p1, v5}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v6

    if-nez v6, :cond_3c

    .line 997
    invoke-virtual {p1, v1, v5}, Lcom/android/server/pm/PackageSetting;->setInstantApp(ZI)V

    goto :goto_47

    .line 998
    :cond_3c
    if-eqz p4, :cond_47

    invoke-virtual {p1, v5}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 999
    invoke-virtual {p1, v2, v5}, Lcom/android/server/pm/PackageSetting;->setInstantApp(ZI)V

    .line 995
    .end local v5    # "currentUserId":I
    :cond_47
    :goto_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 1003
    :cond_4a
    :goto_4a
    return-void
.end method
