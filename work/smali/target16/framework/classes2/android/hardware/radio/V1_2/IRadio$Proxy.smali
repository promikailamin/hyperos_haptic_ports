.class public final Landroid/hardware/radio/V1_2/IRadio$Proxy;
.super Ljava/lang/Object;
.source "IRadio.java"

# interfaces
.implements Landroid/hardware/radio/V1_2/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_2/IRadio;
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

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IHwBinder;

    iput-object p1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 360
    return-void
.end method


# virtual methods
.method public blacklist acceptCall(I)V
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
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1042
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1044
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1046
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x27

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

.method public blacklist acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2014
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2015
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2016
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2017
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2018
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2020
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2022
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x61

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2023
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 2025
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2026
    nop

    .line 2027
    return-void

    .line 2025
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2026
    throw p2
.end method

.method public blacklist acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1716
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1717
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1718
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1719
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1721
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1723
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x4f

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1724
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1726
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1727
    nop

    .line 1728
    return-void

    .line 1726
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1727
    throw p2
.end method

.method public blacklist acknowledgeLastIncomingGsmSms(IZI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1022
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1023
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1024
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1025
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1026
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1028
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1030
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x26

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1031
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 1033
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1034
    nop

    .line 1035
    return-void

    .line 1033
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1034
    throw p2
.end method

.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 2

    .line 364
    iget-object v0, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object v0
.end method

.method public blacklist cancelPendingUssd(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 904
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 905
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 906
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 908
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 910
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x1f

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 911
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 913
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 914
    nop

    .line 915
    return-void

    .line 913
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 914
    throw v0
.end method

.method public blacklist changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 518
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 519
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 520
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 521
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 523
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 525
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 527
    :try_start_1b
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x8

    const/4 p4, 0x1

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 528
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2b

    .line 530
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 531
    nop

    .line 532
    return-void

    .line 530
    :catchall_2b
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 531
    throw p2
.end method

.method public blacklist changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 499
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 500
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 501
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 502
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 503
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 504
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 506
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 508
    :try_start_1b
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p3, 0x7

    const/4 p4, 0x1

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 509
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_2a

    .line 511
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 512
    nop

    .line 513
    return-void

    .line 511
    :catchall_2a
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 512
    throw p2
.end method

.method public blacklist conference(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 669
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 670
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 671
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 673
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 675
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x11

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 676
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 678
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 679
    nop

    .line 680
    return-void

    .line 678
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 679
    throw v0
.end method

.method public blacklist deactivateDataCall(IIZ)V
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
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1058
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1059
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1060
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1062
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1064
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x28

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1065
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 1067
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1068
    nop

    .line 1069
    return-void

    .line 1067
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1068
    throw p2
.end method

.method public blacklist deactivateDataCall_1_2(III)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2793
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2794
    const-string v1, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2795
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2796
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2797
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2799
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2801
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x8e

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2802
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 2804
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2805
    nop

    .line 2806
    return-void

    .line 2804
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2805
    throw p2
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

    .line 2831
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2832
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2833
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    .line 2834
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2836
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2838
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v1, 0xf444247

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2839
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2840
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_29

    .line 2842
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2843
    nop

    .line 2844
    return-void

    .line 2842
    :catchall_29
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2843
    throw p2
.end method

.method public blacklist deleteSmsOnRuim(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1866
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1867
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1868
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1869
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1871
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1873
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x58

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1874
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1876
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1877
    nop

    .line 1878
    return-void

    .line 1876
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1877
    throw p2
.end method

.method public blacklist deleteSmsOnSim(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1364
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1365
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1366
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1367
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1369
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1371
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x3a

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1372
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1374
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1375
    nop

    .line 1376
    return-void

    .line 1374
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1375
    throw p2
.end method

.method public blacklist dial(ILandroid/hardware/radio/V1_0/Dial;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 570
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 571
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 572
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 573
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/Dial;->writeToParcel(Landroid/os/HwParcel;)V

    .line 575
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 577
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xb

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 578
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 580
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 581
    nop

    .line 582
    return-void

    .line 580
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 581
    throw p2
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 2

    .line 379
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist exitEmergencyCallbackMode(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1899
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1900
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1901
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1903
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1905
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x5a

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1906
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1908
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1909
    nop

    .line 1910
    return-void

    .line 1908
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1909
    throw v0
.end method

.method public blacklist explicitCallTransfer(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1465
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1466
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1467
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1469
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1471
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x40

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1472
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1474
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1475
    nop

    .line 1476
    return-void

    .line 1474
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1475
    throw v0
.end method

.method public blacklist getAllowedCarriers(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2507
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2508
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2509
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2511
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2513
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x7e

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2514
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2516
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2517
    nop

    .line 2518
    return-void

    .line 2516
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2517
    throw v0
.end method

.method public blacklist getAvailableBandModes(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1398
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1399
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1400
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1402
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1404
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x3c

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1405
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1407
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1408
    nop

    .line 1409
    return-void

    .line 1407
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1408
    throw v0
.end method

.method public blacklist getAvailableNetworks(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1183
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1184
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1185
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1187
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1189
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x2f

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1190
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1192
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1193
    nop

    .line 1194
    return-void

    .line 1192
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1193
    throw v0
.end method

.method public blacklist getBasebandVersion(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1232
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1233
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1234
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1236
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1238
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x32

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1239
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1241
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1242
    nop

    .line 1243
    return-void

    .line 1241
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1242
    throw v0
.end method

.method public blacklist getCDMASubscription(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1833
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1834
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1835
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1837
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1839
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x56

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1840
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1842
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1843
    nop

    .line 1844
    return-void

    .line 1842
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1843
    throw v0
.end method

.method public blacklist getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 953
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 954
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 955
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 956
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/CallForwardInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 958
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 960
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x22

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 961
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 963
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 964
    nop

    .line 965
    return-void

    .line 963
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 964
    throw p2
.end method

.method public blacklist getCallWaiting(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 987
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 988
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 989
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 990
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 992
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 994
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x24

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 995
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 997
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 998
    nop

    .line 999
    return-void

    .line 997
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 998
    throw p2
.end method

.method public blacklist getCdmaBroadcastConfig(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1783
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1784
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1785
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1787
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1789
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x53

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1790
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1792
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1793
    nop

    .line 1794
    return-void

    .line 1792
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1793
    throw v0
.end method

.method public blacklist getCdmaRoamingPreference(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1581
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1582
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1583
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1585
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1587
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x47

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1588
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1590
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1591
    nop

    .line 1592
    return-void

    .line 1590
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1591
    throw v0
.end method

.method public blacklist getCdmaSubscriptionSource(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1981
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1982
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1983
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1985
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1987
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x5f

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1988
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1990
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1991
    nop

    .line 1992
    return-void

    .line 1990
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1991
    throw v0
.end method

.method public blacklist getCellInfoList(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2065
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2066
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2067
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2069
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2071
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x64

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2072
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2074
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2075
    nop

    .line 2076
    return-void

    .line 2074
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2075
    throw v0
.end method

.method public blacklist getClip(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1298
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1299
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1300
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1302
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1304
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x36

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1305
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1307
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1308
    nop

    .line 1309
    return-void

    .line 1307
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1308
    throw v0
.end method

.method public blacklist getClir(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 920
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 921
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 922
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 924
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 926
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x20

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 927
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 929
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 930
    nop

    .line 931
    return-void

    .line 929
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 930
    throw v0
.end method

.method public blacklist getCurrentCalls(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 554
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 555
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 556
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 558
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 560
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 561
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 563
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 564
    nop

    .line 565
    return-void

    .line 563
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 564
    throw v0
.end method

.method public blacklist getDataCallList(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1314
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1315
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1316
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1318
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1320
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x37

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1321
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1323
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1324
    nop

    .line 1325
    return-void

    .line 1323
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1324
    throw v0
.end method

.method public blacklist getDataRegistrationState(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 749
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 750
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 751
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 753
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 755
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x16

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 756
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 758
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 759
    nop

    .line 760
    return-void

    .line 758
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 759
    throw v0
.end method

.method public blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2943
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2944
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2946
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2948
    :try_start_f
    iget-object v2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf524546

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2949
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2950
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2952
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 2953
    invoke-virtual {v0, v1}, Landroid/internal/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2b

    .line 2954
    nop

    .line 2956
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2954
    return-object v0

    .line 2956
    :catchall_2b
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2957
    throw v0
.end method

.method public blacklist getDeviceIdentity(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1883
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1884
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1885
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1887
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1889
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x59

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1890
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1892
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1893
    nop

    .line 1894
    return-void

    .line 1892
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1893
    throw v0
.end method

.method public blacklist getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1074
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1075
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1076
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1077
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1079
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1080
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1082
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1084
    :try_start_1e
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x29

    const/4 p4, 0x1

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1085
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_2e

    .line 1087
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1088
    nop

    .line 1089
    return-void

    .line 1087
    :catchall_2e
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1088
    throw p2
.end method

.method public blacklist getGsmBroadcastConfig(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1733
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1734
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1735
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1737
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1739
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x50

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1740
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1742
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1743
    nop

    .line 1744
    return-void

    .line 1742
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1743
    throw v0
.end method

.method public blacklist getHardwareConfig(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2321
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2322
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2323
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2325
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2327
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x73

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2328
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2330
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2331
    nop

    .line 2332
    return-void

    .line 2330
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2331
    throw v0
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

    .line 2868
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2869
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2871
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 2873
    :try_start_f
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf485348

    const/4 v10, 0x0

    invoke-interface {v1, v3, v0, v2, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2874
    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2875
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2877
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2879
    const-wide/16 v3, 0x10

    invoke-virtual {v2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 2881
    const-wide/16 v3, 0x8

    invoke-virtual {v1, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    .line 2882
    mul-int/lit8 v3, v11, 0x20

    int-to-long v3, v3

    .line 2883
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    .line 2882
    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 2886
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2887
    nop

    :goto_41
    if-ge v10, v11, :cond_54

    .line 2888
    const/16 v3, 0x20

    new-array v4, v3, [B

    .line 2890
    mul-int/lit8 v5, v10, 0x20

    int-to-long v5, v5

    .line 2891
    invoke-virtual {v1, v5, v6, v4, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2892
    nop

    .line 2894
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catchall {:try_start_f .. :try_end_51} :catchall_59

    .line 2887
    add-int/lit8 v10, v10, 0x1

    goto :goto_41

    .line 2898
    :cond_54
    nop

    .line 2900
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 2898
    return-object v0

    .line 2900
    :catchall_59
    move-exception v0

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 2901
    throw v0
.end method

.method public blacklist getIccCardStatus(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 409
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 410
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 413
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 415
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 416
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_21

    .line 418
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 419
    nop

    .line 420
    return-void

    .line 418
    :catchall_21
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 419
    throw v0
.end method

.method public blacklist getImsRegistrationState(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2117
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2118
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2119
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2121
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2123
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x67

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2124
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2126
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2127
    nop

    .line 2128
    return-void

    .line 2126
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2127
    throw v0
.end method

.method public blacklist getImsiForApp(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 587
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 588
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 589
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 590
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 592
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 594
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xc

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 595
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 597
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 598
    nop

    .line 599
    return-void

    .line 597
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 598
    throw p2
.end method

.method public blacklist getLastCallFailCause(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 701
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 702
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 703
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 705
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 707
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x13

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 708
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 710
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 711
    nop

    .line 712
    return-void

    .line 710
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 711
    throw v0
.end method

.method public blacklist getModemActivityInfo(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2473
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2474
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2475
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2477
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2479
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x7c

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2480
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2482
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2483
    nop

    .line 2484
    return-void

    .line 2482
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2483
    throw v0
.end method

.method public blacklist getMute(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1282
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1283
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1284
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1286
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1288
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x35

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1289
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1291
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1292
    nop

    .line 1293
    return-void

    .line 1291
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1292
    throw v0
.end method

.method public blacklist getNeighboringCids(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1514
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1515
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1516
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1518
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1520
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x43

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1521
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1523
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1524
    nop

    .line 1525
    return-void

    .line 1523
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1524
    throw v0
.end method

.method public blacklist getNetworkSelectionMode(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1134
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1135
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1136
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1138
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1140
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x2c

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1141
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1143
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1144
    nop

    .line 1145
    return-void

    .line 1143
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1144
    throw v0
.end method

.method public blacklist getOperator(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 765
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 766
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 767
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 769
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 771
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x17

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 772
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 774
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 775
    nop

    .line 776
    return-void

    .line 774
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 775
    throw v0
.end method

.method public blacklist getPreferredNetworkType(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1498
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1499
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1500
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1502
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1504
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x42

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1505
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1507
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1508
    nop

    .line 1509
    return-void

    .line 1507
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1508
    throw v0
.end method

.method public blacklist getPreferredVoicePrivacy(I)V
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
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1649
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1651
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1653
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x4b

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

.method public blacklist getRadioCapability(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2390
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2391
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2392
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2394
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2396
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x77

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2397
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2399
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2400
    nop

    .line 2401
    return-void

    .line 2399
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2400
    throw v0
.end method

.method public blacklist getSignalStrength(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 717
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 718
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 719
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 721
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 723
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x14

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 724
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 726
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 727
    nop

    .line 728
    return-void

    .line 726
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 727
    throw v0
.end method

.method public blacklist getSmscAddress(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1915
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1916
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1917
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1919
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1921
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x5b

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1922
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1924
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1925
    nop

    .line 1926
    return-void

    .line 1924
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1925
    throw v0
.end method

.method public blacklist getTTYMode(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1614
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1615
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1616
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1618
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1620
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x49

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1621
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1623
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1624
    nop

    .line 1625
    return-void

    .line 1623
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1624
    throw v0
.end method

.method public blacklist getVoiceRadioTechnology(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2049
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2050
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2051
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2053
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2055
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x63

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2056
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2058
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2059
    nop

    .line 2060
    return-void

    .line 2058
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2059
    throw v0
.end method

.method public blacklist getVoiceRegistrationState(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 733
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 734
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 735
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 737
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 739
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x15

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 740
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 742
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 743
    nop

    .line 744
    return-void

    .line 742
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 743
    throw v0
.end method

.method public blacklist handleStkCallSetupRequestFromSim(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1448
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1449
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1450
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1451
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1453
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1455
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x3f

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1456
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1458
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1459
    nop

    .line 1460
    return-void

    .line 1458
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1459
    throw p2
.end method

.method public blacklist hangup(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 604
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 605
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 606
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 607
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 609
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 611
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xd

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 612
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 614
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 615
    nop

    .line 616
    return-void

    .line 614
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 615
    throw p2
.end method

.method public blacklist hangupForegroundResumeBackground(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 637
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 638
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 639
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 641
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 643
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xf

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 644
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 646
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 647
    nop

    .line 648
    return-void

    .line 646
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 647
    throw v0
.end method

.method public blacklist hangupWaitingOrBackground(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 621
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 622
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 623
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 625
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 627
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xe

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 628
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 630
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 631
    nop

    .line 632
    return-void

    .line 630
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 631
    throw v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 2

    .line 384
    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/IRadio$Proxy;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IHwBinder;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist iccCloseLogicalChannel(II)V
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
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2187
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2188
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2190
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2192
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x6b

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2193
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2195
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2196
    nop

    .line 2197
    return-void

    .line 2195
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2196
    throw p2
.end method

.method public blacklist iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 870
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 871
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 872
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 873
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/IccIo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 875
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 877
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1d

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 878
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 880
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 881
    nop

    .line 882
    return-void

    .line 880
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 881
    throw p2
.end method

.method public blacklist iccOpenLogicalChannel(ILjava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2167
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2168
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2169
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2170
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2171
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2173
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2175
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x6a

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2176
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 2178
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2179
    nop

    .line 2180
    return-void

    .line 2178
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2179
    throw p2
.end method

.method public blacklist iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2150
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2151
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2152
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2153
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SimApdu;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2155
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2157
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x69

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2158
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2160
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2161
    nop

    .line 2162
    return-void

    .line 2160
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2161
    throw p2
.end method

.method public blacklist iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2202
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2203
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2204
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2205
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SimApdu;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2207
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2209
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x6c

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2210
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2212
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2213
    nop

    .line 2214
    return-void

    .line 2212
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2213
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

    .line 2812
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2813
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2815
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2817
    :try_start_f
    iget-object v2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf43484e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2818
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2819
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2821
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 2822
    nop

    .line 2824
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2822
    return-object v0

    .line 2824
    :catchall_27
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2825
    throw v0
.end method

.method public blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2849
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2850
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2852
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2854
    :try_start_f
    iget-object v2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf445343

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2855
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2856
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2858
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 2859
    nop

    .line 2861
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2859
    return-object v0

    .line 2861
    :catchall_27
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2862
    throw v0
.end method

.method public blacklist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2922
    iget-object v0, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

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

    .line 2963
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2964
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2966
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2968
    :try_start_f
    iget-object v2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2969
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 2971
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2972
    nop

    .line 2973
    return-void

    .line 2971
    :catchall_20
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2972
    throw v0
.end method

.method public blacklist nvReadItem(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2219
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2220
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2221
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2222
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2224
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2226
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x6d

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2227
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2229
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2230
    nop

    .line 2231
    return-void

    .line 2229
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2230
    throw p2
.end method

.method public blacklist nvResetConfig(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2270
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2271
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2272
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2273
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2275
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2277
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x70

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2278
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2280
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2281
    nop

    .line 2282
    return-void

    .line 2280
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2281
    throw p2
.end method

.method public blacklist nvWriteCdmaPrl(ILjava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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

    .line 2253
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2254
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2255
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2256
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 2258
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2260
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x6f

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2261
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2263
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2264
    nop

    .line 2265
    return-void

    .line 2263
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2264
    throw p2
.end method

.method public blacklist nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2236
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2237
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2238
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2239
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/NvWriteItem;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2241
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2243
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x6e

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2244
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2246
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2247
    nop

    .line 2248
    return-void

    .line 2246
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2247
    throw p2
.end method

.method public blacklist ping()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2927
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2928
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2930
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2932
    :try_start_f
    iget-object v2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2933
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2934
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_23

    .line 2936
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2937
    nop

    .line 2938
    return-void

    .line 2936
    :catchall_23
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2937
    throw v0
.end method

.method public blacklist pullLceData(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2457
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2458
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2459
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2461
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2463
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x7b

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2464
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2466
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2467
    nop

    .line 2468
    return-void

    .line 2466
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2467
    throw v0
.end method

.method public blacklist rejectCall(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 685
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 686
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 687
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 689
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 691
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x12

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 692
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 694
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 695
    nop

    .line 696
    return-void

    .line 694
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 695
    throw v0
.end method

.method public blacklist reportSmsMemoryStatus(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1948
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1949
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1950
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1951
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1953
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1955
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x5d

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1956
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1958
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1959
    nop

    .line 1960
    return-void

    .line 1958
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1959
    throw p2
.end method

.method public blacklist reportStkServiceIsRunning(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1965
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1966
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1967
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1969
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1971
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x5e

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1972
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1974
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1975
    nop

    .line 1976
    return-void

    .line 1974
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1975
    throw v0
.end method

.method public blacklist requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2337
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2338
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2339
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2340
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2341
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2342
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2344
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2346
    :try_start_1b
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x74

    const/4 p4, 0x1

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2347
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2b

    .line 2349
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2350
    nop

    .line 2351
    return-void

    .line 2349
    :catchall_2b
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2350
    throw p2
.end method

.method public blacklist requestIsimAuthentication(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1997
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1998
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1999
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2000
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2002
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2004
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x60

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2005
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2007
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2008
    nop

    .line 2009
    return-void

    .line 2007
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2008
    throw p2
.end method

.method public blacklist requestShutdown(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2374
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2375
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2376
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2378
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2380
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x76

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2381
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2383
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2384
    nop

    .line 2385
    return-void

    .line 2383
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2384
    throw v0
.end method

.method public blacklist responseAcknowledgement()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2575
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2576
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2578
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2580
    :try_start_f
    iget-object v2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x82

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2581
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_1f

    .line 2583
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2584
    nop

    .line 2585
    return-void

    .line 2583
    :catchall_1f
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2584
    throw v0
.end method

.method public blacklist sendBurstDtmf(ILjava/lang/String;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1680
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1681
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1682
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1683
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1684
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1685
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1687
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1689
    :try_start_1b
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x4d

    const/4 p4, 0x1

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1690
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2b

    .line 1692
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1693
    nop

    .line 1694
    return-void

    .line 1692
    :catchall_2b
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1693
    throw p2
.end method

.method public blacklist sendCDMAFeatureCode(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1663
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1664
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1665
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1666
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1668
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1670
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x4c

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1671
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1673
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1674
    nop

    .line 1675
    return-void

    .line 1673
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1674
    throw p2
.end method

.method public blacklist sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1699
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1700
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1701
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1702
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1704
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1706
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x4e

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1707
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1709
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1710
    nop

    .line 1711
    return-void

    .line 1709
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1710
    throw p2
.end method

.method public blacklist sendDeviceState(IIZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2523
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2524
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2525
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2526
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2527
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2529
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2531
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x7f

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2532
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 2534
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2535
    nop

    .line 2536
    return-void

    .line 2534
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2535
    throw p2
.end method

.method public blacklist sendDtmf(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 798
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 799
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 800
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 801
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 803
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 805
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x19

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 806
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 808
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 809
    nop

    .line 810
    return-void

    .line 808
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 809
    throw p2
.end method

.method public blacklist sendEnvelope(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1414
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1415
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1416
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1417
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1419
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1421
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x3d

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1422
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1424
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1425
    nop

    .line 1426
    return-void

    .line 1424
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1425
    throw p2
.end method

.method public blacklist sendEnvelopeWithStatus(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2032
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2033
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2034
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2035
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2037
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2039
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x62

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2040
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2042
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2043
    nop

    .line 2044
    return-void

    .line 2042
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2043
    throw p2
.end method

.method public blacklist sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2133
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2134
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2135
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2136
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2138
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2140
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x68

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2141
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2143
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2144
    nop

    .line 2145
    return-void

    .line 2143
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2144
    throw p2
.end method

.method public blacklist sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 832
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 833
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 834
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 835
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->writeToParcel(Landroid/os/HwParcel;)V

    .line 837
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 839
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1b

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 840
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 842
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 843
    nop

    .line 844
    return-void

    .line 842
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 843
    throw p2
.end method

.method public blacklist sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 815
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 816
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 817
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 818
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->writeToParcel(Landroid/os/HwParcel;)V

    .line 820
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 822
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1a

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 823
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 825
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 826
    nop

    .line 827
    return-void

    .line 825
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 826
    throw p2
.end method

.method public blacklist sendTerminalResponseToSim(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1431
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1432
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1433
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1434
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1436
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1438
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x3e

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1439
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1441
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1442
    nop

    .line 1443
    return-void

    .line 1441
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1442
    throw p2
.end method

.method public blacklist sendUssd(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 887
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 888
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 889
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 890
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 892
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 894
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1e

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 895
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 897
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 898
    nop

    .line 899
    return-void

    .line 897
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 898
    throw p2
.end method

.method public blacklist separateConnection(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1248
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1249
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1250
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1251
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1253
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1255
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x33

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1256
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1258
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1259
    nop

    .line 1260
    return-void

    .line 1258
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1259
    throw p2
.end method

.method public blacklist setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2489
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2490
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2491
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2492
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2493
    invoke-virtual {p3, v0}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2495
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2497
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x7d

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2498
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 2500
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2501
    nop

    .line 2502
    return-void

    .line 2500
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2501
    throw p2
.end method

.method public blacklist setBandMode(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1381
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1382
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1383
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1384
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1386
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1388
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x3b

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1389
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1391
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1392
    nop

    .line 1393
    return-void

    .line 1391
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1392
    throw p2
.end method

.method public blacklist setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1115
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1116
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1117
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1118
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1119
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1120
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1122
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1124
    :try_start_1b
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x2b

    const/4 p4, 0x1

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1125
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2b

    .line 1127
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1128
    nop

    .line 1129
    return-void

    .line 1127
    :catchall_2b
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1128
    throw p2
.end method

.method public blacklist setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 970
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 971
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 972
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 973
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/CallForwardInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 975
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 977
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x23

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 978
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 980
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 981
    nop

    .line 982
    return-void

    .line 980
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 981
    throw p2
.end method

.method public blacklist setCallWaiting(IZI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1004
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1005
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1006
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1007
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1008
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1010
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1012
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x25

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1013
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 1015
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1016
    nop

    .line 1017
    return-void

    .line 1015
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1016
    throw p2
.end method

.method public blacklist setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/V1_1/ImsiEncryptionInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2591
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2592
    const-string v1, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2593
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2594
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2596
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2598
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x83

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2599
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2601
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2602
    nop

    .line 2603
    return-void

    .line 2601
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2602
    throw p2
.end method

.method public blacklist setCdmaBroadcastActivation(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1816
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1817
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1818
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1819
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1821
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1823
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x55

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1824
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1826
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1827
    nop

    .line 1828
    return-void

    .line 1826
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1827
    throw p2
.end method

.method public blacklist setCdmaBroadcastConfig(ILjava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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

    .line 1799
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1800
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1801
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1802
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1804
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1806
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x54

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1807
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1809
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1810
    nop

    .line 1811
    return-void

    .line 1809
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1810
    throw p2
.end method

.method public blacklist setCdmaRoamingPreference(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1564
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1565
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1566
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1567
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1569
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1571
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x46

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1572
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1574
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1575
    nop

    .line 1576
    return-void

    .line 1574
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1575
    throw p2
.end method

.method public blacklist setCdmaSubscriptionSource(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1547
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1548
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1549
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1550
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1552
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1554
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x45

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1555
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1557
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1558
    nop

    .line 1559
    return-void

    .line 1557
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1558
    throw p2
.end method

.method public blacklist setCellInfoListRate(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2081
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2082
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2083
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2084
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2086
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2088
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x65

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2089
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2091
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2092
    nop

    .line 2093
    return-void

    .line 2091
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2092
    throw p2
.end method

.method public blacklist setClir(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 936
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 937
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 938
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 939
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 941
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 943
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x21

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 944
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 946
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 947
    nop

    .line 948
    return-void

    .line 946
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 947
    throw p2
.end method

.method public blacklist setDataAllowed(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2304
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2305
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2306
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2307
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2309
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2311
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x72

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2312
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2314
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2315
    nop

    .line 2316
    return-void

    .line 2314
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2315
    throw p2
.end method

.method public blacklist setDataProfile(ILjava/util/ArrayList;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/DataProfileInfo;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2356
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2357
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2358
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2359
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 2360
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2362
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2364
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x75

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2365
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 2367
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2368
    nop

    .line 2369
    return-void

    .line 2367
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2368
    throw p2
.end method

.method public blacklist setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1094
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1095
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1096
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1097
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1098
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1099
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1100
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1101
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1103
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1105
    :try_start_21
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x2a

    const/4 p4, 0x1

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1106
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_31

    .line 1108
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1109
    nop

    .line 1110
    return-void

    .line 1108
    :catchall_31
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1109
    throw p2
.end method

.method public blacklist setGsmBroadcastActivation(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1766
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1767
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1768
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1769
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1771
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1773
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x52

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1774
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1776
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1777
    nop

    .line 1778
    return-void

    .line 1776
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1777
    throw p2
.end method

.method public blacklist setGsmBroadcastConfig(ILjava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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

    .line 1749
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1750
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1751
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1752
    invoke-static {v0, p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1754
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1756
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x51

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1757
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1759
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1760
    nop

    .line 1761
    return-void

    .line 1759
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1760
    throw p2
.end method

.method public blacklist setHALInstrumentation()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2907
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2908
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2910
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2912
    :try_start_f
    iget-object v2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2913
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 2915
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2916
    nop

    .line 2917
    return-void

    .line 2915
    :catchall_20
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2916
    throw v0
.end method

.method public blacklist setIndicationFilter(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2541
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2542
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2543
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2544
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2546
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2548
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x80

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2549
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2551
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2552
    nop

    .line 2553
    return-void

    .line 2551
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2552
    throw p2
.end method

.method public blacklist setIndicationFilter_1_2(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2710
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2711
    const-string v1, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2712
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2713
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2715
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2717
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x8a

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2718
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2720
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2721
    nop

    .line 2722
    return-void

    .line 2720
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2721
    throw p2
.end method

.method public blacklist setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2098
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2099
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2100
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2101
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2102
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2103
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2105
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2107
    :try_start_1b
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x66

    const/4 p4, 0x1

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2108
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2b

    .line 2110
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2111
    nop

    .line 2112
    return-void

    .line 2110
    :catchall_2b
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2111
    throw p2
.end method

.method public blacklist setLinkCapacityReportingCriteria(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2747
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2748
    const-string v1, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2749
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2750
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2751
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2752
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2753
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 2754
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 2755
    invoke-virtual {v0, p7}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2757
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2759
    :try_start_24
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x8c

    const/4 p4, 0x1

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2760
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_34

    .line 2762
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2763
    nop

    .line 2764
    return-void

    .line 2762
    :catchall_34
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2763
    throw p2
.end method

.method public blacklist setLocationUpdates(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1530
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1531
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1532
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1533
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1535
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1537
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x44

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1538
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1540
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1541
    nop

    .line 1542
    return-void

    .line 1540
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1541
    throw p2
.end method

.method public blacklist setMute(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1265
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1266
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1267
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1268
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1270
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1272
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x34

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1273
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1275
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1276
    nop

    .line 1277
    return-void

    .line 1275
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1276
    throw p2
.end method

.method public blacklist setNetworkSelectionModeAutomatic(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1150
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1151
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1152
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1154
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1156
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x2d

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1157
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1159
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1160
    nop

    .line 1161
    return-void

    .line 1159
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1160
    throw v0
.end method

.method public blacklist setNetworkSelectionModeManual(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1166
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1167
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1168
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1169
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1171
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1173
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x2e

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1174
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1176
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1177
    nop

    .line 1178
    return-void

    .line 1176
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1177
    throw p2
.end method

.method public blacklist setPreferredNetworkType(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1481
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1482
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1483
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1484
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1486
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1488
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x41

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1489
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1491
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1492
    nop

    .line 1493
    return-void

    .line 1491
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1492
    throw p2
.end method

.method public blacklist setPreferredVoicePrivacy(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1630
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1631
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1632
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1633
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1635
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1637
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x4a

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1638
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1640
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1641
    nop

    .line 1642
    return-void

    .line 1640
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1641
    throw p2
.end method

.method public blacklist setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2406
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2407
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2408
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2409
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/RadioCapability;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2411
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2413
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x78

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2414
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2416
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2417
    nop

    .line 2418
    return-void

    .line 2416
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2417
    throw p2
.end method

.method public blacklist setRadioPower(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 781
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 782
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 783
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 784
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 786
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 788
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x18

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 789
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 791
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 792
    nop

    .line 793
    return-void

    .line 791
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 792
    throw p2
.end method

.method public blacklist setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 391
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 392
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 393
    const/4 v1, 0x0

    if-nez p1, :cond_f

    move-object p1, v1

    goto :goto_13

    :cond_f
    invoke-interface {p1}, Landroid/hardware/radio/V1_0/IRadioResponse;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    :goto_13
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 394
    if-nez p2, :cond_19

    goto :goto_1d

    :cond_19
    invoke-interface {p2}, Landroid/hardware/radio/V1_0/IRadioIndication;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_1d
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 396
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 398
    :try_start_25
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 399
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 400
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_37

    .line 402
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 403
    nop

    .line 404
    return-void

    .line 402
    :catchall_37
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 403
    throw p2
.end method

.method public blacklist setSignalStrengthReportingCriteria(IIILjava/util/ArrayList;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2727
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2728
    const-string v1, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2729
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2730
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2731
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2732
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 2733
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2735
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2737
    :try_start_1e
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x8b

    const/4 p4, 0x1

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2738
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_2e

    .line 2740
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2741
    nop

    .line 2742
    return-void

    .line 2740
    :catchall_2e
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2741
    throw p2
.end method

.method public blacklist setSimCardPower(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2558
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2559
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2560
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2561
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2563
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2565
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x81

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2566
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2568
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2569
    nop

    .line 2570
    return-void

    .line 2568
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2569
    throw p2
.end method

.method public blacklist setSimCardPower_1_1(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2608
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2609
    const-string v1, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2610
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2611
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2613
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2615
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x84

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2616
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2618
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2619
    nop

    .line 2620
    return-void

    .line 2618
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2619
    throw p2
.end method

.method public blacklist setSmscAddress(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1931
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1932
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1933
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1934
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1936
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1938
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x5c

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1939
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1941
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1942
    nop

    .line 1943
    return-void

    .line 1941
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1942
    throw p2
.end method

.method public blacklist setSuppServiceNotifications(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1330
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1331
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1332
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1333
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1335
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1337
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x38

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1338
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1340
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1341
    nop

    .line 1342
    return-void

    .line 1340
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1341
    throw p2
.end method

.method public blacklist setTTYMode(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1597
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1598
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1599
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1600
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1602
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1604
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x48

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1605
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1607
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1608
    nop

    .line 1609
    return-void

    .line 1607
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1608
    throw p2
.end method

.method public blacklist setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2287
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2288
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2289
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2290
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SelectUiccSub;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2292
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2294
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x71

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2295
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2297
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2298
    nop

    .line 2299
    return-void

    .line 2297
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2298
    throw p2
.end method

.method public blacklist setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 849
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 850
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 851
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 852
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 853
    invoke-virtual {p3, v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 854
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 855
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 856
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 858
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 860
    :try_start_21
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x1c

    const/4 p4, 0x1

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 861
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_31

    .line 863
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 864
    nop

    .line 865
    return-void

    .line 863
    :catchall_31
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 864
    throw p2
.end method

.method public blacklist setupDataCall_1_2(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/hardware/radio/V1_0/DataProfileInfo;",
            "ZZZI",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
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

    .line 2769
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2770
    const-string v1, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2771
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2772
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2773
    invoke-virtual {p3, v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2774
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2775
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2776
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2777
    invoke-virtual {v0, p7}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2778
    invoke-virtual {v0, p8}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2779
    invoke-virtual {v0, p9}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2781
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2783
    :try_start_2a
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x8d

    const/4 p4, 0x1

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2784
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_3a

    .line 2786
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2787
    nop

    .line 2788
    return-void

    .line 2786
    :catchall_3a
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2787
    throw p2
.end method

.method public blacklist startDtmf(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1199
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1200
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1201
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1202
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1204
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1206
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x30

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1207
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1209
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1210
    nop

    .line 1211
    return-void

    .line 1209
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1210
    throw p2
.end method

.method public blacklist startKeepalive(ILandroid/hardware/radio/V1_1/KeepaliveRequest;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2658
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2659
    const-string v1, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2660
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2661
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2663
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2665
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x87

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2666
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2668
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2669
    nop

    .line 2670
    return-void

    .line 2668
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2669
    throw p2
.end method

.method public blacklist startLceService(IIZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2423
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2424
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2425
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2426
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2427
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 2429
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2431
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x79

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2432
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 2434
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2435
    nop

    .line 2436
    return-void

    .line 2434
    :catchall_28
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2435
    throw p2
.end method

.method public blacklist startNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanRequest;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2625
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2626
    const-string v1, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2627
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2628
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_1/NetworkScanRequest;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2630
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2632
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x85

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2633
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2635
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2636
    nop

    .line 2637
    return-void

    .line 2635
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2636
    throw p2
.end method

.method public blacklist startNetworkScan_1_2(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2693
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2694
    const-string v1, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2695
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2696
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2698
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2700
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x89

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2701
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2703
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2704
    nop

    .line 2705
    return-void

    .line 2703
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2704
    throw p2
.end method

.method public blacklist stopDtmf(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1216
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1217
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1218
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1220
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1222
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x31

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1223
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 1225
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1226
    nop

    .line 1227
    return-void

    .line 1225
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1226
    throw v0
.end method

.method public blacklist stopKeepalive(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2675
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2676
    const-string v1, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2677
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2678
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2680
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2682
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x88

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2683
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 2685
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2686
    nop

    .line 2687
    return-void

    .line 2685
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2686
    throw p2
.end method

.method public blacklist stopLceService(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2441
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2442
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2443
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2445
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2447
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x7a

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2448
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2450
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2451
    nop

    .line 2452
    return-void

    .line 2450
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2451
    throw v0
.end method

.method public blacklist stopNetworkScan(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2642
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2643
    const-string v1, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2644
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2646
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 2648
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x86

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2649
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 2651
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2652
    nop

    .line 2653
    return-void

    .line 2651
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 2652
    throw v0
.end method

.method public blacklist supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 462
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 463
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 465
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 468
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 470
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p3, 0x5

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 471
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_27

    .line 473
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 474
    nop

    .line 475
    return-void

    .line 473
    :catchall_27
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 474
    throw p2
.end method

.method public blacklist supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 425
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 426
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 428
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 431
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 433
    :try_start_18
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p3, 0x3

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 434
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_27

    .line 436
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 437
    nop

    .line 438
    return-void

    .line 436
    :catchall_27
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 437
    throw p2
.end method

.method public blacklist supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 480
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 481
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 482
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 483
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 487
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 489
    :try_start_1b
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p3, 0x6

    const/4 p4, 0x1

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 490
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_2a

    .line 492
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 493
    nop

    .line 494
    return-void

    .line 492
    :catchall_2a
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 493
    throw p2
.end method

.method public blacklist supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 443
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 444
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 445
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 446
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 447
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 450
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 452
    :try_start_1b
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p3, 0x4

    const/4 p4, 0x1

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 453
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_2a

    .line 455
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 456
    nop

    .line 457
    return-void

    .line 455
    :catchall_2a
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 456
    throw p2
.end method

.method public blacklist supplyNetworkDepersonalization(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 537
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 538
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 539
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 540
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 542
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 544
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x9

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 545
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 547
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 548
    nop

    .line 549
    return-void

    .line 547
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 548
    throw p2
.end method

.method public blacklist switchWaitingOrHoldingAndActive(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 653
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 654
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 655
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 657
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 659
    :try_start_12
    iget-object v1, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x10

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 660
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    .line 662
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 663
    nop

    .line 664
    return-void

    .line 662
    :catchall_22
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 663
    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 370
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/IRadio$Proxy;->interfaceDescriptor()Ljava/lang/String;

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

    .line 371
    :catch_18
    move-exception v0

    .line 374
    const-string v0, "[class or subclass of android.hardware.radio@1.2::IRadio]@Proxy"

    return-object v0
.end method

.method public blacklist unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2978
    iget-object v0, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result p1

    return p1
.end method

.method public blacklist writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1849
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1850
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1851
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1852
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1854
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1856
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x57

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1857
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1859
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1860
    nop

    .line 1861
    return-void

    .line 1859
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1860
    throw p2
.end method

.method public blacklist writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1347
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1348
    const-string v1, "android.hardware.radio@1.0::IRadio"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1349
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1350
    invoke-virtual {p2, v0}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1352
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1354
    :try_start_15
    iget-object p2, p0, Landroid/hardware/radio/V1_2/IRadio$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x39

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1355
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_25

    .line 1357
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1358
    nop

    .line 1359
    return-void

    .line 1357
    :catchall_25
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1358
    throw p2
.end method
