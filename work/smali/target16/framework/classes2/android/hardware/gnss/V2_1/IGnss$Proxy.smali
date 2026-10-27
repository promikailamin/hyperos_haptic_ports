.class public final Landroid/hardware/gnss/V2_1/IGnss$Proxy;
.super Ljava/lang/Object;
.source "IGnss.java"

# interfaces
.implements Landroid/hardware/gnss/V2_1/IGnss;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V2_1/IGnss;
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

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IHwBinder;

    iput-object p1, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 262
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 2

    .line 266
    iget-object v0, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object v0
.end method

.method public blacklist cleanup()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 351
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 352
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 354
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 356
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 357
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 358
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_21

    .line 360
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 361
    nop

    .line 362
    return-void

    .line 360
    :catchall_21
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 361
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

    .line 1056
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1057
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1058
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    .line 1059
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1061
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1063
    :try_start_15
    iget-object p2, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v1, 0xf444247

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1064
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1065
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_29

    .line 1067
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1068
    nop

    .line 1069
    return-void

    .line 1067
    :catchall_29
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1068
    throw p2
.end method

.method public blacklist deleteAidingData(S)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 411
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 412
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt16(S)V

    .line 415
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 417
    :try_start_12
    iget-object v1, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 418
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 419
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_24

    .line 421
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 422
    nop

    .line 423
    return-void

    .line 421
    :catchall_24
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 422
    throw v0
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 2

    .line 281
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

    .line 1168
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1169
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1171
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1173
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf524546

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1174
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1175
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1177
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1178
    invoke-virtual {v0, v1}, Landroid/internal/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2b

    .line 1179
    nop

    .line 1181
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1179
    return-object v0

    .line 1181
    :catchall_2b
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1182
    throw v0
.end method

.method public blacklist getExtensionAGnss()Landroid/hardware/gnss/V1_0/IAGnss;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 490
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 491
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 493
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 495
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 496
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 497
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 499
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V1_0/IAGnss;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IAGnss;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 500
    nop

    .line 502
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 500
    return-object v0

    .line 502
    :catchall_2a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 503
    throw v0
.end method

.method public blacklist getExtensionAGnssRil()Landroid/hardware/gnss/V1_0/IAGnssRil;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 452
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 453
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 455
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 457
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 458
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 459
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 461
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V1_0/IAGnssRil;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IAGnssRil;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 462
    nop

    .line 464
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 462
    return-object v0

    .line 464
    :catchall_2a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 465
    throw v0
.end method

.method public blacklist getExtensionAGnssRil_2_0()Landroid/hardware/gnss/V2_0/IAGnssRil;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 824
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 825
    const-string v1, "android.hardware.gnss@2.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 827
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 829
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 830
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 831
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 833
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V2_0/IAGnssRil;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V2_0/IAGnssRil;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 834
    nop

    .line 836
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 834
    return-object v0

    .line 836
    :catchall_2a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 837
    throw v0
.end method

.method public blacklist getExtensionAGnss_2_0()Landroid/hardware/gnss/V2_0/IAGnss;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 805
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 806
    const-string v1, "android.hardware.gnss@2.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 808
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 810
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 811
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 812
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 814
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V2_0/IAGnss;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V2_0/IAGnss;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 815
    nop

    .line 817
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 815
    return-object v0

    .line 817
    :catchall_2a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 818
    throw v0
.end method

.method public blacklist getExtensionGnssAntennaInfo()Landroid/hardware/gnss/V2_1/IGnssAntennaInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1017
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1018
    const-string v1, "android.hardware.gnss@2.1::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1020
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1022
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1023
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1024
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1026
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfo;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V2_1/IGnssAntennaInfo;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 1027
    nop

    .line 1029
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1027
    return-object v0

    .line 1029
    :catchall_2a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1030
    throw v0
.end method

.method public blacklist getExtensionGnssBatching()Landroid/hardware/gnss/V1_0/IGnssBatching;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 623
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 624
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 626
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 628
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 629
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 630
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 632
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V1_0/IGnssBatching;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IGnssBatching;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 633
    nop

    .line 635
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 633
    return-object v0

    .line 635
    :catchall_2a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 636
    throw v0
.end method

.method public blacklist getExtensionGnssBatching_2_0()Landroid/hardware/gnss/V2_0/IGnssBatching;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 900
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 901
    const-string v1, "android.hardware.gnss@2.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 903
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 905
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 906
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 907
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 909
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V2_0/IGnssBatching;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V2_0/IGnssBatching;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 910
    nop

    .line 912
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 910
    return-object v0

    .line 912
    :catchall_2a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 913
    throw v0
