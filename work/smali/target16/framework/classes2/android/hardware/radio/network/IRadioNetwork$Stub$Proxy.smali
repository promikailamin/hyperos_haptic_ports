.class Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRadioNetwork.java"

# interfaces
.implements Landroid/hardware/radio/network/IRadioNetwork;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/network/IRadioNetwork$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mCachedHash:Ljava/lang/String;

.field private blacklist mCachedVersion:I

.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 3

    .line 1365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1368
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mCachedVersion:I

    .line 1369
    const-string v0, "-1"

    iput-object v0, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 1366
    iput-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 1367
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 1372
    iget-object v0, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist cancelEmergencyNetworkScan(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2417
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2419
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2420
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2421
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2422
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x27

    invoke-interface {p1, v2, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 2423
    if-eqz p1, :cond_24

    .line 2428
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2429
    nop

    .line 2430
    return-void

    .line 2424
    :cond_24
    :try_start_24
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method cancelEmergencyNetworkScan is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 2428
    :catchall_2c
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2429
    throw p1
.end method

.method public blacklist exitEmergencyMode(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2442
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2444
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2445
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2446
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x28

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 2447
    if-eqz p1, :cond_21

    .line 2452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2453
    nop

    .line 2454
    return-void

    .line 2448
    :cond_21
    :try_start_21
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method exitEmergencyMode is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 2452
    :catchall_29
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2453
    throw p1
.end method

.method public blacklist getAllowedNetworkTypesBitmap(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1389
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1391
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1392
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1393
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_27

    .line 1394
    if-eqz p1, :cond_1f

    .line 1399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1400
    nop

    .line 1401
    return-void

    .line 1395
    :cond_1f
    :try_start_1f
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method getAllowedNetworkTypesBitmap is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_27

    .line 1399
    :catchall_27
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1400
    throw p1
.end method

.method public blacklist getAvailableBandModes(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1415
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1417
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1418
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1419
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_28

    .line 1420
    if-eqz p1, :cond_20

    .line 1425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1426
    nop

    .line 1427
    return-void

    .line 1421
    :cond_20
    :try_start_20
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method getAvailableBandModes is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    .line 1425
    :catchall_28
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1426
    throw p1
.end method

.method public blacklist getAvailableNetworks(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1439
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1441
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1442
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1443
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_28

    .line 1444
    if-eqz p1, :cond_20

    .line 1449
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1450
    nop

    .line 1451
    return-void

    .line 1445
    :cond_20
    :try_start_20
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method getAvailableNetworks is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    .line 1449
    :catchall_28
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1450
    throw p1
.end method

.method public blacklist getBarringInfo(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1463
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1465
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1466
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1467
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_28

    .line 1468
    if-eqz p1, :cond_20

    .line 1473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1474
    nop

    .line 1475
    return-void

    .line 1469
    :cond_20
    :try_start_20
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method getBarringInfo is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    .line 1473
    :catchall_28
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1474
    throw p1
.end method

.method public blacklist getCdmaRoamingPreference(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1489
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1491
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1492
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1493
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_28

    .line 1494
    if-eqz p1, :cond_20

    .line 1499
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1500
    nop

    .line 1501
    return-void

    .line 1495
    :cond_20
    :try_start_20
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method getCdmaRoamingPreference is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    .line 1499
    :catchall_28
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1500
    throw p1
.end method

.method public blacklist getCellInfoList(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1516
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1518
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1519
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1520
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x6

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_28

    .line 1521
    if-eqz p1, :cond_20

    .line 1526
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1527
    nop

    .line 1528
    return-void

    .line 1522
    :cond_20
    :try_start_20
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method getCellInfoList is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    .line 1526
    :catchall_28
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1527
    throw p1
.end method

.method public blacklist getDataRegistrationState(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1540
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1542
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1543
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1544
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x7

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_28

    .line 1545
    if-eqz p1, :cond_20

    .line 1550
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1551
    nop

    .line 1552
    return-void

    .line 1546
    :cond_20
    :try_start_20
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method getDataRegistrationState is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    .line 1550
    :catchall_28
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1551
    throw p1
.end method

.method public blacklist getImsRegistrationState(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1566
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1568
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1569
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1570
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 1571
    if-eqz p1, :cond_21

    .line 1576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1577
    nop

    .line 1578
    return-void

    .line 1572
    :cond_21
    :try_start_21
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method getImsRegistrationState is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 1576
    :catchall_29
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1577
    throw p1
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1376
    sget-object v0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized blacklist getInterfaceHash()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 2821
    :try_start_1
    const-string v0, "-1"

    iget-object v1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 2822
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2823
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_41

    .line 2825
    :try_start_17
    sget-object v2, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2826
    iget-object v2, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2827
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2828
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2e
    .catchall {:try_start_17 .. :try_end_2e} :catchall_35

    .line 2830
    :try_start_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2832
    goto :goto_3d

    .line 2830
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2832
    throw v2

    .line 2834
    :cond_3d
    :goto_3d
    iget-object v0, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_3f
    .catchall {:try_start_2e .. :try_end_3f} :catchall_41

    monitor-exit p0

    return-object v0

    .line 2820
    :catchall_41
    move-exception v0

    :try_start_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2804
    iget v0, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_37

    .line 2805
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2806
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2808
    :try_start_11
    sget-object v2, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2809
    iget-object v2, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2810
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2811
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mCachedVersion:I
    :try_end_28
    .catchall {:try_start_11 .. :try_end_28} :catchall_2f

    .line 2813
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2814
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2815
    goto :goto_37

    .line 2813
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2814
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2815
    throw v2

    .line 2817
    :cond_37
    :goto_37
    iget v0, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public blacklist getNetworkSelectionMode(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1590
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1592
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1593
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1594
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x9

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 1595
    if-eqz p1, :cond_21

    .line 1600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1601
    nop

    .line 1602
    return-void

    .line 1596
    :cond_21
    :try_start_21
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method getNetworkSelectionMode is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 1600
    :catchall_29
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1601
    throw p1
.end method

.method public blacklist getOperator(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1614
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1616
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1617
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1618
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xa

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 1619
    if-eqz p1, :cond_21

    .line 1624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1625
    nop

    .line 1626
    return-void

    .line 1620
    :cond_21
    :try_start_21
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method getOperator is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 1624
    :catchall_29
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1625
    throw p1
.end method

.method public blacklist getSignalStrength(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1638
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1640
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1641
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1642
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xb

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 1643
    if-eqz p1, :cond_21

    .line 1648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1649
    nop

    .line 1650
    return-void

    .line 1644
    :cond_21
    :try_start_21
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method getSignalStrength is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 1648
    :catchall_29
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1649
    throw p1
.end method

.method public blacklist getSystemSelectionChannels(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1662
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1664
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1665
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1666
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xc

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 1667
    if-eqz p1, :cond_21

    .line 1672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1673
    nop

    .line 1674
    return-void

    .line 1668
    :cond_21
    :try_start_21
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method getSystemSelectionChannels is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 1672
    :catchall_29
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1673
    throw p1
.end method

.method public blacklist getUsageSetting(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2336
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2338
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2339
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2340
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x24

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 2341
    if-eqz p1, :cond_21

    .line 2346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2347
    nop

    .line 2348
    return-void

    .line 2342
    :cond_21
    :try_start_21
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method getUsageSetting is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 2346
    :catchall_29
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2347
    throw p1
.end method

.method public blacklist getVoiceRadioTechnology(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1687
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1689
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1690
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1691
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xd

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 1692
    if-eqz p1, :cond_21

    .line 1697
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1698
    nop

    .line 1699
    return-void

    .line 1693
    :cond_21
    :try_start_21
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method getVoiceRadioTechnology is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 1697
    :catchall_29
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1698
    throw p1
.end method

.method public blacklist getVoiceRegistrationState(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1711
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1713
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1714
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1715
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xe

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 1716
    if-eqz p1, :cond_21

    .line 1721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1722
    nop

    .line 1723
    return-void

    .line 1717
    :cond_21
    :try_start_21
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method getVoiceRegistrationState is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 1721
    :catchall_29
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1722
    throw p1
.end method

.method public blacklist isCellularIdentifierTransparencyEnabled(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2602
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2604
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2605
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2606
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x2d

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 2607
    if-eqz p1, :cond_21

    .line 2612
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2613
    nop

    .line 2614
    return-void

    .line 2608
    :cond_21
    :try_start_21
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method isCellularIdentifierTransparencyEnabled is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 2612
    :catchall_29
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2613
    throw p1
.end method

.method public blacklist isN1ModeEnabled(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2542
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2544
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2545
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2546
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x2b

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 2547
    if-eqz p1, :cond_21

    .line 2552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2553
    nop

    .line 2554
    return-void

    .line 2548
    :cond_21
    :try_start_21
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method isN1ModeEnabled is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 2552
    :catchall_29
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2553
    throw p1
.end method

.method public blacklist isNrDualConnectivityEnabled(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1735
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1737
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1738
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1739
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xf

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 1740
    if-eqz p1, :cond_21

    .line 1745
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1746
    nop

    .line 1747
    return-void

    .line 1741
    :cond_21
    :try_start_21
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method isNrDualConnectivityEnabled is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 1745
    :catchall_29
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1746
    throw p1
.end method

.method public blacklist isNullCipherAndIntegrityEnabled(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2518
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2520
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2521
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2522
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x2a

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 2523
    if-eqz p1, :cond_21

    .line 2528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2529
    nop

    .line 2530
    return-void

    .line 2524
    :cond_21
    :try_start_21
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method isNullCipherAndIntegrityEnabled is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 2528
    :catchall_29
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2529
    throw p1
.end method

.method public blacklist isSatelliteEnabledForCarrier(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2789
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2791
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2792
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2793
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x33

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 2794
    if-eqz p1, :cond_21

    .line 2799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2800
    nop

    .line 2801
    return-void

    .line 2795
    :cond_21
    :try_start_21
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method isSatelliteEnabledForCarrier is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 2799
    :catchall_29
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2800
    throw p1
.end method

.method public blacklist isSecurityAlgorithmsUpdatedEnabled(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2697
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2699
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2700
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2701
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x30

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 2702
    if-eqz p1, :cond_21

    .line 2707
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2708
    nop

    .line 2709
    return-void

    .line 2703
    :cond_21
    :try_start_21
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method isSecurityAlgorithmsUpdatedEnabled is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 2707
    :catchall_29
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2708
    throw p1
.end method

.method public blacklist responseAcknowledgement()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1757
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1759
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1760
    iget-object v1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x10

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_26

    .line 1761
    if-eqz v1, :cond_1e

    .line 1766
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1767
    nop

    .line 1768
    return-void

    .line 1762
    :cond_1e
    :try_start_1e
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Method responseAcknowledgement is unimplemented."

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_26

    .line 1766
    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1767
    throw v1
.end method

.method public blacklist setAllowedNetworkTypesBitmap(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1783
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1785
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1786
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1787
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1788
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x11

    invoke-interface {p1, v2, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 1789
    if-eqz p1, :cond_24

    .line 1794
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1795
    nop

    .line 1796
    return-void

    .line 1790
    :cond_24
    :try_start_24
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setAllowedNetworkTypesBitmap is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 1794
    :catchall_2c
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1795
    throw p1
.end method

.method public blacklist setBandMode(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1811
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1813
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1814
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1815
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1816
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x12

    invoke-interface {p1, v2, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 1817
    if-eqz p1, :cond_24

    .line 1822
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1823
    nop

    .line 1824
    return-void

    .line 1818
    :cond_24
    :try_start_24
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setBandMode is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 1822
    :catchall_2c
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1823
    throw p1
.end method

.method public blacklist setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1839
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1841
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1842
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1843
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1844
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1845
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1846
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/16 p4, 0x13

    invoke-interface {p1, p4, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_32

    .line 1847
    if-eqz p1, :cond_2a

    .line 1852
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1853
    nop

    .line 1854
    return-void

    .line 1848
    :cond_2a
    :try_start_2a
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setBarringPassword is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_32

    .line 1852
    :catchall_32
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1853
    throw p1
.end method

.method public blacklist setCdmaRoamingPreference(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1869
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1871
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1872
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1873
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1874
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x14

    invoke-interface {p1, v2, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 1875
    if-eqz p1, :cond_24

    .line 1880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1881
    nop

    .line 1882
    return-void

    .line 1876
    :cond_24
    :try_start_24
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setCdmaRoamingPreference is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 1880
    :catchall_2c
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1881
    throw p1
.end method

.method public blacklist setCellInfoListRate(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1897
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1899
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1900
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1901
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1902
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x15

    invoke-interface {p1, v2, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 1903
    if-eqz p1, :cond_24

    .line 1908
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1909
    nop

    .line 1910
    return-void

    .line 1904
    :cond_24
    :try_start_24
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setCellInfoListRate is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 1908
    :catchall_2c
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1909
    throw p1
.end method

.method public blacklist setCellularIdentifierTransparencyEnabled(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2643
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2645
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2646
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2647
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2648
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x2e

    invoke-interface {p1, v2, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 2649
    if-eqz p1, :cond_24

    .line 2654
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2655
    nop

    .line 2656
    return-void

    .line 2650
    :cond_24
    :try_start_24
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setCellularIdentifierTransparencyEnabled is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 2654
    :catchall_2c
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2655
    throw p1
.end method

.method public blacklist setEmergencyMode(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2362
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2364
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2365
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2366
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2367
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x25

    invoke-interface {p1, v2, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 2368
    if-eqz p1, :cond_24

    .line 2373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2374
    nop

    .line 2375
    return-void

    .line 2369
    :cond_24
    :try_start_24
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setEmergencyMode is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 2373
    :catchall_2c
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2374
    throw p1
.end method

.method public blacklist setIndicationFilter(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1926
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1928
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1929
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1930
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1931
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x16

    invoke-interface {p1, v2, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 1932
    if-eqz p1, :cond_24

    .line 1937
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1938
    nop

    .line 1939
    return-void

    .line 1933
    :cond_24
    :try_start_24
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setIndicationFilter is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 1937
    :catchall_2c
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1938
    throw p1
.end method

.method public blacklist setLinkCapacityReportingCriteria(IIII[I[II)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1966
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1968
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1969
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1970
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1971
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1972
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1973
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1974
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1975
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1976
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/16 p4, 0x17

    invoke-interface {p1, p4, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_3b

    .line 1977
    if-eqz p1, :cond_33

    .line 1982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1983
    nop

    .line 1984
    return-void

    .line 1978
    :cond_33
    :try_start_33
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setLinkCapacityReportingCriteria is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_3b

    .line 1982
    :catchall_3b
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1983
    throw p1
.end method

.method public blacklist setLocationUpdates(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2002
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2004
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2005
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2006
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2007
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x18

    invoke-interface {p1, v2, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 2008
    if-eqz p1, :cond_24

    .line 2013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2014
    nop

    .line 2015
    return-void

    .line 2009
    :cond_24
    :try_start_24
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setLocationUpdates is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 2013
    :catchall_2c
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2014
    throw p1
.end method

.method public blacklist setN1ModeEnabled(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2574
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2576
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2577
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2578
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2579
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x2c

    invoke-interface {p1, v2, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 2580
    if-eqz p1, :cond_24

    .line 2585
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2586
    nop

    .line 2587
    return-void

    .line 2581
    :cond_24
    :try_start_24
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setN1ModeEnabled is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 2585
    :catchall_2c
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2586
    throw p1
.end method

.method public blacklist setNetworkSelectionModeAutomatic(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2028
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2030
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2031
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2032
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x19

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 2033
    if-eqz p1, :cond_21

    .line 2038
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2039
    nop

    .line 2040
    return-void

    .line 2034
    :cond_21
    :try_start_21
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method setNetworkSelectionModeAutomatic is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 2038
    :catchall_29
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2039
    throw p1
.end method

.method public blacklist setNetworkSelectionModeManual(ILjava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2059
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2061
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2062
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2063
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2064
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2065
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/16 v1, 0x1a

    invoke-interface {p1, v1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_2f

    .line 2066
    if-eqz p1, :cond_27

    .line 2071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2072
    nop

    .line 2073
    return-void

    .line 2067
    :cond_27
    :try_start_27
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setNetworkSelectionModeManual is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_2f

    .line 2071
    :catchall_2f
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2072
    throw p1
.end method

.method public blacklist setNrDualConnectivityState(IB)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2091
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2093
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2094
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2095
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 2096
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x1b

    invoke-interface {p1, v2, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 2097
    if-eqz p1, :cond_24

    .line 2102
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2103
    nop

    .line 2104
    return-void

    .line 2098
    :cond_24
    :try_start_24
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setNrDualConnectivityState is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 2102
    :catchall_2c
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2103
    throw p1
.end method

.method public blacklist setNullCipherAndIntegrityEnabled(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2487
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2489
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2490
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2491
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2492
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x29

    invoke-interface {p1, v2, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 2493
    if-eqz p1, :cond_24

    .line 2498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2499
    nop

    .line 2500
    return-void

    .line 2494
    :cond_24
    :try_start_24
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setNullCipherAndIntegrityEnabled is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 2498
    :catchall_2c
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2499
    throw p1
.end method

.method public blacklist setResponseFunctions(Landroid/hardware/radio/network/IRadioNetworkResponse;Landroid/hardware/radio/network/IRadioNetworkIndication;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2115
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2117
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2118
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2119
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2120
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x1c

    invoke-interface {p1, v2, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 2121
    if-eqz p1, :cond_24

    .line 2126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2127
    nop

    .line 2128
    return-void

    .line 2122
    :cond_24
    :try_start_24
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setResponseFunctions is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 2126
    :catchall_2c
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2127
    throw p1
.end method

.method public blacklist setSatelliteEnabledForCarrier(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2764
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2766
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2767
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2768
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2769
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x32

    invoke-interface {p1, v2, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 2770
    if-eqz p1, :cond_24

    .line 2775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2776
    nop

    .line 2777
    return-void

    .line 2771
    :cond_24
    :try_start_24
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setSatelliteEnabledForCarrier is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 2775
    :catchall_2c
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2776
    throw p1
.end method

.method public blacklist setSatellitePlmn(I[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2733
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2735
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2736
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2737
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2738
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2739
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/16 v1, 0x31

    invoke-interface {p1, v1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_2f

    .line 2740
    if-eqz p1, :cond_27

    .line 2745
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2746
    nop

    .line 2747
    return-void

    .line 2741
    :cond_27
    :try_start_27
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setSatellitePlmn is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_2f

    .line 2745
    :catchall_2f
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2746
    throw p1
.end method

.method public blacklist setSecurityAlgorithmsUpdatedEnabled(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2671
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2673
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2674
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2675
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2676
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x2f

    invoke-interface {p1, v2, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 2677
    if-eqz p1, :cond_24

    .line 2682
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2683
    nop

    .line 2684
    return-void

    .line 2678
    :cond_24
    :try_start_24
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setSecurityAlgorithmsUpdatedEnabled is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 2682
    :catchall_2c
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2683
    throw p1
.end method

.method public blacklist setSignalStrengthReportingCriteria(I[Landroid/hardware/radio/network/SignalThresholdInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2148
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2150
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2151
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2152
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2153
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x1d

    invoke-interface {p1, v2, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2154
    if-eqz p1, :cond_25

    .line 2159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2160
    nop

    .line 2161
    return-void

    .line 2155
    :cond_25
    :try_start_25
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setSignalStrengthReportingCriteria is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    .line 2159
    :catchall_2d
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2160
    throw p1
.end method

.method public blacklist setSuppServiceNotifications(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2177
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2179
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2180
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2181
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2182
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x1e

    invoke-interface {p1, v2, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 2183
    if-eqz p1, :cond_24

    .line 2188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2189
    nop

    .line 2190
    return-void

    .line 2184
    :cond_24
    :try_start_24
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setSuppServiceNotifications is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 2188
    :catchall_2c
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2189
    throw p1
.end method

.method public blacklist setSystemSelectionChannels(IZ[Landroid/hardware/radio/network/RadioAccessSpecifier;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2206
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2208
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2209
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2210
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2211
    const/4 p1, 0x0

    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2212
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/16 v1, 0x1f

    invoke-interface {p1, v1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_30

    .line 2213
    if-eqz p1, :cond_28

    .line 2218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2219
    nop

    .line 2220
    return-void

    .line 2214
    :cond_28
    :try_start_28
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setSystemSelectionChannels is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    .line 2218
    :catchall_30
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2219
    throw p1
.end method

.method public blacklist setUsageSetting(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2311
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2313
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2314
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2315
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2316
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x23

    invoke-interface {p1, v2, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 2317
    if-eqz p1, :cond_24

    .line 2322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2323
    nop

    .line 2324
    return-void

    .line 2318
    :cond_24
    :try_start_24
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method setUsageSetting is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 2322
    :catchall_2c
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2323
    throw p1
.end method

.method public blacklist startNetworkScan(ILandroid/hardware/radio/network/NetworkScanRequest;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2233
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2235
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2236
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2237
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2238
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x20

    invoke-interface {p1, v2, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2239
    if-eqz p1, :cond_25

    .line 2244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2245
    nop

    .line 2246
    return-void

    .line 2240
    :cond_25
    :try_start_25
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method startNetworkScan is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    .line 2244
    :catchall_2d
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2245
    throw p1
.end method

.method public blacklist stopNetworkScan(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2258
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2260
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2261
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2262
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x21

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 2263
    if-eqz p1, :cond_21

    .line 2268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2269
    nop

    .line 2270
    return-void

    .line 2264
    :cond_21
    :try_start_21
    new-instance p1, Landroid/os/RemoteException;

    const-string v1, "Method stopNetworkScan is unimplemented."

    invoke-direct {p1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 2268
    :catchall_29
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2269
    throw p1
.end method

.method public blacklist supplyNetworkDepersonalization(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2283
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2285
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2286
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2287
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2288
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x22

    invoke-interface {p1, v2, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 2289
    if-eqz p1, :cond_24

    .line 2294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2295
    nop

    .line 2296
    return-void

    .line 2290
    :cond_24
    :try_start_24
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method supplyNetworkDepersonalization is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 2294
    :catchall_2c
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2295
    throw p1
.end method

.method public blacklist triggerEmergencyNetworkScan(ILandroid/hardware/radio/network/EmergencyNetworkScanTrigger;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2389
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2391
    :try_start_8
    sget-object v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2392
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2393
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2394
    iget-object p1, p0, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x26

    invoke-interface {p1, v2, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2395
    if-eqz p1, :cond_25

    .line 2400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2401
    nop

    .line 2402
    return-void

    .line 2396
    :cond_25
    :try_start_25
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method triggerEmergencyNetworkScan is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    .line 2400
    :catchall_2d
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2401
    throw p1
.end method
