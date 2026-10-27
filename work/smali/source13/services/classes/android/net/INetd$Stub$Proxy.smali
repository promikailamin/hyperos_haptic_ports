.class Landroid/net/INetd$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetd.java"

# interfaces
.implements Landroid/net/INetd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetd$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mCachedHash:Ljava/lang/String;

.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 1570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1573
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/INetd$Stub$Proxy;->mCachedVersion:I

    .line 1574
    const-string v0, "-1"

    iput-object v0, p0, Landroid/net/INetd$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 1571
    iput-object p1, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 1572
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 1577
    iget-object v0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public bandwidthAddNaughtyApp(I)V
    .registers 7
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2600
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2601
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2603
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2604
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2605
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2606
    .local v2, "_status":Z
    if-eqz v2, :cond_26

    .line 2609
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2e

    .line 2612
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2614
    nop

    .line 2615
    return-void

    .line 2607
    .restart local v2    # "_status":Z
    :cond_26
    :try_start_26
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method bandwidthAddNaughtyApp is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "uid":I
    throw v3
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    .line 2612
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "uid":I
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2614
    throw v2
.end method

.method public bandwidthAddNiceApp(I)V
    .registers 7
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2636
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2637
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2639
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2640
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2641
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2642
    .local v2, "_status":Z
    if-eqz v2, :cond_26

    .line 2645
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2e

    .line 2648
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2650
    nop

    .line 2651
    return-void

    .line 2643
    .restart local v2    # "_status":Z
    :cond_26
    :try_start_26
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method bandwidthAddNiceApp is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "uid":I
    throw v3
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    .line 2648
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "uid":I
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2650
    throw v2
.end method

.method public bandwidthEnableDataSaver(Z)Z
    .registers 7
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1628
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1629
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1632
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1633
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1634
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1635
    .local v2, "_status":Z
    if-eqz v2, :cond_2a

    .line 1638
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1639
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_32

    move v2, v3

    .line 1642
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1643
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1644
    nop

    .line 1645
    return v2

    .line 1636
    .local v2, "_status":Z
    :cond_2a
    :try_start_2a
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method bandwidthEnableDataSaver is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "enable":Z
    throw v3
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_32

    .line 1642
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "enable":Z
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1643
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1644
    throw v2
.end method

.method public bandwidthRemoveInterfaceAlert(Ljava/lang/String;)V
    .registers 7
    .param p1, "ifName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2564
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2565
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2567
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2568
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2569
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2570
    .local v2, "_status":Z
    if-eqz v2, :cond_26

    .line 2573
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2e

    .line 2576
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2578
    nop

    .line 2579
    return-void

    .line 2571
    .restart local v2    # "_status":Z
    :cond_26
    :try_start_26
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method bandwidthRemoveInterfaceAlert is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    throw v3
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    .line 2576
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2578
    throw v2
.end method

.method public bandwidthRemoveInterfaceQuota(Ljava/lang/String;)V
    .registers 7
    .param p1, "ifName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2527
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2528
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2530
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2531
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2532
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2533
    .local v2, "_status":Z
    if-eqz v2, :cond_26

    .line 2536
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2e

    .line 2539
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2541
    nop

    .line 2542
    return-void

    .line 2534
    .restart local v2    # "_status":Z
    :cond_26
    :try_start_26
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method bandwidthRemoveInterfaceQuota is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    throw v3
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    .line 2539
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2541
    throw v2
.end method

.method public bandwidthRemoveNaughtyApp(I)V
    .registers 7
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2618
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2619
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2621
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2622
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2623
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2624
    .local v2, "_status":Z
    if-eqz v2, :cond_26

    .line 2627
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2e

    .line 2630
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2632
    nop

    .line 2633
    return-void

    .line 2625
    .restart local v2    # "_status":Z
    :cond_26
    :try_start_26
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method bandwidthRemoveNaughtyApp is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "uid":I
    throw v3
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    .line 2630
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "uid":I
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2632
    throw v2
.end method

.method public bandwidthRemoveNiceApp(I)V
    .registers 7
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2654
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2655
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2657
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2658
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2659
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x35

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2660
    .local v2, "_status":Z
    if-eqz v2, :cond_26

    .line 2663
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2e

    .line 2666
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2667
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2668
    nop

    .line 2669
    return-void

    .line 2661
    .restart local v2    # "_status":Z
    :cond_26
    :try_start_26
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method bandwidthRemoveNiceApp is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "uid":I
    throw v3
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    .line 2666
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "uid":I
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2667
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2668
    throw v2
.end method

.method public bandwidthSetGlobalAlert(J)V
    .registers 8
    .param p1, "bytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2582
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2583
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2585
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2586
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2587
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2588
    .local v2, "_status":Z
    if-eqz v2, :cond_26

    .line 2591
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2e

    .line 2594
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2595
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2596
    nop

    .line 2597
    return-void

    .line 2589
    .restart local v2    # "_status":Z
    :cond_26
    :try_start_26
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method bandwidthSetGlobalAlert is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "bytes":J
    throw v3
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    .line 2594
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "bytes":J
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2595
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2596
    throw v2
.end method

.method public bandwidthSetInterfaceAlert(Ljava/lang/String;J)V
    .registers 9
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "bytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2546
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2548
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2549
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2550
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2551
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2552
    .local v2, "_status":Z
    if-eqz v2, :cond_29

    .line 2555
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_31

    .line 2558
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2560
    nop

    .line 2561
    return-void

    .line 2553
    .restart local v2    # "_status":Z
    :cond_29
    :try_start_29
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method bandwidthSetInterfaceAlert is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    .end local p2    # "bytes":J
    throw v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    .line 2558
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    .restart local p2    # "bytes":J
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2560
    throw v2
.end method

.method public bandwidthSetInterfaceQuota(Ljava/lang/String;J)V
    .registers 9
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "bytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2508
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2509
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2511
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2512
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2513
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2514
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2515
    .local v2, "_status":Z
    if-eqz v2, :cond_29

    .line 2518
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_31

    .line 2521
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2523
    nop

    .line 2524
    return-void

    .line 2516
    .restart local v2    # "_status":Z
    :cond_29
    :try_start_29
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method bandwidthSetInterfaceQuota is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    .end local p2    # "bytes":J
    throw v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    .line 2521
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    .restart local p2    # "bytes":J
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2523
    throw v2
.end method

.method public clatdStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "nat64Prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2354
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2357
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2358
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2359
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2360
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2361
    .local v2, "_status":Z
    if-eqz v2, :cond_2e

    .line 2364
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2365
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_36

    move-object v2, v3

    .line 2368
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2370
    nop

    .line 2371
    return-object v2

    .line 2362
    .local v2, "_status":Z
    :cond_2e
    :try_start_2e
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method clatdStart is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    .end local p2    # "nat64Prefix":Ljava/lang/String;
    throw v3
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_36

    .line 2368
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    .restart local p2    # "nat64Prefix":Ljava/lang/String;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2370
    throw v2
.end method

.method public clatdStop(Ljava/lang/String;)V
    .registers 7
    .param p1, "ifName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2376
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2377
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2379
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2380
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2381
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2382
    .local v2, "_status":Z
    if-eqz v2, :cond_26

    .line 2385
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2e

    .line 2388
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2390
    nop

    .line 2391
    return-void

    .line 2383
    .restart local v2    # "_status":Z
    :cond_26
    :try_start_26
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method clatdStop is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    throw v3
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    .line 2388
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2390
    throw v2
.end method