.end method

.method public blacklist getExtensionGnssConfiguration()Landroid/hardware/gnss/V1_0/IGnssConfiguration;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 585
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 586
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 588
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 590
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 591
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 592
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 594
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V1_0/IGnssConfiguration;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IGnssConfiguration;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 595
    nop

    .line 597
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 595
    return-object v0

    .line 597
    :catchall_2a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 598
    throw v0
.end method

.method public blacklist getExtensionGnssConfiguration_1_1()Landroid/hardware/gnss/V1_1/IGnssConfiguration;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 688
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 689
    const-string v1, "android.hardware.gnss@1.1::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 691
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 693
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 694
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 695
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 697
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V1_1/IGnssConfiguration;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_1/IGnssConfiguration;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 698
    nop

    .line 700
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 698
    return-object v0

    .line 700
    :catchall_2a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 701
    throw v0
.end method

.method public blacklist getExtensionGnssConfiguration_2_0()Landroid/hardware/gnss/V2_0/IGnssConfiguration;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 767
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 768
    const-string v1, "android.hardware.gnss@2.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 770
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 772
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 773
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 774
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 776
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V2_0/IGnssConfiguration;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V2_0/IGnssConfiguration;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 777
    nop

    .line 779
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 777
    return-object v0

    .line 779
    :catchall_2a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 780
    throw v0
.end method

.method public blacklist getExtensionGnssConfiguration_2_1()Landroid/hardware/gnss/V2_1/IGnssConfiguration;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 979
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 980
    const-string v1, "android.hardware.gnss@2.1::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 982
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 984
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 985
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 986
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 988
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V2_1/IGnssConfiguration;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V2_1/IGnssConfiguration;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 989
    nop

    .line 991
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 989
    return-object v0

    .line 991
    :catchall_2a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 992
    throw v0
.end method

.method public blacklist getExtensionGnssDebug()Landroid/hardware/gnss/V1_0/IGnssDebug;
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
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 607
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 609
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 610
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 611
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 613
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V1_0/IGnssDebug;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IGnssDebug;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 614
    nop

    .line 616
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 614
    return-object v0

    .line 616
    :catchall_2a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 617
    throw v0
.end method

.method public blacklist getExtensionGnssDebug_2_0()Landroid/hardware/gnss/V2_0/IGnssDebug;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 786
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 787
    const-string v1, "android.hardware.gnss@2.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 789
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 791
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 792
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 793
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 795
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V2_0/IGnssDebug;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V2_0/IGnssDebug;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 796
    nop

    .line 798
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 796
    return-object v0

    .line 798
    :catchall_2a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 799
    throw v0
.end method

.method public blacklist getExtensionGnssGeofencing()Landroid/hardware/gnss/V1_0/IGnssGeofencing;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 471
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 472
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 474
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 476
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 477
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 478
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 480
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V1_0/IGnssGeofencing;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IGnssGeofencing;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 481
    nop

    .line 483
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 481
    return-object v0

    .line 483
    :catchall_2a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 484
    throw v0
.end method

.method public blacklist getExtensionGnssMeasurement()Landroid/hardware/gnss/V1_0/IGnssMeasurement;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 528
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 529
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 531
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 533
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 534
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 535
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 537
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V1_0/IGnssMeasurement;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IGnssMeasurement;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 538
    nop

    .line 540
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 538
    return-object v0

    .line 540
    :catchall_2a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 541
    throw v0
.end method

.method public blacklist getExtensionGnssMeasurement_1_1()Landroid/hardware/gnss/V1_1/IGnssMeasurement;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 707
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 708
    const-string v1, "android.hardware.gnss@1.1::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 710
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 712
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 713
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 714
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 716
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V1_1/IGnssMeasurement;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_1/IGnssMeasurement;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 717
    nop

    .line 719
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 717
    return-object v0

    .line 719
    :catchall_2a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 720
    throw v0
.end method

.method public blacklist getExtensionGnssMeasurement_2_0()Landroid/hardware/gnss/V2_0/IGnssMeasurement;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 843
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 844
    const-string v1, "android.hardware.gnss@2.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 846
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 848
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 849
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 850
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 852
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V2_0/IGnssMeasurement;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V2_0/IGnssMeasurement;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 853
    nop

    .line 855
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 853
    return-object v0

    .line 855
    :catchall_2a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 856
    throw v0
