.class Landroid/hardware/input/IInputManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IInputManager.java"

# interfaces
.implements Landroid/hardware/input/IInputManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/IInputManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 1659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1660
    iput-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 1661
    return-void
.end method


# virtual methods
.method public blacklist addCustomInputGesture(ILandroid/hardware/input/AidlInputGestureData;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2990
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2991
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2994
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2995
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2996
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2997
    iget-object p2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x4c

    invoke-interface {p2, v2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2998
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2999
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 3002
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3003
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3004
    nop

    .line 3005
    return p1

    .line 3002
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3003
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3004
    throw p1
.end method

.method public blacklist addPortAssociation(Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2402
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2403
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2405
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2406
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2407
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2408
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x29

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2409
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 2412
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2414
    nop

    .line 2415
    return-void

    .line 2412
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2414
    throw p1
.end method

.method public blacklist addUniqueIdAssociationByDescriptor(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2436
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2437
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2439
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2440
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2441
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2442
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x2b

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2443
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 2446
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2448
    nop

    .line 2449
    return-void

    .line 2446
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2448
    throw p1
.end method

.method public blacklist addUniqueIdAssociationByPort(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2470
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2471
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2473
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2474
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2475
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2476
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x2d

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2477
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 2480
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2481
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2482
    nop

    .line 2483
    return-void

    .line 2480
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2481
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2482
    throw p1
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 1664
    iget-object v0, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist cancelCurrentTouch()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2697
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2698
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2700
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2701
    iget-object v2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2702
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    .line 2705
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2706
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2707
    nop

    .line 2708
    return-void

    .line 2705
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2706
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2707
    throw v2
.end method

.method public greylist-max-o cancelVibrate(ILandroid/os/IBinder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2236
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2237
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2239
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2240
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2241
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2242
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x20

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2243
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 2246
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2248
    nop

    .line 2249
    return-void

    .line 2246
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2248
    throw p1
.end method

.method public blacklist clearAllModifierKeyRemappings()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2101
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2102
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2104
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2105
    iget-object v2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2106
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    .line 2109
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2111
    nop

    .line 2112
    return-void

    .line 2109
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2111
    throw v2
.end method

.method public blacklist closeLightSession(ILandroid/os/IBinder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2681
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2682
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2684
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2685
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2686
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2687
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x39

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2688
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 2691
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2692
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2693
    nop

    .line 2694
    return-void

    .line 2691
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2692
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2693
    throw p1
.end method

.method public blacklist createVirtualKeyboard(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyboardConfig;)Landroid/hardware/input/IVirtualInputDevice;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1874
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1875
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1878
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1879
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1880
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1881
    iget-object p2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    invoke-interface {p2, v2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1882
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1883
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/input/IVirtualInputDevice$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IVirtualInputDevice;

    move-result-object p1
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 1886
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1887
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1888
    nop

    .line 1889
    return-object p1

    .line 1886
    :catchall_32
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1887
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1888
    throw p1
.end method

.method public greylist-max-o disableInputDevice(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1742
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1743
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1745
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1746
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1747
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1748
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_26

    .line 1751
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1752
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1753
    nop

    .line 1754
    return-void

    .line 1751
    :catchall_26
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1752
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1753
    throw p1
.end method

.method public blacklist disableSensor(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2574
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2575
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2577
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2578
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2579
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2580
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x33

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2581
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 2584
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2585
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2586
    nop

    .line 2587
    return-void

    .line 2584
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2585
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2586
    throw p1
.end method

.method public greylist-max-o enableInputDevice(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1727
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1728
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1730
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1731
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1732
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1733
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_26

    .line 1736
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1737
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1738
    nop

    .line 1739
    return-void

    .line 1736
    :catchall_26
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1737
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1738
    throw p1
.end method

.method public blacklist enableSensor(IIII)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2553
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2554
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2557
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2558
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2559
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2560
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2561
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2562
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x32

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2563
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2564
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_34

    .line 2567
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2568
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2569
    nop

    .line 2570
    return p1

    .line 2567
    :catchall_34
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2568
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2569
    throw p1
.end method

.method public blacklist flushSensor(II)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2590
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2591
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2594
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2595
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2596
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2597
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x34

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2598
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2599
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 2602
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2603
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2604
    nop

    .line 2605
    return p1

    .line 2602
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2603
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2604
    throw p1
.end method

.method public blacklist getAppLaunchBookmarks()[Landroid/hardware/input/AidlInputGestureData;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3063
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3064
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3067
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3068
    iget-object v2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x50

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3069
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3070
    sget-object v2, Landroid/hardware/input/AidlInputGestureData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/input/AidlInputGestureData;
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 3073
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3075
    nop

    .line 3076
    return-object v2

    .line 3073
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3075
    throw v2
.end method

.method public blacklist getBatteryState(I)Landroid/hardware/input/IInputDeviceBatteryState;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2326
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2327
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2330
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2331
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2332
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x25

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2333
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2334
    sget-object p1, Landroid/hardware/input/IInputDeviceBatteryState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/IInputDeviceBatteryState;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 2337
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2339
    nop

    .line 2340
    return-object p1

    .line 2337
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2339
    throw p1
.end method

.method public blacklist getCursorPositionInLogicalDisplay(I)Landroid/graphics/PointF;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3128
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3132
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3133
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3134
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x54

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3135
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3136
    sget-object p1, Landroid/graphics/PointF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 3139
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3140
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3141
    nop

    .line 3142
    return-object p1

    .line 3139
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3140
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3141
    throw p1
.end method

.method public blacklist getCursorPositionInPhysicalDisplay(I)Landroid/graphics/PointF;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3110
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3111
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3114
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3115
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3116
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x53

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3117
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3118
    sget-object p1, Landroid/graphics/PointF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 3121
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3123
    nop

    .line 3124
    return-object p1

    .line 3121
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3123
    throw p1
.end method

.method public blacklist getCustomInputGestures(II)[Landroid/hardware/input/AidlInputGestureData;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3044
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3045
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3048
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3049
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3050
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3051
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x4f

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3052
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3053
    sget-object p1, Landroid/hardware/input/AidlInputGestureData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/input/AidlInputGestureData;
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 3056
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3057
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3058
    nop

    .line 3059
    return-object p1

    .line 3056
    :catchall_32
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3057
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3058
    throw p1
.end method

.method public blacklist getHostUsiVersionFromDisplayConfig(I)Landroid/hardware/input/HostUsiVersion;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2844
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2845
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2848
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2849
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2850
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x43

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2851
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2852
    sget-object p1, Landroid/hardware/input/HostUsiVersion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/HostUsiVersion;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 2855
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2857
    nop

    .line 2858
    return-object p1

    .line 2855
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2857
    throw p1
.end method

.method public greylist-max-o getInputDevice(I)Landroid/view/InputDevice;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1691
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1692
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1695
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1696
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1697
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1698
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1699
    sget-object p1, Landroid/view/InputDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/InputDevice;
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 1702
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1704
    nop

    .line 1705
    return-object p1

    .line 1702
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1704
    throw p1
.end method

.method public blacklist getInputDeviceBluetoothAddress(I)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2781
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2782
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2785
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2786
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2787
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3f

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2788
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2789
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 2792
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2794
    nop

    .line 2795
    return-object p1

    .line 2792
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2794
    throw p1
.end method

.method public greylist-max-o getInputDeviceIds()[I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1709
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1710
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1713
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1714
    iget-object v2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1715
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1716
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 1719
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1721
    nop

    .line 1722
    return-object v2

    .line 1719
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1721
    throw v2
.end method

.method public blacklist getInputGesture(ILandroid/hardware/input/AidlInputGestureData$Trigger;)Landroid/hardware/input/AidlInputGestureData;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2971
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2972
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2975
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2976
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2977
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2978
    iget-object p2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x4b

    invoke-interface {p2, v2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2979
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2980
    sget-object p1, Landroid/hardware/input/AidlInputGestureData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/AidlInputGestureData;
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 2983
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2985
    nop

    .line 2986
    return-object p1

    .line 2983
    :catchall_32
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2985
    throw p1
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1668
    const-string v0, "android.hardware.input.IInputManager"

    return-object v0
.end method

.method public blacklist getKeyCharacterMap(Ljava/lang/String;)Landroid/view/KeyCharacterMap;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1801
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1802
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1805
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1806
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1807
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1808
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1809
    sget-object p1, Landroid/view/KeyCharacterMap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/KeyCharacterMap;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 1812
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1814
    nop

    .line 1815
    return-object p1

    .line 1812
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1814
    throw p1
.end method

.method public blacklist getKeyCodeForKeyLocation(II)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1782
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1783
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1786
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1787
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1788
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1789
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x7

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1790
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1791
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 1794
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1795
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1796
    nop

    .line 1797
    return p1

    .line 1794
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1795
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1796
    throw p1
.end method

.method public blacklist getKeyGlyphMap(I)Landroid/hardware/input/KeyGlyphMap;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2892
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2893
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2896
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2897
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2898
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x46

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2899
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2900
    sget-object p1, Landroid/hardware/input/KeyGlyphMap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/KeyGlyphMap;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 2903
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2904
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2905
    nop

    .line 2906
    return-object p1

    .line 2903
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2904
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2905
    throw p1
.end method

.method public greylist-max-o getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1989
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1990
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1993
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1994
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1995
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1996
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1997
    sget-object p1, Landroid/hardware/input/KeyboardLayout;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/KeyboardLayout;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 2000
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2001
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2002
    nop

    .line 2003
    return-object p1

    .line 2000
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2001
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2002
    throw p1
.end method

.method public blacklist getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayoutSelectionResult;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2007
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2008
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2011
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2012
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2013
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2014
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2015
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2016
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x13

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2017
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2018
    sget-object p1, Landroid/hardware/input/KeyboardLayoutSelectionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/KeyboardLayoutSelectionResult;
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_38

    .line 2021
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2022
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2023
    nop

    .line 2024
    return-object p1

    .line 2021
    :catchall_38
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2022
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2023
    throw p1
.end method

.method public blacklist getKeyboardLayoutListForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)[Landroid/hardware/input/KeyboardLayout;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2063
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2064
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2067
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2068
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2069
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2070
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2071
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2072
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x16

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2073
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2074
    sget-object p1, Landroid/hardware/input/KeyboardLayout;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/input/KeyboardLayout;
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_38

    .line 2077
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2078
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2079
    nop

    .line 2080
    return-object p1

    .line 2077
    :catchall_38
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2078
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2079
    throw p1
.end method

.method public greylist-max-o getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1972
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1973
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1976
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1977
    iget-object v2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1978
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1979
    sget-object v2, Landroid/hardware/input/KeyboardLayout;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/input/KeyboardLayout;
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 1982
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1983
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1984
    nop

    .line 1985
    return-object v2

    .line 1982
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1983
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1984
    throw v2
.end method

.method public blacklist getLightState(II)Landroid/hardware/lights/LightState;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2627
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2628
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2631
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2632
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2633
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2634
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x36

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2635
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2636
    sget-object p1, Landroid/hardware/lights/LightState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/lights/LightState;
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 2639
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2641
    nop

    .line 2642
    return-object p1

    .line 2639
    :catchall_32
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2641
    throw p1
.end method

.method public blacklist getLights(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/lights/Light;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2609
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2610
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2613
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2614
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2615
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x35

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2616
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2617
    sget-object p1, Landroid/hardware/lights/Light;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 2620
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2621
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2622
    nop

    .line 2623
    return-object p1

    .line 2620
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2621
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2622
    throw p1
.end method

.method public blacklist getModifierKeyRemapping()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2115
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2119
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2120
    iget-object v2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2121
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 2123
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 2126
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2128
    nop

    .line 2129
    return-object v2

    .line 2126
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2128
    throw v2
.end method

.method public blacklist getMousePointerSpeed()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1820
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1821
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1824
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1825
    iget-object v2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1826
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1827
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 1830
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1832
    nop

    .line 1833
    return v2

    .line 1830
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1832
    throw v2
.end method

.method public blacklist getSensorList(I)[Landroid/hardware/input/InputSensorInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2502
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2503
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2506
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2507
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2508
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2f

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2509
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2510
    sget-object p1, Landroid/hardware/input/InputSensorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/input/InputSensorInfo;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 2513
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2515
    nop

    .line 2516
    return-object p1

    .line 2513
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2515
    throw p1
.end method

.method public greylist-max-o getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1935
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1936
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1939
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1940
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1941
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1942
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xf

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1943
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1944
    sget-object p1, Landroid/hardware/input/TouchCalibration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/TouchCalibration;
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 1947
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1949
    nop

    .line 1950
    return-object p1

    .line 1947
    :catchall_32
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1949
    throw p1
.end method

.method public blacklist getVelocityTrackerStrategy()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1673
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1674
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1677
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1678
    iget-object v2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1679
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1680
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 1683
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1684
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1685
    nop

    .line 1686
    return-object v2

    .line 1683
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1684
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1685
    throw v2
.end method

.method public blacklist getVibratorIds(I)[I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2252
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2253
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2256
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2257
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2258
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x21

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2259
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2260
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 2263
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2265
    nop

    .line 2266
    return-object p1

    .line 2263
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2265
    throw p1
.end method

.method public greylist-max-o hasKeys(II[I[Z)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1758
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1759
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1762
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1763
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1764
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1765
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1766
    array-length p1, p4

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1767
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x6

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1768
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1769
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1770
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->readBooleanArray([Z)V
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_37

    .line 1773
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1775
    nop

    .line 1776
    return p1

    .line 1773
    :catchall_37
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1775
    throw p1
.end method

.method public greylist-max-o injectInputEvent(Landroid/view/InputEvent;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1855
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1856
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1859
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1860
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1861
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1862
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xb

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1863
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1864
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 1867
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1868
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1869
    nop

    .line 1870
    return p1

    .line 1867
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1868
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1869
    throw p1
.end method

.method public blacklist injectInputEventToTarget(Landroid/view/InputEvent;II)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1896
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1897
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1900
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1901
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1902
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1903
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1904
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xd

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1905
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1906
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 1909
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1911
    nop

    .line 1912
    return p1

    .line 1909
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1911
    throw p1
.end method

.method public greylist-max-o isInTabletMode()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2150
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2154
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2155
    iget-object v2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2156
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2157
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 2160
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2162
    nop

    .line 2163
    return v2

    .line 2160
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2162
    throw v2
.end method

.method public blacklist isMicMuted()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2184
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2185
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2188
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2189
    iget-object v2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2190
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2191
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 2194
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2196
    nop

    .line 2197
    return v2

    .line 2194
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2196
    throw v2
.end method

.method public blacklist isVibrating(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2270
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2271
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2274
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2275
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2276
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x22

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2277
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2278
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 2281
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2283
    nop

    .line 2284
    return p1

    .line 2281
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2283
    throw p1
.end method

.method public blacklist monitorGestureInput(Landroid/os/IBinder;Ljava/lang/String;I)Landroid/view/InputMonitor;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2380
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2381
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2384
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2385
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2386
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2387
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2388
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x28

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2389
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2390
    sget-object p1, Landroid/view/InputMonitor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/InputMonitor;
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_35

    .line 2393
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2395
    nop

    .line 2396
    return-object p1

    .line 2393
    :catchall_35
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2395
    throw p1
.end method

.method public blacklist openLightSession(ILjava/lang/String;Landroid/os/IBinder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2664
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2665
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2667
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2668
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2669
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2670
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2671
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x38

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2672
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 2675
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2677
    nop

    .line 2678
    return-void

    .line 2675
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2677
    throw p1
.end method

.method public blacklist pilferPointers(Landroid/os/IBinder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2799
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2800
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2802
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2803
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2804
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x40

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2805
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 2808
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2809
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2810
    nop

    .line 2811
    return-void

    .line 2808
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2809
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2810
    throw p1
.end method

.method public blacklist registerBatteryListener(ILandroid/hardware/input/IInputDeviceBatteryListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2711
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2712
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2714
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2715
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2716
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2717
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x3b

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2718
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 2721
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2722
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2723
    nop

    .line 2724
    return-void

    .line 2721
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2722
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2723
    throw p1
.end method

.method public greylist-max-o registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2134
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2137
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2138
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2139
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1a

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2140
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 2143
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2145
    nop

    .line 2146
    return-void

    .line 2143
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2145
    throw p1
.end method

.method public blacklist registerKeyEventActivityListener(Landroid/hardware/input/IKeyEventActivityListener;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2743
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2744
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2747
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2748
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2749
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3d

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2750
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2751
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 2754
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2755
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2756
    nop

    .line 2757
    return p1

    .line 2754
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2755
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2756
    throw p1
.end method

.method public blacklist registerKeyGestureEventListener(Landroid/hardware/input/IKeyGestureEventListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2910
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2911
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2913
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2914
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2915
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x47

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2916
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 2919
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2921
    nop

    .line 2922
    return-void

    .line 2919
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2921
    throw p1
.end method

.method public blacklist registerKeyGestureHandler([ILandroid/hardware/input/IKeyGestureHandler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2940
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2941
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2943
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2944
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2945
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2946
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x49

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2947
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 2950
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2952
    nop

    .line 2953
    return-void

    .line 2950
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2952
    throw p1
.end method

.method public blacklist registerKeyboardBacklightListener(Landroid/hardware/input/IKeyboardBacklightListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2814
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2815
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2817
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2818
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2819
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x41

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2820
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 2823
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2825
    nop

    .line 2826
    return-void

    .line 2823
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2825
    throw p1
.end method

.method public blacklist registerSensorListener(Landroid/hardware/input/IInputSensorEventListener;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2520
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2521
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2524
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2525
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2526
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x30

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2527
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2528
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 2531
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2533
    nop

    .line 2534
    return p1

    .line 2531
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2533
    throw p1
.end method

.method public blacklist registerStickyModifierStateListener(Landroid/hardware/input/IStickyModifierStateListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2862
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2863
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2865
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2866
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2867
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x44

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2868
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 2871
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2873
    nop

    .line 2874
    return-void

    .line 2871
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2873
    throw p1
.end method

.method public greylist-max-o registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2168
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2171
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2172
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2173
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1c

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2174
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 2177
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2179
    nop

    .line 2180
    return-void

    .line 2177
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2179
    throw p1
.end method

.method public blacklist registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2288
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2289
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2292
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2293
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2294
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2295
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x23

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2296
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2297
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 2300
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2301
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2302
    nop

    .line 2303
    return p1

    .line 2300
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2301
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2302
    throw p1
.end method

.method public blacklist remapModifierKey(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2085
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2086
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2088
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2089
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2090
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2091
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x17

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2092
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 2095
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2096
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2097
    nop

    .line 2098
    return-void

    .line 2095
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2096
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2097
    throw p1
.end method

.method public blacklist removeAllCustomInputGestures(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3028
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3029
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3031
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3032
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3033
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3034
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x4e

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3035
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 3038
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3039
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3040
    nop

    .line 3041
    return-void

    .line 3038
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3039
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3040
    throw p1
.end method

.method public blacklist removeCustomInputGesture(ILandroid/hardware/input/AidlInputGestureData;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3009
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3010
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3013
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3014
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3015
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3016
    iget-object p2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x4d

    invoke-interface {p2, v2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3017
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3018
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 3021
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3022
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3023
    nop

    .line 3024
    return p1

    .line 3021
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3022
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3023
    throw p1
.end method

.method public blacklist removePortAssociation(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2420
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2421
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2423
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2424
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2425
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2a

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2426
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 2429
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2431
    nop

    .line 2432
    return-void

    .line 2429
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2431
    throw p1
.end method

.method public blacklist removeUniqueIdAssociationByDescriptor(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2454
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2455
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2457
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2458
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2459
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2c

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2460
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 2463
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2465
    nop

    .line 2466
    return-void

    .line 2463
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2465
    throw p1
.end method

.method public blacklist removeUniqueIdAssociationByPort(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2487
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2488
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2490
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2491
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2492
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2e

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2493
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 2496
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2497
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2498
    nop

    .line 2499
    return-void

    .line 2496
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2497
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2498
    throw p1
.end method

.method public blacklist requestPointerCapture(Landroid/os/IBinder;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2366
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2368
    :try_start_8
    const-string v1, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2369
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2370
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2371
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x27

    invoke-interface {p1, v2, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 2374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2375
    nop

    .line 2376
    return-void

    .line 2374
    :catchall_21
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2375
    throw p1
.end method

.method public blacklist resetLockedModifierState()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3080
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3081
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3083
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3084
    iget-object v2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x51

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3085
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    .line 3088
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3090
    nop

    .line 3091
    return-void

    .line 3088
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3090
    throw v2
.end method

.method public blacklist setKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2044
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2045
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2047
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2048
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2049
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2050
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2051
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2052
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2053
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x15

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2054
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 2057
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2058
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2059
    nop

    .line 2060
    return-void

    .line 2057
    :catchall_33
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2058
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2059
    throw p1
.end method

.method public blacklist setKeyboardLayoutOverrideForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2028
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2029
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2031
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2032
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2033
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2034
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x14

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2035
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 2038
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2039
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2040
    nop

    .line 2041
    return-void

    .line 2038
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2039
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2040
    throw p1
.end method

.method public blacklist setLightStates(I[I[Landroid/hardware/lights/LightState;Landroid/os/IBinder;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2646
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2647
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2649
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2650
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2651
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2652
    const/4 p1, 0x0

    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2653
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2654
    iget-object p2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x37

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2655
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 2658
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2659
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2660
    nop

    .line 2661
    return-void

    .line 2658
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2659
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2660
    throw p1
.end method

.method public blacklist setMouseScalingEnabled(ZI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3094
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3095
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3097
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3098
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3099
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3100
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x52

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3101
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 3104
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3106
    nop

    .line 3107
    return-void

    .line 3104
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3106
    throw p1
.end method

.method public blacklist setPointerIcon(Landroid/view/PointerIcon;IIILandroid/os/IBinder;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2344
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2345
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2348
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2349
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2350
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2351
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2352
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2353
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2354
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x26

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2355
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2356
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_37

    .line 2359
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2361
    nop

    .line 2362
    return p1

    .line 2359
    :catchall_37
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2361
    throw p1
.end method

.method public greylist-max-o setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1954
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1955
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1957
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1958
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1959
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1960
    const/4 p1, 0x0

    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1961
    iget-object p2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x10

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1962
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 1965
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1966
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1967
    nop

    .line 1968
    return-void

    .line 1965
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1966
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1967
    throw p1
.end method

.method public greylist-max-o tryPointerSpeed(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1838
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1839
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1841
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1842
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1843
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1844
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 1847
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1849
    nop

    .line 1850
    return-void

    .line 1847
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1849
    throw p1
.end method

.method public blacklist unregisterBatteryListener(ILandroid/hardware/input/IInputDeviceBatteryListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2727
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2728
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2730
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2731
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2732
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2733
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x3c

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2734
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 2737
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2738
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2739
    nop

    .line 2740
    return-void

    .line 2737
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2738
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2739
    throw p1
.end method

.method public blacklist unregisterKeyEventActivityListener(Landroid/hardware/input/IKeyEventActivityListener;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2761
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2762
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2765
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2766
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2767
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3e

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2768
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2769
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 2772
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2773
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2774
    nop

    .line 2775
    return p1

    .line 2772
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2773
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2774
    throw p1
.end method

.method public blacklist unregisterKeyGestureEventListener(Landroid/hardware/input/IKeyGestureEventListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2925
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2926
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2928
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2929
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2930
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x48

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2931
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 2934
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2935
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2936
    nop

    .line 2937
    return-void

    .line 2934
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2935
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2936
    throw p1
.end method

.method public blacklist unregisterKeyGestureHandler(Landroid/hardware/input/IKeyGestureHandler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2956
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2957
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2959
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2960
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2961
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x4a

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2962
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 2965
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2966
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2967
    nop

    .line 2968
    return-void

    .line 2965
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2966
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2967
    throw p1
.end method

.method public blacklist unregisterKeyboardBacklightListener(Landroid/hardware/input/IKeyboardBacklightListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2829
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2830
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2832
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2833
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2834
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x42

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2835
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 2838
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2840
    nop

    .line 2841
    return-void

    .line 2838
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2840
    throw p1
.end method

.method public blacklist unregisterSensorListener(Landroid/hardware/input/IInputSensorEventListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2538
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2539
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2541
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2542
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2543
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x31

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2544
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 2547
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2548
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2549
    nop

    .line 2550
    return-void

    .line 2547
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2548
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2549
    throw p1
.end method

.method public blacklist unregisterStickyModifierStateListener(Landroid/hardware/input/IStickyModifierStateListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2877
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2878
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2880
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2881
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2882
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x45

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2883
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 2886
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2887
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2888
    nop

    .line 2889
    return-void

    .line 2886
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2887
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2888
    throw p1
.end method

.method public blacklist unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2307
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2308
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2311
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2312
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2313
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2314
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x24

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2315
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2316
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 2319
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2321
    nop

    .line 2322
    return p1

    .line 2319
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2321
    throw p1
.end method

.method public blacklist verifyInputEvent(Landroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1916
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1917
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1920
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1921
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1922
    iget-object p1, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1923
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1924
    sget-object p1, Landroid/view/VerifiedInputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/VerifiedInputEvent;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 1927
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1928
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1929
    nop

    .line 1930
    return-object p1

    .line 1927
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1928
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1929
    throw p1
.end method

.method public blacklist vibrate(ILandroid/os/VibrationEffect;Landroid/os/IBinder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2202
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2203
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2205
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2206
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2207
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2208
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2209
    iget-object p2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x1e

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2210
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 2213
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2215
    nop

    .line 2216
    return-void

    .line 2213
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2215
    throw p1
.end method

.method public blacklist vibrateCombined(ILandroid/os/CombinedVibration;Landroid/os/IBinder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2219
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2220
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2222
    :try_start_c
    const-string v2, "android.hardware.input.IInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2223
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2224
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2225
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2226
    iget-object p2, p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x1f

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2227
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 2230
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2232
    nop

    .line 2233
    return-void

    .line 2230
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2232
    throw p1
.end method
