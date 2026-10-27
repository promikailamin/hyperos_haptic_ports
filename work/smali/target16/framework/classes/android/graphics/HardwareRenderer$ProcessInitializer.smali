.class Landroid/graphics/HardwareRenderer$ProcessInitializer;
.super Ljava/lang/Object;
.source "HardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/HardwareRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessInitializer"
.end annotation


# static fields
.field static blacklist sInstance:Landroid/graphics/HardwareRenderer$ProcessInitializer;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDisplayInitialized:Z

.field private blacklist mGraphicsStatsCallback:Landroid/view/IGraphicsStatsCallback;

.field private blacklist mGraphicsStatsService:Landroid/view/IGraphicsStats;

.field private blacklist mInitialized:Z

.field private blacklist mIsolated:Z

.field private blacklist mPackageName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mrotateBuffer(Landroid/graphics/HardwareRenderer$ProcessInitializer;)V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->rotateBuffer()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1393
    new-instance v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;

    invoke-direct {v0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;-><init>()V

    sput-object v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->sInstance:Landroid/graphics/HardwareRenderer$ProcessInitializer;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 1409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1395
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mInitialized:Z

    .line 1396
    iput-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mDisplayInitialized:Z

    .line 1398
    iput-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mIsolated:Z

    .line 1402
    new-instance v0, Landroid/graphics/HardwareRenderer$ProcessInitializer$1;

    invoke-direct {v0, p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer$1;-><init>(Landroid/graphics/HardwareRenderer$ProcessInitializer;)V

    iput-object v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mGraphicsStatsCallback:Landroid/view/IGraphicsStatsCallback;

    .line 1410
    return-void
.end method

.method private blacklist initDisplayInfo()V
    .registers 21

    .line 1470
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mDisplayInitialized:Z

    if-eqz v1, :cond_7

    return-void

    .line 1471
    :cond_7
    iget-boolean v1, v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mIsolated:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_f

    .line 1472
    iput-boolean v2, v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mDisplayInitialized:Z

    .line 1473
    return-void

    .line 1476
    :cond_f
    iget-object v1, v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mContext:Landroid/content/Context;

    const-string v3, "display"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 1477
    const-string v3, "HardwareRenderer"

    if-nez v1, :cond_23

    .line 1478
    const-string v0, "Failed to find DisplayManager for display-based configuration"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    return-void

    .line 1482
    :cond_23
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v5

    .line 1483
    if-nez v5, :cond_30

    .line 1484
    const-string v0, "Failed to find default display for display-based configuration"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    return-void

    .line 1488
    :cond_30
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v1

    .line 1489
    array-length v6, v1

    if-nez v6, :cond_3d

    .line 1490
    const-string v0, "Failed to query displays"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    return-void

    .line 1494
    :cond_3d
    invoke-virtual {v5}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v3

    .line 1495
    nop

    .line 1496
    invoke-virtual {v5}, Landroid/view/Display;->getPreferredWideGamutColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v6

    .line 1497
    if-eqz v6, :cond_4d

    .line 1498
    invoke-virtual {v6}, Landroid/graphics/ColorSpace;->getDataSpace()I

    move-result v6

    goto :goto_4e

    :cond_4d
    move v6, v4

    .line 1502
    :goto_4e
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v7

    .line 1503
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v3

    .line 1504
    invoke-virtual {v5}, Landroid/view/Display;->getOverlaySupport()Landroid/hardware/OverlayProperties;

    move-result-object v8

    .line 1506
    move v10, v3

    move v3, v4

    move v12, v6

    move v9, v7

    :goto_5e
    array-length v6, v1

    if-ge v3, v6, :cond_91

    .line 1507
    aget-object v6, v1, v3

    .line 1511
    if-nez v12, :cond_70

    .line 1512
    invoke-virtual {v6}, Landroid/view/Display;->getPreferredWideGamutColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v7

    .line 1513
    if-eqz v7, :cond_70

    .line 1514
    invoke-virtual {v7}, Landroid/graphics/ColorSpace;->getDataSpace()I

    move-result v7

    move v12, v7

    .line 1517
    :cond_70
    invoke-virtual {v6}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v6

    .line 1518
    move v7, v4

    :goto_75
    array-length v11, v6

    if-ge v7, v11, :cond_8e

    .line 1519
    aget-object v11, v6, v7

    .line 1520
    invoke-virtual {v11}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v13

    .line 1521
    invoke-virtual {v11}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v11

    .line 1522
    mul-int v14, v13, v11

    mul-int v15, v9, v10

    if-le v14, v15, :cond_8b

    .line 1523
    nop

    .line 1524
    move v10, v11

    move v9, v13

    .line 1518
    :cond_8b
    add-int/lit8 v7, v7, 0x1

    goto :goto_75

    .line 1506
    :cond_8e
    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    .line 1529
    :cond_91
    invoke-virtual {v5}, Landroid/view/Display;->getRefreshRate()F

    move-result v11

    .line 1530
    invoke-virtual {v5}, Landroid/view/Display;->getAppVsyncOffsetNanos()J

    move-result-wide v13

    .line 1531
    invoke-virtual {v5}, Landroid/view/Display;->getPresentationDeadlineNanos()J

    move-result-wide v15

    .line 1532
    const/high16 v1, 0x18810000

    const/16 v3, 0x16

    invoke-virtual {v8, v1, v3}, Landroid/hardware/OverlayProperties;->isCombinationSupported(II)Z

    move-result v17

    .line 1535
    const/high16 v1, 0xa0000

    const/high16 v3, 0x800000

    const/high16 v4, 0x18000000

    invoke-static {v1, v3, v4}, Landroid/hardware/DataSpace;->pack(III)I

    move-result v1

    .line 1534
    const/16 v3, 0x3b

    invoke-virtual {v8, v1, v3}, Landroid/hardware/OverlayProperties;->isCombinationSupported(II)Z

    move-result v18

    .line 1540
    invoke-virtual {v8}, Landroid/hardware/OverlayProperties;->isMixedColorSpacesSupported()Z

    move-result v19

    .line 1529
    invoke-static/range {v9 .. v19}, Landroid/graphics/HardwareRenderer;->-$$Nest$smnInitDisplayInfo(IIFIJJZZZ)V

    .line 1542
    iput-boolean v2, v0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mDisplayInitialized:Z

    .line 1543
    return-void
.end method

.method private blacklist initGraphicsStats()V
    .registers 4

    .line 1445
    iget-object v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_5

    return-void

    .line 1448
    :cond_5
    :try_start_5
    const-string v0, "graphicsstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1449
    if-nez v0, :cond_e

    return-void

    .line 1450
    :cond_e
    invoke-static {v0}, Landroid/view/IGraphicsStats$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IGraphicsStats;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mGraphicsStatsService:Landroid/view/IGraphicsStats;

    .line 1451
    invoke-direct {p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->requestBuffer()V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    .line 1454
    goto :goto_20

    .line 1452
    :catchall_18
    move-exception v0

    .line 1453
    const-string v1, "HardwareRenderer"

    const-string v2, "Could not acquire gfx stats buffer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1455
    :goto_20
    return-void
.end method

.method private blacklist initSched(J)V
    .registers 4

    .line 1437
    :try_start_0
    invoke-static {p1, p2}, Landroid/graphics/HardwareRenderer;->-$$Nest$smnGetRenderThreadTid(J)I

    move-result p1

    .line 1438
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/app/IActivityManager;->setRenderThread(I)V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    .line 1441
    goto :goto_14

    .line 1439
    :catchall_c
    move-exception p1

    .line 1440
    const-string p2, "HardwareRenderer"

    const-string v0, "Failed to set scheduler for RenderThread"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1442
    :goto_14
    return-void
.end method

.method private blacklist requestBuffer()V
    .registers 4

    .line 1552
    :try_start_0
    iget-object v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mGraphicsStatsService:Landroid/view/IGraphicsStats;

    iget-object v1, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mGraphicsStatsCallback:Landroid/view/IGraphicsStatsCallback;

    .line 1553
    invoke-interface {v0, v1, v2}, Landroid/view/IGraphicsStats;->requestBufferForProcess(Ljava/lang/String;Landroid/view/IGraphicsStatsCallback;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1554
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/HardwareRenderer;->-$$Nest$smnSetProcessStatsBuffer(I)V

    .line 1555
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    .line 1558
    goto :goto_1d

    .line 1556
    :catchall_15
    move-exception v0

    .line 1557
    const-string v1, "HardwareRenderer"

    const-string v2, "Could not acquire gfx stats buffer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1559
    :goto_1d
    return-void
.end method

.method private blacklist rotateBuffer()V
    .registers 1

    .line 1546
    invoke-static {}, Landroid/graphics/HardwareRenderer;->-$$Nest$smnRotateProcessStatsBuffer()V

    .line 1547
    invoke-direct {p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->requestBuffer()V

    .line 1548
    return-void
.end method


# virtual methods
.method declared-synchronized blacklist init(J)V
    .registers 4

    monitor-enter p0

    .line 1428
    :try_start_1
    iget-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mInitialized:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 1429
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mInitialized:Z

    .line 1431
    invoke-direct {p0, p1, p2}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->initSched(J)V

    .line 1432
    invoke-direct {p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->initGraphicsStats()V
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_12

    .line 1433
    monitor-exit p0

    return-void

    .line 1427
    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method

.method declared-synchronized blacklist initUsingContext()V
    .registers 2

    monitor-enter p0

    .line 1458
    :try_start_1
    iget-object v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mContext:Landroid/content/Context;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1d

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    .line 1460
    :cond_7
    :try_start_7
    invoke-direct {p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer;->initDisplayInfo()V

    .line 1462
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    invoke-static {v0}, Landroid/graphics/HardwareRenderer;->-$$Nest$smnSetIsHighEndGfx(Z)V

    .line 1463
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    invoke-static {v0}, Landroid/graphics/HardwareRenderer;->-$$Nest$smnSetIsLowRam(Z)V

    .line 1466
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mContext:Landroid/content/Context;
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_1d

    .line 1467
    monitor-exit p0

    return-void

    .line 1457
    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method declared-synchronized blacklist setContext(Landroid/content/Context;)V
    .registers 3

    monitor-enter p0

    .line 1423
    :try_start_1
    iget-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mInitialized:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 1424
    :cond_7
    :try_start_7
    iput-object p1, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mContext:Landroid/content/Context;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_b

    .line 1425
    monitor-exit p0

    return-void

    .line 1422
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method declared-synchronized blacklist setIsolated(Z)V
    .registers 3

    monitor-enter p0

    .line 1418
    :try_start_1
    iget-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mInitialized:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 1419
    :cond_7
    :try_start_7
    iput-boolean p1, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mIsolated:Z
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_b

    .line 1420
    monitor-exit p0

    return-void

    .line 1417
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method declared-synchronized blacklist setPackageName(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 1413
    :try_start_1
    iget-boolean v0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mInitialized:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 1414
    :cond_7
    :try_start_7
    iput-object p1, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer;->mPackageName:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_b

    .line 1415
    monitor-exit p0

    return-void

    .line 1412
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method
