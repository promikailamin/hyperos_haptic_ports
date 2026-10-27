.class final Lcom/android/server/pm/ApexManager$ApexManagerFlattenedApex;
.super Lcom/android/server/pm/ApexManager;
.source "ApexManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ApexManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ApexManagerFlattenedApex"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1314
    invoke-direct {p0}, Lcom/android/server/pm/ApexManager;-><init>()V

    return-void
.end method


# virtual methods
.method abortStagedSession(I)Z
    .registers 3
    .param p1, "sessionId"    # I

    .line 1426
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public calculateSizeForCompressedApex(Landroid/apex/CompressedApexInfoList;)J
    .registers 3
    .param p1, "infoList"    # Landroid/apex/CompressedApexInfoList;

    .line 1499
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public destroyCeSnapshots(II)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "rollbackId"    # I

    .line 1484
    const/4 v0, 0x1

    return v0
.end method

.method public destroyCeSnapshotsNotSpecified(I[I)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "retainRollbackIds"    # [I

    .line 1489
    const/4 v0, 0x1

    return v0
.end method

.method public destroyDeSnapshots(I)Z
    .registers 3
    .param p1, "rollbackId"    # I

    .line 1479
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1527
    return-void
.end method

.method public getActiveApexInfos()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/ApexManager$ActiveApexInfo;",
            ">;"
        }
    .end annotation

    .line 1321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1322
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ApexManager$ActiveApexInfo;>;"
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object v1

    .line 1323
    .local v1, "apexDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 1324
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1327
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_49

    .line 1328
    array-length v3, v2

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v3, :cond_49

    aget-object v5, v2, v4

    .line 1329
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_46

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_46

    .line 1332
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.android.art.debug"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_46

    .line 1333
    new-instance v6, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    .line 1334
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v5, v7, v5, v8}, Lcom/android/server/pm/ApexManager$ActiveApexInfo;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;Lcom/android/server/pm/ApexManager$ActiveApexInfo-IA;)V

    .line 1333
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1328
    .end local v5    # "file":Ljava/io/File;
    :cond_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 1339
    .end local v2    # "files":[Ljava/io/File;
    :cond_49
    return-object v0
.end method

.method public getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "containedPackageName"    # Ljava/lang/String;

    .line 1377
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1379
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActivePackageNameForApexModuleName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "apexModuleName"    # Ljava/lang/String;

    .line 1464
    const/4 v0, 0x0

    return-object v0
.end method

.method getActivePackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1355
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getApexModuleNameForPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "apexPackageName"    # Ljava/lang/String;

    .line 1458
    const/4 v0, 0x0

    return-object v0
.end method

.method public getApexSystemServices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/ApexSystemServiceInfo;",
            ">;"
        }
    .end annotation

    .line 1516
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getApkInApexInstallError(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "apexPackageName"    # Ljava/lang/String;

    .line 1447
    const/4 v0, 0x0

    return-object v0
.end method

.method getApksInApex(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "apexPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1452
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBackingApexFile(Ljava/io/File;)Ljava/io/File;
    .registers 3
    .param p1, "file"    # Ljava/io/File;

    .line 1521
    const/4 v0, 0x0

    return-object v0
.end method

.method getFactoryPackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1360
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getInactivePackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1365
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 1350
    const/4 v0, 0x0

    return-object v0
.end method

.method getSessions()Landroid/util/SparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/apex/ApexSessionInfo;",
            ">;"
        }
    .end annotation

    .line 1389
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    return-object v0
.end method

.method getStagedApexInfos(Landroid/apex/ApexSessionParams;)[Landroid/apex/ApexInfo;
    .registers 3
    .param p1, "params"    # Landroid/apex/ApexSessionParams;

    .line 1401
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;
    .registers 3
    .param p1, "sessionId"    # I

    .line 1384
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method installPackage(Ljava/io/File;Lcom/android/server/pm/parsing/PackageParser2;)V
    .registers 5
    .param p1, "apexFile"    # Ljava/io/File;
    .param p2, "packageParser"    # Lcom/android/server/pm/parsing/PackageParser2;

    .line 1509
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "APEX updates are not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method isApexPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1370
    const/4 v0, 0x0

    return v0
.end method

.method isApexSupported()Z
    .registers 2

    .line 1416
    const/4 v0, 0x0

    return v0
.end method

.method public markBootCompleted()V
    .registers 1

    .line 1495
    return-void
.end method

.method markStagedSessionReady(I)V
    .registers 3
    .param p1, "sessionId"    # I

    .line 1406
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method markStagedSessionSuccessful(I)V
    .registers 3
    .param p1, "sessionId"    # I

    .line 1411
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method registerApkInApex(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 2
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1437
    return-void
.end method

.method reportErrorWithApkInApex(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "scanDirPath"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .line 1442
    return-void
.end method

.method public reserveSpaceForCompressedApex(Landroid/apex/CompressedApexInfoList;)V
    .registers 3
    .param p1, "infoList"    # Landroid/apex/CompressedApexInfoList;

    .line 1504
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public restoreCeData(IILjava/lang/String;)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "rollbackId"    # I
    .param p3, "apexPackageName"    # Ljava/lang/String;

    .line 1474
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method revertActiveSessions()Z
    .registers 2

    .line 1421
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method scanApexPackagesTraced(Lcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .registers 3
    .param p1, "packageParser"    # Lcom/android/server/pm/parsing/PackageParser2;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 1346
    return-void
.end method

.method public snapshotCeData(IILjava/lang/String;)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "rollbackId"    # I
    .param p3, "apexPackageName"    # Ljava/lang/String;

    .line 1469
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method submitStagedSession(Landroid/apex/ApexSessionParams;)Landroid/apex/ApexInfoList;
    .registers 5
    .param p1, "params"    # Landroid/apex/ApexSessionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1395
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v1, -0x6e

    const-string v2, "Device doesn\'t support updating APEX"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method uninstallApex(Ljava/lang/String;)Z
    .registers 3
    .param p1, "apexPackagePath"    # Ljava/lang/String;

    .line 1431
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