.end method

.method public blacklist getExtensionGnssMeasurement_2_1()Landroid/hardware/gnss/V2_1/IGnssMeasurement;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 960
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 961
    const-string v1, "android.hardware.gnss@2.1::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 963
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 965
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 966
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 967
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 969
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V2_1/IGnssMeasurement;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V2_1/IGnssMeasurement;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 970
    nop

    .line 972
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 970
    return-object v0

    .line 972
    :catchall_2a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 973
    throw v0
.end method

.method public blacklist getExtensionGnssNavigationMessage()Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 547
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 548
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 550
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 552
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 553
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 554
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 556
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 557
    nop

    .line 559
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 557
    return-object v0

    .line 559
    :catchall_2a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 560
    throw v0
.end method

.method public blacklist getExtensionGnssNi()Landroid/hardware/gnss/V1_0/IGnssNi;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 509
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 510
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 512
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 514
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 515
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 516
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 518
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V1_0/IGnssNi;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IGnssNi;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 519
    nop

    .line 521
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 519
    return-object v0

    .line 521
    :catchall_2a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 522
    throw v0
.end method

.method public blacklist getExtensionMeasurementCorrections()Landroid/hardware/gnss/measurement_corrections/V1_0/IMeasurementCorrections;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 862
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 863
    const-string v1, "android.hardware.gnss@2.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 865
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 867
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 868
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 869
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 871
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/measurement_corrections/V1_0/IMeasurementCorrections;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/measurement_corrections/V1_0/IMeasurementCorrections;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 872
    nop

    .line 874
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 872
    return-object v0

    .line 874
    :catchall_2a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 875
    throw v0
.end method

.method public blacklist getExtensionMeasurementCorrections_1_1()Landroid/hardware/gnss/measurement_corrections/V1_1/IMeasurementCorrections;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 998
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 999
    const-string v1, "android.hardware.gnss@2.1::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1001
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1003
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1004
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1005
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1007
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/measurement_corrections/V1_1/IMeasurementCorrections;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/measurement_corrections/V1_1/IMeasurementCorrections;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 1008
    nop

    .line 1010
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1008
    return-object v0

    .line 1010
    :catchall_2a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1011
    throw v0
.end method

.method public blacklist getExtensionVisibilityControl()Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 881
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 882
    const-string v1, "android.hardware.gnss@2.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 884
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 886
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 887
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 888
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 890
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 891
    nop

    .line 893
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 891
    return-object v0

    .line 893
    :catchall_2a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 894
    throw v0
.end method