.method public firewallAddUidInterfaceRules(Ljava/lang/String;[I)V
    .registers 8
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "uids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3380
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3381
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3383
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3384
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3385
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3386
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3387
    .local v2, "_status":Z
    if-eqz v2, :cond_29

    .line 3390
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_31

    .line 3393
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3395
    nop

    .line 3396
    return-void

    .line 3388
    .restart local v2    # "_status":Z
    :cond_29
    :try_start_29
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method firewallAddUidInterfaceRules is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    .end local p2    # "uids":[I
    throw v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    .line 3393
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    .restart local p2    # "uids":[I
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3395
    throw v2
.end method

.method public firewallEnableChildChain(IZ)V
    .registers 8
    .param p1, "childChain"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3153
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3155
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3156
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3157
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3158
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3159
    .local v2, "_status":Z
    if-eqz v2, :cond_29

    .line 3162
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_31

    .line 3165
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3167
    nop

    .line 3168
    return-void

    .line 3160
    .restart local v2    # "_status":Z
    :cond_29
    :try_start_29
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method firewallEnableChildChain is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "childChain":I
    .end local p2    # "enable":Z
    throw v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    .line 3165
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "childChain":I
    .restart local p2    # "enable":Z
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3167
    throw v2
.end method

.method public firewallRemoveUidInterfaceRules([I)V
    .registers 7
    .param p1, "uids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3399
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3400
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3402
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3403
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3404
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3405
    .local v2, "_status":Z
    if-eqz v2, :cond_26

    .line 3408
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2e

    .line 3411
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3413
    nop

    .line 3414
    return-void

    .line 3406
    .restart local v2    # "_status":Z
    :cond_26
    :try_start_26
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method firewallRemoveUidInterfaceRules is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "uids":[I
    throw v3
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    .line 3411
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "uids":[I
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3413
    throw v2
.end method

.method public firewallReplaceUidChain(Ljava/lang/String;Z[I)Z
    .registers 9
    .param p1, "chainName"    # Ljava/lang/String;
    .param p2, "isAllowlist"    # Z
    .param p3, "uids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1605
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1606
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1609
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1610
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1611
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1612
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1613
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1614
    .local v2, "_status":Z
    if-eqz v2, :cond_30

    .line 1617
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1618
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_38

    move v2, v3

    .line 1621
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1623
    nop

    .line 1624
    return v2

    .line 1615
    .local v2, "_status":Z
    :cond_30
    :try_start_30
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method firewallReplaceUidChain is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "chainName":Ljava/lang/String;
    .end local p2    # "isAllowlist":Z
    .end local p3    # "uids":[I
    throw v3
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_38

    .line 1621
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "chainName":Ljava/lang/String;
    .restart local p2    # "isAllowlist":Z
    .restart local p3    # "uids":[I
    :catchall_38
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1623
    throw v2
.end method

.method public firewallSetFirewallType(I)V
    .registers 7
    .param p1, "firewalltype"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3095
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3096
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3098
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3099
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3100
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3101
    .local v2, "_status":Z
    if-eqz v2, :cond_26

    .line 3104
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2e

    .line 3107
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3109
    nop

    .line 3110
    return-void

    .line 3102
    .restart local v2    # "_status":Z
    :cond_26
    :try_start_26
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method firewallSetFirewallType is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "firewalltype":I
    throw v3
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    .line 3107
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "firewalltype":I
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3109
    throw v2
.end method

.method public firewallSetInterfaceRule(Ljava/lang/String;I)V
    .registers 8
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "firewallRule"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3114
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3116
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3117
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3118
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3119
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3120
    .local v2, "_status":Z
    if-eqz v2, :cond_29

    .line 3123
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_31

    .line 3126
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3128
    nop

    .line 3129
    return-void

    .line 3121
    .restart local v2    # "_status":Z
    :cond_29
    :try_start_29
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method firewallSetInterfaceRule is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    .end local p2    # "firewallRule":I
    throw v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    .line 3126
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    .restart local p2    # "firewallRule":I
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3128
    throw v2
.end method

.method public firewallSetUidRule(III)V
    .registers 9
    .param p1, "childChain"    # I
    .param p2, "uid"    # I
    .param p3, "firewallRule"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3133
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3135
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3136
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3137
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3138
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3139
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3140
    .local v2, "_status":Z
    if-eqz v2, :cond_2c

    .line 3143
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_34

    .line 3146
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3148
    nop

    .line 3149
    return-void

    .line 3141
    .restart local v2    # "_status":Z
    :cond_2c
    :try_start_2c
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method firewallSetUidRule is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "childChain":I
    .end local p2    # "uid":I
    .end local p3    # "firewallRule":I
    throw v3
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_34

    .line 3146
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "childChain":I
    .restart local p2    # "uid":I
    .restart local p3    # "firewallRule":I
    :catchall_34
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3148
    throw v2
.end method

.method public getFwmarkForNetwork(I)Landroid/net/MarkMaskParcel;
    .registers 7
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3472
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3473
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3476
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3477
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3478
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x60

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3479
    .local v2, "_status":Z
    if-eqz v2, :cond_2f

    .line 3482
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3483
    sget-object v3, Landroid/net/MarkMaskParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/MarkMaskParcel;
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_37

    move-object v2, v3

    .line 3486
    .local v2, "_result":Landroid/net/MarkMaskParcel;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3488
    nop

    .line 3489
    return-object v2

    .line 3480
    .local v2, "_status":Z
    :cond_2f
    :try_start_2f
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getFwmarkForNetwork is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "netId":I
    throw v3
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_37

    .line 3486
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "netId":I
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3488
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1581
    sget-object v0, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getInterfaceHash()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 3722
    :try_start_1
    const-string v0, "-1"

    iget-object v1, p0, Landroid/net/INetd$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 3723
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3724
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3e

    .line 3726
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_13
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3727
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3728
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3729
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_13 .. :try_end_2b} :catchall_32

    .line 3731
    .end local v2    # "_status":Z
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3733
    goto :goto_3a

    .line 3731
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3733
    throw v2

    .line 3735
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_3a
    :goto_3a
    iget-object v0, p0, Landroid/net/INetd$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_3c
    .catchall {:try_start_2b .. :try_end_3c} :catchall_3e

    monitor-exit p0

    return-object v0

    .line 3721
    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInterfaceVersion()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3705
    iget v0, p0, Landroid/net/INetd$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_34

    .line 3706
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3707
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3709
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_d
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3710
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3711
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3712
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/net/INetd$Stub$Proxy;->mCachedVersion:I
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_2c

    .line 3714
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3716
    goto :goto_34

    .line 3714
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3716
    throw v2

    .line 3718
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_34
    :goto_34
    iget v0, p0, Landroid/net/INetd$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public getOemNetd()Landroid/os/IBinder;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3434
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3435
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3438
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3439
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3440
    .local v2, "_status":Z
    if-eqz v2, :cond_28

    .line 3443
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3444
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_30

    move-object v2, v3

    .line 3447
    .local v2, "_result":Landroid/os/IBinder;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3449
    nop

    .line 3450
    return-object v2

    .line 3441
    .local v2, "_status":Z
    :cond_28
    :try_start_28
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getOemNetd is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    throw v3
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    .line 3447
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3449
    throw v2
.end method

.method public getProcSysNet(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "ipversion"    # I
    .param p2, "which"    # I
    .param p3, "ifname"    # Ljava/lang/String;
    .param p4, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1901
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1902
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1905
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1906
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1907
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1908
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1909
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1910
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1911
    .local v2, "_status":Z
    if-eqz v2, :cond_34

    .line 1914
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1915
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3c

    move-object v2, v3

    .line 1918
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1919
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1920
    nop

    .line 1921
    return-object v2

    .line 1912
    .local v2, "_status":Z
    :cond_34
    :try_start_34
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getProcSysNet is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ipversion":I
    .end local p2    # "which":I
    .end local p3    # "ifname":Ljava/lang/String;
    .end local p4    # "parameter":Ljava/lang/String;
    throw v3
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_3c

    .line 1918
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ipversion":I
    .restart local p2    # "which":I
    .restart local p3    # "ifname":Ljava/lang/String;
    .restart local p4    # "parameter":Ljava/lang/String;
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1919
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1920
    throw v2
.end method

.method public idletimerAddInterface(Ljava/lang/String;ILjava/lang/String;)V
    .registers 9
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .param p3, "classLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2293
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2294
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2296
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2297
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2298
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2299
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2300
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2301
    .local v2, "_status":Z
    if-eqz v2, :cond_2c

    .line 2304
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_34

    .line 2307
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2309
    nop

    .line 2310
    return-void

    .line 2302
    .restart local v2    # "_status":Z
    :cond_2c
    :try_start_2c
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method idletimerAddInterface is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    .end local p2    # "timeout":I
    .end local p3    # "classLabel":Ljava/lang/String;
    throw v3
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_34

    .line 2307
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    .restart local p2    # "timeout":I
    .restart local p3    # "classLabel":Ljava/lang/String;
    :catchall_34
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2309
    throw v2
.end method

.method public idletimerRemoveInterface(Ljava/lang/String;ILjava/lang/String;)V
    .registers 9
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .param p3, "classLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2313
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2314
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2316
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2317
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2318
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2319
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2320
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2321
    .local v2, "_status":Z
    if-eqz v2, :cond_2c

    .line 2324
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_34

    .line 2327
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2329
    nop

    .line 2330
    return-void

    .line 2322
    .restart local v2    # "_status":Z
    :cond_2c
    :try_start_2c
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method idletimerRemoveInterface is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    .end local p2    # "timeout":I
    .end local p3    # "classLabel":Ljava/lang/String;
    throw v3
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_34

    .line 2327
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    .restart local p2    # "timeout":I
    .restart local p3    # "classLabel":Ljava/lang/String;
    :catchall_34
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2329
    throw v2
.end method

.method public interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "addrString"    # Ljava/lang/String;
    .param p3, "prefixLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1861
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1862
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1864
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1865
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1866
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1867
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1868
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1869
    .local v2, "_status":Z
    if-eqz v2, :cond_2c

    .line 1872
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_34

    .line 1875
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1876
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1877
    nop

    .line 1878
    return-void

    .line 1870
    .restart local v2    # "_status":Z
    :cond_2c
    :try_start_2c
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method interfaceAddAddress is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    .end local p2    # "addrString":Ljava/lang/String;
    .end local p3    # "prefixLength":I
    throw v3
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_34

    .line 1875
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    .restart local p2    # "addrString":Ljava/lang/String;
    .restart local p3    # "prefixLength":I
    :catchall_34
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1876
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1877
    throw v2
.end method

.method public interfaceClearAddrs(Ljava/lang/String;)V
    .registers 7
    .param p1, "ifName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3249
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3250
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3252
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3253
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3254
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x54

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3255
    .local v2, "_status":Z
    if-eqz v2, :cond_26

    .line 3258
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2e

    .line 3261
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3263
    nop

    .line 3264
    return-void

    .line 3256
    .restart local v2    # "_status":Z
    :cond_26
    :try_start_26
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method interfaceClearAddrs is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    throw v3
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    .line 3261
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3263
    throw v2
.end method

.method public interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "addrString"    # Ljava/lang/String;
    .param p3, "prefixLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1881
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1882
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1884
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1885
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1886
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1887
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1888
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1889
    .local v2, "_status":Z
    if-eqz v2, :cond_2c

    .line 1892
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_34

    .line 1895
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1896
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1897
    nop

    .line 1898
    return-void

    .line 1890
    .restart local v2    # "_status":Z
    :cond_2c
    :try_start_2c
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method interfaceDelAddress is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    .end local p2    # "addrString":Ljava/lang/String;
    .end local p3    # "prefixLength":I
    throw v3
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_34

    .line 1895
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    .restart local p2    # "addrString":Ljava/lang/String;
    .restart local p3    # "prefixLength":I
    :catchall_34
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1896
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1897
    throw v2
.end method

.method public interfaceGetCfg(Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;
    .registers 7
    .param p1, "ifName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3192
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3195
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3196
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3197
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x51

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3198
    .local v2, "_status":Z
    if-eqz v2, :cond_2f

    .line 3201
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3202
    sget-object v3, Landroid/net/InterfaceConfigurationParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/InterfaceConfigurationParcel;
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_37

    move-object v2, v3

    .line 3205
    .local v2, "_result":Landroid/net/InterfaceConfigurationParcel;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3207
    nop

    .line 3208
    return-object v2

    .line 3199
    .local v2, "_status":Z
    :cond_2f
    :try_start_2f
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method interfaceGetCfg is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    throw v3
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_37

    .line 3205
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3207
    throw v2
.end method

.method public interfaceGetList()[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3171
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3172
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3175
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3176
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x50

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3177
    .local v2, "_status":Z
    if-eqz v2, :cond_28

    .line 3180
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3181
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_30

    move-object v2, v3

    .line 3184
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3186
    nop

    .line 3187
    return-object v2

    .line 3178
    .local v2, "_status":Z
    :cond_28
    :try_start_28
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method interfaceGetList is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    throw v3
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    .line 3184
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3186
    throw v2
.end method

.method public interfaceSetCfg(Landroid/net/InterfaceConfigurationParcel;)V
    .registers 7
    .param p1, "cfg"    # Landroid/net/InterfaceConfigurationParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3213
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3215
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3216
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3217
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x52

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3218
    .local v2, "_status":Z
    if-eqz v2, :cond_26

    .line 3221
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2e

    .line 3224
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3226
    nop

    .line 3227
    return-void

    .line 3219
    .restart local v2    # "_status":Z
    :cond_26
    :try_start_26
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method interfaceSetCfg is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "cfg":Landroid/net/InterfaceConfigurationParcel;
    throw v3
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    .line 3224
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "cfg":Landroid/net/InterfaceConfigurationParcel;
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3226
    throw v2
.end method

.method public interfaceSetEnableIPv6(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3267
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3268
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3270
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3271
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3272
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3273
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x55

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3274
    .local v2, "_status":Z
    if-eqz v2, :cond_29

    .line 3277
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_31

    .line 3280
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3282
    nop

    .line 3283
    return-void

    .line 3275
    .restart local v2    # "_status":Z
    :cond_29
    :try_start_29
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method interfaceSetEnableIPv6 is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    .end local p2    # "enable":Z
    throw v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    .line 3280
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    .restart local p2    # "enable":Z
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3282
    throw v2
.end method

.method public interfaceSetIPv6PrivacyExtensions(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3230
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3231
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3233
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3234
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3235
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3236
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x53

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3237
    .local v2, "_status":Z
    if-eqz v2, :cond_29

    .line 3240
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_31

    .line 3243
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3245
    nop

    .line 3246
    return-void

    .line 3238
    .restart local v2    # "_status":Z
    :cond_29
    :try_start_29
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method interfaceSetIPv6PrivacyExtensions is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    .end local p2    # "enable":Z
    throw v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    .line 3243
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    .restart local p2    # "enable":Z
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3245
    throw v2
.end method

.method public interfaceSetMtu(Ljava/lang/String;I)V
    .registers 8
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "mtu"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3286
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3287
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3289
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3290
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3291
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3292
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x56

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3293
    .local v2, "_status":Z
    if-eqz v2, :cond_29

    .line 3296
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_31

    .line 3299
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3301
    nop

    .line 3302
    return-void

    .line 3294
    .restart local v2    # "_status":Z
    :cond_29
    :try_start_29
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method interfaceSetMtu is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    .end local p2    # "mtu":I
    throw v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    .line 3299
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    .restart local p2    # "mtu":I
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3301
    throw v2
.end method

.method public ipSecAddSecurityAssociation(IILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;[BILjava/lang/String;[BILjava/lang/String;[BIIIII)V
    .registers 38
    .param p1, "transformId"    # I
    .param p2, "mode"    # I
    .param p3, "sourceAddress"    # Ljava/lang/String;
    .param p4, "destinationAddress"    # Ljava/lang/String;
    .param p5, "underlyingNetId"    # I
    .param p6, "spi"    # I
    .param p7, "markValue"    # I
    .param p8, "markMask"    # I
    .param p9, "authAlgo"    # Ljava/lang/String;
    .param p10, "authKey"    # [B
    .param p11, "authTruncBits"    # I
    .param p12, "cryptAlgo"    # Ljava/lang/String;
    .param p13, "cryptKey"    # [B
    .param p14, "cryptTruncBits"    # I
    .param p15, "aeadAlgo"    # Ljava/lang/String;
    .param p16, "aeadKey"    # [B
    .param p17, "aeadIcvBits"    # I
    .param p18, "encapType"    # I
    .param p19, "encapLocalPort"    # I
    .param p20, "encapRemotePort"    # I
    .param p21, "interfaceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1990
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1991
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1993
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v0, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1994
    move/from16 v3, p1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1995
    move/from16 v4, p2

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_ac

    .line 1996
    move-object/from16 v5, p3

    :try_start_19
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_aa

    .line 1997
    move-object/from16 v6, p4

    :try_start_1e
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_a8

    .line 1998
    move/from16 v7, p5

    :try_start_23
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_a6

    .line 1999
    move/from16 v8, p6

    :try_start_28
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_a4

    .line 2000
    move/from16 v9, p7

    :try_start_2d
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_a2

    .line 2001
    move/from16 v10, p8

    :try_start_32
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_a0

    .line 2002
    move-object/from16 v11, p9

    :try_start_37
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_9e

    .line 2003
    move-object/from16 v12, p10

    :try_start_3c
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_9c

    .line 2004
    move/from16 v13, p11

    :try_start_41
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_9a

    .line 2005
    move-object/from16 v14, p12

    :try_start_46
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_98

    .line 2006
    move-object/from16 v15, p13

    :try_start_4b
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2007
    move/from16 v3, p14

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2008
    move-object/from16 v3, p15

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2009
    move-object/from16 v3, p16

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2010
    move/from16 v3, p17

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2011
    move/from16 v3, p18

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2012
    move/from16 v3, p19

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2013
    move/from16 v3, p20

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2014
    move/from16 v3, p21

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2015
    move-object/from16 v3, p0

    iget-object v0, v3, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2016
    .local v0, "_status":Z
    if-eqz v0, :cond_8e

    .line 2019
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_86
    .catchall {:try_start_4b .. :try_end_86} :catchall_96

    .line 2022
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2023
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2024
    nop

    .line 2025
    return-void

    .line 2017
    .restart local v0    # "_status":Z
    :cond_8e
    :try_start_8e
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method ipSecAddSecurityAssociation is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v1    # "_data":Landroid/os/Parcel;
    .end local v2    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "transformId":I
    .end local p2    # "mode":I
    .end local p3    # "sourceAddress":Ljava/lang/String;
    .end local p4    # "destinationAddress":Ljava/lang/String;
    .end local p5    # "underlyingNetId":I
    .end local p6    # "spi":I
    .end local p7    # "markValue":I
    .end local p8    # "markMask":I
    .end local p9    # "authAlgo":Ljava/lang/String;
    .end local p10    # "authKey":[B
    .end local p11    # "authTruncBits":I
    .end local p12    # "cryptAlgo":Ljava/lang/String;
    .end local p13    # "cryptKey":[B
    .end local p14    # "cryptTruncBits":I
    .end local p15    # "aeadAlgo":Ljava/lang/String;
    .end local p16    # "aeadKey":[B
    .end local p17    # "aeadIcvBits":I
    .end local p18    # "encapType":I
    .end local p19    # "encapLocalPort":I
    .end local p20    # "encapRemotePort":I
    .end local p21    # "interfaceId":I
    throw v3
    :try_end_96
    .catchall {:try_start_8e .. :try_end_96} :catchall_96

    .line 2022
    .end local v0    # "_status":Z
    .restart local v1    # "_data":Landroid/os/Parcel;
    .restart local v2    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "transformId":I
    .restart local p2    # "mode":I
    .restart local p3    # "sourceAddress":Ljava/lang/String;
    .restart local p4    # "destinationAddress":Ljava/lang/String;
    .restart local p5    # "underlyingNetId":I
    .restart local p6    # "spi":I
    .restart local p7    # "markValue":I
    .restart local p8    # "markMask":I
    .restart local p9    # "authAlgo":Ljava/lang/String;
    .restart local p10    # "authKey":[B
    .restart local p11    # "authTruncBits":I
    .restart local p12    # "cryptAlgo":Ljava/lang/String;
    .restart local p13    # "cryptKey":[B
    .restart local p14    # "cryptTruncBits":I
    .restart local p15    # "aeadAlgo":Ljava/lang/String;
    .restart local p16    # "aeadKey":[B
    .restart local p17    # "aeadIcvBits":I
    .restart local p18    # "encapType":I
    .restart local p19    # "encapLocalPort":I
    .restart local p20    # "encapRemotePort":I
    .restart local p21    # "interfaceId":I
    :catchall_96
    move-exception v0

    goto :goto_c3

    :catchall_98
    move-exception v0

    goto :goto_c1

    :catchall_9a
    move-exception v0

    goto :goto_bf

    :catchall_9c
    move-exception v0

    goto :goto_bd

    :catchall_9e
    move-exception v0

    goto :goto_bb

    :catchall_a0
    move-exception v0

    goto :goto_b9

    :catchall_a2
    move-exception v0

    goto :goto_b7

    :catchall_a4
    move-exception v0

    goto :goto_b5

    :catchall_a6
    move-exception v0

    goto :goto_b3

    :catchall_a8
    move-exception v0

    goto :goto_b1

    :catchall_aa
    move-exception v0

    goto :goto_af

    :catchall_ac
    move-exception v0

    move-object/from16 v5, p3

    :goto_af
    move-object/from16 v6, p4

    :goto_b1
    move/from16 v7, p5

    :goto_b3
    move/from16 v8, p6

    :goto_b5
    move/from16 v9, p7

    :goto_b7
    move/from16 v10, p8

    :goto_b9
    move-object/from16 v11, p9

    :goto_bb
    move-object/from16 v12, p10

    :goto_bd
    move/from16 v13, p11

    :goto_bf
    move-object/from16 v14, p12

    :goto_c1
    move-object/from16 v15, p13

    :goto_c3
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2023
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2024
    throw v0
.end method

.method public ipSecAddSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V
    .registers 15
    .param p1, "transformId"    # I
    .param p2, "selAddrFamily"    # I
    .param p3, "direction"    # I
    .param p4, "tmplSrcAddress"    # Ljava/lang/String;
    .param p5, "tmplDstAddress"    # Ljava/lang/String;
    .param p6, "spi"    # I
    .param p7, "markValue"    # I
    .param p8, "markMask"    # I
    .param p9, "interfaceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2093
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2094
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2096
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2097
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2098
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2099
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2100
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2101
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2102
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2103
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2104
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2105
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2106
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2107
    .local v2, "_status":Z
    if-eqz v2, :cond_3e

    .line 2110
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_46

    .line 2113
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2115
    nop

    .line 2116
    return-void

    .line 2108
    .restart local v2    # "_status":Z
    :cond_3e
    :try_start_3e
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method ipSecAddSecurityPolicy is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "transformId":I
    .end local p2    # "selAddrFamily":I
    .end local p3    # "direction":I
    .end local p4    # "tmplSrcAddress":Ljava/lang/String;
    .end local p5    # "tmplDstAddress":Ljava/lang/String;
    .end local p6    # "spi":I
    .end local p7    # "markValue":I
    .end local p8    # "markMask":I
    .end local p9    # "interfaceId":I
    throw v3
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_46

    .line 2113
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "transformId":I
    .restart local p2    # "selAddrFamily":I
    .restart local p3    # "direction":I
    .restart local p4    # "tmplSrcAddress":Ljava/lang/String;
    .restart local p5    # "tmplDstAddress":Ljava/lang/String;
    .restart local p6    # "spi":I
    .restart local p7    # "markValue":I
    .restart local p8    # "markMask":I
    .restart local p9    # "interfaceId":I
    :catchall_46
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2115
    throw v2
.end method

.method public ipSecAddTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 12
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "localAddress"    # Ljava/lang/String;
    .param p3, "remoteAddress"    # Ljava/lang/String;
    .param p4, "iKey"    # I
    .param p5, "oKey"    # I
    .param p6, "interfaceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2168
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2169
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2171
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2172
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2173
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2174
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2175
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2176
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2177
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2178
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2179
    .local v2, "_status":Z
    if-eqz v2, :cond_35

    .line 2182
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_3d

    .line 2185
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2187
    nop

    .line 2188
    return-void

    .line 2180
    .restart local v2    # "_status":Z
    :cond_35
    :try_start_35
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method ipSecAddTunnelInterface is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "deviceName":Ljava/lang/String;
    .end local p2    # "localAddress":Ljava/lang/String;
    .end local p3    # "remoteAddress":Ljava/lang/String;
    .end local p4    # "iKey":I
    .end local p5    # "oKey":I
    .end local p6    # "interfaceId":I
    throw v3
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_3d

    .line 2185
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "deviceName":Ljava/lang/String;
    .restart local p2    # "localAddress":Ljava/lang/String;
    .restart local p3    # "remoteAddress":Ljava/lang/String;
    .restart local p4    # "iKey":I
    .restart local p5    # "oKey":I
    .restart local p6    # "interfaceId":I
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2187
    throw v2
.end method

.method public ipSecAllocateSpi(ILjava/lang/String;Ljava/lang/String;I)I
    .registers 10
    .param p1, "transformId"    # I
    .param p2, "sourceAddress"    # Ljava/lang/String;
    .param p3, "destinationAddress"    # Ljava/lang/String;
    .param p4, "spi"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1966
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1967
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1970
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1971
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1972
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1973
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1974
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1975
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1976
    .local v2, "_status":Z
    if-eqz v2, :cond_34

    .line 1979
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1980
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3c

    move v2, v3

    .line 1983
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1985
    nop

    .line 1986
    return v2

    .line 1977
    .local v2, "_status":Z
    :cond_34
    :try_start_34
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method ipSecAllocateSpi is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "transformId":I
    .end local p2    # "sourceAddress":Ljava/lang/String;
    .end local p3    # "destinationAddress":Ljava/lang/String;
    .end local p4    # "spi":I
    throw v3
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_3c

    .line 1983
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "transformId":I
    .restart local p2    # "sourceAddress":Ljava/lang/String;
    .restart local p3    # "destinationAddress":Ljava/lang/String;
    .restart local p4    # "spi":I
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1985
    throw v2
.end method

.method public ipSecApplyTransportModeTransform(Landroid/os/ParcelFileDescriptor;IILjava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "transformId"    # I
    .param p3, "direction"    # I
    .param p4, "sourceAddress"    # Ljava/lang/String;
    .param p5, "destinationAddress"    # Ljava/lang/String;
    .param p6, "spi"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2052
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2053
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2055
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2056
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2057
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2058
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2059
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2060
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2061
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2062
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x17

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2063
    .local v2, "_status":Z
    if-eqz v2, :cond_35

    .line 2066
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_3d

    .line 2069
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2070
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2071
    nop

    .line 2072
    return-void

    .line 2064
    .restart local v2    # "_status":Z
    :cond_35
    :try_start_35
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method ipSecApplyTransportModeTransform is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "socket":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "transformId":I
    .end local p3    # "direction":I
    .end local p4    # "sourceAddress":Ljava/lang/String;
    .end local p5    # "destinationAddress":Ljava/lang/String;
    .end local p6    # "spi":I
    throw v3
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_3d

    .line 2069
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "socket":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "transformId":I
    .restart local p3    # "direction":I
    .restart local p4    # "sourceAddress":Ljava/lang/String;
    .restart local p5    # "destinationAddress":Ljava/lang/String;
    .restart local p6    # "spi":I
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2070
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2071
    throw v2
.end method

.method public ipSecDeleteSecurityAssociation(ILjava/lang/String;Ljava/lang/String;IIII)V
    .registers 13
    .param p1, "transformId"    # I
    .param p2, "sourceAddress"    # Ljava/lang/String;
    .param p3, "destinationAddress"    # Ljava/lang/String;
    .param p4, "spi"    # I
    .param p5, "markValue"    # I
    .param p6, "markMask"    # I
    .param p7, "interfaceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2028
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2029
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2031
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2032
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2033
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2034
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2035
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2036
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2037
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2038
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2039
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2040
    .local v2, "_status":Z
    if-eqz v2, :cond_38

    .line 2043
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_40

    .line 2046
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2047
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2048
    nop

    .line 2049
    return-void

    .line 2041
    .restart local v2    # "_status":Z
    :cond_38
    :try_start_38
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method ipSecDeleteSecurityAssociation is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "transformId":I
    .end local p2    # "sourceAddress":Ljava/lang/String;
    .end local p3    # "destinationAddress":Ljava/lang/String;
    .end local p4    # "spi":I
    .end local p5    # "markValue":I
    .end local p6    # "markMask":I
    .end local p7    # "interfaceId":I
    throw v3
    :try_end_40
    .catchall {:try_start_38 .. :try_end_40} :catchall_40

    .line 2046
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "transformId":I
    .restart local p2    # "sourceAddress":Ljava/lang/String;
    .restart local p3    # "destinationAddress":Ljava/lang/String;
    .restart local p4    # "spi":I
    .restart local p5    # "markValue":I
    .restart local p6    # "markMask":I
    .restart local p7    # "interfaceId":I
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2047
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2048
    throw v2
.end method

.method public ipSecDeleteSecurityPolicy(IIIIII)V
    .registers 12
    .param p1, "transformId"    # I
    .param p2, "selAddrFamily"    # I
    .param p3, "direction"    # I
    .param p4, "markValue"    # I
    .param p5, "markMask"    # I
    .param p6, "interfaceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2145
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2146
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2148
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2149
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2150
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2151
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2152
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2153
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2154
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2155
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2156
    .local v2, "_status":Z
    if-eqz v2, :cond_35

    .line 2159
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_3d

    .line 2162
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2164
    nop

    .line 2165
    return-void

    .line 2157
    .restart local v2    # "_status":Z
    :cond_35
    :try_start_35
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method ipSecDeleteSecurityPolicy is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "transformId":I
    .end local p2    # "selAddrFamily":I
    .end local p3    # "direction":I
    .end local p4    # "markValue":I
    .end local p5    # "markMask":I
    .end local p6    # "interfaceId":I
    throw v3
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_3d

    .line 2162
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "transformId":I
    .restart local p2    # "selAddrFamily":I
    .restart local p3    # "direction":I
    .restart local p4    # "markValue":I
    .restart local p5    # "markMask":I
    .restart local p6    # "interfaceId":I
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2164
    throw v2
.end method

.method public ipSecRemoveTransportModeTransform(Landroid/os/ParcelFileDescriptor;)V
    .registers 7
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2075
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2076
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2078
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2079
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2080
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2081
    .local v2, "_status":Z
    if-eqz v2, :cond_26

    .line 2084
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2e

    .line 2087
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2088
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2089
    nop

    .line 2090
    return-void

    .line 2082
    .restart local v2    # "_status":Z
    :cond_26
    :try_start_26
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method ipSecRemoveTransportModeTransform is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "socket":Landroid/os/ParcelFileDescriptor;
    throw v3
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    .line 2087
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "socket":Landroid/os/ParcelFileDescriptor;
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2088
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2089
    throw v2
.end method

.method public ipSecRemoveTunnelInterface(Ljava/lang/String;)V
    .registers 7
    .param p1, "deviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2214
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2215
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2217
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2218
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2219
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2220
    .local v2, "_status":Z
    if-eqz v2, :cond_26

    .line 2223
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2e

    .line 2226
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2228
    nop

    .line 2229
    return-void

    .line 2221
    .restart local v2    # "_status":Z
    :cond_26
    :try_start_26
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method ipSecRemoveTunnelInterface is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "deviceName":Ljava/lang/String;
    throw v3
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    .line 2226
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "deviceName":Ljava/lang/String;
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2228
    throw v2
.end method

.method public ipSecSetEncapSocketOwner(Landroid/os/ParcelFileDescriptor;I)V
    .registers 8
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "newUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1947
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1948
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1950
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1951
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1952
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1953
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1954
    .local v2, "_status":Z
    if-eqz v2, :cond_29

    .line 1957
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_31

    .line 1960
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1961
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1962
    nop

    .line 1963
    return-void

    .line 1955
    .restart local v2    # "_status":Z
    :cond_29
    :try_start_29
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method ipSecSetEncapSocketOwner is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "socket":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "newUid":I
    throw v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    .line 1960
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "socket":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "newUid":I
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1961
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1962
    throw v2
.end method

.method public ipSecUpdateSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V
    .registers 15
    .param p1, "transformId"    # I
    .param p2, "selAddrFamily"    # I
    .param p3, "direction"    # I
    .param p4, "tmplSrcAddress"    # Ljava/lang/String;
    .param p5, "tmplDstAddress"    # Ljava/lang/String;
    .param p6, "spi"    # I
    .param p7, "markValue"    # I
    .param p8, "markMask"    # I
    .param p9, "interfaceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2119
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2120
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2122
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2123
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2124
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2125
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2126
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2127
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2128
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2129
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2130
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2131
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2132
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2133
    .local v2, "_status":Z
    if-eqz v2, :cond_3e

    .line 2136
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_46

    .line 2139
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2140
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2141
    nop

    .line 2142
    return-void

    .line 2134
    .restart local v2    # "_status":Z
    :cond_3e
    :try_start_3e
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method ipSecUpdateSecurityPolicy is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "transformId":I
    .end local p2    # "selAddrFamily":I
    .end local p3    # "direction":I
    .end local p4    # "tmplSrcAddress":Ljava/lang/String;
    .end local p5    # "tmplDstAddress":Ljava/lang/String;
    .end local p6    # "spi":I
    .end local p7    # "markValue":I
    .end local p8    # "markMask":I
    .end local p9    # "interfaceId":I
    throw v3
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_46

    .line 2139
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "transformId":I
    .restart local p2    # "selAddrFamily":I
    .restart local p3    # "direction":I
    .restart local p4    # "tmplSrcAddress":Ljava/lang/String;
    .restart local p5    # "tmplDstAddress":Ljava/lang/String;
    .restart local p6    # "spi":I
    .restart local p7    # "markValue":I
    .restart local p8    # "markMask":I
    .restart local p9    # "interfaceId":I
    :catchall_46
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2140
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2141
    throw v2
.end method

.method public ipSecUpdateTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 12
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "localAddress"    # Ljava/lang/String;
    .param p3, "remoteAddress"    # Ljava/lang/String;
    .param p4, "iKey"    # I
    .param p5, "oKey"    # I
    .param p6, "interfaceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2192
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2194
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2195
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2196
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2197
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2198
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2199
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2200
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2201
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2202
    .local v2, "_status":Z
    if-eqz v2, :cond_35

    .line 2205
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_3d

    .line 2208
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2210
    nop

    .line 2211
    return-void

    .line 2203
    .restart local v2    # "_status":Z
    :cond_35
    :try_start_35
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method ipSecUpdateTunnelInterface is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "deviceName":Ljava/lang/String;
    .end local p2    # "localAddress":Ljava/lang/String;
    .end local p3    # "remoteAddress":Ljava/lang/String;
    .end local p4    # "iKey":I
    .end local p5    # "oKey":I
    .end local p6    # "interfaceId":I
    throw v3
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_3d

    .line 2208
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "deviceName":Ljava/lang/String;
    .restart local p2    # "localAddress":Ljava/lang/String;
    .restart local p3    # "remoteAddress":Ljava/lang/String;
    .restart local p4    # "iKey":I
    .restart local p5    # "oKey":I
    .restart local p6    # "interfaceId":I
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2210
    throw v2
.end method

.method public ipfwdAddInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "fromIface"    # Ljava/lang/String;
    .param p2, "toIface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2470
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2471
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2473
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2474
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2475
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2476
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2477
    .local v2, "_status":Z
    if-eqz v2, :cond_29

    .line 2480
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_31

    .line 2483
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2485
    nop

    .line 2486
    return-void

    .line 2478
    .restart local v2    # "_status":Z
    :cond_29
    :try_start_29
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method ipfwdAddInterfaceForward is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "fromIface":Ljava/lang/String;
    .end local p2    # "toIface":Ljava/lang/String;
    throw v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    .line 2483
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "fromIface":Ljava/lang/String;
    .restart local p2    # "toIface":Ljava/lang/String;
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2485
    throw v2
.end method

.method public ipfwdDisableForwarding(Ljava/lang/String;)V
    .registers 7
    .param p1, "requester"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2452
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2453
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2455
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2456
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2457
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2458
    .local v2, "_status":Z
    if-eqz v2, :cond_26

    .line 2461
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2e

    .line 2464
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2466
    nop

    .line 2467
    return-void

    .line 2459
    .restart local v2    # "_status":Z
    :cond_26
    :try_start_26
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method ipfwdDisableForwarding is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "requester":Ljava/lang/String;
    throw v3
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    .line 2464
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "requester":Ljava/lang/String;
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2466
    throw v2
.end method

.method public ipfwdEnableForwarding(Ljava/lang/String;)V
    .registers 7
    .param p1, "requester"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2434
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2435
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2437
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2438
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2439
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2440
    .local v2, "_status":Z
    if-eqz v2, :cond_26

    .line 2443
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2e

    .line 2446
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2448
    nop

    .line 2449
    return-void

    .line 2441
    .restart local v2    # "_status":Z
    :cond_26
    :try_start_26
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method ipfwdEnableForwarding is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "requester":Ljava/lang/String;
    throw v3
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    .line 2446
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "requester":Ljava/lang/String;
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2448
    throw v2
.end method

.method public ipfwdEnabled()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2394
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2395
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2398
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2399
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2400
    .local v2, "_status":Z
    if-eqz v2, :cond_28

    .line 2403
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2404
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_30

    move v2, v3

    .line 2407
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2408
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2409
    nop

    .line 2410
    return v2

    .line 2401
    .local v2, "_status":Z
    :cond_28
    :try_start_28
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method ipfwdEnabled is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    throw v3
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    .line 2407
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2408
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2409
    throw v2
.end method

.method public ipfwdGetRequesterList()[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2414
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2415
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2418
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2419
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2420
    .local v2, "_status":Z
    if-eqz v2, :cond_28

    .line 2423
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2424
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_30

    move-object v2, v3

    .line 2427
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2428
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2429
    nop

    .line 2430
    return-object v2

    .line 2421
    .local v2, "_status":Z
    :cond_28
    :try_start_28
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method ipfwdGetRequesterList is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    throw v3
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    .line 2427
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2428
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2429
    throw v2
.end method

.method public ipfwdRemoveInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "fromIface"    # Ljava/lang/String;
    .param p2, "toIface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2489
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2490
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2492
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2493
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2494
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2495
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2496
    .local v2, "_status":Z
    if-eqz v2, :cond_29

    .line 2499
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_31

    .line 2502
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2504
    nop

    .line 2505
    return-void

    .line 2497
    .restart local v2    # "_status":Z
    :cond_29
    :try_start_29
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method ipfwdRemoveInterfaceForward is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "fromIface":Ljava/lang/String;
    .end local p2    # "toIface":Ljava/lang/String;
    throw v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    .line 2502
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "fromIface":Ljava/lang/String;
    .restart local p2    # "toIface":Ljava/lang/String;
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2504
    throw v2
.end method

.method public isAlive()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1585
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1586
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1589
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1590
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1591
    .local v2, "_status":Z
    if-eqz v2, :cond_27

    .line 1594
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1595
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2f

    move v2, v3

    .line 1598
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1600
    nop

    .line 1601
    return v2

    .line 1592
    .local v2, "_status":Z
    :cond_27
    :try_start_27
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method isAlive is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    throw v3
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_2f

    .line 1598
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1600
    throw v2
.end method

.method public networkAddInterface(ILjava/lang/String;)V
    .registers 8
    .param p1, "netId"    # I
    .param p2, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1707
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1708
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1710
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1711
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1712
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1713
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1714
    .local v2, "_status":Z
    if-eqz v2, :cond_28

    .line 1717
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_30

    .line 1720
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1722
    nop

    .line 1723
    return-void

    .line 1715
    .restart local v2    # "_status":Z
    :cond_28
    :try_start_28
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkAddInterface is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "netId":I
    .end local p2    # "iface":Ljava/lang/String;
    throw v3
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    .line 1720
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "netId":I
    .restart local p2    # "iface":Ljava/lang/String;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1722
    throw v2
.end method

.method public networkAddLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .param p1, "netId"    # I
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "destination"    # Ljava/lang/String;
    .param p4, "nextHop"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2864
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2865
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2867
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2868
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2869
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2870
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2871
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2872
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2873
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2874
    .local v2, "_status":Z
    if-eqz v2, :cond_32

    .line 2877
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_3a

    .line 2880
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2881
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2882
    nop

    .line 2883
    return-void

    .line 2875
    .restart local v2    # "_status":Z
    :cond_32
    :try_start_32
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkAddLegacyRoute is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "netId":I
    .end local p2    # "ifName":Ljava/lang/String;
    .end local p3    # "destination":Ljava/lang/String;
    .end local p4    # "nextHop":Ljava/lang/String;
    .end local p5    # "uid":I
    throw v3
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_3a

    .line 2880
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "netId":I
    .restart local p2    # "ifName":Ljava/lang/String;
    .restart local p3    # "destination":Ljava/lang/String;
    .restart local p4    # "nextHop":Ljava/lang/String;
    .restart local p5    # "uid":I
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2881
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2882
    throw v2
.end method

.method public networkAddRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "netId"    # I
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "destination"    # Ljava/lang/String;
    .param p4, "nextHop"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2822
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2823
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2825
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2826
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2827
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2828
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2829
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2830
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2831
    .local v2, "_status":Z
    if-eqz v2, :cond_2f

    .line 2834
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_37

    .line 2837
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2838
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2839
    nop

    .line 2840
    return-void

    .line 2832
    .restart local v2    # "_status":Z
    :cond_2f
    :try_start_2f
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkAddRoute is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "netId":I
    .end local p2    # "ifName":Ljava/lang/String;
    .end local p3    # "destination":Ljava/lang/String;
    .end local p4    # "nextHop":Ljava/lang/String;
    throw v3
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_37

    .line 2837
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "netId":I
    .restart local p2    # "ifName":Ljava/lang/String;
    .restart local p3    # "destination":Ljava/lang/String;
    .restart local p4    # "nextHop":Ljava/lang/String;
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2838
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2839
    throw v2
.end method

.method public networkAddRouteParcel(ILandroid/net/RouteInfoParcel;)V
    .registers 8
    .param p1, "netId"    # I
    .param p2, "routeInfo"    # Landroid/net/RouteInfoParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3494
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3496
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3497
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3498
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3499
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x61

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3500
    .local v2, "_status":Z
    if-eqz v2, :cond_29

    .line 3503
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_31

    .line 3506
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3508
    nop

    .line 3509
    return-void

    .line 3501
    .restart local v2    # "_status":Z
    :cond_29
    :try_start_29
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkAddRouteParcel is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "netId":I
    .end local p2    # "routeInfo":Landroid/net/RouteInfoParcel;
    throw v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    .line 3506
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "netId":I
    .restart local p2    # "routeInfo":Landroid/net/RouteInfoParcel;
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3508
    throw v2
.end method

.method public networkAddUidRanges(I[Landroid/net/UidRangeParcel;)V
    .registers 8
    .param p1, "netId"    # I
    .param p2, "uidRanges"    # [Landroid/net/UidRangeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1745
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1746
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1748
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1749
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1750
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1751
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1752
    .local v2, "_status":Z
    if-eqz v2, :cond_29

    .line 1755
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_31

    .line 1758
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1760
    nop

    .line 1761
    return-void

    .line 1753
    .restart local v2    # "_status":Z
    :cond_29
    :try_start_29
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkAddUidRanges is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "netId":I
    .end local p2    # "uidRanges":[Landroid/net/UidRangeParcel;
    throw v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    .line 1758
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "netId":I
    .restart local p2    # "uidRanges":[Landroid/net/UidRangeParcel;
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1760
    throw v2
.end method

.method public networkAddUidRangesParcel(Landroid/net/netd/aidl/NativeUidRangeConfig;)V
    .registers 7
    .param p1, "uidRangesConfig"    # Landroid/net/netd/aidl/NativeUidRangeConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3669
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3670
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3672
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3673
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3674
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3675
    .local v2, "_status":Z
    if-eqz v2, :cond_26

    .line 3678
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2e

    .line 3681
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3682
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3683
    nop

    .line 3684
    return-void

    .line 3676
    .restart local v2    # "_status":Z
    :cond_26
    :try_start_26
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkAddUidRangesParcel is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "uidRangesConfig":Landroid/net/netd/aidl/NativeUidRangeConfig;
    throw v3
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    .line 3681
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "uidRangesConfig":Landroid/net/netd/aidl/NativeUidRangeConfig;
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3682
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3683
    throw v2
.end method

.method public networkCanProtect(I)Z
    .registers 7
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3074
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3075
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3078
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3079
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3080
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3081
    .local v2, "_status":Z
    if-eqz v2, :cond_2b

    .line 3084
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3085
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_33

    move v2, v3

    .line 3088
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3090
    nop

    .line 3091
    return v2

    .line 3082
    .local v2, "_status":Z
    :cond_2b
    :try_start_2b
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkCanProtect is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "uid":I
    throw v3
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_33

    .line 3088
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "uid":I
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3090
    throw v2
.end method

.method public networkClearDefault()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2946
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2947
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2949
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2950
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x44

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2951
    .local v2, "_status":Z
    if-eqz v2, :cond_23

    .line 2954
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_2b

    .line 2957
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2958
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2959
    nop

    .line 2960
    return-void

    .line 2952
    .restart local v2    # "_status":Z
    :cond_23
    :try_start_23
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkClearDefault is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    throw v3
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_2b

    .line 2957
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2958
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2959
    throw v2
.end method

.method public networkClearPermissionForUser([I)V
    .registers 7
    .param p1, "uids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3001
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3002
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3004
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3005
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3006
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3007
    .local v2, "_status":Z
    if-eqz v2, :cond_26

    .line 3010
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2e

    .line 3013
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3014
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3015
    nop

    .line 3016
    return-void

    .line 3008
    .restart local v2    # "_status":Z
    :cond_26
    :try_start_26
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkClearPermissionForUser is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "uids":[I
    throw v3
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    .line 3013
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "uids":[I
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3014
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3015
    throw v2
.end method

.method public networkCreate(Landroid/net/NativeNetworkConfig;)V
    .registers 7
    .param p1, "config"    # Landroid/net/NativeNetworkConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3651
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3652
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3654
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3655
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3656
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x69

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3657
    .local v2, "_status":Z
    if-eqz v2, :cond_26

    .line 3660
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2e

    .line 3663
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3665
    nop

    .line 3666
    return-void

    .line 3658
    .restart local v2    # "_status":Z
    :cond_26
    :try_start_26
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkCreate is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "config":Landroid/net/NativeNetworkConfig;
    throw v3
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    .line 3663
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "config":Landroid/net/NativeNetworkConfig;
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3665
    throw v2
.end method

.method public networkCreatePhysical(II)V
    .registers 8
    .param p1, "netId"    # I
    .param p2, "permission"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1650
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1651
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1653
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1654
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1655
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1656
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1657
    .local v2, "_status":Z
    if-eqz v2, :cond_28

    .line 1660
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_30

    .line 1663
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1665
    nop

    .line 1666
    return-void

    .line 1658
    .restart local v2    # "_status":Z
    :cond_28
    :try_start_28
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkCreatePhysical is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "netId":I
    .end local p2    # "permission":I
    throw v3
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    .line 1663
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "netId":I
    .restart local p2    # "permission":I
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1665
    throw v2
.end method

.method public networkCreateVpn(IZ)V
    .registers 8
    .param p1, "netId"    # I
    .param p2, "secure"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1670
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1671
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1673
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1674
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1675
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1676
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1677
    .local v2, "_status":Z
    if-eqz v2, :cond_28

    .line 1680
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_30

    .line 1683
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1684
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1685
    nop

    .line 1686
    return-void

    .line 1678
    .restart local v2    # "_status":Z
    :cond_28
    :try_start_28
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkCreateVpn is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "netId":I
    .end local p2    # "secure":Z
    throw v3
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    .line 1683
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "netId":I
    .restart local p2    # "secure":Z
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1684
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1685
    throw v2
.end method

.method public networkDestroy(I)V
    .registers 7
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1689
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1690
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1692
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1693
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1694
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1695
    .local v2, "_status":Z
    if-eqz v2, :cond_25

    .line 1698
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2d

    .line 1701
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1703
    nop

    .line 1704
    return-void

    .line 1696
    .restart local v2    # "_status":Z
    :cond_25
    :try_start_25
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkDestroy is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "netId":I
    throw v3
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    .line 1701
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "netId":I
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1703
    throw v2
.end method

.method public networkGetDefault()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2908
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2909
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2912
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2913
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x42

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2914
    .local v2, "_status":Z
    if-eqz v2, :cond_28

    .line 2917
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2918
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_30

    move v2, v3

    .line 2921
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2922
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2923
    nop

    .line 2924
    return v2

    .line 2915
    .local v2, "_status":Z
    :cond_28
    :try_start_28
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkGetDefault is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    throw v3
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    .line 2921
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2922
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2923
    throw v2
.end method

.method public networkRejectNonSecureVpn(Z[Landroid/net/UidRangeParcel;)V
    .registers 8
    .param p1, "add"    # Z
    .param p2, "uidRanges"    # [Landroid/net/UidRangeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1783
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1784
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1786
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1787
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1788
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1789
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1790
    .local v2, "_status":Z
    if-eqz v2, :cond_29

    .line 1793
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_31

    .line 1796
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1798
    nop

    .line 1799
    return-void

    .line 1791
    .restart local v2    # "_status":Z
    :cond_29
    :try_start_29
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkRejectNonSecureVpn is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "add":Z
    .end local p2    # "uidRanges":[Landroid/net/UidRangeParcel;
    throw v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    .line 1796
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "add":Z
    .restart local p2    # "uidRanges":[Landroid/net/UidRangeParcel;
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1798
    throw v2
.end method

.method public networkRemoveInterface(ILjava/lang/String;)V
    .registers 8
    .param p1, "netId"    # I
    .param p2, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1726
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1727
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1729
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1730
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1731
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1732
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1733
    .local v2, "_status":Z
    if-eqz v2, :cond_29

    .line 1736
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_31

    .line 1739
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1741
    nop

    .line 1742
    return-void

    .line 1734
    .restart local v2    # "_status":Z
    :cond_29
    :try_start_29
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkRemoveInterface is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "netId":I
    .end local p2    # "iface":Ljava/lang/String;
    throw v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    .line 1739
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "netId":I
    .restart local p2    # "iface":Ljava/lang/String;
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1741
    throw v2
.end method

.method public networkRemoveLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .param p1, "netId"    # I
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "destination"    # Ljava/lang/String;
    .param p4, "nextHop"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2886
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2887
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2889
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2890
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2891
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2892
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2893
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2894
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2895
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x41

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2896
    .local v2, "_status":Z
    if-eqz v2, :cond_32

    .line 2899
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_3a

    .line 2902
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2903
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2904
    nop

    .line 2905
    return-void

    .line 2897
    .restart local v2    # "_status":Z
    :cond_32
    :try_start_32
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkRemoveLegacyRoute is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "netId":I
    .end local p2    # "ifName":Ljava/lang/String;
    .end local p3    # "destination":Ljava/lang/String;
    .end local p4    # "nextHop":Ljava/lang/String;
    .end local p5    # "uid":I
    throw v3
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_3a

    .line 2902
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "netId":I
    .restart local p2    # "ifName":Ljava/lang/String;
    .restart local p3    # "destination":Ljava/lang/String;
    .restart local p4    # "nextHop":Ljava/lang/String;
    .restart local p5    # "uid":I
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2903
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2904
    throw v2
.end method

.method public networkRemoveRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "netId"    # I
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "destination"    # Ljava/lang/String;
    .param p4, "nextHop"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2843
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2844
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2846
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2847
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2848
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2849
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2850
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2851
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2852
    .local v2, "_status":Z
    if-eqz v2, :cond_2f

    .line 2855
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_37

    .line 2858
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2859
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2860
    nop

    .line 2861
    return-void

    .line 2853
    .restart local v2    # "_status":Z
    :cond_2f
    :try_start_2f
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkRemoveRoute is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "netId":I
    .end local p2    # "ifName":Ljava/lang/String;
    .end local p3    # "destination":Ljava/lang/String;
    .end local p4    # "nextHop":Ljava/lang/String;
    throw v3
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_37

    .line 2858
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "netId":I
    .restart local p2    # "ifName":Ljava/lang/String;
    .restart local p3    # "destination":Ljava/lang/String;
    .restart local p4    # "nextHop":Ljava/lang/String;
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2859
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2860
    throw v2
.end method

.method public networkRemoveRouteParcel(ILandroid/net/RouteInfoParcel;)V
    .registers 8
    .param p1, "netId"    # I
    .param p2, "routeInfo"    # Landroid/net/RouteInfoParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3531
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3532
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3534
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3535
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3536
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3537
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x63

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3538
    .local v2, "_status":Z
    if-eqz v2, :cond_29

    .line 3541
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_31

    .line 3544
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3545
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3546
    nop

    .line 3547
    return-void

    .line 3539
    .restart local v2    # "_status":Z
    :cond_29
    :try_start_29
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkRemoveRouteParcel is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "netId":I
    .end local p2    # "routeInfo":Landroid/net/RouteInfoParcel;
    throw v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    .line 3544
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "netId":I
    .restart local p2    # "routeInfo":Landroid/net/RouteInfoParcel;
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3545
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3546
    throw v2
.end method

.method public networkRemoveUidRanges(I[Landroid/net/UidRangeParcel;)V
    .registers 8
    .param p1, "netId"    # I
    .param p2, "uidRanges"    # [Landroid/net/UidRangeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1764
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1765
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1767
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1768
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1769
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1770
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1771
    .local v2, "_status":Z
    if-eqz v2, :cond_29

    .line 1774
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_31

    .line 1777
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1778
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1779
    nop

    .line 1780
    return-void

    .line 1772
    .restart local v2    # "_status":Z
    :cond_29
    :try_start_29
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkRemoveUidRanges is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "netId":I
    .end local p2    # "uidRanges":[Landroid/net/UidRangeParcel;
    throw v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    .line 1777
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "netId":I
    .restart local p2    # "uidRanges":[Landroid/net/UidRangeParcel;
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1778
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1779
    throw v2
.end method

.method public networkRemoveUidRangesParcel(Landroid/net/netd/aidl/NativeUidRangeConfig;)V
    .registers 7
    .param p1, "uidRangesConfig"    # Landroid/net/netd/aidl/NativeUidRangeConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3687
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3688
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3690
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3691
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3692
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3693
    .local v2, "_status":Z
    if-eqz v2, :cond_26

    .line 3696
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2e

    .line 3699
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3700
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3701
    nop

    .line 3702
    return-void

    .line 3694
    .restart local v2    # "_status":Z
    :cond_26
    :try_start_26
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkRemoveUidRangesParcel is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "uidRangesConfig":Landroid/net/netd/aidl/NativeUidRangeConfig;
    throw v3
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    .line 3699
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "uidRangesConfig":Landroid/net/netd/aidl/NativeUidRangeConfig;
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3700
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3701
    throw v2
.end method

.method public networkSetDefault(I)V
    .registers 7
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2928
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2929
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2931
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2932
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2933
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x43

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2934
    .local v2, "_status":Z
    if-eqz v2, :cond_26

    .line 2937
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2e

    .line 2940
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2941
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2942
    nop

    .line 2943
    return-void

    .line 2935
    .restart local v2    # "_status":Z
    :cond_26
    :try_start_26
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkSetDefault is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "netId":I
    throw v3
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    .line 2940
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "netId":I
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2941
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2942
    throw v2
.end method

.method public networkSetPermissionForNetwork(II)V
    .registers 8
    .param p1, "netId"    # I
    .param p2, "permission"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2963
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2964
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2966
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2967
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2968
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2969
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x45

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2970
    .local v2, "_status":Z
    if-eqz v2, :cond_29

    .line 2973
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_31

    .line 2976
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2977
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2978
    nop

    .line 2979
    return-void

    .line 2971
    .restart local v2    # "_status":Z
    :cond_29
    :try_start_29
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkSetPermissionForNetwork is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "netId":I
    .end local p2    # "permission":I
    throw v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    .line 2976
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "netId":I
    .restart local p2    # "permission":I
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2977
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2978
    throw v2
.end method

.method public networkSetPermissionForUser(I[I)V
    .registers 8
    .param p1, "permission"    # I
    .param p2, "uids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2982
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2983
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2985
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2986
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2987
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2988
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2989
    .local v2, "_status":Z
    if-eqz v2, :cond_29

    .line 2992
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_31

    .line 2995
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2997
    nop

    .line 2998
    return-void

    .line 2990
    .restart local v2    # "_status":Z
    :cond_29
    :try_start_29
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkSetPermissionForUser is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "permission":I
    .end local p2    # "uids":[I
    throw v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    .line 2995
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "permission":I
    .restart local p2    # "uids":[I
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2997
    throw v2
.end method

.method public networkSetProtectAllow(I)V
    .registers 7
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3038
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3039
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3041
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3042
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3043
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x49

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3044
    .local v2, "_status":Z
    if-eqz v2, :cond_26

    .line 3047
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2e

    .line 3050
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3052
    nop

    .line 3053
    return-void

    .line 3045
    .restart local v2    # "_status":Z
    :cond_26
    :try_start_26
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkSetProtectAllow is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "uid":I
    throw v3
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    .line 3050
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "uid":I
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3052
    throw v2
.end method

.method public networkSetProtectDeny(I)V
    .registers 7
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3056
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3057
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3059
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3060
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3061
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3062
    .local v2, "_status":Z
    if-eqz v2, :cond_26

    .line 3065
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2e

    .line 3068
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3069
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3070
    nop

    .line 3071
    return-void

    .line 3063
    .restart local v2    # "_status":Z
    :cond_26
    :try_start_26
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkSetProtectDeny is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "uid":I
    throw v3
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    .line 3068
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "uid":I
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3069
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3070
    throw v2
.end method

.method public networkUpdateRouteParcel(ILandroid/net/RouteInfoParcel;)V
    .registers 8
    .param p1, "netId"    # I
    .param p2, "routeInfo"    # Landroid/net/RouteInfoParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3512
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3513
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3515
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3516
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3517
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3518
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x62

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3519
    .local v2, "_status":Z
    if-eqz v2, :cond_29

    .line 3522
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_31

    .line 3525
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3526
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3527
    nop

    .line 3528
    return-void

    .line 3520
    .restart local v2    # "_status":Z
    :cond_29
    :try_start_29
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method networkUpdateRouteParcel is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "netId":I
    .end local p2    # "routeInfo":Landroid/net/RouteInfoParcel;
    throw v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    .line 3525
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "netId":I
    .restart local p2    # "routeInfo":Landroid/net/RouteInfoParcel;
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3526
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3527
    throw v2
.end method

.method public registerUnsolicitedEventListener(Landroid/net/INetdUnsolicitedEventListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/net/INetdUnsolicitedEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3362
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3363
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3365
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3366
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3367
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3368
    .local v2, "_status":Z
    if-eqz v2, :cond_26

    .line 3371
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2e

    .line 3374
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3376
    nop

    .line 3377
    return-void

    .line 3369
    .restart local v2    # "_status":Z
    :cond_26
    :try_start_26
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method registerUnsolicitedEventListener is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "listener":Landroid/net/INetdUnsolicitedEventListener;
    throw v3
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    .line 3374
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "listener":Landroid/net/INetdUnsolicitedEventListener;
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3376
    throw v2
.end method

.method public setIPv6AddrGenMode(Ljava/lang/String;I)V
    .registers 8
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2274
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2275
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2277
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2278
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2279
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2280
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2281
    .local v2, "_status":Z
    if-eqz v2, :cond_29

    .line 2284
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_31

    .line 2287
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2289
    nop

    .line 2290
    return-void

    .line 2282
    .restart local v2    # "_status":Z
    :cond_29
    :try_start_29
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method setIPv6AddrGenMode is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    .end local p2    # "mode":I
    throw v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    .line 2287
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    .restart local p2    # "mode":I
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2289
    throw v2
.end method

.method public setProcSysNet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "ipversion"    # I
    .param p2, "which"    # I
    .param p3, "ifname"    # Ljava/lang/String;
    .param p4, "parameter"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1925
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1926
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1928
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1929
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1930
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1931
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1932
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1933
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1934
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1935
    .local v2, "_status":Z
    if-eqz v2, :cond_32

    .line 1938
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_3a

    .line 1941
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1942
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1943
    nop

    .line 1944
    return-void

    .line 1936
    .restart local v2    # "_status":Z
    :cond_32
    :try_start_32
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method setProcSysNet is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ipversion":I
    .end local p2    # "which":I
    .end local p3    # "ifname":Ljava/lang/String;
    .end local p4    # "parameter":Ljava/lang/String;
    .end local p5    # "value":Ljava/lang/String;
    throw v3
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_3a

    .line 1941
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ipversion":I
    .restart local p2    # "which":I
    .restart local p3    # "ifname":Ljava/lang/String;
    .restart local p4    # "parameter":Ljava/lang/String;
    .restart local p5    # "value":Ljava/lang/String;
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1942
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1943
    throw v2
.end method

.method public setTcpRWmemorySize(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "rmemValues"    # Ljava/lang/String;
    .param p2, "wmemValues"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3343
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3344
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3346
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3347
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3348
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3349
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x59

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3350
    .local v2, "_status":Z
    if-eqz v2, :cond_29

    .line 3353
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_31

    .line 3356
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3358
    nop

    .line 3359
    return-void

    .line 3351
    .restart local v2    # "_status":Z
    :cond_29
    :try_start_29
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method setTcpRWmemorySize is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "rmemValues":Ljava/lang/String;
    .end local p2    # "wmemValues":Ljava/lang/String;
    throw v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    .line 3356
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "rmemValues":Ljava/lang/String;
    .restart local p2    # "wmemValues":Ljava/lang/String;
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3358
    throw v2
.end method

.method public socketDestroy([Landroid/net/UidRangeParcel;[I)V
    .registers 8
    .param p1, "uidRanges"    # [Landroid/net/UidRangeParcel;
    .param p2, "exemptUids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1802
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1803
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1805
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1806
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1807
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1808
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1809
    .local v2, "_status":Z
    if-eqz v2, :cond_29

    .line 1812
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_31

    .line 1815
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1817
    nop

    .line 1818
    return-void

    .line 1810
    .restart local v2    # "_status":Z
    :cond_29
    :try_start_29
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method socketDestroy is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "uidRanges":[Landroid/net/UidRangeParcel;
    .end local p2    # "exemptUids":[I
    throw v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    .line 1815
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "uidRanges":[Landroid/net/UidRangeParcel;
    .restart local p2    # "exemptUids":[I
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1817
    throw v2
.end method

.method public strictUidCleartextPenalty(II)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "policyPenalty"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2333
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2334
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2336
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2337
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2338
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2339
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2340
    .local v2, "_status":Z
    if-eqz v2, :cond_29

    .line 2343
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_31

    .line 2346
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2348
    nop

    .line 2349
    return-void

    .line 2341
    .restart local v2    # "_status":Z
    :cond_29
    :try_start_29
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method strictUidCleartextPenalty is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "uid":I
    .end local p2    # "policyPenalty":I
    throw v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    .line 2346
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "uid":I
    .restart local p2    # "policyPenalty":I
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2348
    throw v2
.end method

.method public tetherAddForward(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "intIface"    # Ljava/lang/String;
    .param p2, "extIface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3305
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3306
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3308
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3309
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3310
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3311
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x57

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3312
    .local v2, "_status":Z
    if-eqz v2, :cond_29

    .line 3315
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_31

    .line 3318
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3320
    nop

    .line 3321
    return-void

    .line 3313
    .restart local v2    # "_status":Z
    :cond_29
    :try_start_29
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method tetherAddForward is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "intIface":Ljava/lang/String;
    .end local p2    # "extIface":Ljava/lang/String;
    throw v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    .line 3318
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "intIface":Ljava/lang/String;
    .restart local p2    # "extIface":Ljava/lang/String;
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3320
    throw v2
.end method

.method public tetherApplyDnsInterfaces()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1821
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1822
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1825
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1826
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1827
    .local v2, "_status":Z
    if-eqz v2, :cond_28

    .line 1830
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1831
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_30

    move v2, v3

    .line 1834
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1835
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1836
    nop

    .line 1837
    return v2

    .line 1828
    .local v2, "_status":Z
    :cond_28
    :try_start_28
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method tetherApplyDnsInterfaces is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    throw v3
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    .line 1834
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1835
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1836
    throw v2
.end method

.method public tetherDnsList()[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2802
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2803
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2806
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2807
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2808
    .local v2, "_status":Z
    if-eqz v2, :cond_28

    .line 2811
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2812
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_30

    move-object v2, v3

    .line 2815
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2817
    nop

    .line 2818
    return-object v2

    .line 2809
    .local v2, "_status":Z
    :cond_28
    :try_start_28
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method tetherDnsList is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    throw v3
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    .line 2815
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2817
    throw v2
.end method

.method public tetherDnsSet(I[Ljava/lang/String;)V
    .registers 8
    .param p1, "netId"    # I
    .param p2, "dnsAddrs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2783
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2784
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2786
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2787
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2788
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2789
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2790
    .local v2, "_status":Z
    if-eqz v2, :cond_29

    .line 2793
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_31

    .line 2796
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2798
    nop

    .line 2799
    return-void

    .line 2791
    .restart local v2    # "_status":Z
    :cond_29
    :try_start_29
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method tetherDnsSet is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "netId":I
    .end local p2    # "dnsAddrs":[Ljava/lang/String;
    throw v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    .line 2796
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "netId":I
    .restart local p2    # "dnsAddrs":[Ljava/lang/String;
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2798
    throw v2
.end method

.method public tetherGetStats()[Landroid/net/TetherStatsParcel;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1841
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1842
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1845
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1846
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1847
    .local v2, "_status":Z
    if-eqz v2, :cond_2c

    .line 1850
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1851
    sget-object v3, Landroid/net/TetherStatsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/TetherStatsParcel;
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_34

    move-object v2, v3

    .line 1854
    .local v2, "_result":[Landroid/net/TetherStatsParcel;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1855
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1856
    nop

    .line 1857
    return-object v2

    .line 1848
    .local v2, "_status":Z
    :cond_2c
    :try_start_2c
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method tetherGetStats is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    throw v3
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_34

    .line 1854
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    :catchall_34
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1855
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1856
    throw v2
.end method

.method public tetherInterfaceAdd(Ljava/lang/String;)V
    .registers 7
    .param p1, "ifName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2727
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2728
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2730
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2731
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2732
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x39

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2733
    .local v2, "_status":Z
    if-eqz v2, :cond_26

    .line 2736
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2e

    .line 2739
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2741
    nop

    .line 2742
    return-void

    .line 2734
    .restart local v2    # "_status":Z
    :cond_26
    :try_start_26
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method tetherInterfaceAdd is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    throw v3
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    .line 2739
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2741
    throw v2
.end method

.method public tetherInterfaceList()[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2763
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2764
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2767
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2768
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2769
    .local v2, "_status":Z
    if-eqz v2, :cond_28

    .line 2772
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2773
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_30

    move-object v2, v3

    .line 2776
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2778
    nop

    .line 2779
    return-object v2

    .line 2770
    .local v2, "_status":Z
    :cond_28
    :try_start_28
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method tetherInterfaceList is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    throw v3
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    .line 2776
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2778
    throw v2
.end method

.method public tetherInterfaceRemove(Ljava/lang/String;)V
    .registers 7
    .param p1, "ifName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2745
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2746
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2748
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2749
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2750
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2751
    .local v2, "_status":Z
    if-eqz v2, :cond_26

    .line 2754
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2e

    .line 2757
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2759
    nop

    .line 2760
    return-void

    .line 2752
    .restart local v2    # "_status":Z
    :cond_26
    :try_start_26
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method tetherInterfaceRemove is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    throw v3
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    .line 2757
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2759
    throw v2
.end method

.method public tetherIsEnabled()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2707
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2708
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2711
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2712
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2713
    .local v2, "_status":Z
    if-eqz v2, :cond_28

    .line 2716
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2717
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_30

    move v2, v3

    .line 2720
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2722
    nop

    .line 2723
    return v2

    .line 2714
    .local v2, "_status":Z
    :cond_28
    :try_start_28
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method tetherIsEnabled is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    throw v3
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    .line 2720
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2722
    throw v2
.end method

.method public tetherOffloadGetAndClearStats(I)Landroid/net/TetherStatsParcel;
    .registers 7
    .param p1, "ifIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3630
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3631
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3634
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3635
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3636
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x68

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3637
    .local v2, "_status":Z
    if-eqz v2, :cond_2f

    .line 3640
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3641
    sget-object v3, Landroid/net/TetherStatsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/TetherStatsParcel;
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_37

    move-object v2, v3

    .line 3644
    .local v2, "_result":Landroid/net/TetherStatsParcel;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3646
    nop

    .line 3647
    return-object v2

    .line 3638
    .local v2, "_status":Z
    :cond_2f
    :try_start_2f
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method tetherOffloadGetAndClearStats is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifIndex":I
    throw v3
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_37

    .line 3644
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifIndex":I
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3646
    throw v2
.end method

.method public tetherOffloadGetStats()[Landroid/net/TetherStatsParcel;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3589
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3590
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3593
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3594
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x66

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3595
    .local v2, "_status":Z
    if-eqz v2, :cond_2c

    .line 3598
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3599
    sget-object v3, Landroid/net/TetherStatsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/TetherStatsParcel;
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_34

    move-object v2, v3

    .line 3602
    .local v2, "_result":[Landroid/net/TetherStatsParcel;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3603
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3604
    nop

    .line 3605
    return-object v2

    .line 3596
    .local v2, "_status":Z
    :cond_2c
    :try_start_2c
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method tetherOffloadGetStats is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    throw v3
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_34

    .line 3602
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    :catchall_34
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3603
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3604
    throw v2
.end method

.method public tetherOffloadRuleAdd(Landroid/net/TetherOffloadRuleParcel;)V
    .registers 7
    .param p1, "rule"    # Landroid/net/TetherOffloadRuleParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3551
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3552
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3554
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3555
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3556
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x64

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3557
    .local v2, "_status":Z
    if-eqz v2, :cond_26

    .line 3560
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2e

    .line 3563
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3565
    nop

    .line 3566
    return-void

    .line 3558
    .restart local v2    # "_status":Z
    :cond_26
    :try_start_26
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method tetherOffloadRuleAdd is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "rule":Landroid/net/TetherOffloadRuleParcel;
    throw v3
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    .line 3563
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "rule":Landroid/net/TetherOffloadRuleParcel;
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3565
    throw v2
.end method

.method public tetherOffloadRuleRemove(Landroid/net/TetherOffloadRuleParcel;)V
    .registers 7
    .param p1, "rule"    # Landroid/net/TetherOffloadRuleParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3570
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3571
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3573
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3574
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3575
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x65

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3576
    .local v2, "_status":Z
    if-eqz v2, :cond_26

    .line 3579
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2e

    .line 3582
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3583
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3584
    nop

    .line 3585
    return-void

    .line 3577
    .restart local v2    # "_status":Z
    :cond_26
    :try_start_26
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method tetherOffloadRuleRemove is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "rule":Landroid/net/TetherOffloadRuleParcel;
    throw v3
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    .line 3582
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "rule":Landroid/net/TetherOffloadRuleParcel;
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3583
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3584
    throw v2
.end method

.method public tetherOffloadSetInterfaceQuota(IJ)V
    .registers 9
    .param p1, "ifIndex"    # I
    .param p2, "quotaBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3610
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3611
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3613
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3614
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3615
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3616
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x67

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3617
    .local v2, "_status":Z
    if-eqz v2, :cond_29

    .line 3620
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_31

    .line 3623
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3625
    nop

    .line 3626
    return-void

    .line 3618
    .restart local v2    # "_status":Z
    :cond_29
    :try_start_29
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method tetherOffloadSetInterfaceQuota is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifIndex":I
    .end local p2    # "quotaBytes":J
    throw v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    .line 3623
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifIndex":I
    .restart local p2    # "quotaBytes":J
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3625
    throw v2
.end method

.method public tetherRemoveForward(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "intIface"    # Ljava/lang/String;
    .param p2, "extIface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3324
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3325
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3327
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3328
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3329
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3330
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x58

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3331
    .local v2, "_status":Z
    if-eqz v2, :cond_29

    .line 3334
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_31

    .line 3337
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3339
    nop

    .line 3340
    return-void

    .line 3332
    .restart local v2    # "_status":Z
    :cond_29
    :try_start_29
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method tetherRemoveForward is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "intIface":Ljava/lang/String;
    .end local p2    # "extIface":Ljava/lang/String;
    throw v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    .line 3337
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "intIface":Ljava/lang/String;
    .restart local p2    # "extIface":Ljava/lang/String;
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3339
    throw v2
.end method

.method public tetherStart([Ljava/lang/String;)V
    .registers 7
    .param p1, "dhcpRanges"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2672
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2673
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2675
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2676
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2677
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x36

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2678
    .local v2, "_status":Z
    if-eqz v2, :cond_26

    .line 2681
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2e

    .line 2684
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2685
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2686
    nop

    .line 2687
    return-void

    .line 2679
    .restart local v2    # "_status":Z
    :cond_26
    :try_start_26
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method tetherStart is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "dhcpRanges":[Ljava/lang/String;
    throw v3
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    .line 2684
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "dhcpRanges":[Ljava/lang/String;
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2685
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2686
    throw v2
.end method

.method public tetherStartWithConfiguration(Landroid/net/TetherConfigParcel;)V
    .registers 7
    .param p1, "config"    # Landroid/net/TetherConfigParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3454
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3455
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3457
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3458
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3459
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3460
    .local v2, "_status":Z
    if-eqz v2, :cond_26

    .line 3463
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2e

    .line 3466
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3468
    nop

    .line 3469
    return-void

    .line 3461
    .restart local v2    # "_status":Z
    :cond_26
    :try_start_26
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method tetherStartWithConfiguration is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "config":Landroid/net/TetherConfigParcel;
    throw v3
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    .line 3466
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "config":Landroid/net/TetherConfigParcel;
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3468
    throw v2
.end method

.method public tetherStop()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2690
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2691
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2693
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2694
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2695
    .local v2, "_status":Z
    if-eqz v2, :cond_23

    .line 2698
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_2b

    .line 2701
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2703
    nop

    .line 2704
    return-void

    .line 2696
    .restart local v2    # "_status":Z
    :cond_23
    :try_start_23
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method tetherStop is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    throw v3
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_2b

    .line 2701
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2703
    throw v2
.end method

.method public trafficSetNetPermForUids(I[I)V
    .registers 8
    .param p1, "permission"    # I
    .param p2, "uids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3019
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3020
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3022
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3023
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3024
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3025
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x48

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3026
    .local v2, "_status":Z
    if-eqz v2, :cond_29

    .line 3029
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_31

    .line 3032
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3034
    nop

    .line 3035
    return-void

    .line 3027
    .restart local v2    # "_status":Z
    :cond_29
    :try_start_29
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method trafficSetNetPermForUids is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "permission":I
    .end local p2    # "uids":[I
    throw v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    .line 3032
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "permission":I
    .restart local p2    # "uids":[I
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3034
    throw v2
.end method

.method public trafficSwapActiveStatsMap()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3417
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3418
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3420
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3421
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3422
    .local v2, "_status":Z
    if-eqz v2, :cond_23

    .line 3425
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_2b

    .line 3428
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3430
    nop

    .line 3431
    return-void

    .line 3423
    .restart local v2    # "_status":Z
    :cond_23
    :try_start_23
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method trafficSwapActiveStatsMap is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    throw v3
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_2b

    .line 3428
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3430
    throw v2
.end method

.method public wakeupAddInterface(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 10
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "mark"    # I
    .param p4, "mask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2232
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2233
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2235
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2236
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2237
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2238
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2239
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2240
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2241
    .local v2, "_status":Z
    if-eqz v2, :cond_2f

    .line 2244
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_37

    .line 2247
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2249
    nop

    .line 2250
    return-void

    .line 2242
    .restart local v2    # "_status":Z
    :cond_2f
    :try_start_2f
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method wakeupAddInterface is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    .end local p2    # "prefix":Ljava/lang/String;
    .end local p3    # "mark":I
    .end local p4    # "mask":I
    throw v3
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_37

    .line 2247
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    .restart local p2    # "prefix":Ljava/lang/String;
    .restart local p3    # "mark":I
    .restart local p4    # "mask":I
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2249
    throw v2
.end method

.method public wakeupDelInterface(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 10
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "mark"    # I
    .param p4, "mask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2253
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2254
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2256
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    sget-object v2, Landroid/net/INetd$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2257
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2258
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2259
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2260
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2261
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2262
    .local v2, "_status":Z
    if-eqz v2, :cond_2f

    .line 2265
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_37

    .line 2268
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2270
    nop

    .line 2271
    return-void

    .line 2263
    .restart local v2    # "_status":Z
    :cond_2f
    :try_start_2f
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method wakeupDelInterface is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .end local p1    # "ifName":Ljava/lang/String;
    .end local p2    # "prefix":Ljava/lang/String;
    .end local p3    # "mark":I
    .end local p4    # "mask":I
    throw v3
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_37

    .line 2268
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/net/INetd$Stub$Proxy;
    .restart local p1    # "ifName":Ljava/lang/String;
    .restart local p2    # "prefix":Ljava/lang/String;
    .restart local p3    # "mark":I
    .restart local p4    # "mask":I
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2270
    throw v2
.end method
