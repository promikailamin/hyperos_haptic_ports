.class public Lcom/android/server/pm/ApexManager$ApexManagerImpl;
.super Lcom/android/server/pm/ApexManager;
.source "ApexManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ApexManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ApexManagerImpl"
.end annotation


# instance fields
.field private mActiveApexInfosCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/pm/ApexManager$ActiveApexInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAllPackagesCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mApexModuleNameToActivePackageName:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mApexSystemServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/ApexSystemServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mApksInApex:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mErrorWithApkInApex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mPackageNameToApexModuleName:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 467
    invoke-direct {p0}, Lcom/android/server/pm/ApexManager;-><init>()V

    .line 468
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    .line 477
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexSystemServices:Ljava/util/List;

    .line 485
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApksInApex:Landroid/util/ArrayMap;

    .line 492
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mErrorWithApkInApex:Ljava/util/Map;

    return-void
.end method

.method private checkApexSignature(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)V
    .registers 9
    .param p1, "existingApexPkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "newApexPkg"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1128
    invoke-direct {p0, p1}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->getSigningDetails(Landroid/content/pm/PackageInfo;)Landroid/content/pm/SigningDetails;

    move-result-object v0

    .line 1129
    .local v0, "existingSigningDetails":Landroid/content/pm/SigningDetails;
    invoke-direct {p0, p2}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->getSigningDetails(Landroid/content/pm/PackageInfo;)Landroid/content/pm/SigningDetails;

    move-result-object v1

    .line 1130
    .local v1, "newSigningDetails":Landroid/content/pm/SigningDetails;
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1136
    return-void

    .line 1132
    :cond_10
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const/16 v3, -0x76

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APK container signature of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not compatible with currently installed on device"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method private getSigningDetails(Landroid/content/pm/PackageInfo;)Landroid/content/pm/SigningDetails;
    .registers 9
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1113
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1114
    invoke-static {v0}, Landroid/util/apk/ApkSignatureVerifier;->getMinimumSignatureSchemeVersionForTargetSdk(I)I

    move-result v0

    .line 1116
    .local v0, "minSignatureScheme":I
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v1

    .line 1117
    .local v1, "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/util/apk/ApkSignatureVerifier;->verify(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 1119
    .local v2, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-nez v3, :cond_21

    .line 1123
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/SigningDetails;

    return-object v3

    .line 1120
    :cond_21
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v4

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    .line 1121
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static isActive(Landroid/content/pm/PackageInfo;)Z
    .registers 3
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 523
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private scanApexPackagesInternalLocked(Lcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .registers 28
    .param p1, "packageParser"    # Lcom/android/server/pm/parsing/PackageParser2;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 582
    move-object/from16 v1, p0

    const-string v2, "ApexManager"

    :try_start_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    .line 583
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    .line 584
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexModuleNameToActivePackageName:Landroid/util/ArrayMap;

    .line 585
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v0

    invoke-interface {v0}, Landroid/apex/IApexService;->getAllPackages()[Landroid/apex/ApexInfo;

    move-result-object v0
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_21} :catch_2b6

    .line 589
    .local v0, "allPkgs":[Landroid/apex/ApexInfo;
    nop

    .line 590
    array-length v3, v0

    if-nez v3, :cond_26

    .line 591
    return-void

    .line 593
    :cond_26
    const v3, 0x80000c0

    .line 596
    .local v3, "flags":I
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 597
    .local v4, "parsingApexInfo":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/apex/ApexInfo;>;"
    new-instance v5, Lcom/android/server/pm/ParallelPackageParser;

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct {v5, v6, v7}, Lcom/android/server/pm/ParallelPackageParser;-><init>(Lcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 600
    .local v5, "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    array-length v8, v0

    const/4 v10, 0x0

    :goto_39
    if-ge v10, v8, :cond_4f

    aget-object v11, v0, v10

    .line 601
    .local v11, "ai":Landroid/apex/ApexInfo;
    new-instance v12, Ljava/io/File;

    iget-object v13, v11, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 602
    .local v12, "apexFile":Ljava/io/File;
    const/16 v13, 0x20

    invoke-virtual {v5, v12, v13}, Lcom/android/server/pm/ParallelPackageParser;->submit(Ljava/io/File;I)V

    .line 604
    invoke-virtual {v4, v12, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    .end local v11    # "ai":Landroid/apex/ApexInfo;
    .end local v12    # "apexFile":Ljava/io/File;
    add-int/lit8 v10, v10, 0x1

    goto :goto_39

    .line 607
    :cond_4f
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 608
    .local v8, "activePackagesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 610
    .local v10, "factoryPackagesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_5a
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v11, v12, :cond_2b5

    .line 611
    invoke-virtual {v5}, Lcom/android/server/pm/ParallelPackageParser;->take()Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    move-result-object v12

    .line 612
    .local v12, "parseResult":Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    iget-object v13, v12, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->throwable:Ljava/lang/Throwable;

    .line 613
    .local v13, "throwable":Ljava/lang/Throwable;
    iget-object v14, v12, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v4, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/apex/ApexInfo;

    .line 615
    .local v14, "ai":Landroid/apex/ApexInfo;
    if-nez v13, :cond_243

    .line 617
    iget-object v15, v12, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    invoke-interface {v15}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->hideAsFinal()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 618
    iget-object v15, v12, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    const v9, 0x80000c0

    invoke-static {v15, v14, v9}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generate(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Landroid/apex/ApexInfo;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 620
    .local v9, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v9, :cond_224

    .line 624
    iget-object v15, v1, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    iget-object v15, v12, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    invoke-interface {v15}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getApexSystemServices()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_8f
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_179

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/pm/pkg/component/ParsedApexSystemService;

    .line 627
    .local v17, "service":Lcom/android/server/pm/pkg/component/ParsedApexSystemService;
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/component/ParsedApexSystemService;->getMinSdkVersion()Ljava/lang/String;

    move-result-object v18

    .line 628
    .local v18, "minSdkVersion":Ljava/lang/String;
    move-object/from16 v19, v0

    .end local v0    # "allPkgs":[Landroid/apex/ApexInfo;
    .local v19, "allPkgs":[Landroid/apex/ApexInfo;
    const/4 v0, 0x2

    const/16 v20, 0x1

    if-eqz v18, :cond_cc

    invoke-static/range {v18 .. v18}, Lcom/android/modules/utils/build/UnboundedSdkLevel;->isAtLeast(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_cc

    .line 629
    new-array v0, v0, [Ljava/lang/Object;

    .line 631
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/component/ParsedApexSystemService;->getName()Ljava/lang/String;

    move-result-object v21

    const/16 v16, 0x0

    aput-object v21, v0, v16

    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/component/ParsedApexSystemService;->getMinSdkVersion()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v0, v20

    .line 629
    move/from16 v21, v3

    .end local v3    # "flags":I
    .local v21, "flags":I
    const-string v3, "ApexSystemService %s with min_sdk_version=%s is skipped"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    move-object/from16 v0, v19

    move/from16 v3, v21

    goto :goto_8f

    .line 628
    .end local v21    # "flags":I
    .restart local v3    # "flags":I
    :cond_cc
    move/from16 v21, v3

    .line 634
    .end local v3    # "flags":I
    .restart local v21    # "flags":I
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/component/ParsedApexSystemService;->getMaxSdkVersion()Ljava/lang/String;

    move-result-object v3

    .line 635
    .local v3, "maxSdkVersion":Ljava/lang/String;
    if-eqz v3, :cond_fa

    invoke-static {v3}, Lcom/android/modules/utils/build/UnboundedSdkLevel;->isAtMost(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_fa

    .line 636
    new-array v0, v0, [Ljava/lang/Object;

    .line 638
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/component/ParsedApexSystemService;->getName()Ljava/lang/String;

    move-result-object v22

    const/16 v16, 0x0

    aput-object v22, v0, v16

    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/component/ParsedApexSystemService;->getMaxSdkVersion()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v0, v20

    .line 636
    move-object/from16 v22, v3

    .end local v3    # "maxSdkVersion":Ljava/lang/String;
    .local v22, "maxSdkVersion":Ljava/lang/String;
    const-string v3, "ApexSystemService %s with max_sdk_version=%s is skipped"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    move-object/from16 v0, v19

    move/from16 v3, v21

    goto :goto_8f

    .line 635
    .end local v22    # "maxSdkVersion":Ljava/lang/String;
    .restart local v3    # "maxSdkVersion":Ljava/lang/String;
    :cond_fa
    move-object/from16 v22, v3

    .line 642
    .end local v3    # "maxSdkVersion":Ljava/lang/String;
    .restart local v22    # "maxSdkVersion":Ljava/lang/String;
    iget-boolean v3, v14, Landroid/apex/ApexInfo;->isActive:Z

    if-eqz v3, :cond_169

    .line 643
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/component/ParsedApexSystemService;->getName()Ljava/lang/String;

    move-result-object v3

    .line 644
    .local v3, "name":Ljava/lang/String;
    const/16 v23, 0x0

    move/from16 v0, v23

    .local v0, "j":I
    :goto_108
    move-object/from16 v23, v4

    .end local v4    # "parsingApexInfo":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/apex/ApexInfo;>;"
    .local v23, "parsingApexInfo":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/apex/ApexInfo;>;"
    iget-object v4, v1, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexSystemServices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_14c

    .line 645
    iget-object v4, v1, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexSystemServices:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/ApexSystemServiceInfo;

    .line 646
    .local v4, "info":Lcom/android/server/pm/ApexSystemServiceInfo;
    move-object/from16 v24, v5

    .end local v5    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    .local v24, "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    invoke-virtual {v4}, Lcom/android/server/pm/ApexSystemServiceInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12d

    .line 644
    .end local v4    # "info":Lcom/android/server/pm/ApexSystemServiceInfo;
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    goto :goto_108

    .line 647
    .restart local v4    # "info":Lcom/android/server/pm/ApexSystemServiceInfo;
    :cond_12d
    new-instance v2, Ljava/lang/IllegalStateException;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v3, v5, v16

    iget-object v15, v4, Lcom/android/server/pm/ApexSystemServiceInfo;->mJarPath:Ljava/lang/String;

    aput-object v15, v5, v20

    .line 649
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/component/ParsedApexSystemService;->getJarPath()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x2

    aput-object v15, v5, v16

    .line 647
    const-string v15, "Duplicate apex-system-service %s from %s, %s"

    invoke-static {v15, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 644
    .end local v4    # "info":Lcom/android/server/pm/ApexSystemServiceInfo;
    .end local v24    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    .restart local v5    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    :cond_14c
    move-object/from16 v24, v5

    const/16 v16, 0x0

    .line 652
    .end local v0    # "j":I
    .end local v5    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    .restart local v24    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    new-instance v0, Lcom/android/server/pm/ApexSystemServiceInfo;

    .line 653
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/component/ParsedApexSystemService;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/component/ParsedApexSystemService;->getJarPath()Ljava/lang/String;

    move-result-object v5

    .line 654
    move-object/from16 v20, v3

    .end local v3    # "name":Ljava/lang/String;
    .local v20, "name":Ljava/lang/String;
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/component/ParsedApexSystemService;->getInitOrder()I

    move-result v3

    invoke-direct {v0, v4, v5, v3}, Lcom/android/server/pm/ApexSystemServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 655
    .local v0, "info":Lcom/android/server/pm/ApexSystemServiceInfo;
    iget-object v3, v1, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexSystemServices:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16f

    .line 642
    .end local v0    # "info":Lcom/android/server/pm/ApexSystemServiceInfo;
    .end local v20    # "name":Ljava/lang/String;
    .end local v23    # "parsingApexInfo":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/apex/ApexInfo;>;"
    .end local v24    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    .local v4, "parsingApexInfo":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/apex/ApexInfo;>;"
    .restart local v5    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    :cond_169
    move-object/from16 v23, v4

    move-object/from16 v24, v5

    const/16 v16, 0x0

    .line 657
    .end local v4    # "parsingApexInfo":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/apex/ApexInfo;>;"
    .end local v5    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    .end local v17    # "service":Lcom/android/server/pm/pkg/component/ParsedApexSystemService;
    .end local v18    # "minSdkVersion":Ljava/lang/String;
    .end local v22    # "maxSdkVersion":Ljava/lang/String;
    .restart local v23    # "parsingApexInfo":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/apex/ApexInfo;>;"
    .restart local v24    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    :goto_16f
    move-object/from16 v0, v19

    move/from16 v3, v21

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    goto/16 :goto_8f

    .line 658
    .end local v19    # "allPkgs":[Landroid/apex/ApexInfo;
    .end local v21    # "flags":I
    .end local v23    # "parsingApexInfo":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/apex/ApexInfo;>;"
    .end local v24    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    .local v0, "allPkgs":[Landroid/apex/ApexInfo;
    .local v3, "flags":I
    .restart local v4    # "parsingApexInfo":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/apex/ApexInfo;>;"
    .restart local v5    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    :cond_179
    move-object/from16 v19, v0

    move/from16 v21, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    const/16 v16, 0x0

    .end local v0    # "allPkgs":[Landroid/apex/ApexInfo;
    .end local v3    # "flags":I
    .end local v4    # "parsingApexInfo":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/apex/ApexInfo;>;"
    .end local v5    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    .restart local v19    # "allPkgs":[Landroid/apex/ApexInfo;
    .restart local v21    # "flags":I
    .restart local v23    # "parsingApexInfo":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/apex/ApexInfo;>;"
    .restart local v24    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    iget-object v0, v1, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexSystemServices:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 659
    iget-object v0, v1, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    iget-object v3, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v4, v14, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    iget-boolean v0, v14, Landroid/apex/ApexInfo;->isActive:Z

    if-eqz v0, :cond_1ec

    .line 661
    iget-object v0, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d1

    .line 666
    iget-object v0, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 667
    iget-object v0, v1, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexModuleNameToActivePackageName:Landroid/util/ArrayMap;

    iget-object v3, v14, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b6

    .line 672
    iget-object v0, v1, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexModuleNameToActivePackageName:Landroid/util/ArrayMap;

    iget-object v3, v14, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    iget-object v4, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1ec

    .line 668
    :cond_1b6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Two active packages have the same APEX module name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v14, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    :cond_1d1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Two active packages have the same name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 675
    :cond_1ec
    :goto_1ec
    iget-boolean v0, v14, Landroid/apex/ApexInfo;->isFactory:Z

    if-eqz v0, :cond_223

    .line 677
    iget-object v0, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21e

    iget-object v0, v14, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    .line 678
    const-string v3, "com.android.vndk."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_203

    goto :goto_21e

    .line 679
    :cond_203
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Two factory packages have the same name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 683
    :cond_21e
    :goto_21e
    iget-object v0, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 685
    .end local v9    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_223
    goto :goto_273

    .line 621
    .end local v19    # "allPkgs":[Landroid/apex/ApexInfo;
    .end local v21    # "flags":I
    .end local v23    # "parsingApexInfo":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/apex/ApexInfo;>;"
    .end local v24    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    .restart local v0    # "allPkgs":[Landroid/apex/ApexInfo;
    .restart local v3    # "flags":I
    .restart local v4    # "parsingApexInfo":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/apex/ApexInfo;>;"
    .restart local v5    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    .restart local v9    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_224
    move-object/from16 v19, v0

    move/from16 v21, v3

    .end local v0    # "allPkgs":[Landroid/apex/ApexInfo;
    .end local v3    # "flags":I
    .restart local v19    # "allPkgs":[Landroid/apex/ApexInfo;
    .restart local v21    # "flags":I
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to generate package info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v14, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 685
    .end local v9    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v19    # "allPkgs":[Landroid/apex/ApexInfo;
    .end local v21    # "flags":I
    .restart local v0    # "allPkgs":[Landroid/apex/ApexInfo;
    .restart local v3    # "flags":I
    :cond_243
    move-object/from16 v19, v0

    move/from16 v21, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    const/16 v16, 0x0

    .end local v0    # "allPkgs":[Landroid/apex/ApexInfo;
    .end local v3    # "flags":I
    .end local v4    # "parsingApexInfo":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/apex/ApexInfo;>;"
    .end local v5    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    .restart local v19    # "allPkgs":[Landroid/apex/ApexInfo;
    .restart local v21    # "flags":I
    .restart local v23    # "parsingApexInfo":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/apex/ApexInfo;>;"
    .restart local v24    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    instance-of v0, v13, Lcom/android/server/pm/PackageManagerException;

    if-eqz v0, :cond_29a

    .line 686
    move-object v0, v13

    check-cast v0, Lcom/android/server/pm/PackageManagerException;

    .line 688
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    iget v3, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    const/16 v4, -0x7b

    if-ne v3, v4, :cond_27f

    .line 689
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scan apex failed, not a coreApp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v14, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    nop

    .line 610
    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    .end local v12    # "parseResult":Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    .end local v13    # "throwable":Ljava/lang/Throwable;
    .end local v14    # "ai":Landroid/apex/ApexInfo;
    :goto_273
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v19

    move/from16 v3, v21

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    goto/16 :goto_5a

    .line 692
    .restart local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    .restart local v12    # "parseResult":Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    .restart local v13    # "throwable":Ljava/lang/Throwable;
    .restart local v14    # "ai":Landroid/apex/ApexInfo;
    :cond_27f
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v14, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 694
    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    :cond_29a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected exception occurred while parsing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v14, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 698
    .end local v11    # "i":I
    .end local v12    # "parseResult":Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    .end local v13    # "throwable":Ljava/lang/Throwable;
    .end local v14    # "ai":Landroid/apex/ApexInfo;
    .end local v19    # "allPkgs":[Landroid/apex/ApexInfo;
    .end local v21    # "flags":I
    .end local v23    # "parsingApexInfo":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/apex/ApexInfo;>;"
    .end local v24    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    .local v0, "allPkgs":[Landroid/apex/ApexInfo;
    .restart local v3    # "flags":I
    .restart local v4    # "parsingApexInfo":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/apex/ApexInfo;>;"
    .restart local v5    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    :cond_2b5
    return-void

    .line 586
    .end local v0    # "allPkgs":[Landroid/apex/ApexInfo;
    .end local v3    # "flags":I
    .end local v4    # "parsingApexInfo":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/apex/ApexInfo;>;"
    .end local v5    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    .end local v8    # "activePackagesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v10    # "factoryPackagesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_2b6
    move-exception v0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 587
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to retrieve packages from apexservice: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method abortStagedSession(I)Z
    .registers 5
    .param p1, "sessionId"    # I

    .line 921
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/apex/IApexService;->abortStagedSession(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    .line 922
    const/4 v0, 0x1

    return v0

    .line 923
    :catch_9
    move-exception v0

    .line 924
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ApexManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 925
    const/4 v1, 0x0

    return v1
.end method

.method public calculateSizeForCompressedApex(Landroid/apex/CompressedApexInfoList;)J
    .registers 4
    .param p1, "infoList"    # Landroid/apex/CompressedApexInfoList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1103
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/apex/IApexService;->calculateSizeForCompressedApex(Landroid/apex/CompressedApexInfoList;)J

    move-result-wide v0

    return-wide v0
.end method

.method public destroyCeSnapshots(II)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "rollbackId"    # I

    .line 1072
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/apex/IApexService;->destroyCeSnapshots(II)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    .line 1073
    const/4 v0, 0x1

    return v0

    .line 1074
    :catch_9
    move-exception v0

    .line 1075
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ApexManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1076
    const/4 v1, 0x0

    return v1
.end method

.method public destroyCeSnapshotsNotSpecified(I[I)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "retainRollbackIds"    # [I

    .line 1083
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/apex/IApexService;->destroyCeSnapshotsNotSpecified(I[I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    .line 1084
    const/4 v0, 0x1

    return v0

    .line 1085
    :catch_9
    move-exception v0

    .line 1086
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ApexManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1087
    const/4 v1, 0x0

    return v1
.end method

.method public destroyDeSnapshots(I)Z
    .registers 5
    .param p1, "rollbackId"    # I

    .line 1061
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/apex/IApexService;->destroyDeSnapshots(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    .line 1062
    const/4 v0, 0x1

    return v0

    .line 1063
    :catch_9
    move-exception v0

    .line 1064
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ApexManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1065
    const/4 v1, 0x0

    return v1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1259
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    const/16 v2, 0x78

    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 1261
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    :try_start_9
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1262
    const-string v1, "APEX session state:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1263
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1264
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v1

    invoke-interface {v1}, Landroid/apex/IApexService;->getSessions()[Landroid/apex/ApexSessionInfo;

    move-result-object v1

    .line 1265
    .local v1, "sessions":[Landroid/apex/ApexSessionInfo;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v2, :cond_9d

    aget-object v4, v1, v3

    .line 1266
    .local v4, "si":Landroid/apex/ApexSessionInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Session ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Landroid/apex/ApexSessionInfo;->sessionId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1267
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1268
    iget-boolean v5, v4, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    if-eqz v5, :cond_47

    .line 1269
    const-string v5, "State: UNKNOWN"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_96

    .line 1270
    :cond_47
    iget-boolean v5, v4, Landroid/apex/ApexSessionInfo;->isVerified:Z

    if-eqz v5, :cond_51

    .line 1271
    const-string v5, "State: VERIFIED"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_96

    .line 1272
    :cond_51
    iget-boolean v5, v4, Landroid/apex/ApexSessionInfo;->isStaged:Z

    if-eqz v5, :cond_5b

    .line 1273
    const-string v5, "State: STAGED"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_96

    .line 1274
    :cond_5b
    iget-boolean v5, v4, Landroid/apex/ApexSessionInfo;->isActivated:Z

    if-eqz v5, :cond_65

    .line 1275
    const-string v5, "State: ACTIVATED"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_96

    .line 1276
    :cond_65
    iget-boolean v5, v4, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    if-eqz v5, :cond_6f

    .line 1277
    const-string v5, "State: ACTIVATION FAILED"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_96

    .line 1278
    :cond_6f
    iget-boolean v5, v4, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    if-eqz v5, :cond_79

    .line 1279
    const-string v5, "State: SUCCESS"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_96

    .line 1280
    :cond_79
    iget-boolean v5, v4, Landroid/apex/ApexSessionInfo;->isRevertInProgress:Z

    if-eqz v5, :cond_83

    .line 1281
    const-string v5, "State: REVERT IN PROGRESS"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_96

    .line 1282
    :cond_83
    iget-boolean v5, v4, Landroid/apex/ApexSessionInfo;->isReverted:Z

    if-eqz v5, :cond_8d

    .line 1283
    const-string v5, "State: REVERTED"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_96

    .line 1284
    :cond_8d
    iget-boolean v5, v4, Landroid/apex/ApexSessionInfo;->isRevertFailed:Z

    if-eqz v5, :cond_96

    .line 1285
    const-string v5, "State: REVERT FAILED"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1287
    :cond_96
    :goto_96
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1265
    nop

    .end local v4    # "si":Landroid/apex/ApexSessionInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 1289
    :cond_9d
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1290
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1291
    iget-object v2, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a6
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_a6} :catch_da

    .line 1292
    :try_start_a6
    iget-object v3, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    if-nez v3, :cond_b1

    .line 1293
    const-string v3, "APEX packages have not been scanned"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1294
    monitor-exit v2

    return-void

    .line 1296
    :cond_b1
    monitor-exit v2
    :try_end_b2
    .catchall {:try_start_a6 .. :try_end_b2} :catchall_d7

    .line 1297
    :try_start_b2
    const-string v2, "Active APEX packages:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1298
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->getActivePackages()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2, p2, v0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->dumpFromPackagesCache(Ljava/util/List;Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1299
    const-string v2, "Inactive APEX packages:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1300
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->getInactivePackages()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2, p2, v0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->dumpFromPackagesCache(Ljava/util/List;Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1301
    const-string v2, "Factory APEX packages:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1302
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->getFactoryPackages()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2, p2, v0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->dumpFromPackagesCache(Ljava/util/List;Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_d6
    .catch Landroid/os/RemoteException; {:try_start_b2 .. :try_end_d6} :catch_da

    .line 1305
    .end local v1    # "sessions":[Landroid/apex/ApexSessionInfo;
    goto :goto_e0

    .line 1296
    .restart local v1    # "sessions":[Landroid/apex/ApexSessionInfo;
    :catchall_d7
    move-exception v3

    :try_start_d8
    monitor-exit v2
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_d7

    .end local v0    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local p0    # "this":Lcom/android/server/pm/ApexManager$ApexManagerImpl;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "packageName":Ljava/lang/String;
    :try_start_d9
    throw v3
    :try_end_da
    .catch Landroid/os/RemoteException; {:try_start_d9 .. :try_end_da} :catch_da

    .line 1303
    .end local v1    # "sessions":[Landroid/apex/ApexSessionInfo;
    .restart local v0    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local p0    # "this":Lcom/android/server/pm/ApexManager$ApexManagerImpl;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    .restart local p2    # "packageName":Ljava/lang/String;
    :catch_da
    move-exception v1

    .line 1304
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Couldn\'t communicate with apexd."

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1306
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_e0
    return-void
.end method

.method dumpFromPackagesCache(Ljava/util/List;Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 10
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            ")V"
        }
    .end annotation

    .line 1234
    .local p1, "packagesCache":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1235
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1236
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_b
    if-ge v0, v1, :cond_ab

    .line 1237
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 1238
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-eqz p2, :cond_1f

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 1239
    goto/16 :goto_a7

    .line 1241
    :cond_1f
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1242
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IsActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->isActive(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IsFactory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->isFactory(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1247
    const-string v3, "ApplicationInfo: "

    invoke-virtual {p3, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1248
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1249
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v4, Landroid/util/PrintWriterPrinter;

    invoke-direct {v4, p3}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/ApplicationInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 1250
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1251
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1236
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :goto_a7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_b

    .line 1253
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_ab
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1254
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1255
    return-void
.end method

.method public getActiveApexInfos()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/ApexManager$ActiveApexInfo;",
            ">;"
        }
    .end annotation

    .line 539
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v1, "ApexManagerTiming"

    const-wide/32 v2, 0x40000

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;J)V

    .line 541
    .local v0, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 542
    :try_start_d
    iget-object v2, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mActiveApexInfosCache:Ljava/util/Set;

    if-nez v2, :cond_46

    .line 543
    const-string v2, "getActiveApexInfos_noCache"

    invoke-virtual {v0, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_59

    .line 545
    :try_start_16
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mActiveApexInfosCache:Ljava/util/Set;

    .line 546
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v2

    invoke-interface {v2}, Landroid/apex/IApexService;->getActivePackages()[Landroid/apex/ApexInfo;

    move-result-object v2

    .line 547
    .local v2, "activePackages":[Landroid/apex/ApexInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_26
    array-length v4, v2

    if-ge v3, v4, :cond_3a

    .line 548
    aget-object v4, v2, v3

    .line 549
    .local v4, "apexInfo":Landroid/apex/ApexInfo;
    iget-object v5, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mActiveApexInfosCache:Ljava/util/Set;

    new-instance v6, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Lcom/android/server/pm/ApexManager$ActiveApexInfo;-><init>(Landroid/apex/ApexInfo;Lcom/android/server/pm/ApexManager$ActiveApexInfo-IA;)V

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_36} :catch_3b
    .catchall {:try_start_16 .. :try_end_36} :catchall_59

    .line 547
    nop

    .end local v4    # "apexInfo":Landroid/apex/ApexInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 553
    .end local v2    # "activePackages":[Landroid/apex/ApexInfo;
    .end local v3    # "i":I
    :cond_3a
    goto :goto_43

    .line 551
    :catch_3b
    move-exception v2

    .line 552
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3c
    const-string v3, "ApexManager"

    const-string v4, "Unable to retrieve packages from apexservice"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 554
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_43
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 556
    :cond_46
    iget-object v2, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mActiveApexInfosCache:Ljava/util/Set;

    if-eqz v2, :cond_53

    .line 557
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mActiveApexInfosCache:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v2

    .line 559
    :cond_53
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 561
    :catchall_59
    move-exception v2

    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_3c .. :try_end_5b} :catchall_59

    throw v2
.end method

.method public getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "containedPackageName"    # Ljava/lang/String;

    .line 789
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 791
    :try_start_6
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    const-string v2, "APEX packages have not been scanned"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 793
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApksInApex:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 794
    .local v1, "numApksInApex":I
    const/4 v2, 0x0

    .local v2, "apkInApexNum":I
    :goto_19
    if-ge v2, v1, :cond_58

    .line 795
    iget-object v3, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApksInApex:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 796
    iget-object v3, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApksInApex:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 798
    .local v3, "apexModuleName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 799
    .local v4, "numApexPkgs":I
    const/4 v5, 0x0

    .local v5, "apexPkgNum":I
    :goto_38
    if-ge v5, v4, :cond_55

    .line 800
    iget-object v6, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 802
    iget-object v6, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    monitor-exit v0

    return-object v6

    .line 799
    :cond_52
    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    .line 794
    .end local v3    # "apexModuleName":Ljava/lang/String;
    .end local v4    # "numApexPkgs":I
    .end local v5    # "apexPkgNum":I
    :cond_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 807
    .end local v1    # "numApksInApex":I
    .end local v2    # "apkInApexNum":I
    :cond_58
    monitor-exit v0

    .line 809
    const/4 v0, 0x0

    return-object v0

    .line 807
    :catchall_5b
    move-exception v1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_6 .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method public getActivePackageNameForApexModuleName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "apexModuleName"    # Ljava/lang/String;

    .line 1009
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1010
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexModuleNameToActivePackageName:Landroid/util/ArrayMap;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    const-string v2, "APEX packages have not been scanned"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1012
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexModuleNameToActivePackageName:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 1013
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method getActivePackages()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 724
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 725
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    const-string v2, "APEX packages have not been scanned"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 727
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 728
    .local v1, "activePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    iget-object v3, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_31

    .line 729
    iget-object v3, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 730
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-static {v3}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->isActive(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 731
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 728
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 734
    .end local v2    # "i":I
    :cond_31
    monitor-exit v0

    return-object v1

    .line 735
    .end local v1    # "activePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public getApexModuleNameForPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "apexPackageName"    # Ljava/lang/String;

    .line 999
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1000
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    const-string v2, "APEX packages have not been scanned"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1002
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 1003
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public getApexSystemServices()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/ApexSystemServiceInfo;",
            ">;"
        }
    .end annotation

    .line 1197
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1198
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexSystemServices:Ljava/util/List;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    const-string v2, "APEX packages have not been scanned"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1200
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexSystemServices:Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 1201
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method getApkInApexInstallError(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "apexPackageName"    # Ljava/lang/String;

    .line 972
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 973
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    const-string v2, "APEX packages have not been scanned"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 975
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 976
    .local v1, "moduleName":Ljava/lang/String;
    if-nez v1, :cond_1c

    .line 977
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 979
    :cond_1c
    iget-object v2, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mErrorWithApkInApex:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 980
    .end local v1    # "moduleName":Ljava/lang/String;
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method getApksInApex(Ljava/lang/String;)Ljava/util/List;
    .registers 6
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

    .line 985
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 986
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    const-string v2, "APEX packages have not been scanned"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 988
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 989
    .local v1, "moduleName":Ljava/lang/String;
    if-nez v1, :cond_1f

    .line 990
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 992
    :cond_1f
    iget-object v2, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApksInApex:Landroid/util/ArrayMap;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    monitor-exit v0

    return-object v2

    .line 993
    .end local v1    # "moduleName":Ljava/lang/String;
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public getBackingApexFile(Ljava/io/File;)Ljava/io/File;
    .registers 8
    .param p1, "file"    # Ljava/io/File;

    .line 1206
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 1207
    .local v0, "path":Ljava/nio/file/Path;
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 1208
    return-object v2

    .line 1210
    :cond_14
    invoke-interface {v0}, Ljava/nio/file/Path;->getNameCount()I

    move-result v1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_1c

    .line 1211
    return-object v2

    .line 1213
    :cond_1c
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/nio/file/Path;->getName(I)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1214
    .local v1, "moduleName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->getActiveApexInfos()Ljava/util/List;

    move-result-object v3

    .line 1215
    .local v3, "apexes":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ApexManager$ActiveApexInfo;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4e

    .line 1216
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    iget-object v5, v5, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 1217
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    iget-object v2, v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexFile:Ljava/io/File;

    return-object v2

    .line 1215
    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 1220
    .end local v4    # "i":I
    :cond_4e
    return-object v2
.end method

.method getFactoryPackages()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 740
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 741
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    const-string v2, "APEX packages have not been scanned"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 743
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 744
    .local v1, "factoryPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    iget-object v3, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_31

    .line 745
    iget-object v3, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 746
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-static {v3}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->isFactory(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 747
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 744
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 750
    .end local v2    # "i":I
    :cond_31
    monitor-exit v0

    return-object v1

    .line 751
    .end local v1    # "factoryPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method

.method getInactivePackages()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 756
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 757
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    const-string v2, "APEX packages have not been scanned"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 759
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 760
    .local v1, "inactivePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    iget-object v3, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_31

    .line 761
    iget-object v3, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 762
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-static {v3}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->isActive(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 763
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 760
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 766
    .end local v2    # "i":I
    :cond_31
    monitor-exit v0

    return-object v1

    .line 767
    .end local v1    # "inactivePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 703
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 704
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_b

    move v1, v3

    goto :goto_c

    :cond_b
    move v1, v2

    :goto_c
    const-string v4, "APEX packages have not been scanned"

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 706
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_17

    move v1, v3

    goto :goto_18

    :cond_17
    move v1, v2

    .line 707
    .local v1, "matchActive":Z
    :goto_18
    and-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_1d

    move v2, v3

    .line 708
    .local v2, "matchFactory":Z
    :cond_1d
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v4, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_24
    if-ge v3, v4, :cond_4c

    .line 709
    iget-object v5, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 710
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_37

    .line 711
    goto :goto_49

    .line 713
    :cond_37
    if-eqz v1, :cond_3f

    invoke-static {v5}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->isActive(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-nez v6, :cond_47

    :cond_3f
    if-eqz v2, :cond_49

    .line 714
    invoke-static {v5}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->isFactory(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 715
    :cond_47
    monitor-exit v0

    return-object v5

    .line 708
    .end local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_49
    :goto_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 718
    .end local v3    # "i":I
    .end local v4    # "size":I
    :cond_4c
    const/4 v3, 0x0

    monitor-exit v0

    return-object v3

    .line 719
    .end local v1    # "matchActive":Z
    .end local v2    # "matchFactory":Z
    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method getSessions()Landroid/util/SparseArray;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/apex/ApexSessionInfo;",
            ">;"
        }
    .end annotation

    .line 830
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v0

    invoke-interface {v0}, Landroid/apex/IApexService;->getSessions()[Landroid/apex/ApexSessionInfo;

    move-result-object v0

    .line 831
    .local v0, "sessions":[Landroid/apex/ApexSessionInfo;
    new-instance v1, Landroid/util/SparseArray;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 832
    .local v1, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/apex/ApexSessionInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    array-length v3, v0

    if-ge v2, v3, :cond_1e

    .line 833
    aget-object v3, v0, v2

    iget v3, v3, Landroid/apex/ApexSessionInfo;->sessionId:I

    aget-object v4, v0, v2

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1f

    .line 832
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 835
    .end local v2    # "i":I
    :cond_1e
    return-object v1

    .line 836
    .end local v0    # "sessions":[Landroid/apex/ApexSessionInfo;
    .end local v1    # "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/apex/ApexSessionInfo;>;"
    :catch_1f
    move-exception v0

    .line 837
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "ApexManager"

    const-string v2, "Unable to contact apexservice"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 838
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method getStagedApexInfos(Landroid/apex/ApexSessionParams;)[Landroid/apex/ApexInfo;
    .registers 6
    .param p1, "params"    # Landroid/apex/ApexSessionParams;

    .line 861
    const-string v0, "ApexManager"

    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/apex/IApexService;->getStagedApexInfos(Landroid/apex/ApexSessionParams;)[Landroid/apex/ApexInfo;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_b

    return-object v0

    .line 865
    :catch_b
    move-exception v1

    .line 866
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to collect staged apex infos"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/apex/ApexInfo;

    return-object v0

    .line 862
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2a
    move-exception v1

    .line 863
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to contact apexservice"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;
    .registers 5
    .param p1, "sessionId"    # I

    .line 815
    nop

    .line 816
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/apex/IApexService;->getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;

    move-result-object v0

    .line 817
    .local v0, "apexSessionInfo":Landroid/apex/ApexSessionInfo;
    iget-boolean v1, v0, Landroid/apex/ApexSessionInfo;->isUnknown:Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_10

    if-eqz v1, :cond_f

    .line 818
    const/4 v1, 0x0

    return-object v1

    .line 820
    :cond_f
    return-object v0

    .line 821
    .end local v0    # "apexSessionInfo":Landroid/apex/ApexSessionInfo;
    :catch_10
    move-exception v0

    .line 822
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "ApexManager"

    const-string v2, "Unable to contact apexservice"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 823
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method installPackage(Ljava/io/File;Lcom/android/server/pm/parsing/PackageParser2;)V
    .registers 15
    .param p1, "apexFile"    # Ljava/io/File;
    .param p2, "packageParser"    # Lcom/android/server/pm/parsing/PackageParser2;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1142
    const v0, 0x80000c0

    .line 1145
    .local v0, "flags":I
    const/16 v1, -0x6e

    const/4 v2, 0x0

    const v3, 0x80000c0

    :try_start_9
    invoke-virtual {p2, p1, v3, v2}, Lcom/android/server/pm/parsing/PackageParser2;->parsePackage(Ljava/io/File;IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v4

    .line 1147
    .local v4, "parsedPackage":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generate(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Landroid/apex/ApexInfo;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 1149
    .local v5, "newApexPkg":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_9e

    .line 1153
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 1155
    .local v6, "existingApexPkg":Landroid/content/pm/PackageInfo;
    if-eqz v6, :cond_7a

    .line 1160
    invoke-direct {p0, v6, v5}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->checkApexSignature(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)V

    .line 1161
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v7

    .line 1162
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 1161
    invoke-interface {v7, v8}, Landroid/apex/IApexService;->installAndActivatePackage(Ljava/lang/String;)Landroid/apex/ApexInfo;

    move-result-object v7

    .line 1163
    .local v7, "apexInfo":Landroid/apex/ApexInfo;
    new-instance v8, Ljava/io/File;

    iget-object v9, v7, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v8, v3, v2}, Lcom/android/server/pm/parsing/PackageParser2;->parsePackage(Ljava/io/File;IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v2

    .line 1165
    .local v2, "parsedPackage2":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    invoke-static {v2, v7, v3}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->generate(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;Landroid/apex/ApexInfo;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 1168
    .local v3, "finalApexPkg":Landroid/content/pm/PackageInfo;
    iget-object v8, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_3e} :catch_c9
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_9 .. :try_end_3e} :catch_c7
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3e} :catch_bc

    .line 1169
    :try_start_3e
    invoke-static {v6}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->isFactory(Landroid/content/pm/PackageInfo;)Z

    move-result v9

    if-eqz v9, :cond_54

    .line 1170
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const v11, -0x800001

    and-int/2addr v10, v11

    iput v10, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1171
    iget-object v9, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_74

    .line 1173
    :cond_54
    const/4 v9, 0x0

    .local v9, "i":I
    iget-object v10, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    .local v10, "size":I
    :goto_5b
    if-ge v9, v10, :cond_74

    .line 1174
    iget-object v11, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageInfo;

    invoke-virtual {v11, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_71

    .line 1175
    iget-object v11, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v11, v9, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1176
    goto :goto_74

    .line 1173
    :cond_71
    add-int/lit8 v9, v9, 0x1

    goto :goto_5b

    .line 1180
    .end local v9    # "i":I
    .end local v10    # "size":I
    :cond_74
    :goto_74
    monitor-exit v8

    .line 1192
    .end local v0    # "flags":I
    .end local v2    # "parsedPackage2":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .end local v3    # "finalApexPkg":Landroid/content/pm/PackageInfo;
    .end local v4    # "parsedPackage":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .end local v5    # "newApexPkg":Landroid/content/pm/PackageInfo;
    .end local v6    # "existingApexPkg":Landroid/content/pm/PackageInfo;
    .end local v7    # "apexInfo":Landroid/apex/ApexInfo;
    nop

    .line 1193
    return-void

    .line 1180
    .restart local v0    # "flags":I
    .restart local v2    # "parsedPackage2":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .restart local v3    # "finalApexPkg":Landroid/content/pm/PackageInfo;
    .restart local v4    # "parsedPackage":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .restart local v5    # "newApexPkg":Landroid/content/pm/PackageInfo;
    .restart local v6    # "existingApexPkg":Landroid/content/pm/PackageInfo;
    .restart local v7    # "apexInfo":Landroid/apex/ApexInfo;
    :catchall_77
    move-exception v9

    monitor-exit v8
    :try_end_79
    .catchall {:try_start_3e .. :try_end_79} :catchall_77

    .end local p0    # "this":Lcom/android/server/pm/ApexManager$ApexManagerImpl;
    .end local p1    # "apexFile":Ljava/io/File;
    .end local p2    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    :try_start_79
    throw v9

    .line 1156
    .end local v2    # "parsedPackage2":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .end local v3    # "finalApexPkg":Landroid/content/pm/PackageInfo;
    .end local v7    # "apexInfo":Landroid/apex/ApexInfo;
    .restart local p0    # "this":Lcom/android/server/pm/ApexManager$ApexManagerImpl;
    .restart local p1    # "apexFile":Ljava/io/File;
    .restart local p2    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    :cond_7a
    const-string v2, "ApexManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempting to install new APEX package "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const/16 v3, -0x17

    const-string v7, "It is forbidden to install new APEX packages"

    invoke-direct {v2, v3, v7}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/ApexManager$ApexManagerImpl;
    .end local p1    # "apexFile":Ljava/io/File;
    .end local p2    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    throw v2

    .line 1150
    .end local v6    # "existingApexPkg":Landroid/content/pm/PackageInfo;
    .restart local p0    # "this":Lcom/android/server/pm/ApexManager$ApexManagerImpl;
    .restart local p1    # "apexFile":Ljava/io/File;
    .restart local p2    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    :cond_9e
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const/4 v3, -0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to generate package info for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1151
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/ApexManager$ApexManagerImpl;
    .end local p1    # "apexFile":Ljava/io/File;
    .end local p2    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    throw v2
    :try_end_bc
    .catch Landroid/os/RemoteException; {:try_start_79 .. :try_end_bc} :catch_c9
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_79 .. :try_end_bc} :catch_c7
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_bc} :catch_bc

    .line 1188
    .end local v0    # "flags":I
    .end local v4    # "parsedPackage":Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .end local v5    # "newApexPkg":Landroid/content/pm/PackageInfo;
    .restart local p0    # "this":Lcom/android/server/pm/ApexManager$ApexManagerImpl;
    .restart local p1    # "apexFile":Ljava/io/File;
    .restart local p2    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    :catch_bc
    move-exception v0

    .line 1190
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    .line 1191
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 1184
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_c7
    move-exception v0

    .line 1187
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    throw v0

    .line 1181
    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    :catch_c9
    move-exception v0

    .line 1182
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const-string v3, "apexservice not available"

    invoke-direct {v2, v1, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method isApexPackage(Ljava/lang/String;)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .line 772
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->isApexSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 773
    :cond_8
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 774
    :try_start_b
    iget-object v2, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    const/4 v3, 0x1

    if-eqz v2, :cond_12

    move v2, v3

    goto :goto_13

    :cond_12
    move v2, v1

    :goto_13
    const-string v4, "APEX packages have not been scanned"

    invoke-static {v2, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 776
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v4, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_1f
    if-ge v2, v4, :cond_36

    .line 777
    iget-object v5, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 778
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 779
    monitor-exit v0

    return v3

    .line 776
    .end local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 782
    .end local v2    # "i":I
    .end local v4    # "size":I
    :cond_36
    monitor-exit v0

    .line 783
    return v1

    .line 782
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_b .. :try_end_3a} :catchall_38

    throw v1
.end method

.method isApexSupported()Z
    .registers 2

    .line 901
    const/4 v0, 0x1

    return v0
.end method

.method public markBootCompleted()V
    .registers 4

    .line 1094
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v0

    invoke-interface {v0}, Landroid/apex/IApexService;->markBootCompleted()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1097
    goto :goto_10

    .line 1095
    :catch_8
    move-exception v0

    .line 1096
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "ApexManager"

    const-string v2, "Unable to contact apexservice"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1098
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method markStagedSessionReady(I)V
    .registers 7
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 874
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/apex/IApexService;->markStagedSessionReady(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    .line 882
    nop

    .line 883
    return-void

    .line 878
    :catch_9
    move-exception v0

    .line 879
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/16 v2, -0x16

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to mark apexd session as ready : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 881
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 875
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_29
    move-exception v0

    .line 876
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "ApexManager"

    const-string v2, "Unable to contact apexservice"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 877
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method markStagedSessionSuccessful(I)V
    .registers 6
    .param p1, "sessionId"    # I

    .line 888
    const-string v0, "ApexManager"

    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/apex/IApexService;->markStagedSessionSuccessful(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_9} :catch_28
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_a

    .line 896
    goto :goto_27

    .line 892
    :catch_a
    move-exception v1

    .line 895
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to mark session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as successful"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 897
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_27
    return-void

    .line 889
    :catch_28
    move-exception v1

    .line 890
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "Unable to contact apexservice"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 891
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method registerApkInApex(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 9
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 941
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 942
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mActiveApexInfosCache:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    .line 943
    .local v2, "aai":Lcom/android/server/pm/ApexManager$ActiveApexInfo;
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexDirectory:Ljava/io/File;

    .line 944
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 943
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 945
    iget-object v3, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApksInApex:Landroid/util/ArrayMap;

    iget-object v4, v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 946
    .local v3, "apks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_50

    .line 947
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    move-object v3, v4

    .line 948
    iget-object v4, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApksInApex:Landroid/util/ArrayMap;

    iget-object v5, v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    :cond_50
    const-string v4, "ApexManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Registering "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " as apk-in-apex of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 954
    .end local v2    # "aai":Lcom/android/server/pm/ApexManager$ActiveApexInfo;
    .end local v3    # "apks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7f
    goto :goto_9

    .line 955
    :cond_80
    monitor-exit v0

    .line 956
    return-void

    .line 955
    :catchall_82
    move-exception v1

    monitor-exit v0
    :try_end_84
    .catchall {:try_start_3 .. :try_end_84} :catchall_82

    throw v1
.end method

.method reportErrorWithApkInApex(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "scanDirPath"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .line 960
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 961
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mActiveApexInfosCache:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    .line 962
    .local v2, "aai":Lcom/android/server/pm/ApexManager$ActiveApexInfo;
    iget-object v3, v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 963
    iget-object v3, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mErrorWithApkInApex:Ljava/util/Map;

    iget-object v4, v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    invoke-interface {v3, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    .end local v2    # "aai":Lcom/android/server/pm/ApexManager$ActiveApexInfo;
    :cond_28
    goto :goto_9

    .line 966
    :cond_29
    monitor-exit v0

    .line 967
    return-void

    .line 966
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public reserveSpaceForCompressedApex(Landroid/apex/CompressedApexInfoList;)V
    .registers 3
    .param p1, "infoList"    # Landroid/apex/CompressedApexInfoList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1109
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/apex/IApexService;->reserveSpaceForCompressedApex(Landroid/apex/CompressedApexInfoList;)V

    .line 1110
    return-void
.end method

.method public restoreCeData(IILjava/lang/String;)Z
    .registers 9
    .param p1, "userId"    # I
    .param p2, "rollbackId"    # I
    .param p3, "apexPackageName"    # Ljava/lang/String;

    .line 1040
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1041
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_b

    move v1, v2

    goto :goto_c

    :cond_b
    move v1, v3

    :goto_c
    const-string v4, "APEX packages have not been scanned"

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1043
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1044
    .local v1, "apexModuleName":Ljava/lang/String;
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_48

    .line 1045
    if-nez v1, :cond_35

    .line 1046
    const-string v0, "ApexManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid apex package name: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    return v3

    .line 1050
    :cond_35
    :try_start_35
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v0

    invoke-interface {v0, p1, p2, v1}, Landroid/apex/IApexService;->restoreCeData(IILjava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3c} :catch_3d

    .line 1051
    return v2

    .line 1052
    :catch_3d
    move-exception v0

    .line 1053
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ApexManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1054
    return v3

    .line 1044
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "apexModuleName":Ljava/lang/String;
    :catchall_48
    move-exception v1

    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method revertActiveSessions()Z
    .registers 5

    .line 907
    const-string v0, "ApexManager"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v2

    invoke-interface {v2}, Landroid/apex/IApexService;->revertActiveSessions()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_15
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_c

    .line 908
    const/4 v0, 0x1

    return v0

    .line 912
    :catch_c
    move-exception v2

    .line 913
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 914
    return v1

    .line 909
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_15
    move-exception v2

    .line 910
    .local v2, "re":Landroid/os/RemoteException;
    const-string v3, "Unable to contact apexservice"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 911
    return v1
.end method

.method scanApexPackagesTraced(Lcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .registers 7
    .param p1, "packageParser"    # Lcom/android/server/pm/parsing/PackageParser2;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 567
    const-string/jumbo v0, "scanApexPackagesTraced"

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 569
    :try_start_9
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_18

    .line 570
    :try_start_c
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->scanApexPackagesInternalLocked(Lcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 571
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_15

    .line 573
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 574
    nop

    .line 575
    return-void

    .line 571
    :catchall_15
    move-exception v3

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    .end local p0    # "this":Lcom/android/server/pm/ApexManager$ApexManagerImpl;
    .end local p1    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    .end local p2    # "executorService":Ljava/util/concurrent/ExecutorService;
    :try_start_17
    throw v3
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_18

    .line 573
    .restart local p0    # "this":Lcom/android/server/pm/ApexManager$ApexManagerImpl;
    .restart local p1    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    .restart local p2    # "executorService":Ljava/util/concurrent/ExecutorService;
    :catchall_18
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 574
    throw v0
.end method

.method public snapshotCeData(IILjava/lang/String;)Z
    .registers 9
    .param p1, "userId"    # I
    .param p2, "rollbackId"    # I
    .param p3, "apexPackageName"    # Ljava/lang/String;

    .line 1019
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1020
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_b

    move v1, v2

    goto :goto_c

    :cond_b
    move v1, v3

    :goto_c
    const-string v4, "APEX packages have not been scanned"

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1022
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1023
    .local v1, "apexModuleName":Ljava/lang/String;
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_48

    .line 1024
    if-nez v1, :cond_35

    .line 1025
    const-string v0, "ApexManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid apex package name: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    return v3

    .line 1029
    :cond_35
    :try_start_35
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v0

    invoke-interface {v0, p1, p2, v1}, Landroid/apex/IApexService;->snapshotCeData(IILjava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3c} :catch_3d

    .line 1030
    return v2

    .line 1031
    :catch_3d
    move-exception v0

    .line 1032
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ApexManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1033
    return v3

    .line 1023
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "apexModuleName":Ljava/lang/String;
    :catchall_48
    move-exception v1

    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method submitStagedSession(Landroid/apex/ApexSessionParams;)Landroid/apex/ApexInfoList;
    .registers 7
    .param p1, "params"    # Landroid/apex/ApexSessionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 845
    :try_start_0
    new-instance v0, Landroid/apex/ApexInfoList;

    invoke-direct {v0}, Landroid/apex/ApexInfoList;-><init>()V

    .line 846
    .local v0, "apexInfoList":Landroid/apex/ApexInfoList;
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/apex/IApexService;->submitStagedSession(Landroid/apex/ApexSessionParams;Landroid/apex/ApexInfoList;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 847
    return-object v0

    .line 851
    .end local v0    # "apexInfoList":Landroid/apex/ApexInfoList;
    :catch_d
    move-exception v0

    .line 852
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/16 v2, -0x16

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apexd verification failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 854
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 848
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2d
    move-exception v0

    .line 849
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "ApexManager"

    const-string v2, "Unable to contact apexservice"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 850
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method uninstallApex(Ljava/lang/String;)Z
    .registers 4
    .param p1, "apexPackagePath"    # Ljava/lang/String;

    .line 932
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/apex/IApexService;->unstagePackages(Ljava/util/List;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    .line 933
    const/4 v0, 0x1

    return v0

    .line 934
    :catch_d
    move-exception v0

    .line 935
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method protected waitForApexService()Landroid/apex/IApexService;
    .registers 2

    .line 533
    nop

    .line 534
    const-string v0, "apexservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    .line 533
    invoke-static {v0}, Landroid/apex/IApexService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/apex/IApexService;

    move-result-object v0

    return-object v0
.end method
