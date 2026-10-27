.class public abstract Landroid/hardware/gnss/V1_0/IGnssCallback$Stub;
.super Landroid/os/HwBinder;
.source "IGnssCallback.java"

# interfaces
.implements Landroid/hardware/gnss/V1_0/IGnssCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IGnssCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1317
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 1320
    return-object p0
.end method

.method public blacklist debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1333
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 1370
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1371
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1372
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1373
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1374
    return-object v0
.end method

.method public final blacklist getHashChain()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 1345
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_1a

    new-array v1, v1, [B

    fill-array-data v1, :array_2e

    filled-new-array {v2, v1}, [[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :array_1a
    .array-data 1
        -0x5et
        -0x5t
        -0x27t
        0x74t
        0x7ft
        -0x45t
        -0x64t
        -0x15t
        -0x74t
        0x10t
        -0x70t
        -0x4bt
        -0x5et
        0x41t
        0x38t
        0x31t
        0x22t
        0x46t
        0x50t
        0x2dt
        0x5at
        -0x10t
        0x65t
        0x4at
        -0x74t
        0x2bt
        0x60t
        0x3at
        -0x65t
        -0xbt
        0x21t
        -0x4t
    .end array-data

    :array_2e
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final blacklist interfaceChain()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1325
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.gnss@1.0::IGnssCallback"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1339
    const-string v0, "android.hardware.gnss@1.0::IGnssCallback"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    .line 1358
    const/4 p1, 0x1

    return p1
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 1380
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1382
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1410
    const-string p4, "android.hidl.base@1.0::IBase"

    const-string v0, "android.hardware.gnss@1.0::IGnssCallback"

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_16c

    goto/16 :goto_16a

    .line 1615
    :sswitch_a
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1617
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnssCallback$Stub;->notifySyspropsChanged()V

    .line 1618
    goto/16 :goto_16a

    .line 1604
    :sswitch_12
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1606
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnssCallback$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 1607
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1608
    invoke-virtual {p1, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1609
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1610
    goto/16 :goto_16a

    .line 1594
    :sswitch_24
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1596
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnssCallback$Stub;->ping()V

    .line 1597
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1598
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1599
    goto/16 :goto_16a

    .line 1589
    :sswitch_32
    goto/16 :goto_16a

    .line 1581
    :sswitch_34
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1583
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnssCallback$Stub;->setHALInstrumentation()V

    .line 1584
    goto/16 :goto_16a

    .line 1547
    :sswitch_3c
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1549
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnssCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 1550
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1552
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1554
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 1555
    const-wide/16 v2, 0x8

    invoke-virtual {p2, v2, v3, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1556
    const-wide/16 v2, 0xc

    invoke-virtual {p2, v2, v3, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1557
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v2, p4, 0x20

    invoke-direct {v0, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1558
    nop

    :goto_63
    if-ge v1, p4, :cond_84

    .line 1560
    mul-int/lit8 v2, v1, 0x20

    int-to-long v2, v2

    .line 1561
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 1563
    if-eqz v4, :cond_7c

    array-length v5, v4

    const/16 v6, 0x20

    if-ne v5, v6, :cond_7c

    .line 1567
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1568
    nop

    .line 1558
    add-int/lit8 v1, v1, 0x1

    goto :goto_63

    .line 1564
    :cond_7c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1571
    :cond_84
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1573
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1575
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1576
    goto/16 :goto_16a

    .line 1536
    :sswitch_91
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1538
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnssCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 1539
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1540
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1541
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1542
    goto/16 :goto_16a

    .line 1524
    :sswitch_a3
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1526
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1527
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1528
    invoke-virtual {p0, p1, p2}, Landroid/hardware/gnss/V1_0/IGnssCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1529
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1530
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1531
    goto/16 :goto_16a

    .line 1513
    :sswitch_b9
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1515
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnssCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 1516
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1517
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1518
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1519
    goto/16 :goto_16a

    .line 1501
    :sswitch_cb
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1503
    new-instance p1, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;

    invoke-direct {p1}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;-><init>()V

    .line 1504
    invoke-virtual {p1, p2}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1505
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/V1_0/IGnssCallback$Stub;->gnssSetSystemInfoCb(Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSystemInfo;)V

    .line 1506
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1507
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1508
    goto/16 :goto_16a

    .line 1491
    :sswitch_e1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1493
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnssCallback$Stub;->gnssRequestTimeCb()V

    .line 1494
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1495
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1496
    goto/16 :goto_16a

    .line 1481
    :sswitch_ef
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1483
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnssCallback$Stub;->gnssReleaseWakelockCb()V

    .line 1484
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1485
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1486
    goto :goto_16a

    .line 1471
    :sswitch_fc
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1473
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnssCallback$Stub;->gnssAcquireWakelockCb()V

    .line 1474
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1475
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1476
    goto :goto_16a

    .line 1460
    :sswitch_109
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1462
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1463
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/V1_0/IGnssCallback$Stub;->gnssSetCapabilitesCb(I)V

    .line 1464
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1465
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1466
    goto :goto_16a

    .line 1448
    :sswitch_11a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1450
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 1451
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1452
    invoke-virtual {p0, v2, v3, p1}, Landroid/hardware/gnss/V1_0/IGnssCallback$Stub;->gnssNmeaCb(JLjava/lang/String;)V

    .line 1453
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1454
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1455
    goto :goto_16a

    .line 1436
    :sswitch_12f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1438
    new-instance p1, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;

    invoke-direct {p1}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;-><init>()V

    .line 1439
    invoke-virtual {p1, p2}, Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1440
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/V1_0/IGnssCallback$Stub;->gnssSvStatusCb(Landroid/hardware/gnss/V1_0/IGnssCallback$GnssSvStatus;)V

    .line 1441
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1442
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1443
    goto :goto_16a

    .line 1425
    :sswitch_144
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1427
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p1

    .line 1428
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/V1_0/IGnssCallback$Stub;->gnssStatusCb(B)V

    .line 1429
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1430
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1431
    goto :goto_16a

    .line 1413
    :sswitch_155
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1415
    new-instance p1, Landroid/hardware/gnss/V1_0/GnssLocation;

    invoke-direct {p1}, Landroid/hardware/gnss/V1_0/GnssLocation;-><init>()V

    .line 1416
    invoke-virtual {p1, p2}, Landroid/hardware/gnss/V1_0/GnssLocation;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1417
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/V1_0/IGnssCallback$Stub;->gnssLocationCb(Landroid/hardware/gnss/V1_0/GnssLocation;)V

    .line 1418
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1419
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1420
    nop

    .line 1627
    :goto_16a
    return-void

    nop

    :sswitch_data_16c
    .sparse-switch
        0x1 -> :sswitch_155
        0x2 -> :sswitch_144
        0x3 -> :sswitch_12f
        0x4 -> :sswitch_11a
        0x5 -> :sswitch_109
        0x6 -> :sswitch_fc
        0x7 -> :sswitch_ef
        0x8 -> :sswitch_e1
        0x9 -> :sswitch_cb
        0xf43484e -> :sswitch_b9
        0xf444247 -> :sswitch_a3
        0xf445343 -> :sswitch_91
        0xf485348 -> :sswitch_3c
        0xf494e54 -> :sswitch_34
        0xf4c5444 -> :sswitch_32
        0xf504e47 -> :sswitch_24
        0xf524546 -> :sswitch_12
        0xf535953 -> :sswitch_a
    .end sparse-switch
.end method

.method public final blacklist ping()V
    .registers 1

    .line 1364
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 1392
    const-string v0, "android.hardware.gnss@1.0::IGnssCallback"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1393
    return-object p0

    .line 1395
    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist registerAsService(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1399
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/V1_0/IGnssCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 1400
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 1354
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnssCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 2

    .line 1386
    const/4 p1, 0x1

    return p1
.end method
