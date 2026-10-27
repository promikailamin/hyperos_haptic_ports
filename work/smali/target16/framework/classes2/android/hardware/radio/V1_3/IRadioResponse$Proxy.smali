.class public final Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;
.super Ljava/lang/Object;
.source "IRadioResponse.java"

# interfaces
.implements Landroid/hardware/radio/V1_3/IRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_3/IRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IHwBinder;


# direct methods
.method public constructor blacklist <init>(Landroid/os/IHwBinder;)V
    .registers 2

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IHwBinder;

    iput-object p1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 243
    return-void
.end method


# virtual methods
.method public blacklist acceptCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 892
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 893
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 894
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 896
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 898
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x26

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 899
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 901
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 902
    nop

    .line 903
    return-void

    .line 901
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 902
    throw v0
.end method

.method public blacklist acknowledgeIncomingGsmSmsWithPduResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1852
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1853
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1854
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1856
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1858
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x60

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1859
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1861
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1862
    nop

    .line 1863
    return-void

    .line 1861
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1862
    throw v0
.end method

.method public blacklist acknowledgeLastIncomingCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1549
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1550
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1551
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1553
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1555
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x4e

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1556
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1558
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1559
    nop

    .line 1560
    return-void

    .line 1558
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1559
    throw v0
.end method

.method public blacklist acknowledgeLastIncomingGsmSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 876
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 877
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 878
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 880
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 882
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x25

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 883
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 885
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 886
    nop

    .line 887
    return-void

    .line 885
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 886
    throw v0
.end method

