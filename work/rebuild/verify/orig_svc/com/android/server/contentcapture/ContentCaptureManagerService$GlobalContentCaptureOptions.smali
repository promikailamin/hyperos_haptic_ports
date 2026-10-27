.class public final Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;
.super Lcom/android/internal/infra/GlobalWhitelistState;
.source "ContentCaptureManagerService.java"


# instance fields
.field public final mServicePackages:Landroid/util/SparseArray;

.field public final mTemporaryServices:Landroid/util/SparseBooleanArray;

.field public final synthetic this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$msetServiceInfo(Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;ILjava/lang/String;Z)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->setServiceInfo(ILjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V
    .registers 2

    .line 1417
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-direct {p0}, Lcom/android/internal/infra/GlobalWhitelistState;-><init>()V

    .line 1419
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mServicePackages:Landroid/util/SparseArray;

    .line 1421
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mTemporaryServices:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5

    .line 1516
    invoke-super {p0, p1, p2}, Lcom/android/internal/infra/GlobalWhitelistState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1518
    iget-object v0, p0, Lcom/android/internal/infra/GlobalWhitelistState;->mGlobalWhitelistStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1519
    :try_start_6
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mServicePackages:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1e

    .line 1520
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Service packages: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mServicePackages:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1e

    :catchall_1c
    move-exception p0

    goto :goto_35

    .line 1522
    :cond_1e
    :goto_1e
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mTemporaryServices:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-lez v1, :cond_33

    .line 1523
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "Temp services: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mTemporaryServices:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1525
    :cond_33
    monitor-exit v0

    return-void

    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_6 .. :try_end_36} :catchall_1c

    throw p0
.end method

