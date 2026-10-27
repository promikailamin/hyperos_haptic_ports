.class final Lcom/android/server/pm/ReconcilePackageUtils;
.super Ljava/lang/Object;
.source "ReconcilePackageUtils.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCompatSignatureUpdateNeeded(Lcom/android/server/pm/Settings$VersionInfo;)Z
    .registers 3
    .param p0, "ver"    # Lcom/android/server/pm/Settings$VersionInfo;

    .line 299
    iget v0, p0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static isRecoverSignatureUpdateNeeded(Lcom/android/server/pm/Settings$VersionInfo;)Z
    .registers 3
    .param p0, "ver"    # Lcom/android/server/pm/Settings$VersionInfo;

    .line 303
    iget v0, p0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static reconcilePackages(Lcom/android/server/pm/ReconcileRequest;Lcom/android/server/pm/SharedLibrariesImpl;Lcom/android/server/pm/KeySetManagerService;Lcom/android/server/pm/Settings;)Ljava/util/Map;
    .registers 45
    .param p0, "request"    # Lcom/android/server/pm/ReconcileRequest;
    .param p1, "sharedLibraries"    # Lcom/android/server/pm/SharedLibrariesImpl;
    .param p2, "ksms"    # Lcom/android/server/pm/KeySetManagerService;
    .param p3, "settings"    # Lcom/android/server/pm/Settings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/ReconcileRequest;",
            "Lcom/android/server/pm/SharedLibrariesImpl;",
            "Lcom/android/server/pm/KeySetManagerService;",
            "Lcom/android/server/pm/Settings;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/ReconciledPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ReconcileFailure;
        }
    .end annotation

    .line 46
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    iget-object v12, v13, Lcom/android/server/pm/ReconcileRequest;->mScannedPackages:Ljava/util/Map;

    .line 48
    .local v12, "scannedPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/ScanResult;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v11, v0

    .line 51
    .local v11, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/ReconciledPackage;>;"
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, v13, Lcom/android/server/pm/ReconcileRequest;->mAllPackages:Ljava/util/Map;

    .line 52
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v10, v0

    .line 54
    .local v10, "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    iget-object v0, v13, Lcom/android/server/pm/ReconcileRequest;->mAllPackages:Ljava/util/Map;

    invoke-virtual {v10, v0}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 56
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v9, v0

    .line 59
    .local v9, "incomingSharedLibraries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_36
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 60
    .local v8, "installPackageName":Ljava/lang/String;
    invoke-interface {v12, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/server/pm/ScanResult;

    .line 63
    .local v7, "scanResult":Lcom/android/server/pm/ScanResult;
    iget-object v0, v7, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v7, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v1, v1, Lcom/android/server/pm/ScanRequest;->mParsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    invoke-virtual {v10, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    nop

    .line 68
    invoke-virtual {v14, v7}, Lcom/android/server/pm/SharedLibrariesImpl;->getAllowedSharedLibInfos(Lcom/android/server/pm/ScanResult;)Ljava/util/List;

    move-result-object v17

    .line 69
    .local v17, "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    if-eqz v17, :cond_98

    .line 70
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_62
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_98

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/SharedLibraryInfo;

    .line 71
    .local v1, "info":Landroid/content/pm/SharedLibraryInfo;
    invoke-static {v9, v1}, Lcom/android/server/pm/SharedLibraryUtils;->addSharedLibraryToPackageVersionMap(Ljava/util/Map;Landroid/content/pm/SharedLibraryInfo;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 76
    .end local v1    # "info":Landroid/content/pm/SharedLibraryInfo;
    goto :goto_62

    .line 73
    .restart local v1    # "info":Landroid/content/pm/SharedLibraryInfo;
    :cond_75
    new-instance v0, Lcom/android/server/pm/ReconcileFailure;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shared Library "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is being installed twice in this set!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/pm/ReconcileFailure;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    .end local v1    # "info":Landroid/content/pm/SharedLibraryInfo;
    :cond_98
    iget-object v0, v13, Lcom/android/server/pm/ReconcileRequest;->mInstallArgs:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/pm/InstallArgs;

    .line 81
    .local v6, "installArgs":Lcom/android/server/pm/InstallArgs;
    iget-object v0, v13, Lcom/android/server/pm/ReconcileRequest;->mInstallResults:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/pm/PackageInstalledInfo;

    .line 82
    .local v5, "res":Lcom/android/server/pm/PackageInstalledInfo;
    iget-object v0, v13, Lcom/android/server/pm/ReconcileRequest;->mPreparedPackages:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/pm/PrepareResult;

    .line 83
    .local v4, "prepareResult":Lcom/android/server/pm/PrepareResult;
    const/4 v0, 0x1

    if-eqz v6, :cond_b8

    move v2, v0

    goto :goto_b9

    :cond_b8
    const/4 v2, 0x0

    :goto_b9
    move/from16 v18, v2

    .line 84
    .local v18, "isInstall":Z
    if-eqz v18, :cond_e1

    if-eqz v5, :cond_c2

    if-eqz v4, :cond_c2

    goto :goto_e1

    .line 85
    :cond_c2
    new-instance v0, Lcom/android/server/pm/ReconcileFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reconcile arguments are not balanced for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/pm/ReconcileFailure;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_e1
    :goto_e1
    const/4 v2, 0x0

    if-eqz v18, :cond_135

    iget-boolean v3, v4, Lcom/android/server/pm/PrepareResult;->mReplace:Z

    if-eqz v3, :cond_135

    iget-boolean v3, v4, Lcom/android/server/pm/PrepareResult;->mSystem:Z

    if-nez v3, :cond_135

    .line 92
    iget-object v3, v7, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget v3, v3, Lcom/android/server/pm/ScanRequest;->mScanFlags:I

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_f6

    move v3, v0

    goto :goto_f7

    :cond_f6
    const/4 v3, 0x0

    .line 93
    .local v3, "killApp":Z
    :goto_f7
    nop

    .line 94
    if-eqz v3, :cond_fd

    const/16 v19, 0x0

    goto :goto_ff

    :cond_fd
    const/16 v19, 0x8

    :goto_ff
    or-int/lit8 v1, v19, 0x1

    .line 95
    .local v1, "deleteFlags":I
    iget-object v0, v5, Lcom/android/server/pm/PackageInstalledInfo;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    move/from16 v21, v3

    .end local v3    # "killApp":Z
    .local v21, "killApp":Z
    iget-object v3, v4, Lcom/android/server/pm/PrepareResult;->mOriginalPs:Lcom/android/server/pm/PackageSetting;

    move-object/from16 v22, v5

    .end local v5    # "res":Lcom/android/server/pm/PackageInstalledInfo;
    .local v22, "res":Lcom/android/server/pm/PackageInstalledInfo;
    iget-object v5, v4, Lcom/android/server/pm/PrepareResult;->mDisabledPs:Lcom/android/server/pm/PackageSetting;

    invoke-static {v0, v3, v5, v1, v2}, Lcom/android/server/pm/DeletePackageHelper;->mayDeletePackageLocked(Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;ILandroid/os/UserHandle;)Lcom/android/server/pm/DeletePackageAction;

    move-result-object v0

    .line 98
    .local v0, "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    if-eqz v0, :cond_114

    .line 103
    .end local v1    # "deleteFlags":I
    .end local v21    # "killApp":Z
    move-object/from16 v21, v0

    goto :goto_13a

    .line 99
    .restart local v1    # "deleteFlags":I
    .restart local v21    # "killApp":Z
    :cond_114
    new-instance v2, Lcom/android/server/pm/ReconcileFailure;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "May not delete "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to replace"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, -0xa

    invoke-direct {v2, v5, v3}, Lcom/android/server/pm/ReconcileFailure;-><init>(ILjava/lang/String;)V

    throw v2

    .line 91
    .end local v0    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .end local v1    # "deleteFlags":I
    .end local v21    # "killApp":Z
    .end local v22    # "res":Lcom/android/server/pm/PackageInstalledInfo;
    .restart local v5    # "res":Lcom/android/server/pm/PackageInstalledInfo;
    :cond_135
    move-object/from16 v22, v5

    .line 104
    .end local v5    # "res":Lcom/android/server/pm/PackageInstalledInfo;
    .restart local v22    # "res":Lcom/android/server/pm/PackageInstalledInfo;
    const/4 v0, 0x0

    move-object/from16 v21, v0

    .line 107
    .local v21, "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    :goto_13a
    iget-object v0, v7, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget v5, v0, Lcom/android/server/pm/ScanRequest;->mScanFlags:I

    .line 108
    .local v5, "scanFlags":I
    iget-object v0, v7, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget v3, v0, Lcom/android/server/pm/ScanRequest;->mParseFlags:I

    .line 109
    .local v3, "parseFlags":I
    iget-object v0, v7, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v1, v0, Lcom/android/server/pm/ScanRequest;->mParsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 111
    .local v1, "parsedPackage":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    iget-object v0, v7, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    move-object/from16 v30, v12

    .end local v12    # "scannedPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/ScanResult;>;"
    .local v30, "scannedPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/ScanResult;>;"
    iget-object v12, v0, Lcom/android/server/pm/ScanRequest;->mDisabledPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 113
    .local v12, "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    iget-object v0, v7, Lcom/android/server/pm/ScanResult;->mStaticSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    if-nez v0, :cond_151

    goto :goto_155

    .line 114
    :cond_151
    invoke-virtual {v14, v7}, Lcom/android/server/pm/SharedLibrariesImpl;->getStaticSharedLibLatestVersionSetting(Lcom/android/server/pm/ScanResult;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    :goto_155
    move-object/from16 v31, v2

    .line 116
    .local v31, "lastStaticSharedLibSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v4, :cond_15e

    if-eqz v31, :cond_15e

    .line 117
    move-object/from16 v0, v31

    goto :goto_160

    .line 118
    :cond_15e
    iget-object v0, v7, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    :goto_160
    move-object v2, v0

    .line 119
    .local v2, "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    const/16 v32, 0x0

    .line 120
    .local v32, "removeAppKeySetData":Z
    const/16 v33, 0x0

    .line 121
    .local v33, "sharedUserSignaturesChanged":Z
    const/16 v34, 0x0

    .line 122
    .local v34, "signingDetails":Landroid/content/pm/SigningDetails;
    move-object/from16 v14, p3

    move-object/from16 v35, v11

    .end local v11    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/ReconciledPackage;>;"
    .local v35, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/ReconciledPackage;>;"
    invoke-virtual {v14, v2}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v11

    .line 124
    .local v11, "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    invoke-virtual {v15, v2, v11, v5}, Lcom/android/server/pm/KeySetManagerService;->shouldCheckUpgradeKeySetLocked(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/SharedUserApi;I)Z

    move-result v0

    move-object/from16 v36, v4

    .end local v4    # "prepareResult":Lcom/android/server/pm/PrepareResult;
    .local v36, "prepareResult":Lcom/android/server/pm/PrepareResult;
    const-string v4, " signature changed; retaining data."

    move/from16 v37, v5

    .end local v5    # "scanFlags":I
    .local v37, "scanFlags":I
    const-string v5, "System package "

    move-object/from16 v38, v9

    .end local v9    # "incomingSharedLibraries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    .local v38, "incomingSharedLibraries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    const/4 v9, 0x5

    if-eqz v0, :cond_1d5

    .line 126
    invoke-virtual {v15, v2, v1}, Lcom/android/server/pm/KeySetManagerService;->checkUpgradeKeySetLocked(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v0

    if-eqz v0, :cond_187

    goto :goto_1a7

    .line 130
    :cond_187
    and-int/lit8 v0, v3, 0x10

    if-eqz v0, :cond_1b1

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v9, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 141
    .end local v0    # "msg":Ljava/lang/String;
    :goto_1a7
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    move-object/from16 v23, v2

    move-object/from16 v39, v10

    .end local v34    # "signingDetails":Landroid/content/pm/SigningDetails;
    .local v0, "signingDetails":Landroid/content/pm/SigningDetails;
    goto/16 :goto_35e

    .line 131
    .end local v0    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v34    # "signingDetails":Landroid/content/pm/SigningDetails;
    :cond_1b1
    new-instance v0, Lcom/android/server/pm/ReconcileFailure;

    const/4 v4, -0x7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 132
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " upgrade keys do not match the previously installed version"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/android/server/pm/ReconcileFailure;-><init>(ILjava/lang/String;)V

    throw v0

    .line 145
    :cond_1d5
    :try_start_1d5
    iget-object v0, v13, Lcom/android/server/pm/ReconcileRequest;->mVersionInfos:Ljava/util/Map;

    .line 146
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    .line 147
    .local v0, "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    invoke-static {v0}, Lcom/android/server/pm/ReconcilePackageUtils;->isCompatSignatureUpdateNeeded(Lcom/android/server/pm/Settings$VersionInfo;)Z

    move-result v27

    .line 148
    .local v27, "compareCompat":Z
    invoke-static {v0}, Lcom/android/server/pm/ReconcilePackageUtils;->isRecoverSignatureUpdateNeeded(Lcom/android/server/pm/Settings$VersionInfo;)Z

    move-result v28
    :try_end_1e5
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1d5 .. :try_end_1e5} :catch_2bc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d5 .. :try_end_1e5} :catch_2af

    .line 149
    .local v28, "compareRecover":Z
    if-eqz v6, :cond_1ff

    :try_start_1e7
    iget v9, v6, Lcom/android/server/pm/InstallArgs;->mInstallReason:I
    :try_end_1e9
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1e7 .. :try_end_1e9} :catch_1f8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e7 .. :try_end_1e9} :catch_1f1

    move-object/from16 v39, v10

    const/4 v10, 0x5

    .end local v10    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .local v39, "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    if-ne v9, v10, :cond_201

    const/16 v29, 0x1

    goto :goto_203

    .line 250
    .end local v0    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v27    # "compareCompat":Z
    .end local v28    # "compareRecover":Z
    .end local v39    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v10    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :catch_1f1
    move-exception v0

    move-object/from16 v39, v10

    move-object/from16 v23, v2

    .end local v10    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v39    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    goto/16 :goto_2b4

    .line 198
    .end local v39    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v10    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :catch_1f8
    move-exception v0

    move-object/from16 v39, v10

    move-object/from16 v23, v2

    .end local v10    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v39    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    goto/16 :goto_2c1

    .line 149
    .end local v39    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v0    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .restart local v10    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v27    # "compareCompat":Z
    .restart local v28    # "compareRecover":Z
    :cond_1ff
    move-object/from16 v39, v10

    .end local v10    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v39    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :cond_201
    const/16 v29, 0x0

    .line 151
    .local v29, "isRollback":Z
    :goto_203
    nop

    .line 154
    :try_start_204
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v26

    .line 152
    move-object/from16 v23, v2

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    invoke-static/range {v23 .. v29}, Lcom/android/server/pm/PackageManagerServiceUtils;->verifySignatures(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;ZZZ)Z

    move-result v9

    .line 157
    .local v9, "compatMatch":Z
    if-eqz v9, :cond_217

    .line 158
    const/4 v10, 0x1

    move/from16 v32, v10

    .line 162
    :cond_217
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v10
    :try_end_21b
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_204 .. :try_end_21b} :catch_2ab
    .catch Ljava/lang/IllegalArgumentException; {:try_start_204 .. :try_end_21b} :catch_2a7

    .line 168
    .end local v34    # "signingDetails":Landroid/content/pm/SigningDetails;
    .local v10, "signingDetails":Landroid/content/pm/SigningDetails;
    if-eqz v11, :cond_29e

    .line 173
    move-object/from16 v19, v0

    .end local v0    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .local v19, "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    :try_start_21f
    iget-object v0, v11, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 175
    .local v0, "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    invoke-virtual {v0, v10}, Landroid/content/pm/SigningDetails;->mergeLineageWith(Landroid/content/pm/SigningDetails;)Landroid/content/pm/SigningDetails;

    move-result-object v23
    :try_end_227
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_21f .. :try_end_227} :catch_298
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21f .. :try_end_227} :catch_292

    move-object/from16 v24, v23

    .line 177
    .local v24, "mergedDetails":Landroid/content/pm/SigningDetails;
    move-object/from16 v23, v2

    move-object/from16 v2, v24

    .end local v24    # "mergedDetails":Landroid/content/pm/SigningDetails;
    .local v2, "mergedDetails":Landroid/content/pm/SigningDetails;
    .local v23, "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    if-eq v2, v0, :cond_27b

    .line 182
    :try_start_22f
    invoke-virtual {v11}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_237
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_270

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 183
    .local v25, "androidPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-interface/range {v25 .. v25}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_267

    .line 184
    move-object/from16 v26, v0

    .end local v0    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    .local v26, "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    invoke-interface/range {v25 .. v25}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 185
    move/from16 v40, v9

    .end local v9    # "compatMatch":Z
    .local v40, "compatMatch":Z
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 184
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26b

    .line 186
    nop

    .line 187
    invoke-interface/range {v25 .. v25}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    const/4 v9, 0x2

    .line 186
    invoke-virtual {v2, v0, v9}, Landroid/content/pm/SigningDetails;->mergeLineageWith(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;

    move-result-object v0

    move-object v2, v0

    goto :goto_26b

    .line 183
    .end local v26    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    .end local v40    # "compatMatch":Z
    .restart local v0    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    .restart local v9    # "compatMatch":Z
    :cond_267
    move-object/from16 v26, v0

    move/from16 v40, v9

    .line 190
    .end local v0    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    .end local v9    # "compatMatch":Z
    .end local v25    # "androidPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local v26    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    .restart local v40    # "compatMatch":Z
    :cond_26b
    :goto_26b
    move-object/from16 v0, v26

    move/from16 v9, v40

    goto :goto_237

    .line 191
    .end local v26    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    .end local v40    # "compatMatch":Z
    .restart local v0    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    .restart local v9    # "compatMatch":Z
    :cond_270
    move-object/from16 v26, v0

    move/from16 v40, v9

    .end local v0    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    .end local v9    # "compatMatch":Z
    .restart local v26    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    .restart local v40    # "compatMatch":Z
    iget-object v0, v11, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object v2, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    move-object/from16 v24, v2

    goto :goto_281

    .line 177
    .end local v26    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    .end local v40    # "compatMatch":Z
    .restart local v0    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    .restart local v9    # "compatMatch":Z
    :cond_27b
    move-object/from16 v26, v0

    move/from16 v40, v9

    .end local v0    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    .end local v9    # "compatMatch":Z
    .restart local v26    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    .restart local v40    # "compatMatch":Z
    move-object/from16 v24, v2

    .line 194
    .end local v2    # "mergedDetails":Landroid/content/pm/SigningDetails;
    .restart local v24    # "mergedDetails":Landroid/content/pm/SigningDetails;
    :goto_281
    iget-object v0, v11, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    if-nez v0, :cond_2a4

    .line 195
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, v11, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;
    :try_end_289
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_22f .. :try_end_289} :catch_28e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22f .. :try_end_289} :catch_28a

    goto :goto_2a4

    .line 250
    .end local v19    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v24    # "mergedDetails":Landroid/content/pm/SigningDetails;
    .end local v26    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    .end local v27    # "compareCompat":Z
    .end local v28    # "compareRecover":Z
    .end local v29    # "isRollback":Z
    .end local v40    # "compatMatch":Z
    :catch_28a
    move-exception v0

    move-object/from16 v34, v10

    goto :goto_2b4

    .line 198
    :catch_28e
    move-exception v0

    move-object/from16 v34, v10

    goto :goto_2c1

    .line 250
    .end local v23    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    .local v2, "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    :catch_292
    move-exception v0

    move-object/from16 v23, v2

    move-object/from16 v34, v10

    .end local v2    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    .restart local v23    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    goto :goto_2b4

    .line 198
    .end local v23    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    .restart local v2    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    :catch_298
    move-exception v0

    move-object/from16 v23, v2

    move-object/from16 v34, v10

    .end local v2    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    .restart local v23    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    goto :goto_2c1

    .line 168
    .end local v23    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    .local v0, "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .restart local v2    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    .restart local v9    # "compatMatch":Z
    .restart local v27    # "compareCompat":Z
    .restart local v28    # "compareRecover":Z
    .restart local v29    # "isRollback":Z
    :cond_29e
    move-object/from16 v19, v0

    move-object/from16 v23, v2

    move/from16 v40, v9

    .line 256
    .end local v0    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v2    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    .end local v9    # "compatMatch":Z
    .end local v27    # "compareCompat":Z
    .end local v28    # "compareRecover":Z
    .end local v29    # "isRollback":Z
    .restart local v23    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    :cond_2a4
    :goto_2a4
    move-object v0, v10

    goto/16 :goto_35e

    .line 250
    .end local v10    # "signingDetails":Landroid/content/pm/SigningDetails;
    .end local v23    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    .restart local v2    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    .restart local v34    # "signingDetails":Landroid/content/pm/SigningDetails;
    :catch_2a7
    move-exception v0

    move-object/from16 v23, v2

    .end local v2    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    .restart local v23    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    goto :goto_2b4

    .line 198
    .end local v23    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    .restart local v2    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    :catch_2ab
    move-exception v0

    move-object/from16 v23, v2

    .end local v2    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    .restart local v23    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    goto :goto_2c1

    .line 250
    .end local v23    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    .end local v39    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v2    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    .local v10, "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :catch_2af
    move-exception v0

    move-object/from16 v23, v2

    move-object/from16 v39, v10

    .line 253
    .end local v2    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    .end local v10    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v23    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    .restart local v39    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :goto_2b4
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Signing certificates comparison made on incomparable signing details but somehow passed verifySignatures!"

    invoke-direct {v2, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 198
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v23    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    .end local v39    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v2    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    .restart local v10    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :catch_2bc
    move-exception v0

    move-object/from16 v23, v2

    move-object/from16 v39, v10

    .line 199
    .end local v2    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    .end local v10    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    .restart local v23    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    .restart local v39    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :goto_2c1
    and-int/lit8 v2, v3, 0x10

    if-eqz v2, :cond_3ad

    .line 202
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v2

    .line 212
    .end local v34    # "signingDetails":Landroid/content/pm/SigningDetails;
    .local v2, "signingDetails":Landroid/content/pm/SigningDetails;
    if-eqz v11, :cond_33d

    .line 213
    iget-object v9, v11, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    if-eqz v9, :cond_32b

    .line 215
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v9

    .line 216
    invoke-virtual {v11}, Lcom/android/server/pm/SharedUserSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v10

    .line 214
    invoke-static {v9, v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->canJoinSharedUserId(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)Z

    move-result v9

    if-nez v9, :cond_32b

    .line 217
    const-string/jumbo v4, "ro.product.first_api_level"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/16 v5, 0x1d

    if-gt v4, v5, :cond_304

    .line 224
    new-instance v4, Lcom/android/server/pm/ReconcileFailure;

    const/16 v5, -0x68

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Signature mismatch for shared user: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v5, v9}, Lcom/android/server/pm/ReconcileFailure;-><init>(ILjava/lang/String;)V

    throw v4

    .line 233
    :cond_304
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Signature mismatch on system package "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 235
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " for shared user "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 241
    :cond_32b
    const/4 v9, 0x1

    .line 242
    .end local v33    # "sharedUserSignaturesChanged":Z
    .local v9, "sharedUserSignaturesChanged":Z
    iget-object v10, v11, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 243
    move-object/from16 v19, v2

    .end local v2    # "signingDetails":Landroid/content/pm/SigningDetails;
    .local v19, "signingDetails":Landroid/content/pm/SigningDetails;
    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v2

    iput-object v2, v10, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 244
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v11, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    move/from16 v33, v9

    goto :goto_33f

    .line 212
    .end local v9    # "sharedUserSignaturesChanged":Z
    .end local v19    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v2    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v33    # "sharedUserSignaturesChanged":Z
    :cond_33d
    move-object/from16 v19, v2

    .line 247
    .end local v2    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v19    # "signingDetails":Landroid/content/pm/SigningDetails;
    :goto_33f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "msg":Ljava/lang/String;
    const/4 v4, 0x5

    invoke-static {v4, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 256
    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    .end local v2    # "msg":Ljava/lang/String;
    move-object/from16 v0, v19

    .line 259
    .end local v19    # "signingDetails":Landroid/content/pm/SigningDetails;
    .local v0, "signingDetails":Landroid/content/pm/SigningDetails;
    :goto_35e
    new-instance v10, Lcom/android/server/pm/ReconciledPackage;

    iget-object v4, v7, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    iget-object v2, v13, Lcom/android/server/pm/ReconcileRequest;->mPreparedPackages:Ljava/util/Map;

    .line 261
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/android/server/pm/PrepareResult;

    move-object/from16 v19, v1

    .end local v1    # "parsedPackage":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .local v19, "parsedPackage":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    move-object v1, v10

    move-object/from16 v20, v23

    .end local v23    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    .local v20, "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v2, p0

    move/from16 v23, v3

    .end local v3    # "parseFlags":I
    .local v23, "parseFlags":I
    move-object v3, v6

    move-object/from16 v24, v36

    .end local v36    # "prepareResult":Lcom/android/server/pm/PrepareResult;
    .local v24, "prepareResult":Lcom/android/server/pm/PrepareResult;
    move/from16 v25, v37

    .end local v37    # "scanFlags":I
    .local v25, "scanFlags":I
    move-object/from16 v5, v22

    move-object/from16 v26, v6

    .end local v6    # "installArgs":Lcom/android/server/pm/InstallArgs;
    .local v26, "installArgs":Lcom/android/server/pm/InstallArgs;
    move-object v6, v9

    move-object/from16 v27, v7

    .end local v7    # "scanResult":Lcom/android/server/pm/ScanResult;
    .local v27, "scanResult":Lcom/android/server/pm/ScanResult;
    move-object v9, v8

    .end local v8    # "installPackageName":Ljava/lang/String;
    .local v9, "installPackageName":Ljava/lang/String;
    move-object/from16 v8, v21

    move-object v14, v9

    move-object/from16 v13, v38

    .end local v9    # "installPackageName":Ljava/lang/String;
    .end local v38    # "incomingSharedLibraries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    .local v13, "incomingSharedLibraries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    .local v14, "installPackageName":Ljava/lang/String;
    move-object/from16 v9, v17

    move-object/from16 v15, v39

    move-object v13, v10

    .end local v13    # "incomingSharedLibraries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    .end local v39    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .local v15, "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v38    # "incomingSharedLibraries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    move-object v10, v0

    move-object/from16 v28, v11

    move-object/from16 v15, v35

    .end local v11    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .end local v35    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/ReconciledPackage;>;"
    .local v15, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/ReconciledPackage;>;"
    .local v28, "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .restart local v39    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    move/from16 v11, v33

    move-object/from16 v29, v30

    move-object/from16 v30, v12

    .end local v12    # "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .local v29, "scannedPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/ScanResult;>;"
    .local v30, "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    move/from16 v12, v32

    invoke-direct/range {v1 .. v12}, Lcom/android/server/pm/ReconciledPackage;-><init>(Lcom/android/server/pm/ReconcileRequest;Lcom/android/server/pm/InstallArgs;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageInstalledInfo;Lcom/android/server/pm/PrepareResult;Lcom/android/server/pm/ScanResult;Lcom/android/server/pm/DeletePackageAction;Ljava/util/List;Landroid/content/pm/SigningDetails;ZZ)V

    .line 259
    invoke-interface {v15, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .end local v0    # "signingDetails":Landroid/content/pm/SigningDetails;
    .end local v14    # "installPackageName":Ljava/lang/String;
    .end local v17    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v18    # "isInstall":Z
    .end local v19    # "parsedPackage":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .end local v20    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    .end local v21    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .end local v22    # "res":Lcom/android/server/pm/PackageInstalledInfo;
    .end local v23    # "parseFlags":I
    .end local v24    # "prepareResult":Lcom/android/server/pm/PrepareResult;
    .end local v25    # "scanFlags":I
    .end local v26    # "installArgs":Lcom/android/server/pm/InstallArgs;
    .end local v27    # "scanResult":Lcom/android/server/pm/ScanResult;
    .end local v28    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .end local v30    # "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v31    # "lastStaticSharedLibSetting":Lcom/android/server/pm/PackageSetting;
    .end local v32    # "removeAppKeySetData":Z
    .end local v33    # "sharedUserSignaturesChanged":Z
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object v11, v15

    move-object/from16 v12, v29

    move-object/from16 v9, v38

    move-object/from16 v10, v39

    move-object/from16 v15, p2

    goto/16 :goto_36

    .line 200
    .end local v15    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/ReconciledPackage;>;"
    .end local v29    # "scannedPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/ScanResult;>;"
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    .restart local v1    # "parsedPackage":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .restart local v3    # "parseFlags":I
    .restart local v6    # "installArgs":Lcom/android/server/pm/InstallArgs;
    .restart local v7    # "scanResult":Lcom/android/server/pm/ScanResult;
    .restart local v8    # "installPackageName":Ljava/lang/String;
    .restart local v11    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .restart local v12    # "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v17    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v18    # "isInstall":Z
    .restart local v21    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .restart local v22    # "res":Lcom/android/server/pm/PackageInstalledInfo;
    .local v23, "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    .local v30, "scannedPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/ScanResult;>;"
    .restart local v31    # "lastStaticSharedLibSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v32    # "removeAppKeySetData":Z
    .restart local v33    # "sharedUserSignaturesChanged":Z
    .restart local v34    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v35    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/ReconciledPackage;>;"
    .restart local v36    # "prepareResult":Lcom/android/server/pm/PrepareResult;
    .restart local v37    # "scanFlags":I
    :cond_3ad
    move-object/from16 v19, v1

    .end local v1    # "parsedPackage":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .restart local v19    # "parsedPackage":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    new-instance v1, Lcom/android/server/pm/ReconcileFailure;

    invoke-direct {v1, v0}, Lcom/android/server/pm/ReconcileFailure;-><init>(Lcom/android/server/pm/PackageManagerException;)V

    throw v1

    .line 266
    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    .end local v3    # "parseFlags":I
    .end local v6    # "installArgs":Lcom/android/server/pm/InstallArgs;
    .end local v7    # "scanResult":Lcom/android/server/pm/ScanResult;
    .end local v8    # "installPackageName":Ljava/lang/String;
    .end local v17    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v18    # "isInstall":Z
    .end local v19    # "parsedPackage":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .end local v21    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .end local v22    # "res":Lcom/android/server/pm/PackageInstalledInfo;
    .end local v23    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    .end local v30    # "scannedPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/ScanResult;>;"
    .end local v31    # "lastStaticSharedLibSetting":Lcom/android/server/pm/PackageSetting;
    .end local v32    # "removeAppKeySetData":Z
    .end local v33    # "sharedUserSignaturesChanged":Z
    .end local v34    # "signingDetails":Landroid/content/pm/SigningDetails;
    .end local v35    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/ReconciledPackage;>;"
    .end local v36    # "prepareResult":Lcom/android/server/pm/PrepareResult;
    .end local v37    # "scanFlags":I
    .end local v38    # "incomingSharedLibraries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    .end local v39    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .local v9, "incomingSharedLibraries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    .restart local v10    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .local v11, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/ReconciledPackage;>;"
    .local v12, "scannedPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/ScanResult;>;"
    :cond_3b5
    move-object/from16 v38, v9

    move-object/from16 v39, v10

    move-object v15, v11

    move-object/from16 v29, v12

    .end local v9    # "incomingSharedLibraries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    .end local v10    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .end local v11    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/ReconciledPackage;>;"
    .end local v12    # "scannedPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/ScanResult;>;"
    .restart local v15    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/ReconciledPackage;>;"
    .restart local v29    # "scannedPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/ScanResult;>;"
    .restart local v38    # "incomingSharedLibraries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    .restart local v39    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    invoke-interface/range {v29 .. v29}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3c4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_427

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 274
    .local v1, "installPackageName":Ljava/lang/String;
    move-object/from16 v2, v29

    .end local v29    # "scannedPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/ScanResult;>;"
    .local v2, "scannedPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/ScanResult;>;"
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ScanResult;

    .line 275
    .local v3, "scanResult":Lcom/android/server/pm/ScanResult;
    iget-object v4, v3, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget v4, v4, Lcom/android/server/pm/ScanRequest;->mScanFlags:I

    and-int/lit8 v4, v4, 0x10

    if-nez v4, :cond_41e

    iget-object v4, v3, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget v4, v4, Lcom/android/server/pm/ScanRequest;->mParseFlags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_3eb

    .line 278
    move-object/from16 v29, v2

    goto :goto_3c4

    .line 281
    :cond_3eb
    :try_start_3eb
    invoke-interface {v15, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/ReconciledPackage;

    iget-object v5, v3, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v5, v5, Lcom/android/server/pm/ScanRequest;->mParsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    :try_end_3f5
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_3eb .. :try_end_3f5} :catch_40b

    .line 282
    move-object/from16 v6, p1

    move-object/from16 v8, v38

    move-object/from16 v7, v39

    .end local v38    # "incomingSharedLibraries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    .end local v39    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .local v7, "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .local v8, "incomingSharedLibraries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    :try_start_3fb
    invoke-virtual {v6, v5, v7, v8}, Lcom/android/server/pm/SharedLibrariesImpl;->collectSharedLibraryInfos(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Map;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/pm/ReconciledPackage;->mCollectedSharedLibraryInfos:Ljava/util/ArrayList;
    :try_end_401
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_3fb .. :try_end_401} :catch_409

    .line 287
    nop

    .line 288
    .end local v1    # "installPackageName":Ljava/lang/String;
    .end local v3    # "scanResult":Lcom/android/server/pm/ScanResult;
    move-object/from16 v29, v2

    move-object/from16 v39, v7

    move-object/from16 v38, v8

    goto :goto_3c4

    .line 285
    .restart local v1    # "installPackageName":Ljava/lang/String;
    .restart local v3    # "scanResult":Lcom/android/server/pm/ScanResult;
    :catch_409
    move-exception v0

    goto :goto_412

    .end local v7    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .end local v8    # "incomingSharedLibraries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    .restart local v38    # "incomingSharedLibraries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    .restart local v39    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :catch_40b
    move-exception v0

    move-object/from16 v6, p1

    move-object/from16 v8, v38

    move-object/from16 v7, v39

    .line 286
    .end local v38    # "incomingSharedLibraries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    .end local v39    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    .restart local v7    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v8    # "incomingSharedLibraries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    :goto_412
    new-instance v4, Lcom/android/server/pm/ReconcileFailure;

    iget v5, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v5, v9}, Lcom/android/server/pm/ReconcileFailure;-><init>(ILjava/lang/String;)V

    throw v4

    .line 275
    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    .end local v7    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .end local v8    # "incomingSharedLibraries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    .restart local v38    # "incomingSharedLibraries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    .restart local v39    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :cond_41e
    move-object/from16 v6, p1

    move-object/from16 v8, v38

    move-object/from16 v7, v39

    .end local v38    # "incomingSharedLibraries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    .end local v39    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v7    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v8    # "incomingSharedLibraries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    move-object/from16 v29, v2

    goto :goto_3c4

    .line 290
    .end local v1    # "installPackageName":Ljava/lang/String;
    .end local v2    # "scannedPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/ScanResult;>;"
    .end local v3    # "scanResult":Lcom/android/server/pm/ScanResult;
    .end local v7    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .end local v8    # "incomingSharedLibraries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    .restart local v29    # "scannedPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/ScanResult;>;"
    .restart local v38    # "incomingSharedLibraries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    .restart local v39    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :cond_427
    return-object v15
.end method
