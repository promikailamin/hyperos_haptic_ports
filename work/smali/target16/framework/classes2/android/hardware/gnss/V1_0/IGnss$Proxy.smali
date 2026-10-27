.class public final Landroid/hardware/gnss/V1_0/IGnss$Proxy;
.super Ljava/lang/Object;
.source "IGnss.java"

# interfaces
.implements Landroid/hardware/gnss/V1_0/IGnss;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IGnss;
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

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IHwBinder;

    iput-object p1, p0, Landroid/hardware/gnss/V1_0/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 591
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 2

    .line 595
    iget-object v0, p0, Landroid/hardware/gnss/V1_0/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object v0
.end method

.method public blacklist cleanup()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 680
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 681
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 683
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 685
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V1_0/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 686
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 687
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_21

    .line 689
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 690
    nop

    .line 691
    return-void

    .line 689
    :catchall_21
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 690
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

    .line 991
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 992
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 993
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    .line 994
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 996
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 998
    :try_start_15
    iget-object p2, p0, Landroid/hardware/gnss/V1_0/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v1, 0xf444247

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 999
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1000
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_29

    .line 1002
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1003
    nop

    .line 1004
    return-void

    .line 1002
    :catchall_29
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1003
    throw p2
.end method

.method public blacklist deleteAidingData(S)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 740
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 741
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 742
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt16(S)V

    .line 744
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 746
    :try_start_12
    iget-object v1, p0, Landroid/hardware/gnss/V1_0/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 747
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 748
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_24

    .line 750
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 751
    nop

    .line 752
    return-void

    .line 750
    :catchall_24
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 751
    throw v0
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 2

    .line 610
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1103
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1104
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1106
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1108
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V1_0/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf524546

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1109
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1110
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1112
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1113
    invoke-virtual {v0, v1}, Landroid/internal/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2b

    .line 1114
    nop

    .line 1116
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1114
    return-object v0

    .line 1116
    :catchall_2b
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1117
    throw v0
.end method

.method public blacklist getExtensionAGnss()Landroid/hardware/gnss/V1_0/IAGnss;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 819
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 820
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 822
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 824
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V1_0/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 825
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 826
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 828
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V1_0/IAGnss;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IAGnss;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 829
    nop

    .line 831
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 829
    return-object v0

    .line 831
    :catchall_2a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 832
    throw v0
.end method

.method public blacklist getExtensionAGnssRil()Landroid/hardware/gnss/V1_0/IAGnssRil;
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
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 784
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 786
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V1_0/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 787
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 788
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 790
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V1_0/IAGnssRil;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IAGnssRil;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 791
    nop

    .line 793
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 791
    return-object v0

    .line 793
    :catchall_2a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 794
    throw v0
.end method

.method public blacklist getExtensionGnssBatching()Landroid/hardware/gnss/V1_0/IGnssBatching;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 952
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 953
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 955
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 957
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V1_0/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 958
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 959
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 961
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V1_0/IGnssBatching;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IGnssBatching;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 962
    nop

    .line 964
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 962
    return-object v0

    .line 964
    :catchall_2a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 965
    throw v0
.end method

.method public blacklist getExtensionGnssConfiguration()Landroid/hardware/gnss/V1_0/IGnssConfiguration;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 914
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 915
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 917
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 919
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V1_0/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 920
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 921
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 923
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V1_0/IGnssConfiguration;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IGnssConfiguration;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 924
    nop

    .line 926
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 924
    return-object v0

    .line 926
    :catchall_2a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 927
    throw v0
.end method

.method public blacklist getExtensionGnssDebug()Landroid/hardware/gnss/V1_0/IGnssDebug;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 933
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 934
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 936
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 938
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V1_0/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 939
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 940
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 942
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V1_0/IGnssDebug;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IGnssDebug;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 943
    nop

    .line 945
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 943
    return-object v0

    .line 945
    :catchall_2a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 946
    throw v0
.end method

