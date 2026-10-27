.class public Lcom/android/server/BinaryTransparencyService;
.super Lcom/android/server/SystemService;
.source "BinaryTransparencyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;,
        Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;
    }
.end annotation


# static fields
.field static final BINARY_HASH_ERROR:Ljava/lang/String; = "SHA256HashError"

.field private static final EXTRA_SERVICE:Ljava/lang/String; = "service"

.field static final SYSPROP_NAME_VBETA_DIGEST:Ljava/lang/String; = "ro.boot.vbmeta.digest"

.field private static final TAG:Ljava/lang/String; = "TransparencyService"

.field static final VBMETA_DIGEST_UNAVAILABLE:Ljava/lang/String; = "vbmeta-digest-unavailable"

.field static final VBMETA_DIGEST_UNINITIALIZED:Ljava/lang/String; = "vbmeta-digest-uninitialized"


# instance fields
.field private mBinaryHashes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBinaryLastUpdateTimes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mServiceImpl:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

.field private mVbmetaDigest:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBinaryHashes(Lcom/android/server/BinaryTransparencyService;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService;->mBinaryHashes:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/BinaryTransparencyService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVbmetaDigest(Lcom/android/server/BinaryTransparencyService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService;->mVbmetaDigest:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetInstalledApexs(Lcom/android/server/BinaryTransparencyService;)Ljava/util/List;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/BinaryTransparencyService;->getInstalledApexs()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateBinaryMeasurements(Lcom/android/server/BinaryTransparencyService;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/BinaryTransparencyService;->updateBinaryMeasurements()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 345
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 346
    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    .line 347
    new-instance v0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    invoke-direct {v0, p0}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;-><init>(Lcom/android/server/BinaryTransparencyService;)V

    iput-object v0, p0, Lcom/android/server/BinaryTransparencyService;->mServiceImpl:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    .line 348
    const-string/jumbo v0, "vbmeta-digest-uninitialized"

    iput-object v0, p0, Lcom/android/server/BinaryTransparencyService;->mVbmetaDigest:Ljava/lang/String;

    .line 349
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/BinaryTransparencyService;->mBinaryHashes:Ljava/util/HashMap;

    .line 350
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/BinaryTransparencyService;->mBinaryLastUpdateTimes:Ljava/util/HashMap;

    .line 351
    return-void
.end method

.method private doFreshBinaryMeasurements()V
    .registers 19

    .line 543
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 544
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v3, "TransparencyService"

    const-string v0, "Obtained package manager"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-static {}, Landroid/util/PackageUtils;->createLargeFileBuffer()[B

    move-result-object v4

    .line 550
    .local v4, "largeFileBuffer":[B
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BinaryTransparencyService;->getInstalledApexs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x2

    const-string v7, "Last update time for %s: %d"

    const-string v8, "SHA256HashError"

    const-string v9, "Failed to compute SHA256 digest for %s"

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v5, :cond_90

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 551
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v12, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 554
    .local v12, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v13, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v13, v4}, Landroid/util/PackageUtils;->computeSha256DigestForLargeFile(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v13

    .line 556
    .local v13, "sha256digest":Ljava/lang/String;
    if-nez v13, :cond_4f

    .line 557
    new-array v14, v11, [Ljava/lang/Object;

    iget-object v15, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v15, v14, v10

    invoke-static {v9, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v9, v1, Lcom/android/server/BinaryTransparencyService;->mBinaryHashes:Ljava/util/HashMap;

    iget-object v14, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_56

    .line 561
    :cond_4f
    iget-object v8, v1, Lcom/android/server/BinaryTransparencyService;->mBinaryHashes:Ljava/util/HashMap;

    iget-object v9, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    :goto_56
    const/16 v8, 0x1a5

    iget-object v9, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 564
    invoke-virtual {v5}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v14

    iget-object v11, v1, Lcom/android/server/BinaryTransparencyService;->mBinaryHashes:Ljava/util/HashMap;

    iget-object v10, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 563
    invoke-static {v8, v9, v14, v15, v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;JLjava/lang/String;)V

    .line 565
    new-array v6, v6, [Ljava/lang/Object;

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v6, v9

    iget-wide v8, v5, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 566
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v6, v9

    .line 565
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v6, v1, Lcom/android/server/BinaryTransparencyService;->mBinaryLastUpdateTimes:Ljava/util/HashMap;

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-wide v8, v5, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    .end local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v12    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "sha256digest":Ljava/lang/String;
    goto :goto_1b

    .line 572
    :cond_90
    const/high16 v0, 0x20000

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstalledModules(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_165

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/content/pm/ModuleInfo;

    .line 573
    .local v10, "module":Landroid/content/pm/ModuleInfo;
    invoke-virtual {v10}, Landroid/content/pm/ModuleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 574
    .local v11, "packageName":Ljava/lang/String;
    if-nez v11, :cond_c8

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ERROR: Encountered null package name for module "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 576
    invoke-virtual {v10}, Landroid/content/pm/ModuleInfo;->getApexModuleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 575
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    goto :goto_9a

    .line 579
    :cond_c8
    iget-object v0, v1, Lcom/android/server/BinaryTransparencyService;->mBinaryHashes:Ljava/util/HashMap;

    invoke-virtual {v10}, Landroid/content/pm/ModuleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 580
    goto :goto_9a

    .line 585
    :cond_d5
    const-wide/32 v12, 0x40000000

    .line 586
    :try_start_d8
    invoke-static {v12, v13}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v0

    .line 585
    invoke-virtual {v2, v11, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 587
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v12, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 590
    .restart local v12    # "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v13, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v13, v4}, Landroid/util/PackageUtils;->computeSha256DigestForLargeFile(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v13

    .line 592
    .restart local v13    # "sha256digest":Ljava/lang/String;
    if-nez v13, :cond_103

    .line 593
    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;
    :try_end_ed
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d8 .. :try_end_ed} :catch_144

    const/4 v14, 0x0

    :try_start_ee
    aput-object v11, v15, v14
    :try_end_f0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ee .. :try_end_f0} :catch_fd

    :try_start_f0
    invoke-static {v9, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-object v14, v1, Lcom/android/server/BinaryTransparencyService;->mBinaryHashes:Ljava/util/HashMap;

    invoke-virtual {v14, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_108

    .line 602
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v12    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "sha256digest":Ljava/lang/String;
    :catch_fd
    move-exception v0

    move-object v6, v7

    move-object/from16 v16, v8

    move v15, v14

    goto :goto_149

    .line 597
    .restart local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v12    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v13    # "sha256digest":Ljava/lang/String;
    :cond_103
    iget-object v14, v1, Lcom/android/server/BinaryTransparencyService;->mBinaryHashes:Ljava/util/HashMap;

    invoke-virtual {v14, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    :goto_108
    new-array v14, v6, [Ljava/lang/Object;
    :try_end_10a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f0 .. :try_end_10a} :catch_144

    const/4 v15, 0x0

    :try_start_10b
    aput-object v11, v14, v15
    :try_end_10d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10b .. :try_end_10d} :catch_13f

    move-object/from16 v17, v7

    :try_start_10f
    iget-wide v6, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 600
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v14, v7
    :try_end_118
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10f .. :try_end_118} :catch_139

    .line 599
    move-object/from16 v6, v17

    :try_start_11a
    invoke-static {v6, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v14, v1, Lcom/android/server/BinaryTransparencyService;->mBinaryLastUpdateTimes:Ljava/util/HashMap;
    :try_end_123
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11a .. :try_end_123} :catch_137

    move-object/from16 v16, v8

    :try_start_125
    iget-wide v7, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v14, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_125 .. :try_end_12e} :catch_135

    .line 606
    nop

    .line 607
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v10    # "module":Landroid/content/pm/ModuleInfo;
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v12    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "sha256digest":Ljava/lang/String;
    move-object v7, v6

    move-object/from16 v8, v16

    const/4 v6, 0x2

    goto/16 :goto_9a

    .line 602
    .restart local v10    # "module":Landroid/content/pm/ModuleInfo;
    .restart local v11    # "packageName":Ljava/lang/String;
    :catch_135
    move-exception v0

    goto :goto_149

    :catch_137
    move-exception v0

    goto :goto_141

    :catch_139
    move-exception v0

    move-object/from16 v16, v8

    move-object/from16 v6, v17

    goto :goto_149

    :catch_13f
    move-exception v0

    move-object v6, v7

    :goto_141
    move-object/from16 v16, v8

    goto :goto_149

    :catch_144
    move-exception v0

    move-object v6, v7

    move-object/from16 v16, v8

    const/4 v15, 0x0

    .line 603
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_149
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ERROR: Could not obtain PackageInfo for package name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    move-object v7, v6

    move-object/from16 v8, v16

    const/4 v6, 0x2

    goto/16 :goto_9a

    .line 608
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10    # "module":Landroid/content/pm/ModuleInfo;
    .end local v11    # "packageName":Ljava/lang/String;
    :cond_165
    return-void
.end method

.method private getInstalledApexs()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 464
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 465
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    iget-object v1, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 466
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "TransparencyService"

    if-nez v1, :cond_15

    .line 467
    const-string v3, "Error obtaining an instance of PackageManager."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    return-object v0

    .line 470
    :cond_15
    const-wide/32 v3, 0x40000000

    .line 471
    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v3

    .line 470
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;

    move-result-object v3

    .line 472
    .local v3, "allPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-nez v3, :cond_28

    .line 473
    const-string v4, "Error obtaining installed packages (including APEX)"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    return-object v0

    .line 477
    :cond_28
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/List;

    .line 478
    return-object v0
.end method

.method private getVBMetaDigestInformation()V
    .registers 4

    .line 457
    const-string/jumbo v0, "ro.boot.vbmeta.digest"

    const-string/jumbo v1, "vbmeta-digest-unavailable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BinaryTransparencyService;->mVbmetaDigest:Ljava/lang/String;

    .line 458
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "VBMeta Digest: %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TransparencyService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v0, p0, Lcom/android/server/BinaryTransparencyService;->mVbmetaDigest:Ljava/lang/String;

    const/16 v1, 0x1a4

    invoke-static {v1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;)V

    .line 460
    return-void
.end method

.method static synthetic lambda$getInstalledApexs$0(Landroid/content/pm/PackageInfo;)Z
    .registers 2
    .param p0, "p"    # Landroid/content/pm/PackageInfo;

    .line 477
    iget-boolean v0, p0, Landroid/content/pm/PackageInfo;->isApex:Z

    return v0
.end method

.method private updateBinaryMeasurements()Z
    .registers 17

    .line 487
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/BinaryTransparencyService;->mBinaryHashes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v2, 0x1

    const-string v3, "TransparencyService"

    if-nez v0, :cond_16

    .line 488
    const-string v0, "No apex in cache yet."

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BinaryTransparencyService;->doFreshBinaryMeasurements()V

    .line 490
    return v2

    .line 493
    :cond_16
    iget-object v0, v1, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 494
    .local v4, "pm":Landroid/content/pm/PackageManager;
    if-nez v4, :cond_25

    .line 495
    const-string v0, "Failed to obtain a valid PackageManager instance."

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/4 v0, 0x0

    return v0

    .line 503
    :cond_25
    invoke-static {}, Landroid/util/PackageUtils;->createLargeFileBuffer()[B

    move-result-object v5

    .line 504
    .local v5, "largeFileBuffer":[B
    iget-object v0, v1, Lcom/android/server/BinaryTransparencyService;->mBinaryLastUpdateTimes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_33
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/Map$Entry;

    .line 505
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 507
    .local v8, "packageName":Ljava/lang/String;
    const-wide/32 v9, 0x40000000

    .line 508
    :try_start_4a
    invoke-static {v9, v10}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v0

    .line 507
    invoke-virtual {v4, v8, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 509
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 511
    .local v9, "cachedUpdateTime":J
    iget-wide v11, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v11, v11, v9

    if-lez v11, :cond_cb

    .line 512
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " has been updated!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-wide v11, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    iget-object v11, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v11, v5}, Landroid/util/PackageUtils;->computeSha256DigestForLargeFile(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v11

    .line 518
    .local v11, "sha256digest":Ljava/lang/String;
    if-nez v11, :cond_ad

    .line 519
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to compute SHA256sum for file at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v12, v1, Lcom/android/server/BinaryTransparencyService;->mBinaryHashes:Ljava/util/HashMap;

    const-string v13, "SHA256HashError"

    invoke-virtual {v12, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b2

    .line 523
    :cond_ad
    iget-object v12, v1, Lcom/android/server/BinaryTransparencyService;->mBinaryHashes:Ljava/util/HashMap;

    invoke-virtual {v12, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    :goto_b2
    iget-boolean v12, v0, Landroid/content/pm/PackageInfo;->isApex:Z

    if-eqz v12, :cond_cb

    .line 527
    iget-object v13, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 529
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v14

    iget-object v2, v1, Lcom/android/server/BinaryTransparencyService;->mBinaryHashes:Ljava/util/HashMap;

    iget-object v12, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 530
    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 527
    const/16 v12, 0x1a5

    invoke-static {v12, v13, v14, v15, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;JLjava/lang/String;)V
    :try_end_cb
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4a .. :try_end_cb} :catch_cf

    .line 536
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v9    # "cachedUpdateTime":J
    .end local v11    # "sha256digest":Ljava/lang/String;
    :cond_cb
    nop

    .line 537
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v8    # "packageName":Ljava/lang/String;
    const/4 v2, 0x1

    goto/16 :goto_33

    .line 533
    .restart local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v8    # "packageName":Ljava/lang/String;
    :catch_cf
    move-exception v0

    .line 534
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not find package with name "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const/4 v2, 0x1

    goto/16 :goto_33

    .line 539
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v8    # "packageName":Ljava/lang/String;
    :cond_e9
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .line 377
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_18

    .line 378
    const-string v0, "TransparencyService"

    const-string v1, "Boot completed. Getting VBMeta Digest."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-direct {p0}, Lcom/android/server/BinaryTransparencyService;->getVBMetaDigestInformation()V

    .line 384
    const-string v1, "Scheduling APEX and Module measurements to be updated."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v0, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;->scheduleBinaryMeasurements(Landroid/content/Context;Lcom/android/server/BinaryTransparencyService;)V

    .line 388
    :cond_18
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 360
    const-string v0, "TransparencyService"

    :try_start_2
    const-string/jumbo v1, "transparency"

    iget-object v2, p0, Lcom/android/server/BinaryTransparencyService;->mServiceImpl:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/BinaryTransparencyService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 361
    const-string v1, "Started BinaryTransparencyService"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_10

    .line 364
    goto :goto_16

    .line 362
    :catchall_10
    move-exception v1

    .line 363
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "Failed to start BinaryTransparencyService."

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_16
    return-void
.end method