.method public getOptions(ILjava/lang/String;)Landroid/content/ContentCaptureOptions;
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 1453
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->isContentProtectionReceiverEnabled(ILjava/lang/String;)Z

    move-result v4

    .line 1456
    iget-object v3, v0, Lcom/android/internal/infra/GlobalWhitelistState;->mGlobalWhitelistStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1458
    :try_start_d
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->isContentCaptureReceiverEnabled(ILjava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_57

    .line 1461
    invoke-virtual/range {p0 .. p2}, Lcom/android/internal/infra/GlobalWhitelistState;->getWhitelistedComponents(ILjava/lang/String;)Landroid/util/ArraySet;

    move-result-object v7

    if-nez v4, :cond_55

    if-nez v7, :cond_55

    .line 1462
    iget-object v8, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mServicePackages:Landroid/util/SparseArray;

    .line 1464
    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_55

    .line 1467
    iget-object v1, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v1, :cond_4a

    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOptionsForPackage() lite for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    :catchall_47
    move-exception v0

    goto/16 :goto_13e

    .line 1468
    :cond_4a
    :goto_4a
    new-instance v1, Landroid/content/ContentCaptureOptions;

    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLoggingLevel:I

    invoke-direct {v1, v0}, Landroid/content/ContentCaptureOptions;-><init>(I)V

    monitor-exit v3

    return-object v1

    :cond_55
    move-object v13, v7

    goto :goto_58

    :cond_57
    move-object v13, v6

    .line 1471
    :goto_58
    monitor-exit v3
    :try_end_59
    .catchall {:try_start_d .. :try_end_59} :catchall_47

    .line 1474
    sget-boolean v3, Landroid/os/Build;->IS_USER:Z

    if-eqz v3, :cond_9e

    iget-object v3, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;
    invoke-static {v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2500(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Lcom/android/server/infra/ServiceNameResolver;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/server/infra/ServiceNameResolver;->isTemporary(I)Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 1475
    iget-object v3, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mServicePackages:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9e

    .line 1476
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " while using temporary service "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mServicePackages:Landroid/util/SparseArray;

    .line 1477
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1476
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_9e
    if-nez v5, :cond_c8

    if-nez v4, :cond_c8

    if-nez v13, :cond_c8

    .line 1486
    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_c7

    .line 1487
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOptionsForPackage("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "): not whitelisted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c7
    return-object v6

    .line 1492
    :cond_c8
    iget-object v1, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2600(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1493
    :try_start_cf
    new-instance v9, Landroid/content/ContentCaptureOptions;

    iget-object v3, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget v10, v3, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLoggingLevel:I

    iget v11, v3, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgMaxBufferSize:I

    iget v12, v3, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgIdleFlushingFrequencyMs:I

    iget v14, v3, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgTextChangeFlushingFrequencyMs:I

    move-object v15, v9

    iget v9, v3, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLogHistorySize:I

    iget-boolean v3, v3, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgDisableFlushForViewTreeAppearing:Z

    if-nez v5, :cond_ea

    if-eqz v13, :cond_e5

    goto :goto_ea

    :cond_e5
    const/4 v5, 0x0

    :goto_e6
    move/from16 v16, v5

    move v5, v3

    goto :goto_ec

    :cond_ea
    :goto_ea
    const/4 v5, 0x1

    goto :goto_e6

    :goto_ec
    new-instance v3, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;

    iget-object v6, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    move v7, v5

    iget v5, v6, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionBufferSize:I

    iget-object v8, v6, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionRequiredGroups:Ljava/util/List;

    move/from16 v17, v7

    iget-object v7, v6, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionOptionalGroups:Ljava/util/List;

    iget v6, v6, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgContentProtectionOptionalGroupsThreshold:I

    move-object/from16 v18, v8

    move v8, v6

    move-object/from16 v6, v18

    invoke-direct/range {v3 .. v8}, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;-><init>(ZILjava/util/List;Ljava/util/List;I)V

    move v5, v10

    move v6, v11

    move v7, v12

    move v8, v14

    move-object v4, v15

    move/from16 v11, v16

    move/from16 v10, v17

    move-object v12, v3

    invoke-direct/range {v4 .. v13}, Landroid/content/ContentCaptureOptions;-><init>(IIIIIZZLandroid/content/ContentCaptureOptions$ContentProtectionOptions;Landroid/util/ArraySet;)V

    move-object v15, v4

    .line 1509
    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_13a

    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOptionsForPackage("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13a

    :catchall_138
    move-exception v0

    goto :goto_13c

    .line 1510
    :cond_13a
    :goto_13a
    monitor-exit v1

    return-object v15

    .line 1511
    :goto_13c
    monitor-exit v1
    :try_end_13d
    .catchall {:try_start_cf .. :try_end_13d} :catchall_138

    throw v0

    .line 1471
    :goto_13e
    :try_start_13e
    monitor-exit v3
    :try_end_13f
    .catchall {:try_start_13e .. :try_end_13f} :catchall_47

    throw v0
.end method

.method public final isContentCaptureReceiverEnabled(ILjava/lang/String;)Z
    .registers 3

    .line 1542
    invoke-super {p0, p1, p2}, Lcom/android/internal/infra/GlobalWhitelistState;->isWhitelisted(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isContentProtectionReceiverEnabled(ILjava/lang/String;)Z
    .registers 6

    .line 1549
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2700(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1550
    :try_start_7
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$misContentProtectionEnabledLocked(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 1551
    monitor-exit v0

    return v2

    :catchall_12
    move-exception p0

    goto :goto_30

    .line 1553
    :cond_14
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$fgetmContentProtectionConsentManager(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Lcom/android/server/contentprotection/ContentProtectionConsentManager;

    move-result-object v1

    .line 1554
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$fgetmContentProtectionAllowlistManager(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;

    move-result-object p0

    .line 1555
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_12

    .line 1556
    invoke-virtual {v1, p1}, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->isConsentGranted(I)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 1557
    invoke-virtual {p0, p2}, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->isAllowed(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2f

    const/4 p0, 0x1

    return p0

    :cond_2f
    return v2

    .line 1555
    :goto_30
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_12

    throw p0
.end method

.method public isWhitelisted(ILandroid/content/ComponentName;)Z
    .registers 4

    .line 1536
    invoke-super {p0, p1, p2}, Lcom/android/internal/infra/GlobalWhitelistState;->isWhitelisted(ILandroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1537
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->isContentProtectionReceiverEnabled(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public isWhitelisted(ILjava/lang/String;)Z
    .registers 4

    .line 1530
    invoke-virtual {p0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->isContentCaptureReceiverEnabled(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1531
    invoke-virtual {p0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->isContentProtectionReceiverEnabled(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public final setServiceInfo(ILjava/lang/String;Z)V
    .registers 7

    .line 1426
    iget-object v0, p0, Lcom/android/internal/infra/GlobalWhitelistState;->mGlobalWhitelistStateLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p3, :cond_e

    .line 1428
    :try_start_5
    iget-object p3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mTemporaryServices:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {p3, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_13

    :catchall_c
    move-exception p0

    goto :goto_4b

    .line 1430
    :cond_e
    iget-object p3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mTemporaryServices:Landroid/util/SparseBooleanArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    :goto_13
    if-eqz p2, :cond_44

    .line 1434
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p3

    if-nez p3, :cond_3a

    .line 1436
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setServiceInfo(): invalid name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mServicePackages:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_49

    .line 1439
    :cond_3a
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mServicePackages:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_49

    .line 1442
    :cond_44
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->mServicePackages:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1444
    :goto_49
    monitor-exit v0

    return-void

    :goto_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_5 .. :try_end_4c} :catchall_c

    throw p0
.end method