.method public blacklist acknowledgeRequest(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2402
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2403
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2404
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2406
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2408
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x81

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2409
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2411
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2412
    nop

    .line 2413
    return-void

    .line 2411
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2412
    throw v0
.end method

.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 2

    .line 247
    iget-object v0, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object v0
.end method

.method public blacklist cancelPendingUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 759
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 760
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 761
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 763
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 765
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x1e

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 766
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 768
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 769
    nop

    .line 770
    return-void

    .line 768
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 769
    throw v0
.end method

.method public blacklist changeIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 376
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 377
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 379
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 381
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 383
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x7

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 384
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_24

    .line 386
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 387
    nop

    .line 388
    return-void

    .line 386
    :catchall_24
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 387
    throw p2
.end method

.method public blacklist changeIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 359
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 360
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 362
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 364
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 366
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 367
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_24

    .line 369
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 370
    nop

    .line 371
    return-void

    .line 369
    :catchall_24
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 370
    throw p2
.end method

.method public blacklist conferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 524
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 525
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 528
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 530
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x10

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 531
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 533
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 534
    nop

    .line 535
    return-void

    .line 533
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 534
    throw v0
.end method

.method public blacklist deactivateDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 908
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 909
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 910
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 912
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 914
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x27

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 915
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 917
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 918
    nop

    .line 919
    return-void

    .line 917
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 918
    throw v0
.end method

.method public blacklist debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2721
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2722
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2723
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    .line 2724
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2726
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2728
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v1, 0xf444247

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2729
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2730
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_29

    .line 2732
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2733
    nop

    .line 2734
    return-void

    .line 2732
    :catchall_29
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2733
    throw p2
.end method

.method public blacklist deleteSmsOnRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1701
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1702
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1703
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1705
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1707
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x57

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1708
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1710
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1711
    nop

    .line 1712
    return-void

    .line 1710
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1711
    throw v0
.end method

.method public blacklist deleteSmsOnSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1205
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1206
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1207
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1209
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1211
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x39

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1212
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1214
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1215
    nop

    .line 1216
    return-void

    .line 1214
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1215
    throw v0
.end method

.method public blacklist dialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 427
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 428
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 431
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 433
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 434
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 436
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 437
    nop

    .line 438
    return-void

    .line 436
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 437
    throw v0
.end method

.method public blacklist enableModemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2668
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2669
    const-string v1, "android.hardware.radio@1.3::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2670
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2672
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2674
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x91

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2675
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2677
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2678
    nop

    .line 2679
    return-void

    .line 2677
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2678
    throw v0
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 2

    .line 262
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist exitEmergencyCallbackModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1737
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1738
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1739
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1741
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1743
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x59

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1744
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1746
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1747
    nop

    .line 1748
    return-void

    .line 1746
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1747
    throw v0
.end method

.method public blacklist explicitCallTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1303
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1304
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1305
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1307
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1309
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x3f

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1310
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1312
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1313
    nop

    .line 1314
    return-void

    .line 1312
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1313
    throw v0
.end method

.method public blacklist getAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2336
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2337
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2338
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2339
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2340
    invoke-virtual {p3, v0}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2342
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2344
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x7d

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2345
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 2347
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2348
    nop

    .line 2349
    return-void

    .line 2347
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2348
    throw p2
.end method

.method public blacklist getAvailableBandModesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1237
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1238
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1239
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1240
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 1242
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1244
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x3b

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1245
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1247
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1248
    nop

    .line 1249
    return-void

    .line 1247
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1248
    throw p2
.end method

.method public blacklist getAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/OperatorInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1023
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1024
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1026
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/OperatorInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1028
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1030
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x2e

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1031
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1033
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1034
    nop

    .line 1035
    return-void

    .line 1033
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1034
    throw p2
.end method

.method public blacklist getBasebandVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1072
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1073
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1075
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1077
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1079
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x31

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1080
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1082
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1083
    nop

    .line 1084
    return-void

    .line 1082
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1083
    throw p2
.end method

.method public blacklist getCDMASubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1663
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1664
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1665
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1666
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1667
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1668
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1669
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1670
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1672
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1674
    :try_start_21
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x55

    const/4 p4, 0x1

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1675
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_31

    .line 1677
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1678
    nop

    .line 1679
    return-void

    .line 1677
    :catchall_31
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1678
    throw p2
.end method

.method public blacklist getCallForwardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CallForwardInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 809
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 810
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 811
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 812
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 814
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 816
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x21

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 817
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 819
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 820
    nop

    .line 821
    return-void

    .line 819
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 820
    throw p2
.end method

.method public blacklist getCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 842
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 843
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 844
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 845
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 846
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 848
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 850
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x23

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 851
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 853
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 854
    nop

    .line 855
    return-void

    .line 853
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 854
    throw p2
.end method

.method public blacklist getCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1614
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1615
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1616
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1617
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1619
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1621
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x52

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1622
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1624
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1625
    nop

    .line 1626
    return-void

    .line 1624
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1625
    throw p2
.end method

.method public blacklist getCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1417
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1418
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1419
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1420
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1422
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1424
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x46

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1425
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1427
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1428
    nop

    .line 1429
    return-void

    .line 1427
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1428
    throw p2
.end method

.method public blacklist getCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1818
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1819
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1820
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1821
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1823
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1825
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x5e

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1826
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1828
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1829
    nop

    .line 1830
    return-void

    .line 1828
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1829
    throw p2
.end method

.method public blacklist getCellInfoListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CellInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1902
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1903
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1904
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1905
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/CellInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1907
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1909
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x63

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1910
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1912
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1913
    nop

    .line 1914
    return-void

    .line 1912
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1913
    throw p2
.end method

.method public blacklist getCellInfoListResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/CellInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2517
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2518
    const-string v1, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2519
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2520
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_2/CellInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 2522
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2524
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x88

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2525
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2527
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2528
    nop

    .line 2529
    return-void

    .line 2527
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2528
    throw p2
.end method

.method public blacklist getClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1138
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1139
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1140
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1141
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1143
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1145
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x35

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1146
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1148
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1149
    nop

    .line 1150
    return-void

    .line 1148
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1149
    throw p2
.end method

.method public blacklist getClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 775
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 776
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 777
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 778
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 779
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 781
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 783
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x1f

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 784
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 786
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 787
    nop

    .line 788
    return-void

    .line 786
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 787
    throw p2
.end method

.method public blacklist getCurrentCallsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/Call;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 410
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 411
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 413
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/Call;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 415
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 417
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x9

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 418
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 420
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 421
    nop

    .line 422
    return-void

    .line 420
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 421
    throw p2
.end method

.method public blacklist getCurrentCallsResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/Call;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2583
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2584
    const-string v1, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2585
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2586
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_2/Call;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 2588
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2590
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x8c

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2591
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2593
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2594
    nop

    .line 2595
    return-void

    .line 2593
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2594
    throw p2
.end method

.method public blacklist getDataCallListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1155
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1156
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1157
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1158
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1160
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1162
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x36

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1163
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1165
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1166
    nop

    .line 1167
    return-void

    .line 1165
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1166
    throw p2
.end method

.method public blacklist getDataRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/DataRegStateResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 607
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 608
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 609
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 610
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/DataRegStateResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 612
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 614
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x15

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 615
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 617
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 618
    nop

    .line 619
    return-void

    .line 617
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 618
    throw p2
.end method

.method public blacklist getDataRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/DataRegStateResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2634
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2635
    const-string v1, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2636
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2637
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_2/DataRegStateResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2639
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2641
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x8f

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2642
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2644
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2645
    nop

    .line 2646
    return-void

    .line 2644
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2645
    throw p2
.end method

.method public blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2833
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2834
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2836
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2838
    :try_start_f
    iget-object v2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf524546

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2839
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2840
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2842
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 2843
    invoke-virtual {v0, v1}, Landroid/internal/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2b

    .line 2844
    nop

    .line 2846
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2844
    return-object v0

    .line 2846
    :catchall_2b
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2847
    throw v0
.end method

.method public blacklist getDeviceIdentityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1717
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1718
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1719
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1720
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1721
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1722
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1723
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1725
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1727
    :try_start_1e
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x58

    const/4 p4, 0x1

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1728
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_2e

    .line 1730
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1731
    nop

    .line 1732
    return-void

    .line 1730
    :catchall_2e
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1731
    throw p2
.end method

.method public blacklist getFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 924
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 925
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 926
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 927
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 929
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 931
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x28

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 932
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 934
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 935
    nop

    .line 936
    return-void

    .line 934
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 935
    throw p2
.end method

.method public blacklist getGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1565
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1566
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1567
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1568
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1570
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1572
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x4f

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1573
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1575
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1576
    nop

    .line 1577
    return-void

    .line 1575
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1576
    throw p2
.end method

.method public blacklist getHardwareConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/HardwareConfig;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2151
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2152
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2153
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2154
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 2156
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2158
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x72

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2159
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2161
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2162
    nop

    .line 2163
    return-void

    .line 2161
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2162
    throw p2
.end method

.method public blacklist getHashChain()Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2758
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2759
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2761
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 2763
    :try_start_f
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf485348

    const/4 v10, 0x0

    invoke-interface {v1, v3, v0, v2, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2764
    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2765
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2767
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2769
    const-wide/16 v3, 0x10

    invoke-virtual {v2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 2771
    const-wide/16 v3, 0x8

    invoke-virtual {v1, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    .line 2772
    mul-int/lit8 v3, v11, 0x20

    int-to-long v3, v3

    .line 2773
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    .line 2772
    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 2776
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2777
    nop

    :goto_41
    if-ge v10, v11, :cond_54

    .line 2778
    const/16 v3, 0x20

    new-array v4, v3, [B

    .line 2780
    mul-int/lit8 v5, v10, 0x20

    int-to-long v5, v5

    .line 2781
    invoke-virtual {v1, v5, v6, v4, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2782
    nop

    .line 2784
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catchall {:try_start_f .. :try_end_51} :catchall_59

    .line 2777
    add-int/lit8 v10, v10, 0x1

    goto :goto_41

    .line 2788
    :cond_54
    nop

    .line 2790
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 2788
    return-object v0

    .line 2790
    :catchall_59
    move-exception v0

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 2791
    throw v0
.end method

.method public blacklist getIMSIForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 443
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 444
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 446
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 448
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 450
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xb

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 451
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 453
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 454
    nop

    .line 455
    return-void

    .line 453
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 454
    throw p2
.end method

.method public blacklist getIccCardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/CardStatus;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 275
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 277
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/CardStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 279
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 281
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x1

    invoke-interface {p2, v1, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 282
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_23

    .line 284
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 285
    nop

    .line 286
    return-void

    .line 284
    :catchall_23
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 285
    throw p2
.end method

.method public blacklist getIccCardStatusResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/CardStatus;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2534
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2535
    const-string v1, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2536
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2537
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_2/CardStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2539
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2541
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x89

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2542
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2544
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2545
    nop

    .line 2546
    return-void

    .line 2544
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2545
    throw p2
.end method

.method public blacklist getImsRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1951
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1952
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1953
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1954
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1955
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1957
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1959
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x66

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1960
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 1962
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1963
    nop

    .line 1964
    return-void

    .line 1962
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1963
    throw p2
.end method

.method public blacklist getLastCallFailCauseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 556
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 557
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 559
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 561
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 563
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x12

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 564
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 566
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 567
    nop

    .line 568
    return-void

    .line 566
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 567
    throw p2
.end method

.method public blacklist getModemActivityInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2302
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2303
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2304
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2305
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2307
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2309
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x7b

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2310
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2312
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2313
    nop

    .line 2314
    return-void

    .line 2312
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2313
    throw p2
.end method

.method public blacklist getModemStackStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2684
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2685
    const-string v1, "android.hardware.radio@1.3::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2686
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2687
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2689
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2691
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x92

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2692
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2694
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2695
    nop

    .line 2696
    return-void

    .line 2694
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2695
    throw p2
.end method

.method public blacklist getMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1121
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1122
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1123
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1124
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1126
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1128
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x34

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1129
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1131
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1132
    nop

    .line 1133
    return-void

    .line 1131
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1132
    throw p2
.end method

.method public blacklist getNeighboringCidsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/NeighboringCell;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1352
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1353
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1354
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1355
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/NeighboringCell;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1357
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1359
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x42

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1360
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1362
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1363
    nop

    .line 1364
    return-void

    .line 1362
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1363
    throw p2
.end method

.method public blacklist getNetworkSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 974
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 975
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 976
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 977
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 979
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 981
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x2b

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 982
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 984
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 985
    nop

    .line 986
    return-void

    .line 984
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 985
    throw p2
.end method

.method public blacklist getOperatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 624
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 625
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 627
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 629
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 631
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 633
    :try_start_1b
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x16

    const/4 p4, 0x1

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 634
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2b

    .line 636
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 637
    nop

    .line 638
    return-void

    .line 636
    :catchall_2b
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 637
    throw p2
.end method

.method public blacklist getPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1335
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1336
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1337
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1338
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1340
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1342
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x41

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1343
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1345
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1346
    nop

    .line 1347
    return-void

    .line 1345
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1346
    throw p2
.end method

.method public blacklist getPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1483
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1484
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1485
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1486
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1488
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1490
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x4a

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1491
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1493
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1494
    nop

    .line 1495
    return-void

    .line 1493
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1494
    throw p2
.end method

.method public blacklist getRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2217
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2218
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2219
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2220
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/RadioCapability;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2222
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2224
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x76

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2225
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2227
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2228
    nop

    .line 2229
    return-void

    .line 2227
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2228
    throw p2
.end method

.method public blacklist getSignalStrengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SignalStrength;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 573
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 574
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 576
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SignalStrength;->writeToParcel(Landroid/os/HwParcel;)V

    .line 578
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 580
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x13

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 581
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 583
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 584
    nop

    .line 585
    return-void

    .line 583
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 584
    throw p2
.end method

.method public blacklist getSignalStrengthResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/SignalStrength;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2600
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2601
    const-string v1, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2602
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2603
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_2/SignalStrength;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2605
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2607
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x8d

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2608
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2610
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2611
    nop

    .line 2612
    return-void

    .line 2610
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2611
    throw p2
.end method

.method public blacklist getSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1753
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1754
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1755
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1756
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1758
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1760
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x5a

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1761
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1763
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1764
    nop

    .line 1765
    return-void

    .line 1763
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1764
    throw p2
.end method

.method public blacklist getTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1450
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1451
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1452
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1453
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1455
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1457
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x48

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1458
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1460
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1461
    nop

    .line 1462
    return-void

    .line 1460
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1461
    throw p2
.end method

.method public blacklist getVoiceRadioTechnologyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1885
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1886
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1887
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1888
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1890
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1892
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x62

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1893
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1895
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1896
    nop

    .line 1897
    return-void

    .line 1895
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1896
    throw p2
.end method

.method public blacklist getVoiceRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/VoiceRegStateResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 590
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 591
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 592
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 593
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 595
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 597
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x14

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 598
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 600
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 601
    nop

    .line 602
    return-void

    .line 600
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 601
    throw p2
.end method

.method public blacklist getVoiceRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/VoiceRegStateResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2617
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2618
    const-string v1, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2619
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2620
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2622
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2624
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x8e

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2625
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2627
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2628
    nop

    .line 2629
    return-void

    .line 2627
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2628
    throw p2
.end method

.method public blacklist handleStkCallSetupRequestFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1287
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1288
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1289
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1291
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1293
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x3e

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1294
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1296
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1297
    nop

    .line 1298
    return-void

    .line 1296
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1297
    throw v0
.end method

.method public blacklist hangupConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 460
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 461
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 464
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 466
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xc

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 467
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 469
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 470
    nop

    .line 471
    return-void

    .line 469
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 470
    throw v0
.end method

.method public blacklist hangupForegroundResumeBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 492
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 493
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 496
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 498
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xe

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 499
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 501
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 502
    nop

    .line 503
    return-void

    .line 501
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 502
    throw v0
.end method

.method public blacklist hangupWaitingOrBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 476
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 477
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 480
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 482
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xd

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 483
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 485
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 486
    nop

    .line 487
    return-void

    .line 485
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 486
    throw v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 2

    .line 267
    invoke-virtual {p0}, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IHwBinder;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist iccCloseLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2021
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2022
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2023
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2025
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2027
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x6a

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2028
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2030
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2031
    nop

    .line 2032
    return-void

    .line 2030
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2031
    throw v0
.end method

.method public blacklist iccIOForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 726
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 727
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 729
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/IccIoResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 731
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 733
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1c

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 734
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 736
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 737
    nop

    .line 738
    return-void

    .line 736
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 737
    throw p2
.end method

.method public blacklist iccOpenLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ILjava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2003
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2004
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2005
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2006
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2007
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 2009
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2011
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x69

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2012
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 2014
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2015
    nop

    .line 2016
    return-void

    .line 2014
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2015
    throw p2
.end method

.method public blacklist iccTransmitApduBasicChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1986
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1987
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1988
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1989
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/IccIoResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1991
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1993
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x68

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1994
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1996
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1997
    nop

    .line 1998
    return-void

    .line 1996
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1997
    throw p2
.end method

.method public blacklist iccTransmitApduLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2037
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2038
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2039
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2040
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/IccIoResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2042
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2044
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x6b

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2045
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2047
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2048
    nop

    .line 2049
    return-void

    .line 2047
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2048
    throw p2
.end method

.method public blacklist interfaceChain()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2702
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2703
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2705
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2707
    :try_start_f
    iget-object v2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf43484e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2708
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2709
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2711
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 2712
    nop

    .line 2714
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2712
    return-object v0

    .line 2714
    :catchall_27
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2715
    throw v0
.end method

.method public blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2739
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2740
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2742
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2744
    :try_start_f
    iget-object v2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf445343

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2745
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2746
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2748
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 2749
    nop

    .line 2751
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2749
    return-object v0

    .line 2751
    :catchall_27
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2752
    throw v0
.end method

.method public blacklist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2812
    iget-object v0, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result p1

    return p1
.end method

.method public blacklist notifySyspropsChanged()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2853
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2854
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2856
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2858
    :try_start_f
    iget-object v2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2859
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 2861
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2862
    nop

    .line 2863
    return-void

    .line 2861
    :catchall_20
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2862
    throw v0
.end method

.method public blacklist nvReadItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2054
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2055
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2056
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2057
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2059
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2061
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x6c

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2062
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2064
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2065
    nop

    .line 2066
    return-void

    .line 2064
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2065
    throw p2
.end method

.method public blacklist nvResetConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2103
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2104
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2105
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2107
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2109
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x6f

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2110
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2112
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2113
    nop

    .line 2114
    return-void

    .line 2112
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2113
    throw v0
.end method

.method public blacklist nvWriteCdmaPrlResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2087
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2088
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2089
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2091
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2093
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x6e

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2094
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2096
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2097
    nop

    .line 2098
    return-void

    .line 2096
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2097
    throw v0
.end method

.method public blacklist nvWriteItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2071
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2072
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2073
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2075
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2077
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x6d

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2078
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2080
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2081
    nop

    .line 2082
    return-void

    .line 2080
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2081
    throw v0
.end method

.method public blacklist ping()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2817
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2818
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2820
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2822
    :try_start_f
    iget-object v2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2823
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2824
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_23

    .line 2826
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2827
    nop

    .line 2828
    return-void

    .line 2826
    :catchall_23
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2827
    throw v0
.end method

.method public blacklist pullLceDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceDataInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2285
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2286
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2287
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2288
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/LceDataInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2290
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2292
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x7a

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2293
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2295
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2296
    nop

    .line 2297
    return-void

    .line 2295
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2296
    throw p2
.end method

.method public blacklist rejectCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 540
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 541
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 544
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 546
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x11

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 547
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 549
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 550
    nop

    .line 551
    return-void

    .line 549
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 550
    throw v0
.end method

.method public blacklist reportSmsMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1786
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1787
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1788
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1790
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1792
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x5c

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1793
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1795
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1796
    nop

    .line 1797
    return-void

    .line 1795
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1796
    throw v0
.end method

.method public blacklist reportStkServiceIsRunningResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1802
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1803
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1804
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1806
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1808
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x5d

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1809
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1811
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1812
    nop

    .line 1813
    return-void

    .line 1811
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1812
    throw v0
.end method

.method public blacklist requestIccSimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2168
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2169
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2170
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2171
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/IccIoResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2173
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2175
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x73

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2176
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2178
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2179
    nop

    .line 2180
    return-void

    .line 2178
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2179
    throw p2
.end method

.method public blacklist requestIsimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1835
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1836
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1837
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1838
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1840
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1842
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x5f

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1843
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1845
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1846
    nop

    .line 1847
    return-void

    .line 1845
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1846
    throw p2
.end method

.method public blacklist requestShutdownResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2201
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2202
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2203
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2205
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2207
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x75

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2208
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2210
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2211
    nop

    .line 2212
    return-void

    .line 2210
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2211
    throw v0
.end method

.method public blacklist sendBurstDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1516
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1517
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1518
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1520
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1522
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x4c

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1523
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1525
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1526
    nop

    .line 1527
    return-void

    .line 1525
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1526
    throw v0
.end method

.method public blacklist sendCDMAFeatureCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1500
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1501
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1502
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1504
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1506
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x4b

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1507
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1509
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1510
    nop

    .line 1511
    return-void

    .line 1509
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1510
    throw v0
.end method

.method public blacklist sendCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1532
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1533
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1534
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1535
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SendSmsResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1537
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1539
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x4d

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1540
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1542
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1543
    nop

    .line 1544
    return-void

    .line 1542
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1543
    throw p2
.end method

.method public blacklist sendDeviceStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2354
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2355
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2356
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2358
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2360
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x7e

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2361
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2363
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2364
    nop

    .line 2365
    return-void

    .line 2363
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2364
    throw v0
.end method

.method public blacklist sendDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 659
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 660
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 661
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 663
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 665
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x18

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 666
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 668
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 669
    nop

    .line 670
    return-void

    .line 668
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 669
    throw v0
.end method

.method public blacklist sendEnvelopeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1254
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1255
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1256
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1257
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1259
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1261
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x3c

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1262
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1264
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1265
    nop

    .line 1266
    return-void

    .line 1264
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1265
    throw p2
.end method

.method public blacklist sendEnvelopeWithStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1868
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1869
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1870
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1871
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/IccIoResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1873
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1875
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x61

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1876
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1878
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1879
    nop

    .line 1880
    return-void

    .line 1878
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1879
    throw p2
.end method

.method public blacklist sendImsSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1969
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1970
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1971
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1972
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SendSmsResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1974
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1976
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x67

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1977
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1979
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1980
    nop

    .line 1981
    return-void

    .line 1979
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1980
    throw p2
.end method

.method public blacklist sendSMSExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 692
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 693
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 695
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SendSmsResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 697
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 699
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1a

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 700
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 702
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 703
    nop

    .line 704
    return-void

    .line 702
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 703
    throw p2
.end method

.method public blacklist sendSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 675
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 676
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 678
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SendSmsResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 680
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 682
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x19

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 683
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 685
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 686
    nop

    .line 687
    return-void

    .line 685
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 686
    throw p2
.end method

.method public blacklist sendTerminalResponseToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1271
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1272
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1273
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1275
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1277
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x3d

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1278
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1280
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1281
    nop

    .line 1282
    return-void

    .line 1280
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1281
    throw v0
.end method

.method public blacklist sendUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 743
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 744
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 745
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 747
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 749
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x1d

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 750
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 752
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 753
    nop

    .line 754
    return-void

    .line 752
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 753
    throw v0
.end method

.method public blacklist separateConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1089
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1090
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1091
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1093
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1095
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x32

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1096
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1098
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1099
    nop

    .line 1100
    return-void

    .line 1098
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1099
    throw v0
.end method

.method public blacklist setAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2319
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2320
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2321
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2322
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2324
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2326
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x7c

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2327
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2329
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2330
    nop

    .line 2331
    return-void

    .line 2329
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2330
    throw p2
.end method

.method public blacklist setBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1221
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1222
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1223
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1225
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1227
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x3a

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1228
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1230
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1231
    nop

    .line 1232
    return-void

    .line 1230
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1231
    throw v0
.end method

.method public blacklist setBarringPasswordResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 958
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 959
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 960
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 962
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 964
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x2a

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 965
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 967
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 968
    nop

    .line 969
    return-void

    .line 967
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 968
    throw v0
.end method

.method public blacklist setCallForwardResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 826
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 827
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 828
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 830
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 832
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x22

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 833
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 835
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 836
    nop

    .line 837
    return-void

    .line 835
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 836
    throw v0
.end method

.method public blacklist setCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 860
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 861
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 862
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 864
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 866
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x24

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 867
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 869
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 870
    nop

    .line 871
    return-void

    .line 869
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 870
    throw v0
.end method

.method public blacklist setCarrierInfoForImsiEncryptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2419
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2420
    const-string v1, "android.hardware.radio@1.1::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2421
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2423
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2425
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x82

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2426
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2428
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2429
    nop

    .line 2430
    return-void

    .line 2428
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2429
    throw v0
.end method

.method public blacklist setCdmaBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1647
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1648
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1649
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1651
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1653
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x54

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1654
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1656
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1657
    nop

    .line 1658
    return-void

    .line 1656
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1657
    throw v0
.end method

.method public blacklist setCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1631
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1632
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1633
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1635
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1637
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x53

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1638
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1640
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1641
    nop

    .line 1642
    return-void

    .line 1640
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1641
    throw v0
.end method

.method public blacklist setCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1401
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1402
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1403
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1405
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1407
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x45

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1408
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1410
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1411
    nop

    .line 1412
    return-void

    .line 1410
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1411
    throw v0
.end method

.method public blacklist setCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1385
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1386
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1387
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1389
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1391
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x44

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1392
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1394
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1395
    nop

    .line 1396
    return-void

    .line 1394
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1395
    throw v0
.end method

.method public blacklist setCellInfoListRateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1919
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1920
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1921
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1923
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1925
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x64

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1926
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1928
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1929
    nop

    .line 1930
    return-void

    .line 1928
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1929
    throw v0
.end method

.method public blacklist setClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 793
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 794
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 795
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 797
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 799
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x20

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 800
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 802
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 803
    nop

    .line 804
    return-void

    .line 802
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 803
    throw v0
.end method

.method public blacklist setDataAllowedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2135
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2136
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2137
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2139
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2141
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x71

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2142
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2144
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2145
    nop

    .line 2146
    return-void

    .line 2144
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2145
    throw v0
.end method

.method public blacklist setDataProfileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2185
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2186
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2187
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2189
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2191
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x74

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2192
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2194
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2195
    nop

    .line 2196
    return-void

    .line 2194
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2195
    throw v0
.end method

.method public blacklist setFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 941
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 942
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 943
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 944
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 946
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 948
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x29

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 949
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 951
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 952
    nop

    .line 953
    return-void

    .line 951
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 952
    throw p2
.end method

.method public blacklist setGsmBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1598
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1599
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1600
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1602
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1604
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x51

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1605
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1607
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1608
    nop

    .line 1609
    return-void

    .line 1607
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1608
    throw v0
.end method

.method public blacklist setGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1582
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1583
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1584
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1586
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1588
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x50

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1589
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1591
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1592
    nop

    .line 1593
    return-void

    .line 1591
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1592
    throw v0
.end method

.method public blacklist setHALInstrumentation()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2797
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2798
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2800
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2802
    :try_start_f
    iget-object v2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2803
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 2805
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2806
    nop

    .line 2807
    return-void

    .line 2805
    :catchall_20
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2806
    throw v0
.end method

.method public blacklist setIndicationFilterResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2370
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2371
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2372
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2374
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2376
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x7f

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2377
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2379
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2380
    nop

    .line 2381
    return-void

    .line 2379
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2380
    throw v0
.end method

.method public blacklist setInitialAttachApnResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1935
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1936
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1937
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1939
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1941
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x65

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1942
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1944
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1945
    nop

    .line 1946
    return-void

    .line 1944
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1945
    throw v0
.end method

.method public blacklist setLinkCapacityReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2567
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2568
    const-string v1, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2569
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2571
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2573
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x8b

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2574
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2576
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2577
    nop

    .line 2578
    return-void

    .line 2576
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2577
    throw v0
.end method

.method public blacklist setLocationUpdatesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1369
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1370
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1371
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1373
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1375
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x43

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1376
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1378
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1379
    nop

    .line 1380
    return-void

    .line 1378
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1379
    throw v0
.end method

.method public blacklist setMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1105
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1106
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1107
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1109
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1111
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x33

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1112
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1114
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1115
    nop

    .line 1116
    return-void

    .line 1114
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1115
    throw v0
.end method

.method public blacklist setNetworkSelectionModeAutomaticResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 991
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 992
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 993
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 995
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 997
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x2c

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 998
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1000
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1001
    nop

    .line 1002
    return-void

    .line 1000
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1001
    throw v0
.end method

.method public blacklist setNetworkSelectionModeManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1007
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1008
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1009
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1011
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1013
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x2d

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1014
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1016
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1017
    nop

    .line 1018
    return-void

    .line 1016
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1017
    throw v0
.end method

.method public blacklist setPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1319
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1320
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1321
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1323
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1325
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x40

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1326
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1328
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1329
    nop

    .line 1330
    return-void

    .line 1328
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1329
    throw v0
.end method

.method public blacklist setPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1467
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1468
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1469
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1471
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1473
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x49

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1474
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1476
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1477
    nop

    .line 1478
    return-void

    .line 1476
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1477
    throw v0
.end method

.method public blacklist setRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2234
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2235
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2236
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2237
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/RadioCapability;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2239
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2241
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x77

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2242
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2244
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2245
    nop

    .line 2246
    return-void

    .line 2244
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2245
    throw p2
.end method

.method public blacklist setRadioPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 643
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 644
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 645
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 647
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 649
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x17

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 650
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 652
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 653
    nop

    .line 654
    return-void

    .line 652
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 653
    throw v0
.end method

.method public blacklist setSignalStrengthReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2551
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2552
    const-string v1, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2553
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2555
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2557
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x8a

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2558
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2560
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2561
    nop

    .line 2562
    return-void

    .line 2560
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2561
    throw v0
.end method

.method public blacklist setSimCardPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2386
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2387
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2388
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2390
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2392
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x80

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2393
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2395
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2396
    nop

    .line 2397
    return-void

    .line 2395
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2396
    throw v0
.end method

.method public blacklist setSimCardPowerResponse_1_1(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2435
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2436
    const-string v1, "android.hardware.radio@1.1::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2437
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2439
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2441
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x83

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2442
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2444
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2445
    nop

    .line 2446
    return-void

    .line 2444
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2445
    throw v0
.end method

.method public blacklist setSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1770
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1771
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1772
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1774
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1776
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x5b

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1777
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1779
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1780
    nop

    .line 1781
    return-void

    .line 1779
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1780
    throw v0
.end method

.method public blacklist setSuppServiceNotificationsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1172
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1173
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1174
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1176
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1178
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x37

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1179
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1181
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1182
    nop

    .line 1183
    return-void

    .line 1181
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1182
    throw v0
.end method

.method public blacklist setSystemSelectionChannelsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2652
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2653
    const-string v1, "android.hardware.radio@1.3::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2654
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2656
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2658
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x90

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2659
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2661
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2662
    nop

    .line 2663
    return-void

    .line 2661
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2662
    throw v0
.end method

.method public blacklist setTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1434
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1435
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1436
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1438
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1440
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x47

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1441
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1443
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1444
    nop

    .line 1445
    return-void

    .line 1443
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1444
    throw v0
.end method

.method public blacklist setUiccSubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2119
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2120
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2121
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2123
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2125
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x70

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2126
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2128
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2129
    nop

    .line 2130
    return-void

    .line 2128
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2129
    throw v0
.end method

.method public blacklist setupDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SetupDataCallResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 709
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 710
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 711
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 712
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 714
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 716
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1b

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 717
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 719
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 720
    nop

    .line 721
    return-void

    .line 719
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 720
    throw p2
.end method

.method public blacklist startDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1040
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1041
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1042
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1044
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1046
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x2f

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1047
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1049
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1050
    nop

    .line 1051
    return-void

    .line 1049
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1050
    throw v0
.end method

.method public blacklist startKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_1/KeepaliveStatus;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2483
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2484
    const-string v1, "android.hardware.radio@1.1::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2485
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2486
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_1/KeepaliveStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2488
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2490
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x86

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2491
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2493
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2494
    nop

    .line 2495
    return-void

    .line 2493
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2494
    throw p2
.end method

.method public blacklist startLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2251
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2252
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2253
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2254
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/LceStatusInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2256
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2258
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x78

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2259
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2261
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2262
    nop

    .line 2263
    return-void

    .line 2261
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2262
    throw p2
.end method

.method public blacklist startNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2451
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2452
    const-string v1, "android.hardware.radio@1.1::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2453
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2455
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2457
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x84

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2458
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2460
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2461
    nop

    .line 2462
    return-void

    .line 2460
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2461
    throw v0
.end method

.method public blacklist stopDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1056
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1057
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1058
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1060
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1062
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x30

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1063
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1065
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1066
    nop

    .line 1067
    return-void

    .line 1065
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1066
    throw v0
.end method

.method public blacklist stopKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2500
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2501
    const-string v1, "android.hardware.radio@1.1::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2502
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2504
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2506
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x87

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2507
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2509
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2510
    nop

    .line 2511
    return-void

    .line 2509
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2510
    throw v0
.end method

.method public blacklist stopLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2268
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2269
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2270
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2271
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/LceStatusInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2273
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2275
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x79

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2276
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2278
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2279
    nop

    .line 2280
    return-void

    .line 2278
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2279
    throw p2
.end method

.method public blacklist stopNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2467
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2468
    const-string v1, "android.hardware.radio@1.1::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2469
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2471
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2473
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x85

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2474
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2476
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2477
    nop

    .line 2478
    return-void

    .line 2476
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2477
    throw v0
.end method

.method public blacklist supplyIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 325
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 326
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 328
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 330
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 332
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 333
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_24

    .line 335
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 336
    nop

    .line 337
    return-void

    .line 335
    :catchall_24
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 336
    throw p2
.end method

.method public blacklist supplyIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 292
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 294
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 296
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 298
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 299
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_24

    .line 301
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 302
    nop

    .line 303
    return-void

    .line 301
    :catchall_24
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 302
    throw p2
.end method

.method public blacklist supplyIccPuk2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 342
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 343
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 345
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 347
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 349
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 350
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_24

    .line 352
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 353
    nop

    .line 354
    return-void

    .line 352
    :catchall_24
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 353
    throw p2
.end method

.method public blacklist supplyIccPukForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 308
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 309
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 311
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 313
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 315
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 316
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_24

    .line 318
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 319
    nop

    .line 320
    return-void

    .line 318
    :catchall_24
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 319
    throw p2
.end method

.method public blacklist supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 393
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 394
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 396
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 398
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 400
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 401
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 403
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 404
    nop

    .line 405
    return-void

    .line 403
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 404
    throw p2
.end method

.method public blacklist switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 508
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 509
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 510
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 512
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 514
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xf

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 515
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 517
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 518
    nop

    .line 519
    return-void

    .line 517
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 518
    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 253
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@Proxy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_18

    return-object v0

    .line 254
    :catch_18
    move-exception v0

    .line 257
    const-string v0, "[class or subclass of android.hardware.radio@1.3::IRadioResponse]@Proxy"

    return-object v0
.end method

.method public blacklist unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2868
    iget-object v0, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result p1

    return p1
.end method

.method public blacklist writeSmsToRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1684
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1685
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1686
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1687
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1689
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1691
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x56

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1692
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1694
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1695
    nop

    .line 1696
    return-void

    .line 1694
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1695
    throw p2
.end method

.method public blacklist writeSmsToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1188
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1189
    const-string v1, "android.hardware.radio@1.0::IRadioResponse"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1190
    invoke-virtual {p1, v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1191
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1193
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1195
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_3/IRadioResponse$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x38

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1196
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1198
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1199
    nop

    .line 1200
    return-void

    .line 1198
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1199
    throw p2
.end method