.method public blacklist getExtensionGnssGeofencing()Landroid/hardware/gnss/V1_0/IGnssGeofencing;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 800
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 801
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 803
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 805
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V1_0/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 806
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 807
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 809
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V1_0/IGnssGeofencing;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IGnssGeofencing;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 810
    nop

    .line 812
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 810
    return-object v0

    .line 812
    :catchall_2a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 813
    throw v0
.end method

.method public blacklist getExtensionGnssMeasurement()Landroid/hardware/gnss/V1_0/IGnssMeasurement;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 857
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 858
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 860
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 862
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V1_0/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 863
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 864
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 866
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V1_0/IGnssMeasurement;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IGnssMeasurement;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 867
    nop

    .line 869
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 867
    return-object v0

    .line 869
    :catchall_2a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 870
    throw v0
.end method

.method public blacklist getExtensionGnssNavigationMessage()Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;
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
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 879
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 881
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V1_0/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 882
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 883
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 885
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 886
    nop

    .line 888
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 886
    return-object v0

    .line 888
    :catchall_2a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 889
    throw v0
.end method

.method public blacklist getExtensionGnssNi()Landroid/hardware/gnss/V1_0/IGnssNi;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 838
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 839
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 841
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 843
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V1_0/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 844
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 845
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 847
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V1_0/IGnssNi;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IGnssNi;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 848
    nop

    .line 850
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 848
    return-object v0

    .line 850
    :catchall_2a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 851
    throw v0
.end method