.method public blacklist getExtensionXtra()Landroid/hardware/gnss/V1_0/IGnssXtra;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 566
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 567
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 569
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 571
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 572
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 573
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 575
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V1_0/IGnssXtra;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IGnssXtra;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 576
    nop

    .line 578
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 576
    return-object v0

    .line 578
    :catchall_2a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 579
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

    .line 1093
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1094
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1096
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 1098
    :try_start_f
    iget-object v1, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf485348

    const/4 v10, 0x0

    invoke-interface {v1, v3, v0, v2, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1099
    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1100
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1104
    const-wide/16 v3, 0x10

    invoke-virtual {v2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 1106
    const-wide/16 v3, 0x8

    invoke-virtual {v1, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    .line 1107
    mul-int/lit8 v3, v11, 0x20

    int-to-long v3, v3

    .line 1108
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    .line 1107
    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 1111
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1112
    nop

    :goto_41
    if-ge v10, v11, :cond_54

    .line 1113
    const/16 v3, 0x20

    new-array v4, v3, [B

    .line 1115
    mul-int/lit8 v5, v10, 0x20

    int-to-long v5, v5

    .line 1116
    invoke-virtual {v1, v5, v6, v4, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1117
    nop

    .line 1119
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catchall {:try_start_f .. :try_end_51} :catchall_59

    .line 1112
    add-int/lit8 v10, v10, 0x1

    goto :goto_41

    .line 1123
    :cond_54
    nop

    .line 1125
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 1123
    return-object v0

    .line 1125
    :catchall_59
    move-exception v0

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 1126
    throw v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 2

    .line 286
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IHwBinder;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist injectBestLocation(Landroid/hardware/gnss/V1_0/GnssLocation;)Z
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
    const-string v1, "android.hardware.gnss@1.1::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p1, v0}, Landroid/hardware/gnss/V1_0/GnssLocation;->writeToParcel(Landroid/os/HwParcel;)V

    .line 730
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 732
    :try_start_12
    iget-object v1, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x17

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 733
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 734
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 736
    invoke-virtual {p1}, Landroid/os/HwParcel;->readBool()Z

    move-result v0
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_29

    .line 737
    nop

    .line 739
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 737
    return v0

    .line 739
    :catchall_29
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 740
    throw v0
.end method

.method public blacklist injectBestLocation_2_0(Landroid/hardware/gnss/V2_0/GnssLocation;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 919
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 920
    const-string v1, "android.hardware.gnss@2.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 921
    invoke-virtual {p1, v0}, Landroid/hardware/gnss/V2_0/GnssLocation;->writeToParcel(Landroid/os/HwParcel;)V

    .line 923
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 925
    :try_start_12
    iget-object v1, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x21

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 926
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 927
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 929
    invoke-virtual {p1}, Landroid/os/HwParcel;->readBool()Z

    move-result v0
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_29

    .line 930
    nop

    .line 932
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 930
    return v0

    .line 932
    :catchall_29
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 933
    throw v0
.end method

.method public blacklist injectLocation(DDF)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 389
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 390
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v0, p1, p2}, Landroid/os/HwParcel;->writeDouble(D)V

    .line 392
    invoke-virtual {v0, p3, p4}, Landroid/os/HwParcel;->writeDouble(D)V

    .line 393
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeFloat(F)V

    .line 395
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 397
    :try_start_18
    iget-object p2, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p3, 0x6

    const/4 p4, 0x0

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 398
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 399
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 401
    invoke-virtual {p1}, Landroid/os/HwParcel;->readBool()Z

    move-result p2
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_2e

    .line 402
    nop

    .line 404
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 402
    return p2

    .line 404
    :catchall_2e
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 405
    throw p2
.end method

.method public blacklist injectTime(JJI)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 367
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 368
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v0, p1, p2}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 370
    invoke-virtual {v0, p3, p4}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 371
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 373
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 375
    :try_start_18
    iget-object p2, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p3, 0x5

    const/4 p4, 0x0

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 376
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 377
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 379
    invoke-virtual {p1}, Landroid/os/HwParcel;->readBool()Z

    move-result p2
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_2e

    .line 380
    nop

    .line 382
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 380
    return p2

    .line 382
    :catchall_2e
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 383
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

    .line 1037
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1038
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1040
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1042
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf43484e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1043
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1044
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1046
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 1047
    nop

    .line 1049
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1047
    return-object v0

    .line 1049
    :catchall_27
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1050
    throw v0
.end method

.method public blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1074
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1075
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1077
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1079
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf445343

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1080
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1081
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1083
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 1084
    nop

    .line 1086
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1084
    return-object v0

    .line 1086
    :catchall_27
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1087
    throw v0
.end method

.method public blacklist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1147
    iget-object v0, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

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

    .line 1188
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1189
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1191
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1193
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1194
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 1196
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1197
    nop

    .line 1198
    return-void

    .line 1196
    :catchall_20
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1197
    throw v0
.end method

.method public blacklist ping()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1152
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1153
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1155
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1157
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1158
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1159
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_23

    .line 1161
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1162
    nop

    .line 1163
    return-void

    .line 1161
    :catchall_23
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1162
    throw v0
.end method

.method public blacklist setCallback(Landroid/hardware/gnss/V1_0/IGnssCallback;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 293
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 294
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 295
    if-nez p1, :cond_e

    const/4 p1, 0x0

    goto :goto_12

    :cond_e
    invoke-interface {p1}, Landroid/hardware/gnss/V1_0/IGnssCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    :goto_12
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 297
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 299
    :try_start_1a
    iget-object v1, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 300
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 301
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 303
    invoke-virtual {p1}, Landroid/os/HwParcel;->readBool()Z

    move-result v0
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_30

    .line 304
    nop

    .line 306
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 304
    return v0

    .line 306
    :catchall_30
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 307
    throw v0
.end method

.method public blacklist setCallback_1_1(Landroid/hardware/gnss/V1_1/IGnssCallback;)Z
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
    const-string v1, "android.hardware.gnss@1.1::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 645
    if-nez p1, :cond_e

    const/4 p1, 0x0

    goto :goto_12

    :cond_e
    invoke-interface {p1}, Landroid/hardware/gnss/V1_1/IGnssCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    :goto_12
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 647
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 649
    :try_start_1a
    iget-object v1, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x13

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 650
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 651
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 653
    invoke-virtual {p1}, Landroid/os/HwParcel;->readBool()Z

    move-result v0
    :try_end_2c
    .catchall {:try_start_1a .. :try_end_2c} :catchall_31

    .line 654
    nop

    .line 656
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 654
    return v0

    .line 656
    :catchall_31
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 657
    throw v0
.end method

.method public blacklist setCallback_2_0(Landroid/hardware/gnss/V2_0/IGnssCallback;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 747
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 748
    const-string v1, "android.hardware.gnss@2.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 749
    if-nez p1, :cond_e

    const/4 p1, 0x0

    goto :goto_12

    :cond_e
    invoke-interface {p1}, Landroid/hardware/gnss/V2_0/IGnssCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    :goto_12
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 751
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 753
    :try_start_1a
    iget-object v1, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x18

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 754
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 755
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 757
    invoke-virtual {p1}, Landroid/os/HwParcel;->readBool()Z

    move-result v0
    :try_end_2c
    .catchall {:try_start_1a .. :try_end_2c} :catchall_31

    .line 758
    nop

    .line 760
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 758
    return v0

    .line 760
    :catchall_31
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 761
    throw v0
.end method

.method public blacklist setCallback_2_1(Landroid/hardware/gnss/V2_1/IGnssCallback;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 940
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 941
    const-string v1, "android.hardware.gnss@2.1::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 942
    if-nez p1, :cond_e

    const/4 p1, 0x0

    goto :goto_12

    :cond_e
    invoke-interface {p1}, Landroid/hardware/gnss/V2_1/IGnssCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    :goto_12
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 944
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 946
    :try_start_1a
    iget-object v1, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x22

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 947
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 948
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 950
    invoke-virtual {p1}, Landroid/os/HwParcel;->readBool()Z

    move-result v0
    :try_end_2c
    .catchall {:try_start_1a .. :try_end_2c} :catchall_31

    .line 951
    nop

    .line 953
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 951
    return v0

    .line 953
    :catchall_31
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 954
    throw v0
.end method

.method public blacklist setHALInstrumentation()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1132
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1133
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1135
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1137
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1138
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 1140
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1141
    nop

    .line 1142
    return-void

    .line 1140
    :catchall_20
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1141
    throw v0
.end method

.method public blacklist setPositionMode(BIIII)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 428
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 429
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 431
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 432
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 433
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 434
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 436
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 438
    :try_start_1e
    iget-object p2, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x8

    const/4 p4, 0x0

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 439
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 440
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 442
    invoke-virtual {p1}, Landroid/os/HwParcel;->readBool()Z

    move-result p2
    :try_end_30
    .catchall {:try_start_1e .. :try_end_30} :catchall_35

    .line 443
    nop

    .line 445
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 443
    return p2

    .line 445
    :catchall_35
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 446
    throw p2
.end method

.method public blacklist setPositionMode_1_1(BIIIIZ)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 663
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 664
    const-string v1, "android.hardware.gnss@1.1::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 665
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 666
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 667
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 668
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 669
    invoke-virtual {v0, p5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 670
    invoke-virtual {v0, p6}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 672
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 674
    :try_start_21
    iget-object p2, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p3, 0x14

    const/4 p4, 0x0

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 675
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 676
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 678
    invoke-virtual {p1}, Landroid/os/HwParcel;->readBool()Z

    move-result p2
    :try_end_33
    .catchall {:try_start_21 .. :try_end_33} :catchall_38

    .line 679
    nop

    .line 681
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 679
    return p2

    .line 681
    :catchall_38
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 682
    throw p2
.end method

.method public blacklist start()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 313
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 314
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 316
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 318
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 319
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 320
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 322
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v0
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_25

    .line 323
    nop

    .line 325
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 323
    return v0

    .line 325
    :catchall_25
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 326
    throw v0
.end method

.method public blacklist stop()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 332
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 333
    const-string v1, "android.hardware.gnss@1.0::IGnss"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 335
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 337
    :try_start_f
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 338
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 339
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 341
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v0
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_25

    .line 342
    nop

    .line 344
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 342
    return v0

    .line 344
    :catchall_25
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 345
    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 272
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->interfaceDescriptor()Ljava/lang/String;

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

    .line 273
    :catch_18
    move-exception v0

    .line 276
    const-string v0, "[class or subclass of android.hardware.gnss@2.1::IGnss]@Proxy"

    return-object v0
.end method

.method public blacklist unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1203
    iget-object v0, p0, Landroid/hardware/gnss/V2_1/IGnss$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result p1

    return p1
.end method