.method public blacklist getExtensionXtra()Landroid/hardware/gnss/V1_0/IGnssXtra;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 895
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 896
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 898
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 900
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V1_0/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 901
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 902
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 904
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V1_0/IGnssXtra;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IGnssXtra;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 905
    nop

    .line 907
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 905
    return-object v0

    .line 907
    :catchall_2a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 908
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

    .line 1028
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1029
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1031
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 1033
    :try_start_f
    iget-object v1, p0, Landroid/hardware/gnss/V1_0/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf485348

    const/4 v10, 0x0

    invoke-interface {v1, v3, v0, v2, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1034
    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1035
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1037
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1039
    const-wide/16 v3, 0x10

    invoke-virtual {v2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 1041
    const-wide/16 v3, 0x8

    invoke-virtual {v1, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    .line 1042
    mul-int/lit8 v3, v11, 0x20

    int-to-long v3, v3

    .line 1043
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    .line 1042
    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 1046
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1047
    nop

    :goto_41
    if-ge v10, v11, :cond_54

    .line 1048
    const/16 v3, 0x20

    new-array v4, v3, [B

    .line 1050
    mul-int/lit8 v5, v10, 0x20

    int-to-long v5, v5

    .line 1051
    invoke-virtual {v1, v5, v6, v4, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1052
    nop

    .line 1054
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catchall {:try_start_f .. :try_end_51} :catchall_59

    .line 1047
    add-int/lit8 v10, v10, 0x1

    goto :goto_41

    .line 1058
    :cond_54
    nop

    .line 1060
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 1058
    return-object v0

    .line 1060
    :catchall_59
    move-exception v0

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 1061
    throw v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 2

    .line 615
    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Proxy;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IHwBinder;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist injectLocation(DDF)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 718
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 719
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 720
    invoke-virtual {v0, p1, p2}, Landroid/os/HwParcel;->writeDouble(D)V

    .line 721
    invoke-virtual {v0, p3, p4}, Landroid/os/HwParcel;->writeDouble(D)V

    .line 722
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeFloat(F)V

    .line 724
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 726
    :try_start_18
    iget-object p2, p0, Landroid/hardware/gnss/V1_0/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p3, 0x6

    const/4 p4, 0x0

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 727
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 728
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 730
    invoke-virtual {p1}, Landroid/os/HwParcel;->readBool()Z

    move-result p2
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_2e

    .line 731
    nop

    .line 733
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 731
    return p2

    .line 733
    :catchall_2e
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 734
    throw p2
.end method

.method public blacklist injectTime(JJI)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 696
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 697
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 698
    invoke-virtual {v0, p1, p2}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 699
    invoke-virtual {v0, p3, p4}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 700
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 702
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 704
    :try_start_18
    iget-object p2, p0, Landroid/hardware/gnss/V1_0/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p3, 0x5

    const/4 p4, 0x0

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 705
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 706
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 708
    invoke-virtual {p1}, Landroid/os/HwParcel;->readBool()Z

    move-result p2
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_2e

    .line 709
    nop

    .line 711
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 709
    return p2

    .line 711
    :catchall_2e
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 712
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

    .line 972
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 973
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 975
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 977
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V1_0/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf43484e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 978
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 979
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 981
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 982
    nop

    .line 984
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 982
    return-object v0

    .line 984
    :catchall_27
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 985
    throw v0
.end method

.method public blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1009
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1010
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1012
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1014
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V1_0/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf445343

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1015
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1016
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1018
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 1019
    nop

    .line 1021
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1019
    return-object v0

    .line 1021
    :catchall_27
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1022
    throw v0
.end method

.method public blacklist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1082
    iget-object v0, p0, Landroid/hardware/gnss/V1_0/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

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

    .line 1123
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1124
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1126
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1128
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V1_0/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1129
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 1131
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1132
    nop

    .line 1133
    return-void

    .line 1131
    :catchall_20
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1132
    throw v0
.end method

.method public blacklist ping()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1087
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1088
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1090
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1092
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V1_0/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1093
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1094
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_23

    .line 1096
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1097
    nop

    .line 1098
    return-void

    .line 1096
    :catchall_23
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1097
    throw v0
.end method

.method public blacklist setCallback(Landroid/hardware/gnss/V1_0/IGnssCallback;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 622
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 623
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 624
    if-nez p1, :cond_e

    const/4 p1, 0x0

    goto :goto_12

    :cond_e
    invoke-interface {p1}, Landroid/hardware/gnss/V1_0/IGnssCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    :goto_12
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 626
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 628
    :try_start_1a
    iget-object v1, p0, Landroid/hardware/gnss/V1_0/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 629
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 630
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 632
    invoke-virtual {p1}, Landroid/os/HwParcel;->readBool()Z

    move-result v0
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_30

    .line 633
    nop

    .line 635
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 633
    return v0

    .line 635
    :catchall_30
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 636
    throw v0
.end method

.method public blacklist setHALInstrumentation()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1067
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1068
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1070
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1072
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V1_0/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1073
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 1075
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1076
    nop

    .line 1077
    return-void

    .line 1075
    :catchall_20
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1076
    throw v0
.end method

.method public blacklist setPositionMode(BIIII)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 757
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 758
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 759
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 760
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 761
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 762
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 763
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 765
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 767
    :try_start_1e
    iget-object p2, p0, Landroid/hardware/gnss/V1_0/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x8

    const/4 p4, 0x0

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 768
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 769
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 771
    invoke-virtual {p1}, Landroid/os/HwParcel;->readBool()Z

    move-result p2
    :try_end_30
    .catchall {:try_start_1e .. :try_end_30} :catchall_35

    .line 772
    nop

    .line 774
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 772
    return p2

    .line 774
    :catchall_35
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 775
    throw p2
.end method

.method public blacklist start()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 642
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 643
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 645
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 647
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V1_0/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 648
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 649
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 651
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v0
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_25

    .line 652
    nop

    .line 654
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 652
    return v0

    .line 654
    :catchall_25
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 655
    throw v0
.end method

.method public blacklist stop()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 661
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 662
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 664
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 666
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V1_0/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 667
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 668
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 670
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v0
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_25

    .line 671
    nop

    .line 673
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 671
    return v0

    .line 673
    :catchall_25
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 674
    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 601
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/gnss/V1_0/IGnss$Proxy;->interfaceDescriptor()Ljava/lang/String;

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

    .line 602
    :catch_18
    move-exception v0

    .line 605
    const-string v0, "[class or subclass of android.hardware.gnss@1.0::IGnss]@Proxy"

    return-object v0
.end method

.method public blacklist unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1138
    iget-object v0, p0, Landroid/hardware/gnss/V1_0/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result p1

    return p1
.end method
